package cn.huidu.lcd.core.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import cn.huidu.lcd.core.db.greendao.DaoMaster;
import org.greenrobot.greendao.database.a;
import org.greenrobot.greendao.database.b;

/* JADX INFO: loaded from: classes.dex */
public class GreenDbOpenHelper extends b {
    private static final String DB_NAME = "Stats3";
    private static final int DB_VERSION = 4;
    private static final String TAG = "GreenDbOpenHelper";

    public GreenDbOpenHelper(Context context) {
        super(context, DB_NAME, 4);
    }

    private void recreateAllTables(a aVar) {
        DaoMaster.dropAllTables(aVar, true);
        DaoMaster.createAllTables(aVar, false);
    }

    @Override // org.greenrobot.greendao.database.b
    public void onCreate(a aVar) {
        Log.i(TAG, "Creating tables for schema version 4");
        DaoMaster.createAllTables(aVar, false);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
        Log.i(TAG, "Downgrading schema from version " + i4 + " to " + i5);
        recreateAllTables(wrap(sQLiteDatabase));
    }

    @Override // org.greenrobot.greendao.database.b
    public void onUpgrade(a aVar, int i4, int i5) {
        Log.i(TAG, "Upgrading schema from version " + i4 + " to " + i5);
        recreateAllTables(aVar);
    }
}
