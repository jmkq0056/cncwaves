package cn.huidu.lcd.core.db.greendao;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import j3.b;
import l3.c;
import org.greenrobot.greendao.database.a;

/* JADX INFO: loaded from: classes.dex */
public class DaoMaster extends b {
    public static final int SCHEMA_VERSION = 4;

    public static class DevOpenHelper extends OpenHelper {
        public DevOpenHelper(Context context, String str) {
            super(context, str);
        }

        @Override // org.greenrobot.greendao.database.b
        public void onUpgrade(a aVar, int i4, int i5) {
            Log.i("greenDAO", "Upgrading schema from version " + i4 + " to " + i5 + " by dropping all tables");
            DaoMaster.dropAllTables(aVar, true);
            onCreate(aVar);
        }

        public DevOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }
    }

    public static abstract class OpenHelper extends org.greenrobot.greendao.database.b {
        public OpenHelper(Context context, String str) {
            super(context, str, 4);
        }

        @Override // org.greenrobot.greendao.database.b
        public void onCreate(a aVar) {
            Log.i("greenDAO", "Creating tables for schema version 4");
            DaoMaster.createAllTables(aVar, false);
        }

        public OpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 4);
        }
    }

    public DaoMaster(SQLiteDatabase sQLiteDatabase) {
        this(new t1.b(sQLiteDatabase));
    }

    public static void createAllTables(a aVar, boolean z3) {
        OperateLogDao.createTable(aVar, z3);
        PlayHistoryDao.createTable(aVar, z3);
        ProgramVisitorsDao.createTable(aVar, z3);
        VisitorStatsDao.createTable(aVar, z3);
    }

    public static void dropAllTables(a aVar, boolean z3) {
        OperateLogDao.dropTable(aVar, z3);
        PlayHistoryDao.dropTable(aVar, z3);
        ProgramVisitorsDao.dropTable(aVar, z3);
        VisitorStatsDao.dropTable(aVar, z3);
    }

    public static DaoSession newDevSession(Context context, String str) {
        return new DaoMaster(new DevOpenHelper(context, str).getWritableDb()).newSession();
    }

    public DaoMaster(a aVar) {
        super(aVar, 4);
        registerDaoClass(OperateLogDao.class);
        registerDaoClass(PlayHistoryDao.class);
        registerDaoClass(ProgramVisitorsDao.class);
        registerDaoClass(VisitorStatsDao.class);
    }

    @Override // j3.b
    public DaoSession newSession() {
        return new DaoSession(this.db, c.Session, this.daoConfigMap);
    }

    @Override // j3.b
    public DaoSession newSession(c cVar) {
        return new DaoSession(this.db, cVar, this.daoConfigMap);
    }
}
