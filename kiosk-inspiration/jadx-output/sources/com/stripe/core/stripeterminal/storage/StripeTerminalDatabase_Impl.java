package com.stripe.core.stripeterminal.storage;

import androidx.core.app.NotificationCompat;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class StripeTerminalDatabase_Impl extends StripeTerminalDatabase {
    private volatile EventDao _eventDao;
    private volatile LogPointDao _logPointDao;
    private volatile TraceDao _traceDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(final DatabaseConfiguration config) {
        return config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(config.context).name(config.name).callback(new RoomOpenHelper(config, new RoomOpenHelper.Delegate(4) { // from class: com.stripe.core.stripeterminal.storage.StripeTerminalDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(final SupportSQLiteDatabase db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("CREATE TABLE IF NOT EXISTS `events` (`event` TEXT NOT NULL, `scope` TEXT NOT NULL, `domain` TEXT NOT NULL, `startTimeMs` INTEGER NOT NULL, `uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `logpoints` (`message` TEXT, `exception` TEXT, `loglevel` INTEGER NOT NULL, `timeOffsetMs` INTEGER NOT NULL, `traceId` TEXT NOT NULL, `uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `traces` (`startTimeMs` INTEGER NOT NULL, `id` TEXT NOT NULL, `request` TEXT, `response` TEXT, `service` TEXT NOT NULL, `method` TEXT NOT NULL, `exception` TEXT, `totalTimeMs` INTEGER, `sessionId` TEXT, `serialNumber` TEXT, `tags` TEXT, `uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                db.execSQL(RoomMasterTable.CREATE_QUERY);
                db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '9bf83398a5dde48d79a5c4f594b4bf80')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("DROP TABLE IF EXISTS `events`");
                db.execSQL("DROP TABLE IF EXISTS `logpoints`");
                db.execSQL("DROP TABLE IF EXISTS `traces`");
                List list = StripeTerminalDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onCreate(final SupportSQLiteDatabase db) {
                List list = StripeTerminalDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(final SupportSQLiteDatabase db) {
                StripeTerminalDatabase_Impl.this.mDatabase = db;
                StripeTerminalDatabase_Impl.this.internalInitInvalidationTracker(db);
                List list = StripeTerminalDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onOpen(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(final SupportSQLiteDatabase db) {
                DBUtil.dropFtsSyncTriggers(db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public RoomOpenHelper.ValidationResult onValidateSchema(final SupportSQLiteDatabase db) {
                HashMap map = new HashMap(5);
                map.put(NotificationCompat.CATEGORY_EVENT, new TableInfo.Column(NotificationCompat.CATEGORY_EVENT, "TEXT", true, 0, null, 1));
                map.put("scope", new TableInfo.Column("scope", "TEXT", true, 0, null, 1));
                map.put("domain", new TableInfo.Column("domain", "TEXT", true, 0, null, 1));
                map.put("startTimeMs", new TableInfo.Column("startTimeMs", "INTEGER", true, 0, null, 1));
                map.put("uid", new TableInfo.Column("uid", "INTEGER", true, 1, null, 1));
                TableInfo tableInfo = new TableInfo("events", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(db, "events");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "events(com.stripe.core.stripeterminal.storage.EventEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(6);
                map2.put("message", new TableInfo.Column("message", "TEXT", false, 0, null, 1));
                map2.put("exception", new TableInfo.Column("exception", "TEXT", false, 0, null, 1));
                map2.put("loglevel", new TableInfo.Column("loglevel", "INTEGER", true, 0, null, 1));
                map2.put("timeOffsetMs", new TableInfo.Column("timeOffsetMs", "INTEGER", true, 0, null, 1));
                map2.put("traceId", new TableInfo.Column("traceId", "TEXT", true, 0, null, 1));
                map2.put("uid", new TableInfo.Column("uid", "INTEGER", true, 1, null, 1));
                TableInfo tableInfo3 = new TableInfo("logpoints", map2, new HashSet(0), new HashSet(0));
                TableInfo tableInfo4 = TableInfo.read(db, "logpoints");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "logpoints(com.stripe.core.stripeterminal.storage.LogPointEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                HashMap map3 = new HashMap(12);
                map3.put("startTimeMs", new TableInfo.Column("startTimeMs", "INTEGER", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.ID, new TableInfo.Column(OfflineStorageConstantsKt.ID, "TEXT", true, 0, null, 1));
                map3.put("request", new TableInfo.Column("request", "TEXT", false, 0, null, 1));
                map3.put("response", new TableInfo.Column("response", "TEXT", false, 0, null, 1));
                map3.put(NotificationCompat.CATEGORY_SERVICE, new TableInfo.Column(NotificationCompat.CATEGORY_SERVICE, "TEXT", true, 0, null, 1));
                map3.put(FirebaseAnalytics.Param.METHOD, new TableInfo.Column(FirebaseAnalytics.Param.METHOD, "TEXT", true, 0, null, 1));
                map3.put("exception", new TableInfo.Column("exception", "TEXT", false, 0, null, 1));
                map3.put("totalTimeMs", new TableInfo.Column("totalTimeMs", "INTEGER", false, 0, null, 1));
                map3.put("sessionId", new TableInfo.Column("sessionId", "TEXT", false, 0, null, 1));
                map3.put("serialNumber", new TableInfo.Column("serialNumber", "TEXT", false, 0, null, 1));
                map3.put("tags", new TableInfo.Column("tags", "TEXT", false, 0, null, 1));
                map3.put("uid", new TableInfo.Column("uid", "INTEGER", true, 1, null, 1));
                TableInfo tableInfo5 = new TableInfo("traces", map3, new HashSet(0), new HashSet(0));
                TableInfo tableInfo6 = TableInfo.read(db, "traces");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenHelper.ValidationResult(false, "traces(com.stripe.core.stripeterminal.storage.TraceEntity).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "9bf83398a5dde48d79a5c4f594b4bf80", "f37b1ae7a9517128cb8956719a3d7429")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "events", "logpoints", "traces");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `events`");
            writableDatabase.execSQL("DELETE FROM `logpoints`");
            writableDatabase.execSQL("DELETE FROM `traces`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(EventDao.class, EventDao_Impl.getRequiredConverters());
        map.put(LogPointDao.class, LogPointDao_Impl.getRequiredConverters());
        map.put(TraceDao.class, TraceDao_Impl.getRequiredConverters());
        return map;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(final Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        return new ArrayList();
    }

    @Override // com.stripe.core.stripeterminal.storage.StripeTerminalDatabase
    public EventDao eventDao() {
        EventDao eventDao;
        if (this._eventDao != null) {
            return this._eventDao;
        }
        synchronized (this) {
            if (this._eventDao == null) {
                this._eventDao = new EventDao_Impl(this);
            }
            eventDao = this._eventDao;
        }
        return eventDao;
    }

    @Override // com.stripe.core.stripeterminal.storage.StripeTerminalDatabase
    public LogPointDao logPointDao() {
        LogPointDao logPointDao;
        if (this._logPointDao != null) {
            return this._logPointDao;
        }
        synchronized (this) {
            if (this._logPointDao == null) {
                this._logPointDao = new LogPointDao_Impl(this);
            }
            logPointDao = this._logPointDao;
        }
        return logPointDao;
    }

    @Override // com.stripe.core.stripeterminal.storage.StripeTerminalDatabase
    public TraceDao traceDao() {
        TraceDao traceDao;
        if (this._traceDao != null) {
            return this._traceDao;
        }
        synchronized (this) {
            if (this._traceDao == null) {
                this._traceDao = new TraceDao_Impl(this);
            }
            traceDao = this._traceDao;
        }
        return traceDao;
    }
}
