package c3;

import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Logger f319a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResourceBundle f320b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ResourceBundle f321c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f322d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f323e = null;

    @Override // c3.b
    public void a(String str, String str2, String str3) {
        m(6, str, str2, str3, null, null);
    }

    @Override // c3.b
    public void b(String str, String str2, String str3, Object[] objArr, Throwable th) {
        m(5, str, str2, str3, objArr, th);
    }

    @Override // c3.b
    public void c(String str, String str2, String str3, Object[] objArr) {
        j(1, str, str2, str3, objArr, null);
    }

    @Override // c3.b
    public void d(String str, String str2, String str3, Object[] objArr) {
        m(5, str, str2, str3, objArr, null);
    }

    @Override // c3.b
    public boolean e(int i4) {
        return this.f319a.isLoggable(l(i4));
    }

    @Override // c3.b
    public void f(ResourceBundle resourceBundle, String str, String str2) {
        this.f321c = this.f320b;
        this.f322d = str2;
        this.f323e = str;
        this.f319a = Logger.getLogger(str);
        this.f320b = resourceBundle;
        this.f321c = resourceBundle;
        resourceBundle.getString("0");
    }

    @Override // c3.b
    public void g(String str, String str2, String str3, Object[] objArr, Throwable th) {
        j(2, str, str2, str3, objArr, th);
    }

    @Override // c3.b
    public void h(String str, String str2, String str3) {
        m(5, str, str2, str3, null, null);
    }

    @Override // c3.b
    public void i(String str) {
        this.f322d = str;
    }

    public void j(int i4, String str, String str2, String str3, Object[] objArr, Throwable th) {
        Level levelL = l(i4);
        if (this.f319a.isLoggable(levelL)) {
            k(levelL, str, str2, this.f320b, str3, objArr, th);
        }
    }

    public final void k(Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Object[] objArr, Throwable th) {
        if (!str3.contains("=====")) {
            try {
                str3 = resourceBundle.getString(str3);
            } catch (MissingResourceException unused) {
            }
            str3 = MessageFormat.format(str3, objArr);
        }
        LogRecord logRecord = new LogRecord(level, android.support.v4.media.b.a(new StringBuilder(String.valueOf(this.f322d)), ": ", str3));
        logRecord.setSourceClassName(str);
        logRecord.setSourceMethodName(str2);
        logRecord.setLoggerName(this.f323e);
        if (th != null) {
            logRecord.setThrown(th);
        }
        this.f319a.log(logRecord);
    }

    public final Level l(int i4) {
        switch (i4) {
            case 1:
                return Level.SEVERE;
            case 2:
                return Level.WARNING;
            case 3:
                return Level.INFO;
            case 4:
                return Level.CONFIG;
            case 5:
                return Level.FINE;
            case 6:
                return Level.FINER;
            case 7:
                return Level.FINEST;
            default:
                return null;
        }
    }

    public void m(int i4, String str, String str2, String str3, Object[] objArr, Throwable th) {
        Level levelL = l(i4);
        if (this.f319a.isLoggable(levelL)) {
            k(levelL, str, str2, this.f321c, str3, objArr, th);
        }
    }
}
