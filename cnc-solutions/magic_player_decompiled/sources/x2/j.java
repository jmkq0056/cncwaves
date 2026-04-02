package x2;

import java.util.Enumeration;

/* JADX INFO: loaded from: classes2.dex */
public interface j extends AutoCloseable {
    void clear();

    @Override // java.lang.AutoCloseable
    void close();

    void g(String str, o oVar);

    o get(String str);

    void i(String str, String str2);

    void remove(String str);

    boolean v(String str);

    Enumeration x();
}
