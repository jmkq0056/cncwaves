package org.greenrobot.greendao.database;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import j3.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends SQLiteOpenHelper {
    private final Context context;
    private a encryptedHelper;
    private boolean loadSQLCipherNativeLibs;
    private final String name;
    private final int version;

    public interface a {
        org.greenrobot.greendao.database.a getEncryptedReadableDb(String str);

        org.greenrobot.greendao.database.a getEncryptedReadableDb(char[] cArr);

        org.greenrobot.greendao.database.a getEncryptedWritableDb(String str);

        org.greenrobot.greendao.database.a getEncryptedWritableDb(char[] cArr);
    }

    public b(Context context, String str, int i4) {
        this(context, str, null, i4);
    }

    private a checkEncryptedHelper() {
        if (this.encryptedHelper == null) {
            try {
                Class.forName("net.sqlcipher.database.SQLiteOpenHelper");
                try {
                    this.encryptedHelper = (a) Class.forName("org.greenrobot.greendao.database.SqlCipherEncryptedHelper").getConstructor(b.class, Context.class, String.class, Integer.TYPE, Boolean.TYPE).newInstance(this, this.context, this.name, Integer.valueOf(this.version), Boolean.valueOf(this.loadSQLCipherNativeLibs));
                } catch (Exception e4) {
                    throw new d(e4);
                }
            } catch (ClassNotFoundException unused) {
                throw new d("Using an encrypted database requires SQLCipher, make sure to add it to dependencies: https://greenrobot.org/greendao/documentation/database-encryption/");
            }
        }
        return this.encryptedHelper;
    }

    public org.greenrobot.greendao.database.a getEncryptedReadableDb(String str) {
        return checkEncryptedHelper().getEncryptedReadableDb(str);
    }

    public org.greenrobot.greendao.database.a getEncryptedWritableDb(String str) {
        return checkEncryptedHelper().getEncryptedWritableDb(str);
    }

    public org.greenrobot.greendao.database.a getReadableDb() {
        return wrap(getReadableDatabase());
    }

    public org.greenrobot.greendao.database.a getWritableDb() {
        return wrap(getWritableDatabase());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        onCreate(wrap(sQLiteDatabase));
    }

    public void onCreate(org.greenrobot.greendao.database.a aVar) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        onOpen(wrap(sQLiteDatabase));
    }

    public void onOpen(org.greenrobot.greendao.database.a aVar) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
        onUpgrade(wrap(sQLiteDatabase), i4, i5);
    }

    public void onUpgrade(org.greenrobot.greendao.database.a aVar, int i4, int i5) {
    }

    public void setLoadSQLCipherNativeLibs(boolean z3) {
        this.loadSQLCipherNativeLibs = z3;
    }

    public org.greenrobot.greendao.database.a wrap(SQLiteDatabase sQLiteDatabase) {
        return new t1.b(sQLiteDatabase);
    }

    public b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i4) {
        super(context, str, cursorFactory, i4);
        this.loadSQLCipherNativeLibs = true;
        this.context = context;
        this.name = str;
        this.version = i4;
    }

    public org.greenrobot.greendao.database.a getEncryptedReadableDb(char[] cArr) {
        return checkEncryptedHelper().getEncryptedReadableDb(cArr);
    }

    public org.greenrobot.greendao.database.a getEncryptedWritableDb(char[] cArr) {
        return checkEncryptedHelper().getEncryptedWritableDb(cArr);
    }

    @SuppressLint({"NewApi"})
    public b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i4, DatabaseErrorHandler databaseErrorHandler) {
        super(context, str, cursorFactory, i4, databaseErrorHandler);
        this.loadSQLCipherNativeLibs = true;
        this.context = context;
        this.name = str;
        this.version = i4;
    }
}
