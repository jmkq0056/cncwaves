package h0;

import android.util.Log;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1809a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f1810b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f1811c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f1812d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f1813e;

        public b() {
        }

        public b(a aVar) {
        }
    }

    public final boolean a(String str, int i4, List<b> list) {
        if (str == null || str.length() == 0) {
            Log.d("ExtPlayTaskUpdater", "addFileInfo: empty file path!");
            return false;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            if (str.equals(list.get(i5).f1810b)) {
                return true;
            }
        }
        File file = new File(str);
        String strF = w0.h.f(file);
        if (strF == null) {
            android.support.v4.media.c.a("addFileInfo: exec md5sum error: ", str, "ExtPlayTaskUpdater");
            return false;
        }
        Log.d("ExtPlayTaskUpdater", "addFileInfo: " + str);
        b bVar = new b(null);
        bVar.f1809a = i4;
        bVar.f1810b = file.getAbsolutePath();
        bVar.f1811c = file.getName();
        bVar.f1813e = file.length();
        bVar.f1812d = strF;
        list.add(bVar);
        return true;
    }
}
