package t1;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {
    public s a() {
        if (this instanceof s) {
            return (s) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            a2.c cVar = new a2.c(stringWriter);
            cVar.f90f = true;
            w1.o.C.b(cVar, this);
            return stringWriter.toString();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }
}
