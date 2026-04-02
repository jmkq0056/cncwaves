package w0;

import android.graphics.Typeface;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile g f3817b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Typeface> f3818a;

    public g() {
        HashMap map = new HashMap();
        this.f3818a = map;
        map.put("SANS_SERIF", Typeface.SANS_SERIF);
        map.put("MONOSPACE", Typeface.MONOSPACE);
        map.put("SERIF", Typeface.SERIF);
    }

    public static g b() {
        if (f3817b == null) {
            synchronized (g.class) {
                if (f3817b == null) {
                    f3817b = new g();
                }
            }
        }
        return f3817b;
    }

    public boolean a(String str, String str2) {
        Typeface typefaceCreateFromFile;
        try {
            typefaceCreateFromFile = Typeface.createFromFile(str2);
        } catch (Exception unused) {
            typefaceCreateFromFile = null;
        }
        if (typefaceCreateFromFile == null || typefaceCreateFromFile == Typeface.DEFAULT) {
            return false;
        }
        android.support.v4.media.c.a("addTypeface: ", str, "TypefaceManager");
        synchronized (this.f3818a) {
            this.f3818a.put(str, typefaceCreateFromFile);
        }
        return true;
    }

    public Typeface c(String str) {
        Typeface typeface;
        synchronized (this.f3818a) {
            typeface = this.f3818a.get(str);
            if (typeface == null) {
                typeface = Typeface.DEFAULT;
            }
        }
        return typeface;
    }
}
