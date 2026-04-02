package x2;

/* JADX INFO: loaded from: classes2.dex */
public class m extends Exception {
    private static final long serialVersionUID = 300;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f3981b;

    public m(int i4) {
        this.f3980a = i4;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f3981b;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        int i4 = this.f3980a;
        if (y2.h.f4131a == null) {
            try {
                if (q0.a.o("java.util.ResourceBundle")) {
                    y2.h.f4131a = (y2.h) y2.l.class.newInstance();
                } else if (q0.a.o("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog")) {
                    y2.h.f4131a = (y2.h) Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog").newInstance();
                }
            } catch (Exception unused) {
                return "";
            }
        }
        return y2.h.f4131a.a(i4);
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder(String.valueOf(getMessage()));
        sb.append(" (");
        String strA = android.support.v4.media.e.a(sb, this.f3980a, ")");
        if (this.f3981b == null) {
            return strA;
        }
        return String.valueOf(strA) + " - " + this.f3981b.toString();
    }

    public m(Throwable th) {
        this.f3980a = 0;
        this.f3981b = th;
    }

    public m(int i4, Throwable th) {
        this.f3980a = i4;
        this.f3981b = th;
    }
}
