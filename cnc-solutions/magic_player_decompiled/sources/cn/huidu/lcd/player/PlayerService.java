package cn.huidu.lcd.player;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.v4.media.f;
import android.util.Log;
import cn.huidu.lcd.airplay.RaopServer;
import cn.huidu.lcd.dlna.MyUpnpService;
import d.d;
import e.a;
import j.c;
import java.util.Objects;
import n.k;
import org.greenrobot.eventbus.ThreadMode;
import s.h;
import t.g;

/* JADX INFO: loaded from: classes.dex */
public class PlayerService extends Service {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f406d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e.a f407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g f408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServiceConnection f409c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e.a c0020a;
            StringBuilder sbA = f.a("onServiceConnected: ");
            sbA.append(componentName.getClassName());
            h.a(sbA.toString());
            PlayerService playerService = PlayerService.this;
            int i4 = a.AbstractBinderC0019a.f1525a;
            if (iBinder == null) {
                c0020a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.huidu.lcd.core.IMonitorBinder");
                c0020a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e.a)) ? new a.AbstractBinderC0019a.C0020a(iBinder) : (e.a) iInterfaceQueryLocalInterface;
            }
            playerService.f407a = c0020a;
            try {
                Log.d("PlayerService", "onServiceConnected: monitor state: " + PlayerService.this.f407a.a());
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            StringBuilder sbA = f.a("onServiceDisconnected: ");
            sbA.append(componentName.getClassName());
            h.a(sbA.toString());
            PlayerService playerService = PlayerService.this;
            playerService.f407a = null;
            playerService.a();
        }
    }

    public class b extends e.b {
        public b(a aVar) {
        }
    }

    public final void a() {
        if (this.f407a != null) {
            Log.d("PlayerService", "bindDaemonService: already bound.");
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setClassName("cn.huidu.lcd.services", "cn.huidu.lcd.services.DaemonService");
            bindService(intent, this.f409c, 1);
            h.a("Bind daemon service success!");
        } catch (Exception e4) {
            e4.printStackTrace();
            h.a("Bind daemon service failed!");
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        h.a("PlayerService: onBind");
        return new b(null);
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(c cVar) {
        l.c cVarA = l.c.a();
        String str = cVarA.f2296b;
        if (cVar.f1932a) {
            if (!cVarA.L) {
                this.f408b.b(this);
                return;
            }
            g gVar = this.f408b;
            gVar.f3521f = str;
            try {
                bindService(new Intent(this, (Class<?>) MyUpnpService.class), gVar.f3522g, 1);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        if (cVar.f1933b) {
            if (cn.huidu.lcd.core.a.e()) {
                if (cVarA.M) {
                    h.a.t0(this, str);
                    return;
                } else {
                    h.a.w0(this);
                    return;
                }
            }
            return;
        }
        if (cVar.f1934c && cn.huidu.lcd.core.a.e()) {
            if (cVarA.N) {
                RaopServer.getInstance().startServer(str);
            } else {
                RaopServer.getInstance().stopServer();
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        h.a.q0(this);
        h.a("PlayerService: onCreate");
        this.f408b = new g();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        h.a.B0(this);
        h.a("PlayerService: onDestroy");
        this.f408b.b(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i4, int i5) {
        h.a("PlayerService: onStartCommand");
        if (cn.huidu.lcd.core.a.f340f) {
            Log.d("PlayerService", "onStartCommand: unsupported device!");
            return 2;
        }
        new Thread(new d(this)).start();
        s0.a aVarB = s0.a.b();
        Objects.requireNonNull(aVarB);
        h.a.q0(aVarB);
        if (q0.f.f3141i == null) {
            synchronized (q0.f.class) {
                if (q0.f.f3141i == null) {
                    q0.f.f3141i = new q0.f();
                }
            }
        }
        q0.f fVar = q0.f.f3141i;
        Objects.requireNonNull(fVar);
        Log.d("UdpServer", "open: ");
        fVar.f3149h = true;
        Thread thread = fVar.f3144c;
        if (thread == null || !thread.isAlive()) {
            Thread thread2 = new Thread(new d(fVar));
            fVar.f3144c = thread2;
            thread2.setName("UdpReceiveThread");
            fVar.f3144c.start();
        }
        if (q0.d.f3130g == null) {
            synchronized (q0.d.class) {
                if (q0.d.f3130g == null) {
                    q0.d.f3130g = new q0.d();
                }
            }
        }
        q0.d dVar = q0.d.f3130g;
        Objects.requireNonNull(dVar);
        Log.d("TcpServer", "open: ");
        dVar.f3136f = true;
        Thread thread3 = dVar.f3134d;
        if (thread3 == null || !thread3.isAlive()) {
            Thread thread4 = new Thread(new d(dVar));
            dVar.f3134d = thread4;
            thread4.setName("TcpReceiveThread");
            dVar.f3134d.start();
        }
        String str = l.c.a().f2296b;
        if (l.c.a().L) {
            g gVar = this.f408b;
            gVar.f3521f = str;
            try {
                bindService(new Intent(this, (Class<?>) MyUpnpService.class), gVar.f3522g, 1);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else {
            this.f408b.b(this);
        }
        if (cn.huidu.lcd.core.a.e()) {
            if (l.c.a().M) {
                h.a.t0(this, str);
            } else {
                h.a.w0(this);
            }
            if (l.c.a().N) {
                RaopServer.getInstance().startServer(str);
            } else {
                RaopServer.getInstance().stopServer();
            }
        }
        int i6 = ((k) l.b.c().a(k.class)).f2663c;
        if (i6 == 1) {
            p0.a.j().f2981l = 0;
            p0.a.j().k();
        } else if (i6 == 2) {
            p0.a.j().f2981l = 1;
            p0.a.j().k();
        }
        l.k.a();
        return 1;
    }
}
