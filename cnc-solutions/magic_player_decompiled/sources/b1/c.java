package b1;

/* JADX INFO: loaded from: classes.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f179b;

    public c() {
        this(15000L, 5000L);
    }

    public static void e(k kVar, long j4) {
        long currentPosition = kVar.getCurrentPosition() + j4;
        long duration = kVar.getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        kVar.f(kVar.t(), Math.max(currentPosition, 0L));
    }

    public boolean a(k kVar) {
        if (!c() || !kVar.l()) {
            return true;
        }
        e(kVar, this.f179b);
        return true;
    }

    public boolean b(k kVar) {
        if (!d() || !kVar.l()) {
            return true;
        }
        e(kVar, -this.f178a);
        return true;
    }

    public boolean c() {
        return this.f179b > 0;
    }

    public boolean d() {
        return this.f178a > 0;
    }

    public c(long j4, long j5) {
        this.f179b = j4;
        this.f178a = j5;
    }
}
