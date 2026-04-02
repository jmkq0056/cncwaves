package l;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile m f2360a;

    public static m a() {
        if (f2360a == null) {
            synchronized (m.class) {
                if (f2360a == null) {
                    f2360a = new m();
                }
            }
        }
        return f2360a;
    }
}
