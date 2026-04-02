package g2;

/* JADX INFO: loaded from: classes2.dex */
public class k0 extends u {
    private boolean permanent;
    private int seconds;
    private n servlet;

    public k0(n nVar, String str) {
        super(str);
        this.servlet = nVar;
        this.permanent = true;
    }

    public n getServlet() {
        return this.servlet;
    }

    public int getUnavailableSeconds() {
        if (this.permanent) {
            return -1;
        }
        return this.seconds;
    }

    public boolean isPermanent() {
        return this.permanent;
    }

    public k0(int i4, n nVar, String str) {
        super(str);
        this.servlet = nVar;
        if (i4 <= 0) {
            this.seconds = -1;
        } else {
            this.seconds = i4;
        }
        this.permanent = false;
    }

    public k0(String str) {
        super(str);
        this.permanent = true;
    }

    public k0(String str, int i4) {
        super(str);
        if (i4 <= 0) {
            this.seconds = -1;
        } else {
            this.seconds = i4;
        }
        this.permanent = false;
    }
}
