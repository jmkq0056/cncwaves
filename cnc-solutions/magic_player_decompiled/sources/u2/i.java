package u2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f3585a;

    public i(v vVar) {
        if (vVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3585a = vVar;
    }

    @Override // u2.v
    public x a() {
        return this.f3585a.a();
    }

    @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3585a.close();
    }

    @Override // u2.v, java.io.Flushable
    public void flush() {
        this.f3585a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f3585a.toString() + ")";
    }
}
