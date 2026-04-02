package org.greenrobot.greendao.database;

import android.content.Context;
import net.sqlcipher.database.SQLiteDatabase;
import net.sqlcipher.database.SQLiteOpenHelper;
import org.greenrobot.greendao.database.b;

/* JADX INFO: loaded from: classes2.dex */
class SqlCipherEncryptedHelper extends SQLiteOpenHelper implements b.a {
    private final b delegate;

    public SqlCipherEncryptedHelper(b bVar, Context context, String str, int i4, boolean z3) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i4);
        this.delegate = bVar;
        if (z3) {
            SQLiteDatabase.loadLibs(context);
        }
    }

    private a wrap(SQLiteDatabase sQLiteDatabase) {
        return new t1.b(sQLiteDatabase);
    }

    @Override // org.greenrobot.greendao.database.b.a
    public a getEncryptedReadableDb(String str) {
        return wrap(getReadableDatabase(str));
    }

    @Override // org.greenrobot.greendao.database.b.a
    public a getEncryptedWritableDb(String str) {
        return wrap(getWritableDatabase(str));
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.delegate.onCreate(wrap(sQLiteDatabase));
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        this.delegate.onOpen(wrap(sQLiteDatabase));
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
        this.delegate.onUpgrade(wrap(sQLiteDatabase), i4, i5);
    }

    @Override // org.greenrobot.greendao.database.b.a
    public a getEncryptedReadableDb(char[] cArr) {
        return wrap(getReadableDatabase(cArr));
    }

    @Override // org.greenrobot.greendao.database.b.a
    public a getEncryptedWritableDb(char[] cArr) {
        return wrap(getWritableDatabase(cArr));
    }
}
