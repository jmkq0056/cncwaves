package g2;

/* JADX INFO: loaded from: classes2.dex */
public class u extends Exception {
    private Throwable rootCause;

    public u() {
    }

    public Throwable getRootCause() {
        return this.rootCause;
    }

    public u(String str) {
        super(str);
    }

    public u(String str, Throwable th) {
        super(str, th);
        this.rootCause = th;
    }

    public u(Throwable th) {
        super(th);
        this.rootCause = th;
    }
}
