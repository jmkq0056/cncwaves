package r2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class<?> f3382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f3383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3384c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File, java.lang.Class<?>] */
    public e(File file, String str) throws Exception {
        this.f3382a = new File(file, str);
        if (q0.a.o("java.nio.channels.FileLock")) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile((File) this.f3382a, "rw");
                this.f3383b = randomAccessFile;
                Object objInvoke = randomAccessFile.getClass().getMethod("getChannel", new Class[0]).invoke((RandomAccessFile) this.f3383b, new Object[0]);
                this.f3384c = objInvoke.getClass().getMethod("tryLock", new Class[0]).invoke(objInvoke, new Object[0]);
            } catch (IllegalAccessException unused) {
                this.f3384c = null;
            } catch (IllegalArgumentException unused2) {
                this.f3384c = null;
            } catch (NoSuchMethodException unused3) {
                this.f3384c = null;
            }
            if (this.f3384c != null) {
                return;
            }
            e();
            throw new Exception("Problem obtaining file lock");
        }
    }

    public Method a(Class<?> cls) {
        Method method;
        Class<?> cls2;
        String str = (String) this.f3383b;
        if (str == null) {
            return null;
        }
        try {
            method = cls.getMethod(str, (Class[]) this.f3384c);
        } catch (NoSuchMethodException unused) {
        }
        if ((method.getModifiers() & 1) == 0) {
            method = null;
        }
        if (method == null || (cls2 = this.f3382a) == null || cls2.isAssignableFrom(method.getReturnType())) {
            return method;
        }
        return null;
    }

    public Object b(T t3, Object... objArr) {
        Method methodA = a(t3.getClass());
        if (methodA == null) {
            StringBuilder sbA = android.support.v4.media.f.a("Method ");
            sbA.append((String) this.f3383b);
            sbA.append(" not supported for object ");
            sbA.append(t3);
            throw new AssertionError(sbA.toString());
        }
        try {
            return methodA.invoke(t3, objArr);
        } catch (IllegalAccessException e4) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e4);
            throw assertionError;
        }
    }

    public Object c(T t3, Object... objArr) {
        try {
            Method methodA = a(t3.getClass());
            if (methodA == null) {
                return null;
            }
            try {
                return methodA.invoke(t3, objArr);
            } catch (IllegalAccessException unused) {
                return null;
            }
        } catch (InvocationTargetException e4) {
            Throwable targetException = e4.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object d(T t3, Object... objArr) {
        try {
            return b(t3, objArr);
        } catch (InvocationTargetException e4) {
            Throwable targetException = e4.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public void e() {
        try {
            Object obj = this.f3384c;
            if (obj != null) {
                obj.getClass().getMethod("release", new Class[0]).invoke(this.f3384c, new Object[0]);
                this.f3384c = null;
            }
        } catch (Exception unused) {
        }
        Object obj2 = this.f3383b;
        if (((RandomAccessFile) obj2) != null) {
            try {
                ((RandomAccessFile) obj2).close();
            } catch (IOException unused2) {
            }
            this.f3383b = null;
        }
        Object obj3 = this.f3382a;
        if (((File) obj3) != null && ((File) obj3).exists()) {
            ((File) this.f3382a).delete();
        }
        this.f3382a = null;
    }

    public e(Class cls, String str, Class[] clsArr) {
        this.f3382a = cls;
        this.f3383b = str;
        this.f3384c = clsArr;
    }
}
