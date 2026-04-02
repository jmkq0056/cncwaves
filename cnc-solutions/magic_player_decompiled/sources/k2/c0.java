package k2;

import java.io.Closeable;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 implements Closeable {
    public abstract long B();

    @Nullable
    public abstract t C();

    public abstract u2.g D();

    public final String E() {
        u2.g gVarD = D();
        try {
            t tVarC = C();
            Charset charsetForName = l2.c.f2445i;
            if (tVarC != null) {
                try {
                    String str = tVarC.f2202b;
                    if (str != null) {
                        charsetForName = Charset.forName(str);
                    }
                } catch (IllegalArgumentException unused) {
                }
            }
            return gVarD.z(l2.c.b(gVarD, charsetForName));
        } finally {
            l2.c.f(gVarD);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        l2.c.f(D());
    }
}
