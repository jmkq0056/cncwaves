package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MultiException extends Exception {
    private Object nested;

    public MultiException() {
        super("Multiple exceptions");
    }

    public void add(Throwable th) {
        if (!(th instanceof MultiException)) {
            this.nested = LazyList.add(this.nested, th);
            return;
        }
        MultiException multiException = (MultiException) th;
        for (int i4 = 0; i4 < LazyList.size(multiException.nested); i4++) {
            this.nested = LazyList.add(this.nested, LazyList.get(multiException.nested, i4));
        }
    }

    public Throwable getThrowable(int i4) {
        return (Throwable) LazyList.get(this.nested, i4);
    }

    public List<Throwable> getThrowables() {
        return LazyList.getList(this.nested);
    }

    public void ifExceptionThrow() throws Exception {
        int size = LazyList.size(this.nested);
        if (size != 0) {
            if (size != 1) {
                throw this;
            }
            Throwable th = (Throwable) LazyList.get(this.nested, 0);
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (!(th instanceof Exception)) {
                throw this;
            }
            throw ((Exception) th);
        }
    }

    public void ifExceptionThrowMulti() throws MultiException {
        if (LazyList.size(this.nested) > 0) {
            throw this;
        }
    }

    public void ifExceptionThrowRuntime() {
        int size = LazyList.size(this.nested);
        if (size != 0) {
            if (size != 1) {
                throw new RuntimeException(this);
            }
            Throwable th = (Throwable) LazyList.get(this.nested, 0);
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (!(th instanceof RuntimeException)) {
                throw new RuntimeException(th);
            }
            throw ((RuntimeException) th);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        super.printStackTrace();
        for (int i4 = 0; i4 < LazyList.size(this.nested); i4++) {
            ((Throwable) LazyList.get(this.nested, i4)).printStackTrace();
        }
    }

    public int size() {
        return LazyList.size(this.nested);
    }

    @Override // java.lang.Throwable
    public String toString() {
        if (LazyList.size(this.nested) <= 0) {
            return "MultiException[]";
        }
        StringBuilder sbA = f.a("MultiException");
        sbA.append(LazyList.getList(this.nested));
        return sbA.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        for (int i4 = 0; i4 < LazyList.size(this.nested); i4++) {
            ((Throwable) LazyList.get(this.nested, i4)).printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        for (int i4 = 0; i4 < LazyList.size(this.nested); i4++) {
            ((Throwable) LazyList.get(this.nested, i4)).printStackTrace(printWriter);
        }
    }
}
