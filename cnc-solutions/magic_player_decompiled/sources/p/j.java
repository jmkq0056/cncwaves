package p;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f2968c;

    public j(i iVar, int i4, Object obj) {
        this.f2968c = iVar;
        this.f2966a = i4;
        this.f2967b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i4 = this.f2966a;
        if (i4 > 0) {
            SystemClock.sleep(i4);
        }
        this.f2968c.b(this.f2967b);
        i iVar = this.f2968c;
        synchronized (iVar.f2964b) {
            iVar.f2964b.remove(this);
        }
    }
}
