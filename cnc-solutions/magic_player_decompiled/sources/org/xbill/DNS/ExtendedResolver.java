package org.xbill.DNS;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.PrintStream;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ExtendedResolver implements Resolver {
    private static final int quantum = 5;
    private List resolvers;
    private boolean loadBalance = false;
    private int lbStart = 0;
    private int retries = 3;

    public static class Resolution implements ResolverListener {
        public boolean done;
        public Object[] inprogress;
        public ResolverListener listener;
        public int outstanding;
        public Message query;
        public Resolver[] resolvers;
        public Message response;
        public int retries;
        public int[] sent;
        public Throwable thrown;

        public Resolution(ExtendedResolver extendedResolver, Message message) {
            List list = extendedResolver.resolvers;
            this.resolvers = (Resolver[]) list.toArray(new Resolver[list.size()]);
            if (extendedResolver.loadBalance) {
                int length = this.resolvers.length;
                int iAccess$208 = ExtendedResolver.access$208(extendedResolver) % length;
                if (extendedResolver.lbStart > length) {
                    extendedResolver.lbStart %= length;
                }
                if (iAccess$208 > 0) {
                    Resolver[] resolverArr = new Resolver[length];
                    for (int i4 = 0; i4 < length; i4++) {
                        resolverArr[i4] = this.resolvers[(i4 + iAccess$208) % length];
                    }
                    this.resolvers = resolverArr;
                }
            }
            Resolver[] resolverArr2 = this.resolvers;
            this.sent = new int[resolverArr2.length];
            this.inprogress = new Object[resolverArr2.length];
            this.retries = extendedResolver.retries;
            this.query = message;
        }

        @Override // org.xbill.DNS.ResolverListener
        public void handleException(Object obj, Exception exc) {
            Object[] objArr;
            Throwable th;
            if (Options.check("verbose")) {
                PrintStream printStream = System.err;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("ExtendedResolver: got ");
                stringBuffer.append(exc);
                printStream.println(stringBuffer.toString());
            }
            synchronized (this) {
                this.outstanding--;
                if (this.done) {
                    return;
                }
                boolean z3 = false;
                int i4 = 0;
                while (true) {
                    objArr = this.inprogress;
                    if (i4 >= objArr.length || objArr[i4] == obj) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i4 == objArr.length) {
                    return;
                }
                int[] iArr = this.sent;
                if (iArr[i4] == 1 && i4 < this.resolvers.length - 1) {
                    z3 = true;
                }
                if (exc instanceof InterruptedIOException) {
                    if (iArr[i4] < this.retries) {
                        send(i4);
                    }
                    if (this.thrown == null) {
                        this.thrown = exc;
                    }
                } else if (!(exc instanceof SocketException) || (th = this.thrown) == null || (th instanceof InterruptedIOException)) {
                    this.thrown = exc;
                }
                if (this.done) {
                    return;
                }
                if (z3) {
                    send(i4 + 1);
                }
                if (this.done) {
                    return;
                }
                if (this.outstanding == 0) {
                    this.done = true;
                    if (this.listener == null) {
                        notifyAll();
                        return;
                    }
                }
                if (this.done) {
                    if (!(this.thrown instanceof Exception)) {
                        this.thrown = new RuntimeException(this.thrown.getMessage());
                    }
                    this.listener.handleException(this, (Exception) this.thrown);
                }
            }
        }

        @Override // org.xbill.DNS.ResolverListener
        public void receiveMessage(Object obj, Message message) {
            if (Options.check("verbose")) {
                System.err.println("ExtendedResolver: received message");
            }
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.response = message;
                this.done = true;
                ResolverListener resolverListener = this.listener;
                if (resolverListener == null) {
                    notifyAll();
                } else {
                    resolverListener.receiveMessage(this, message);
                }
            }
        }

        public void send(int i4) {
            int[] iArr = this.sent;
            iArr[i4] = iArr[i4] + 1;
            this.outstanding++;
            try {
                this.inprogress[i4] = this.resolvers[i4].sendAsync(this.query, this);
            } catch (Throwable th) {
                synchronized (this) {
                    this.thrown = th;
                    this.done = true;
                    if (this.listener == null) {
                        notifyAll();
                    }
                }
            }
        }

        public Message start() throws IOException {
            try {
                int[] iArr = this.sent;
                iArr[0] = iArr[0] + 1;
                this.outstanding++;
                this.inprogress[0] = new Object();
                return this.resolvers[0].send(this.query);
            } catch (Exception e4) {
                handleException(this.inprogress[0], e4);
                synchronized (this) {
                    while (!this.done) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                    Message message = this.response;
                    if (message != null) {
                        return message;
                    }
                    Throwable th = this.thrown;
                    if (th instanceof IOException) {
                        throw ((IOException) th);
                    }
                    if (th instanceof RuntimeException) {
                        throw ((RuntimeException) th);
                    }
                    if (th instanceof Error) {
                        throw ((Error) th);
                    }
                    throw new IllegalStateException("ExtendedResolver failure");
                }
            }
        }

        public void startAsync(ResolverListener resolverListener) {
            this.listener = resolverListener;
            send(0);
        }
    }

    public ExtendedResolver() {
        init();
        String[] strArrServers = ResolverConfig.getCurrentConfig().servers();
        if (strArrServers == null) {
            this.resolvers.add(new SimpleResolver());
            return;
        }
        for (String str : strArrServers) {
            SimpleResolver simpleResolver = new SimpleResolver(str);
            simpleResolver.setTimeout(5);
            this.resolvers.add(simpleResolver);
        }
    }

    public static /* synthetic */ int access$208(ExtendedResolver extendedResolver) {
        int i4 = extendedResolver.lbStart;
        extendedResolver.lbStart = i4 + 1;
        return i4;
    }

    private void init() {
        this.resolvers = new ArrayList();
    }

    public void addResolver(Resolver resolver) {
        this.resolvers.add(resolver);
    }

    public void deleteResolver(Resolver resolver) {
        this.resolvers.remove(resolver);
    }

    public Resolver getResolver(int i4) {
        if (i4 < this.resolvers.size()) {
            return (Resolver) this.resolvers.get(i4);
        }
        return null;
    }

    public Resolver[] getResolvers() {
        List list = this.resolvers;
        return (Resolver[]) list.toArray(new Resolver[list.size()]);
    }

    @Override // org.xbill.DNS.Resolver
    public Message send(Message message) {
        return new Resolution(this, message).start();
    }

    @Override // org.xbill.DNS.Resolver
    public Object sendAsync(Message message, ResolverListener resolverListener) {
        Resolution resolution = new Resolution(this, message);
        resolution.startAsync(resolverListener);
        return resolution;
    }

    @Override // org.xbill.DNS.Resolver
    public void setEDNS(int i4) {
        for (int i5 = 0; i5 < this.resolvers.size(); i5++) {
            ((Resolver) this.resolvers.get(i5)).setEDNS(i4);
        }
    }

    @Override // org.xbill.DNS.Resolver
    public void setIgnoreTruncation(boolean z3) {
        for (int i4 = 0; i4 < this.resolvers.size(); i4++) {
            ((Resolver) this.resolvers.get(i4)).setIgnoreTruncation(z3);
        }
    }

    public void setLoadBalance(boolean z3) {
        this.loadBalance = z3;
    }

    @Override // org.xbill.DNS.Resolver
    public void setPort(int i4) {
        for (int i5 = 0; i5 < this.resolvers.size(); i5++) {
            ((Resolver) this.resolvers.get(i5)).setPort(i4);
        }
    }

    public void setRetries(int i4) {
        this.retries = i4;
    }

    @Override // org.xbill.DNS.Resolver
    public void setTCP(boolean z3) {
        for (int i4 = 0; i4 < this.resolvers.size(); i4++) {
            ((Resolver) this.resolvers.get(i4)).setTCP(z3);
        }
    }

    @Override // org.xbill.DNS.Resolver
    public void setTSIGKey(TSIG tsig) {
        for (int i4 = 0; i4 < this.resolvers.size(); i4++) {
            ((Resolver) this.resolvers.get(i4)).setTSIGKey(tsig);
        }
    }

    @Override // org.xbill.DNS.Resolver
    public void setTimeout(int i4, int i5) {
        for (int i6 = 0; i6 < this.resolvers.size(); i6++) {
            ((Resolver) this.resolvers.get(i6)).setTimeout(i4, i5);
        }
    }

    @Override // org.xbill.DNS.Resolver
    public void setEDNS(int i4, int i5, int i6, List list) {
        for (int i7 = 0; i7 < this.resolvers.size(); i7++) {
            ((Resolver) this.resolvers.get(i7)).setEDNS(i4, i5, i6, list);
        }
    }

    @Override // org.xbill.DNS.Resolver
    public void setTimeout(int i4) {
        setTimeout(i4, 0);
    }

    public ExtendedResolver(String[] strArr) {
        init();
        for (String str : strArr) {
            SimpleResolver simpleResolver = new SimpleResolver(str);
            simpleResolver.setTimeout(5);
            this.resolvers.add(simpleResolver);
        }
    }

    public ExtendedResolver(Resolver[] resolverArr) {
        init();
        for (Resolver resolver : resolverArr) {
            this.resolvers.add(resolver);
        }
    }
}
