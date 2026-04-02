package t1;

import android.database.Cursor;
import java.lang.reflect.Field;
import java.util.LinkedHashSet;
import java.util.Set;
import k2.d0;
import net.sqlcipher.database.SQLiteDatabase;
import net.sqlcipher.database.SQLiteStatement;
import rx.Scheduler;

/* JADX INFO: loaded from: classes2.dex */
public class b implements org.greenrobot.greendao.database.a, org.greenrobot.greendao.database.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3529b;

    public b(Object obj) {
        this.f3528a = 1;
        this.f3529b = obj;
    }

    private Object A() {
        return (SQLiteStatement) this.f3529b;
    }

    private boolean C() {
        return ((SQLiteDatabase) this.f3529b).isDbLockedByCurrentThread();
    }

    private Cursor E(String str, String[] strArr) {
        return ((SQLiteDatabase) this.f3529b).rawQuery(str, strArr);
    }

    private void G() {
        ((SQLiteDatabase) this.f3529b).setTransactionSuccessful();
    }

    private long I() {
        return ((SQLiteStatement) this.f3529b).simpleQueryForLong();
    }

    private void b() {
        ((SQLiteDatabase) this.f3529b).beginTransaction();
    }

    private void d(int i4, double d4) {
        ((SQLiteStatement) this.f3529b).bindDouble(i4, d4);
    }

    private void f(int i4, long j4) {
        ((SQLiteStatement) this.f3529b).bindLong(i4, j4);
    }

    private void h(int i4, String str) {
        ((SQLiteStatement) this.f3529b).bindString(i4, str);
    }

    private void j() {
        ((SQLiteStatement) this.f3529b).clearBindings();
    }

    private void l() {
        ((SQLiteStatement) this.f3529b).close();
    }

    private org.greenrobot.greendao.database.c n(String str) {
        return new b(((SQLiteDatabase) this.f3529b).compileStatement(str));
    }

    private void q() {
        ((SQLiteDatabase) this.f3529b).endTransaction();
    }

    private void s(String str) {
        ((SQLiteDatabase) this.f3529b).execSQL(str);
    }

    private void u() {
        ((SQLiteStatement) this.f3529b).execute();
    }

    private long w() {
        return ((SQLiteStatement) this.f3529b).executeInsert();
    }

    private Object y() {
        return (SQLiteDatabase) this.f3529b;
    }

    public boolean B() {
        switch (this.f3528a) {
            case 4:
                return C();
            default:
                return ((android.database.sqlite.SQLiteDatabase) this.f3529b).isDbLockedByCurrentThread();
        }
    }

    public Cursor D(String str, String[] strArr) {
        switch (this.f3528a) {
            case 4:
                return E(str, strArr);
            default:
                return ((android.database.sqlite.SQLiteDatabase) this.f3529b).rawQuery(str, strArr);
        }
    }

    public void F() {
        switch (this.f3528a) {
            case 4:
                G();
                break;
            default:
                ((android.database.sqlite.SQLiteDatabase) this.f3529b).setTransactionSuccessful();
                break;
        }
    }

    public long H() {
        switch (this.f3528a) {
            case 5:
                return I();
            default:
                return ((android.database.sqlite.SQLiteStatement) this.f3529b).simpleQueryForLong();
        }
    }

    public void a() {
        switch (this.f3528a) {
            case 4:
                b();
                break;
            default:
                ((android.database.sqlite.SQLiteDatabase) this.f3529b).beginTransaction();
                break;
        }
    }

    public void c(int i4, double d4) {
        switch (this.f3528a) {
            case 5:
                d(i4, d4);
                break;
            default:
                ((android.database.sqlite.SQLiteStatement) this.f3529b).bindDouble(i4, d4);
                break;
        }
    }

    public void e(int i4, long j4) {
        switch (this.f3528a) {
            case 5:
                f(i4, j4);
                break;
            default:
                ((android.database.sqlite.SQLiteStatement) this.f3529b).bindLong(i4, j4);
                break;
        }
    }

    public void g(int i4, String str) {
        switch (this.f3528a) {
            case 5:
                h(i4, str);
                break;
            default:
                ((android.database.sqlite.SQLiteStatement) this.f3529b).bindString(i4, str);
                break;
        }
    }

    public void i() {
        switch (this.f3528a) {
            case 5:
                j();
                break;
            default:
                ((android.database.sqlite.SQLiteStatement) this.f3529b).clearBindings();
                break;
        }
    }

    public void k() {
        switch (this.f3528a) {
            case 5:
                l();
                break;
            default:
                ((android.database.sqlite.SQLiteStatement) this.f3529b).close();
                break;
        }
    }

    public org.greenrobot.greendao.database.c m(String str) {
        switch (this.f3528a) {
            case 4:
                return n(str);
            default:
                return new b(((android.database.sqlite.SQLiteDatabase) this.f3529b).compileStatement(str));
        }
    }

    public synchronized void o(d0 d0Var) {
        ((Set) this.f3529b).remove(d0Var);
    }

    public void p() {
        switch (this.f3528a) {
            case 4:
                q();
                break;
            default:
                ((android.database.sqlite.SQLiteDatabase) this.f3529b).endTransaction();
                break;
        }
    }

    public void r(String str) {
        switch (this.f3528a) {
            case 4:
                s(str);
                break;
            default:
                ((android.database.sqlite.SQLiteDatabase) this.f3529b).execSQL(str);
                break;
        }
    }

    public void t() {
        switch (this.f3528a) {
            case 5:
                u();
                break;
            default:
                ((android.database.sqlite.SQLiteStatement) this.f3529b).execute();
                break;
        }
    }

    public long v() {
        switch (this.f3528a) {
            case 5:
                return w();
            default:
                return ((android.database.sqlite.SQLiteStatement) this.f3529b).executeInsert();
        }
    }

    public Object x() {
        switch (this.f3528a) {
            case 4:
                return y();
            default:
                return (android.database.sqlite.SQLiteDatabase) this.f3529b;
        }
    }

    public Object z() {
        switch (this.f3528a) {
            case 5:
                return A();
            default:
                return (android.database.sqlite.SQLiteStatement) this.f3529b;
        }
    }

    public b(android.database.sqlite.SQLiteStatement sQLiteStatement) {
        this.f3528a = 7;
        this.f3529b = sQLiteStatement;
    }

    public b(SQLiteStatement sQLiteStatement) {
        this.f3528a = 5;
        this.f3529b = sQLiteStatement;
    }

    public b(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        this.f3528a = 6;
        this.f3529b = sQLiteDatabase;
    }

    public b(SQLiteDatabase sQLiteDatabase) {
        this.f3528a = 4;
        this.f3529b = sQLiteDatabase;
    }

    public b(int i4) {
        this.f3528a = i4;
        if (i4 != 8) {
            this.f3529b = new LinkedHashSet();
        } else {
            this.f3529b = null;
        }
    }

    public b(j3.a aVar) {
        this.f3528a = 3;
        this.f3529b = aVar;
    }

    public b(Field field) {
        this.f3528a = 0;
        this.f3529b = field;
    }

    public b(Scheduler scheduler) {
        this.f3528a = 8;
        this.f3529b = scheduler;
    }
}
