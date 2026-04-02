package n3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j3.a<T, ?> f2777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t1.b f2778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String[] f2780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Thread f2781e = Thread.currentThread();

    public a(j3.a<T, ?> aVar, String str, String[] strArr) {
        this.f2777a = aVar;
        this.f2778b = new t1.b((j3.a) aVar);
        this.f2779c = str;
        this.f2780d = strArr;
    }

    public static String[] b(Object[] objArr) {
        int length = objArr.length;
        String[] strArr = new String[length];
        for (int i4 = 0; i4 < length; i4++) {
            Object obj = objArr[i4];
            if (obj != null) {
                strArr[i4] = obj.toString();
            } else {
                strArr[i4] = null;
            }
        }
        return strArr;
    }

    public void a() {
        if (Thread.currentThread() != this.f2781e) {
            throw new j3.d("Method may be called only in owner thread, use forCurrentThread to get an instance for this thread");
        }
    }
}
