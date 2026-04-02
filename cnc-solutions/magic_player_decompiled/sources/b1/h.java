package b1;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f225a = null;

    public h(String str, a aVar) {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        return o1.e.a(this.f225a, ((h) obj).f225a);
    }

    public int hashCode() {
        String str = this.f225a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }
}
