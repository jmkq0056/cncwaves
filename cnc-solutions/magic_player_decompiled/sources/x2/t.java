package x2;

import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class t implements q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f3987e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f3988a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "x2.t");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public y2.a f3989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Timer f3990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3991d;

    public class a extends TimerTask {
        public a(a aVar) {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            c3.b bVar = t.this.f3988a;
            int i4 = t.f3987e;
            bVar.d("x2.t", "PingTask.run", "660", new Object[]{Long.valueOf(System.nanoTime())});
            y2.a aVar = t.this.f3989b;
            Objects.requireNonNull(aVar);
            try {
                aVar.f4021i.a(null);
            } catch (m e4) {
                aVar.d(e4);
            } catch (Exception e5) {
                aVar.d(e5);
            }
        }
    }
}
