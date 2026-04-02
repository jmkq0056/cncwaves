package org.xbill.DNS;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Iterator;
import java.util.List;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleResolver implements Resolver {
    public static final int DEFAULT_EDNS_PAYLOADSIZE = 1280;
    public static final int DEFAULT_PORT = 53;
    private static final short DEFAULT_UDPSIZE = 512;
    private static String defaultResolver = "localhost";
    private static int uniqueID;
    private InetSocketAddress address;
    private boolean ignoreTruncation;
    private InetSocketAddress localAddress;
    private OPTRecord queryOPT;
    private long timeoutValue;
    private TSIG tsig;
    private boolean useTCP;

    public SimpleResolver(String str) {
        this.timeoutValue = 10000L;
        if (str == null && (str = ResolverConfig.getCurrentConfig().server()) == null) {
            str = defaultResolver;
        }
        this.address = new InetSocketAddress(str.equals("0") ? InetAddress.getLocalHost() : InetAddress.getByName(str), 53);
    }

    private void applyEDNS(Message message) {
        if (this.queryOPT == null || message.getOPT() != null) {
            return;
        }
        message.addRecord(this.queryOPT, 3);
    }

    private int maxUDPSize(Message message) {
        OPTRecord opt = message.getOPT();
        if (opt == null) {
            return 512;
        }
        return opt.getPayloadSize();
    }

    private Message parseMessage(byte[] bArr) throws WireParseException {
        try {
            return new Message(bArr);
        } catch (IOException e4) {
            e = e4;
            if (Options.check("verbose")) {
                e.printStackTrace();
            }
            if (!(e instanceof WireParseException)) {
                e = new WireParseException("Error parsing message");
            }
            throw ((WireParseException) e);
        }
    }

    private Message sendAXFR(Message message) throws WireParseException {
        ZoneTransferIn zoneTransferInNewAXFR = ZoneTransferIn.newAXFR(message.getQuestion().getName(), this.address, this.tsig);
        zoneTransferInNewAXFR.setTimeout((int) (getTimeout() / 1000));
        zoneTransferInNewAXFR.setLocalAddress(this.localAddress);
        try {
            zoneTransferInNewAXFR.run();
            List axfr = zoneTransferInNewAXFR.getAXFR();
            Message message2 = new Message(message.getHeader().getID());
            message2.getHeader().setFlag(5);
            message2.getHeader().setFlag(0);
            message2.addRecord(message.getQuestion(), 0);
            Iterator it = axfr.iterator();
            while (it.hasNext()) {
                message2.addRecord((Record) it.next(), 1);
            }
            return message2;
        } catch (ZoneTransferException e4) {
            throw new WireParseException(e4.getMessage());
        }
    }

    public static void setDefaultResolver(String str) {
        defaultResolver = str;
    }

    private void verifyTSIG(Message message, Message message2, byte[] bArr, TSIG tsig) {
        if (tsig == null) {
            return;
        }
        int iVerify = tsig.verify(message2, bArr, message.getTSIG());
        if (Options.check("verbose")) {
            PrintStream printStream = System.err;
            StringBuffer stringBufferA = e.a("TSIG verify: ");
            stringBufferA.append(Rcode.TSIGstring(iVerify));
            printStream.println(stringBufferA.toString());
        }
    }

    public InetSocketAddress getAddress() {
        return this.address;
    }

    public TSIG getTSIGKey() {
        return this.tsig;
    }

    public long getTimeout() {
        return this.timeoutValue;
    }

    @Override // org.xbill.DNS.Resolver
    public Message send(Message message) throws WireParseException {
        Message message2;
        Record question;
        if (Options.check("verbose")) {
            PrintStream printStream = System.err;
            StringBuffer stringBufferA = e.a("Sending to ");
            stringBufferA.append(this.address.getAddress().getHostAddress());
            stringBufferA.append(":");
            stringBufferA.append(this.address.getPort());
            printStream.println(stringBufferA.toString());
        }
        if (message.getHeader().getOpcode() == 0 && (question = message.getQuestion()) != null && question.getType() == 252) {
            return sendAXFR(message);
        }
        Message message3 = (Message) message.clone();
        applyEDNS(message3);
        TSIG tsig = this.tsig;
        if (tsig != null) {
            tsig.apply(message3, null);
        }
        byte[] wire = message3.toWire(65535);
        int iMaxUDPSize = maxUDPSize(message3);
        long jCurrentTimeMillis = System.currentTimeMillis() + this.timeoutValue;
        boolean z3 = false;
        while (true) {
            boolean z4 = (this.useTCP || wire.length > iMaxUDPSize) ? true : z3;
            byte[] bArrSendrecv = z4 ? TCPClient.sendrecv(this.localAddress, this.address, wire, jCurrentTimeMillis) : UDPClient.sendrecv(this.localAddress, this.address, wire, iMaxUDPSize, jCurrentTimeMillis);
            if (bArrSendrecv.length < 12) {
                throw new WireParseException("invalid DNS header - too short");
            }
            int i4 = ((bArrSendrecv[0] & 255) << 8) + (bArrSendrecv[1] & 255);
            int id = message3.getHeader().getID();
            if (i4 != id) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("invalid message id: expected ");
                stringBuffer.append(id);
                stringBuffer.append("; got id ");
                stringBuffer.append(i4);
                String string = stringBuffer.toString();
                if (z4) {
                    throw new WireParseException(string);
                }
                if (Options.check("verbose")) {
                    System.err.println(string);
                }
                z3 = z4;
            } else {
                message2 = parseMessage(bArrSendrecv);
                verifyTSIG(message3, message2, bArrSendrecv, this.tsig);
                if (z4 || this.ignoreTruncation || !message2.getHeader().getFlag(6)) {
                    break;
                }
                z3 = true;
            }
        }
        return message2;
    }

    @Override // org.xbill.DNS.Resolver
    public Object sendAsync(Message message, ResolverListener resolverListener) {
        Integer num;
        synchronized (this) {
            int i4 = uniqueID;
            uniqueID = i4 + 1;
            num = new Integer(i4);
        }
        Record question = message.getQuestion();
        String string = question != null ? question.getName().toString() : "(none)";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getClass());
        stringBuffer.append(": ");
        stringBuffer.append(string);
        String string2 = stringBuffer.toString();
        ResolveThread resolveThread = new ResolveThread(this, message, num, resolverListener);
        resolveThread.setName(string2);
        resolveThread.setDaemon(true);
        resolveThread.start();
        return num;
    }

    public void setAddress(InetSocketAddress inetSocketAddress) {
        this.address = inetSocketAddress;
    }

    @Override // org.xbill.DNS.Resolver
    public void setEDNS(int i4, int i5, int i6, List list) {
        if (i4 != 0 && i4 != -1) {
            throw new IllegalArgumentException("invalid EDNS level - must be 0 or -1");
        }
        this.queryOPT = new OPTRecord(i5 == 0 ? DEFAULT_EDNS_PAYLOADSIZE : i5, 0, i4, i6, list);
    }

    @Override // org.xbill.DNS.Resolver
    public void setIgnoreTruncation(boolean z3) {
        this.ignoreTruncation = z3;
    }

    public void setLocalAddress(InetSocketAddress inetSocketAddress) {
        this.localAddress = inetSocketAddress;
    }

    @Override // org.xbill.DNS.Resolver
    public void setPort(int i4) {
        this.address = new InetSocketAddress(this.address.getAddress(), i4);
    }

    @Override // org.xbill.DNS.Resolver
    public void setTCP(boolean z3) {
        this.useTCP = z3;
    }

    @Override // org.xbill.DNS.Resolver
    public void setTSIGKey(TSIG tsig) {
        this.tsig = tsig;
    }

    @Override // org.xbill.DNS.Resolver
    public void setTimeout(int i4, int i5) {
        this.timeoutValue = (((long) i4) * 1000) + ((long) i5);
    }

    public void setAddress(InetAddress inetAddress) {
        this.address = new InetSocketAddress(inetAddress, this.address.getPort());
    }

    public void setLocalAddress(InetAddress inetAddress) {
        this.localAddress = new InetSocketAddress(inetAddress, 0);
    }

    @Override // org.xbill.DNS.Resolver
    public void setTimeout(int i4) {
        setTimeout(i4, 0);
    }

    @Override // org.xbill.DNS.Resolver
    public void setEDNS(int i4) {
        setEDNS(i4, 0, 0, null);
    }

    public SimpleResolver() {
        this(null);
    }
}
