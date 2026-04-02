package cn.huidu.lcd.core.db;

import android.database.sqlite.SQLiteDatabase;
import cn.huidu.lcd.core.db.greendao.DaoMaster;
import cn.huidu.lcd.core.db.greendao.DaoSession;
import w0.c;

/* JADX INFO: loaded from: classes.dex */
public class DaoManager {
    private static volatile DaoManager sInstance;
    private final DaoSession mDaoSession;
    private final SQLiteDatabase mDatabase;

    private DaoManager() {
        SQLiteDatabase writableDatabase = new GreenDbOpenHelper(c.f3777a).getWritableDatabase();
        this.mDatabase = writableDatabase;
        this.mDaoSession = new DaoMaster(writableDatabase).newSession();
    }

    public static DaoManager getInstance() {
        if (sInstance == null) {
            synchronized (DaoManager.class) {
                if (sInstance == null) {
                    sInstance = new DaoManager();
                }
            }
        }
        return sInstance;
    }

    public DaoSession getDaoSession() {
        return this.mDaoSession;
    }

    public SQLiteDatabase getDatabase() {
        return this.mDatabase;
    }
}
