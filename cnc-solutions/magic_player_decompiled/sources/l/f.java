package l;

import android.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile f f2323b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, String> f2324a = new HashMap();

    public static f a() {
        if (f2323b == null) {
            synchronized (f.class) {
                if (f2323b == null) {
                    f2323b = new f();
                }
            }
        }
        return f2323b;
    }

    public final void b() {
        Document documentS = q0.a.s(new File(e.j(), "contents.xml"));
        Map<? extends String, ? extends String> mapM = documentS != null ? y0.a.m(documentS.getDocumentElement(), Map.class, String.class, String.class, null) : null;
        if (mapM == null) {
            Log.d("FontFileManager", "load font list failed!");
        } else {
            this.f2324a.clear();
            this.f2324a.putAll(mapM);
        }
    }

    public void c() {
        synchronized (this.f2324a) {
            b();
            for (String str : this.f2324a.keySet()) {
                w0.g.b().a(str, this.f2324a.get(str));
            }
        }
    }
}
