package q0;

import android.util.Log;
import java.io.IOException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile d f3130g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Selector f3131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerSocketChannel f3132b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Thread f3134d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3136f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<c> f3135e = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3133c = false;

    public void a(c cVar) {
        cVar.g();
        synchronized (this.f3135e) {
            this.f3135e.remove(cVar);
        }
    }

    public final void b() {
        Selector selector = this.f3131a;
        if (selector != null) {
            try {
                selector.close();
                this.f3131a = null;
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        ServerSocketChannel serverSocketChannel = this.f3132b;
        if (serverSocketChannel != null) {
            try {
                serverSocketChannel.close();
                this.f3132b = null;
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        this.f3133c = false;
    }

    public final void c(SelectionKey selectionKey) {
        boolean z3;
        SelectableChannel selectableChannelChannel = selectionKey.channel();
        c cVar = null;
        SocketChannel socketChannelAccept = null;
        boolean zH = false;
        if (selectableChannelChannel == this.f3132b) {
            if (selectionKey.isAcceptable()) {
                try {
                    socketChannelAccept = this.f3132b.accept();
                    socketChannelAccept.configureBlocking(false);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                if (socketChannelAccept == null) {
                    Log.d("TcpServer", "accept client failed");
                } else {
                    try {
                        socketChannelAccept.register(this.f3131a, 1);
                        z3 = true;
                    } catch (ClosedChannelException e5) {
                        e5.printStackTrace();
                        z3 = false;
                    }
                    if (z3) {
                        c cVar2 = new c(socketChannelAccept);
                        synchronized (this.f3135e) {
                            this.f3135e.add(cVar2);
                        }
                        zH = true;
                    } else {
                        Log.d("TcpServer", "register selector failed");
                    }
                }
                if (zH) {
                    return;
                }
                Log.d("TcpServer", "accept client failed!");
                return;
            }
            return;
        }
        synchronized (this.f3135e) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.f3135e.size()) {
                    break;
                }
                c cVar3 = this.f3135e.get(i4);
                if (cVar3.f3114b == selectableChannelChannel) {
                    cVar = cVar3;
                    break;
                }
                i4++;
            }
        }
        if (cVar == null) {
            Log.d("TcpServer", "disposeEvent:: session not found!");
            return;
        }
        if (!selectionKey.isReadable()) {
            Log.d("TcpServer", "disposeEvent:: channel is not readable!");
            a(cVar);
            return;
        }
        try {
            zH = cVar.h();
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        if (zH) {
            return;
        }
        a(cVar);
    }
}
