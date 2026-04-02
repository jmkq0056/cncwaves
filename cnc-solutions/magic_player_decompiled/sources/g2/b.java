package g2;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private a context;
    private y request;
    private e0 response;
    private Throwable throwable;

    public b(a aVar) {
        this(aVar, null, null, null);
    }

    public a getAsyncContext() {
        return this.context;
    }

    public y getSuppliedRequest() {
        return this.request;
    }

    public e0 getSuppliedResponse() {
        return this.response;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public b(a aVar, y yVar, e0 e0Var) {
        this(aVar, yVar, e0Var, null);
    }

    public b(a aVar, Throwable th) {
        this(aVar, null, null, th);
    }

    public b(a aVar, y yVar, e0 e0Var, Throwable th) {
        this.context = aVar;
        this.request = yVar;
        this.response = e0Var;
        this.throwable = th;
    }
}
