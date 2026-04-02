package m;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile f f2475c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<d> f2476a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f2477b;

    public static f a() {
        if (f2475c == null) {
            synchronized (f.class) {
                if (f2475c == null) {
                    f2475c = new f();
                }
            }
        }
        return f2475c;
    }

    public final void b() {
        Handler handler = this.f2477b;
        if (handler == null || !handler.getLooper().getThread().isAlive()) {
            HandlerThread handlerThread = new HandlerThread("SerialServices");
            handlerThread.start();
            Handler handler2 = new Handler(handlerThread.getLooper(), this);
            this.f2477b = handler2;
            handler2.post(e.f2472b);
        }
    }

    public final void c(int i4) {
        ArrayList<String> arrayList = new ArrayList();
        int i5 = cn.huidu.lcd.core.a.f337c;
        if (SystemProperties.get("ro.product.hd_model").equals("3288S")) {
            i5 = 40;
        }
        if (i5 == 39) {
            arrayList.add("/dev/ttyS0");
        } else if (i5 == 40) {
            arrayList.add("/dev/ttyS1");
        } else if (i5 == 101) {
            arrayList.add("/dev/ttyXRUSB3");
        } else {
            if (i5 != 102) {
                Log.w("SerialServices", "Unsupported device type: " + i5);
                return;
            }
            arrayList.add("/dev/ttyS4");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        synchronized (this.f2476a) {
            for (String str : arrayList) {
                boolean z3 = false;
                Iterator<d> it = this.f2476a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    d next = it.next();
                    if (str.equals(next.f2466a.f3418a)) {
                        z3 = true;
                        next.f2471f = i4;
                        next.d();
                        break;
                    }
                }
                if (!z3) {
                    c cVar = new c(str);
                    cVar.f2471f = i4;
                    cVar.d();
                    this.f2476a.add(cVar);
                }
            }
        }
    }

    public void d(int i4) {
        c(i4);
        if (this.f2476a.isEmpty()) {
            return;
        }
        b();
        Handler handler = this.f2477b;
        if (handler != null) {
            handler.removeMessages(1);
            handler.sendEmptyMessageDelayed(1, 20000L);
        }
    }

    public void e() {
        synchronized (this.f2476a) {
            for (d dVar : this.f2476a) {
                dVar.f2469d = false;
                Thread thread = dVar.f2468c;
                if (thread != null && thread.isAlive()) {
                    try {
                        dVar.f2468c.interrupt();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public void f(byte[] bArr) {
        b();
        synchronized (this.f2476a) {
            Iterator<d> it = this.f2476a.iterator();
            while (it.hasNext()) {
                it.next().e(bArr);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what == 1) {
            synchronized (this.f2476a) {
                Iterator<d> it = this.f2476a.iterator();
                while (it.hasNext()) {
                    it.next().c();
                }
            }
            Handler handler = this.f2477b;
            if (handler != null) {
                handler.removeMessages(1);
                handler.sendEmptyMessageDelayed(1, 20000L);
            }
        }
        return true;
    }
}
