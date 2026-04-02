package androidx.core.util;

import android.support.v4.media.f;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class Pair<F, S> {

    @Nullable
    public final F first;

    @Nullable
    public final S second;

    public Pair(@Nullable F f4, @Nullable S s3) {
        this.first = f4;
        this.second = s3;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(@Nullable A a4, @Nullable B b4) {
        return new Pair<>(a4, b4);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
    }

    public int hashCode() {
        F f4 = this.first;
        int iHashCode = f4 == null ? 0 : f4.hashCode();
        S s3 = this.second;
        return iHashCode ^ (s3 != null ? s3.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        StringBuilder sbA = f.a("Pair{");
        sbA.append(String.valueOf(this.first));
        sbA.append(" ");
        sbA.append(String.valueOf(this.second));
        sbA.append("}");
        return sbA.toString();
    }
}
