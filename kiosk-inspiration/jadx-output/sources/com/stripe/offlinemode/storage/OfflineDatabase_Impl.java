package com.stripe.offlinemode.storage;

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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineDatabase_Impl extends OfflineDatabase {
    private volatile OfflineAccountConfigDao _offlineAccountConfigDao;
    private volatile OfflineApiRequestDao _offlineApiRequestDao;
    private volatile OfflineConnectionDao _offlineConnectionDao;
    private volatile OfflineLocationDao _offlineLocationDao;
    private volatile OfflineReaderDao _offlineReaderDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(final DatabaseConfiguration config) {
        return config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(config.context).name(config.name).callback(new RoomOpenHelper(config, new RoomOpenHelper.Delegate(4) { // from class: com.stripe.offlinemode.storage.OfflineDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(final SupportSQLiteDatabase db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("CREATE TABLE IF NOT EXISTS `reader` (`serial_number` TEXT NOT NULL, `last_activated_timestamp` INTEGER NOT NULL, `created_timestamp` INTEGER NOT NULL, `account_id` TEXT NOT NULL, `data_blob` BLOB NOT NULL, `iv_blob` BLOB NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                db.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_reader_serial_number_account_id` ON `reader` (`serial_number`, `account_id`)");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_reader_serial_number` ON `reader` (`serial_number`)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `offline_connection` (`reader_id` INTEGER NOT NULL, `location_id` INTEGER NOT NULL, `account_id` TEXT NOT NULL, `data_blob` BLOB NOT NULL, `iv_blob` BLOB NOT NULL, `created_timestamp` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FOREIGN KEY(`reader_id`) REFERENCES `reader`(`id`) ON UPDATE NO ACTION ON DELETE RESTRICT , FOREIGN KEY(`location_id`) REFERENCES `offline_location`(`id`) ON UPDATE NO ACTION ON DELETE RESTRICT )");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_offline_connection_reader_id` ON `offline_connection` (`reader_id`)");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_offline_connection_location_id` ON `offline_connection` (`location_id`)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `offline_location` (`stripe_location_id` TEXT NOT NULL, `account_id` TEXT NOT NULL, `data_blob` BLOB NOT NULL, `iv_blob` BLOB NOT NULL, `created_timestamp` INTEGER NOT NULL, `last_activated_timestamp` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                db.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_offline_location_stripe_location_id` ON `offline_location` (`stripe_location_id`)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `offline_api_request` (`offline_id` TEXT, `connection_id` INTEGER NOT NULL, `stripe_api_entity_id` TEXT, `account_id` TEXT NOT NULL, `type` TEXT NOT NULL, `deleted` INTEGER NOT NULL, `data_blob` BLOB NOT NULL, `iv_blob` BLOB NOT NULL, `created_timestamp` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FOREIGN KEY(`connection_id`) REFERENCES `offline_connection`(`id`) ON UPDATE NO ACTION ON DELETE RESTRICT )");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_offline_api_request_offline_id` ON `offline_api_request` (`offline_id`)");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_offline_api_request_connection_id` ON `offline_api_request` (`connection_id`)");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_offline_api_request_stripe_api_entity_id` ON `offline_api_request` (`stripe_api_entity_id`)");
                db.execSQL("CREATE INDEX IF NOT EXISTS `index_offline_api_request_account_id` ON `offline_api_request` (`account_id`)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `offline_config` (`account_id` TEXT NOT NULL, `data_blob` BLOB NOT NULL, `iv_blob` BLOB NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                db.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_offline_config_account_id` ON `offline_config` (`account_id`)");
                db.execSQL(RoomMasterTable.CREATE_QUERY);
                db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'ef9ee7e998c276b5bbb76c71353cad26')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("DROP TABLE IF EXISTS `reader`");
                db.execSQL("DROP TABLE IF EXISTS `offline_connection`");
                db.execSQL("DROP TABLE IF EXISTS `offline_location`");
                db.execSQL("DROP TABLE IF EXISTS `offline_api_request`");
                db.execSQL("DROP TABLE IF EXISTS `offline_config`");
                List list = OfflineDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onCreate(final SupportSQLiteDatabase db) {
                List list = OfflineDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(final SupportSQLiteDatabase db) {
                OfflineDatabase_Impl.this.mDatabase = db;
                db.execSQL("PRAGMA foreign_keys = ON");
                OfflineDatabase_Impl.this.internalInitInvalidationTracker(db);
                List list = OfflineDatabase_Impl.this.mCallbacks;
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
                HashMap map = new HashMap(7);
                map.put(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, new TableInfo.Column(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "TEXT", true, 0, null, 1));
                map.put(OfflineStorageConstantsKt.LAST_ACTIVATED_TS, new TableInfo.Column(OfflineStorageConstantsKt.LAST_ACTIVATED_TS, "INTEGER", true, 0, null, 1));
                map.put(OfflineStorageConstantsKt.CREATED_TS, new TableInfo.Column(OfflineStorageConstantsKt.CREATED_TS, "INTEGER", true, 0, null, 1));
                map.put(OfflineStorageConstantsKt.ACCOUNT_ID, new TableInfo.Column(OfflineStorageConstantsKt.ACCOUNT_ID, "TEXT", true, 0, null, 1));
                map.put(OfflineStorageConstantsKt.DATA_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.DATA_BLOB, "BLOB", true, 0, null, 1));
                map.put(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, "BLOB", true, 0, null, 1));
                map.put(OfflineStorageConstantsKt.ID, new TableInfo.Column(OfflineStorageConstantsKt.ID, "INTEGER", true, 1, null, 1));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new TableInfo.Index("index_reader_serial_number_account_id", true, Arrays.asList(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, OfflineStorageConstantsKt.ACCOUNT_ID), Arrays.asList("ASC", "ASC")));
                hashSet2.add(new TableInfo.Index("index_reader_serial_number", false, Arrays.asList(OfflineStorageConstantsKt.READER_SERIAL_NUMBER), Arrays.asList("ASC")));
                TableInfo tableInfo = new TableInfo(OfflineStorageConstantsKt.READER, map, hashSet, hashSet2);
                TableInfo tableInfo2 = TableInfo.read(db, OfflineStorageConstantsKt.READER);
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "reader(com.stripe.offlinemode.storage.OfflineReaderEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(7);
                map2.put(OfflineStorageConstantsKt.READER_ID, new TableInfo.Column(OfflineStorageConstantsKt.READER_ID, "INTEGER", true, 0, null, 1));
                map2.put("location_id", new TableInfo.Column("location_id", "INTEGER", true, 0, null, 1));
                map2.put(OfflineStorageConstantsKt.ACCOUNT_ID, new TableInfo.Column(OfflineStorageConstantsKt.ACCOUNT_ID, "TEXT", true, 0, null, 1));
                map2.put(OfflineStorageConstantsKt.DATA_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.DATA_BLOB, "BLOB", true, 0, null, 1));
                map2.put(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, "BLOB", true, 0, null, 1));
                map2.put(OfflineStorageConstantsKt.CREATED_TS, new TableInfo.Column(OfflineStorageConstantsKt.CREATED_TS, "INTEGER", true, 0, null, 1));
                map2.put(OfflineStorageConstantsKt.ID, new TableInfo.Column(OfflineStorageConstantsKt.ID, "INTEGER", true, 1, null, 1));
                HashSet hashSet3 = new HashSet(2);
                hashSet3.add(new TableInfo.ForeignKey(OfflineStorageConstantsKt.READER, "RESTRICT", "NO ACTION", Arrays.asList(OfflineStorageConstantsKt.READER_ID), Arrays.asList(OfflineStorageConstantsKt.ID)));
                hashSet3.add(new TableInfo.ForeignKey(OfflineStorageConstantsKt.OFFLINE_LOCATION, "RESTRICT", "NO ACTION", Arrays.asList("location_id"), Arrays.asList(OfflineStorageConstantsKt.ID)));
                HashSet hashSet4 = new HashSet(2);
                hashSet4.add(new TableInfo.Index("index_offline_connection_reader_id", false, Arrays.asList(OfflineStorageConstantsKt.READER_ID), Arrays.asList("ASC")));
                hashSet4.add(new TableInfo.Index("index_offline_connection_location_id", false, Arrays.asList("location_id"), Arrays.asList("ASC")));
                TableInfo tableInfo3 = new TableInfo(OfflineStorageConstantsKt.OFFLINE_CONNECTION, map2, hashSet3, hashSet4);
                TableInfo tableInfo4 = TableInfo.read(db, OfflineStorageConstantsKt.OFFLINE_CONNECTION);
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "offline_connection(com.stripe.offlinemode.storage.OfflineConnectionEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                HashMap map3 = new HashMap(7);
                map3.put(OfflineStorageConstantsKt.STRIPE_LOCATION_ID, new TableInfo.Column(OfflineStorageConstantsKt.STRIPE_LOCATION_ID, "TEXT", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.ACCOUNT_ID, new TableInfo.Column(OfflineStorageConstantsKt.ACCOUNT_ID, "TEXT", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.DATA_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.DATA_BLOB, "BLOB", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, "BLOB", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.CREATED_TS, new TableInfo.Column(OfflineStorageConstantsKt.CREATED_TS, "INTEGER", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.LAST_ACTIVATED_TS, new TableInfo.Column(OfflineStorageConstantsKt.LAST_ACTIVATED_TS, "INTEGER", true, 0, null, 1));
                map3.put(OfflineStorageConstantsKt.ID, new TableInfo.Column(OfflineStorageConstantsKt.ID, "INTEGER", true, 1, null, 1));
                HashSet hashSet5 = new HashSet(0);
                HashSet hashSet6 = new HashSet(1);
                hashSet6.add(new TableInfo.Index("index_offline_location_stripe_location_id", true, Arrays.asList(OfflineStorageConstantsKt.STRIPE_LOCATION_ID), Arrays.asList("ASC")));
                TableInfo tableInfo5 = new TableInfo(OfflineStorageConstantsKt.OFFLINE_LOCATION, map3, hashSet5, hashSet6);
                TableInfo tableInfo6 = TableInfo.read(db, OfflineStorageConstantsKt.OFFLINE_LOCATION);
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenHelper.ValidationResult(false, "offline_location(com.stripe.offlinemode.storage.OfflineLocationEntity).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                HashMap map4 = new HashMap(10);
                map4.put(OfflineStorageConstantsKt.OFFLINE_ID, new TableInfo.Column(OfflineStorageConstantsKt.OFFLINE_ID, "TEXT", false, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.CONNECTION_ID, new TableInfo.Column(OfflineStorageConstantsKt.CONNECTION_ID, "INTEGER", true, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.STRIPE_ENTITY_ID, new TableInfo.Column(OfflineStorageConstantsKt.STRIPE_ENTITY_ID, "TEXT", false, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.ACCOUNT_ID, new TableInfo.Column(OfflineStorageConstantsKt.ACCOUNT_ID, "TEXT", true, 0, null, 1));
                map4.put("type", new TableInfo.Column("type", "TEXT", true, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.DELETED, new TableInfo.Column(OfflineStorageConstantsKt.DELETED, "INTEGER", true, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.DATA_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.DATA_BLOB, "BLOB", true, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, "BLOB", true, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.CREATED_TS, new TableInfo.Column(OfflineStorageConstantsKt.CREATED_TS, "INTEGER", true, 0, null, 1));
                map4.put(OfflineStorageConstantsKt.ID, new TableInfo.Column(OfflineStorageConstantsKt.ID, "INTEGER", true, 1, null, 1));
                HashSet hashSet7 = new HashSet(1);
                hashSet7.add(new TableInfo.ForeignKey(OfflineStorageConstantsKt.OFFLINE_CONNECTION, "RESTRICT", "NO ACTION", Arrays.asList(OfflineStorageConstantsKt.CONNECTION_ID), Arrays.asList(OfflineStorageConstantsKt.ID)));
                HashSet hashSet8 = new HashSet(4);
                hashSet8.add(new TableInfo.Index("index_offline_api_request_offline_id", false, Arrays.asList(OfflineStorageConstantsKt.OFFLINE_ID), Arrays.asList("ASC")));
                hashSet8.add(new TableInfo.Index("index_offline_api_request_connection_id", false, Arrays.asList(OfflineStorageConstantsKt.CONNECTION_ID), Arrays.asList("ASC")));
                hashSet8.add(new TableInfo.Index("index_offline_api_request_stripe_api_entity_id", false, Arrays.asList(OfflineStorageConstantsKt.STRIPE_ENTITY_ID), Arrays.asList("ASC")));
                hashSet8.add(new TableInfo.Index("index_offline_api_request_account_id", false, Arrays.asList(OfflineStorageConstantsKt.ACCOUNT_ID), Arrays.asList("ASC")));
                TableInfo tableInfo7 = new TableInfo(OfflineStorageConstantsKt.OFFLINE_API_REQUEST, map4, hashSet7, hashSet8);
                TableInfo tableInfo8 = TableInfo.read(db, OfflineStorageConstantsKt.OFFLINE_API_REQUEST);
                if (!tableInfo7.equals(tableInfo8)) {
                    return new RoomOpenHelper.ValidationResult(false, "offline_api_request(com.stripe.offlinemode.storage.OfflineApiRequestEntity).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
                }
                HashMap map5 = new HashMap(4);
                map5.put(OfflineStorageConstantsKt.ACCOUNT_ID, new TableInfo.Column(OfflineStorageConstantsKt.ACCOUNT_ID, "TEXT", true, 0, null, 1));
                map5.put(OfflineStorageConstantsKt.DATA_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.DATA_BLOB, "BLOB", true, 0, null, 1));
                map5.put(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, new TableInfo.Column(OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB, "BLOB", true, 0, null, 1));
                map5.put(OfflineStorageConstantsKt.ID, new TableInfo.Column(OfflineStorageConstantsKt.ID, "INTEGER", true, 1, null, 1));
                HashSet hashSet9 = new HashSet(0);
                HashSet hashSet10 = new HashSet(1);
                hashSet10.add(new TableInfo.Index("index_offline_config_account_id", true, Arrays.asList(OfflineStorageConstantsKt.ACCOUNT_ID), Arrays.asList("ASC")));
                TableInfo tableInfo9 = new TableInfo(OfflineStorageConstantsKt.OFFLINE_CONFIG, map5, hashSet9, hashSet10);
                TableInfo tableInfo10 = TableInfo.read(db, OfflineStorageConstantsKt.OFFLINE_CONFIG);
                if (!tableInfo9.equals(tableInfo10)) {
                    return new RoomOpenHelper.ValidationResult(false, "offline_config(com.stripe.offlinemode.storage.OfflineAccountConfigEntity).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "ef9ee7e998c276b5bbb76c71353cad26", "cb5bb033a8336011fa1c0cb04d85be40")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), OfflineStorageConstantsKt.READER, OfflineStorageConstantsKt.OFFLINE_CONNECTION, OfflineStorageConstantsKt.OFFLINE_LOCATION, OfflineStorageConstantsKt.OFFLINE_API_REQUEST, OfflineStorageConstantsKt.OFFLINE_CONFIG);
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("PRAGMA defer_foreign_keys = TRUE");
            writableDatabase.execSQL("DELETE FROM `offline_connection`");
            writableDatabase.execSQL("DELETE FROM `reader`");
            writableDatabase.execSQL("DELETE FROM `offline_location`");
            writableDatabase.execSQL("DELETE FROM `offline_api_request`");
            writableDatabase.execSQL("DELETE FROM `offline_config`");
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
        map.put(OfflineReaderDao.class, OfflineReaderDao_Impl.getRequiredConverters());
        map.put(OfflineConnectionDao.class, OfflineConnectionDao_Impl.getRequiredConverters());
        map.put(OfflineLocationDao.class, OfflineLocationDao_Impl.getRequiredConverters());
        map.put(OfflineApiRequestDao.class, OfflineApiRequestDao_Impl.getRequiredConverters());
        map.put(OfflineAccountConfigDao.class, OfflineAccountConfigDao_Impl.getRequiredConverters());
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

    @Override // com.stripe.offlinemode.storage.OfflineDatabase
    public OfflineReaderDao offlineReaderDao() {
        OfflineReaderDao offlineReaderDao;
        if (this._offlineReaderDao != null) {
            return this._offlineReaderDao;
        }
        synchronized (this) {
            if (this._offlineReaderDao == null) {
                this._offlineReaderDao = new OfflineReaderDao_Impl(this);
            }
            offlineReaderDao = this._offlineReaderDao;
        }
        return offlineReaderDao;
    }

    @Override // com.stripe.offlinemode.storage.OfflineDatabase
    public OfflineConnectionDao offlineConnectionDao() {
        OfflineConnectionDao offlineConnectionDao;
        if (this._offlineConnectionDao != null) {
            return this._offlineConnectionDao;
        }
        synchronized (this) {
            if (this._offlineConnectionDao == null) {
                this._offlineConnectionDao = new OfflineConnectionDao_Impl(this);
            }
            offlineConnectionDao = this._offlineConnectionDao;
        }
        return offlineConnectionDao;
    }

    @Override // com.stripe.offlinemode.storage.OfflineDatabase
    public OfflineLocationDao offlineLocationDao() {
        OfflineLocationDao offlineLocationDao;
        if (this._offlineLocationDao != null) {
            return this._offlineLocationDao;
        }
        synchronized (this) {
            if (this._offlineLocationDao == null) {
                this._offlineLocationDao = new OfflineLocationDao_Impl(this);
            }
            offlineLocationDao = this._offlineLocationDao;
        }
        return offlineLocationDao;
    }

    @Override // com.stripe.offlinemode.storage.OfflineDatabase
    public OfflineApiRequestDao offlineApiRequestDao() {
        OfflineApiRequestDao offlineApiRequestDao;
        if (this._offlineApiRequestDao != null) {
            return this._offlineApiRequestDao;
        }
        synchronized (this) {
            if (this._offlineApiRequestDao == null) {
                this._offlineApiRequestDao = new OfflineApiRequestDao_Impl(this);
            }
            offlineApiRequestDao = this._offlineApiRequestDao;
        }
        return offlineApiRequestDao;
    }

    @Override // com.stripe.offlinemode.storage.OfflineDatabase
    public OfflineAccountConfigDao offlineAccountConfigDao() {
        OfflineAccountConfigDao offlineAccountConfigDao;
        if (this._offlineAccountConfigDao != null) {
            return this._offlineAccountConfigDao;
        }
        synchronized (this) {
            if (this._offlineAccountConfigDao == null) {
                this._offlineAccountConfigDao = new OfflineAccountConfigDao_Impl(this);
            }
            offlineAccountConfigDao = this._offlineAccountConfigDao;
        }
        return offlineAccountConfigDao;
    }
}
