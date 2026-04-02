package o1;

import androidx.annotation.Nullable;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static void a(boolean z3) {
        if (!z3) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z3) {
        if (!z3) {
            throw new IllegalStateException();
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T c(@Nullable T t3) {
        if (t3 != null) {
            return t3;
        }
        throw new IllegalStateException();
    }
}
