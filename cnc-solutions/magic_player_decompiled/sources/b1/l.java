package b1;

import android.net.Uri;
import androidx.annotation.Nullable;
import b1.g;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    public static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Object f228c = new Object();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final g f229d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f230a = f228c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public g f231b = f229d;

        static {
            Collections.emptyList();
            Collections.emptyMap();
            List listEmptyList = Collections.emptyList();
            List listEmptyList2 = Collections.emptyList();
            Uri uri = Uri.EMPTY;
            o1.a.b(true);
            g.d dVar = uri != null ? new g.d(uri, null, null, listEmptyList, null, listEmptyList2, null, null, null) : null;
            Objects.requireNonNull("com.google.android.exoplayer2.Timeline");
            f229d = new g("com.google.android.exoplayer2.Timeline", new g.b(0L, Long.MIN_VALUE, false, false, false, null), dVar, new h(null, null), null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !a.class.equals(obj.getClass())) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = f228c;
            return o1.e.a(obj2, obj2) && o1.e.a(this.f231b, aVar.f231b) && o1.e.a(null, null);
        }

        public int hashCode() {
            int i4 = (int) 0;
            return ((((((((((((((((((((((((((this.f231b.hashCode() + ((f228c.hashCode() + 217) * 31)) * 31) + 0) * 31) + i4) * 31) + i4) * 31) + i4) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + i4) * 31) + i4) * 31) + 0) * 31) + 0) * 31) + i4;
        }
    }
}
