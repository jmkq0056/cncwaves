.class public final Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;
.super Lcom/stripe/offlinemode/storage/OfflineDatabase;
.source "OfflineDatabase_Impl.java"


# instance fields
.field private volatile _offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

.field private volatile _offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

.field private volatile _offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

.field private volatile _offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

.field private volatile _offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 232
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->assertNotMainThread()V

    .line 233
    invoke-super {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 239
    :try_start_0
    invoke-super {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->beginTransaction()V

    .line 241
    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v3, "DELETE FROM `offline_connection`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v3, "DELETE FROM `reader`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v3, "DELETE FROM `offline_location`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v3, "DELETE FROM `offline_api_request`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v3, "DELETE FROM `offline_config`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-super {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->endTransaction()V

    .line 254
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 250
    invoke-super {p0}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->endTransaction()V

    .line 254
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 225
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 226
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 227
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "reader"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "offline_connection"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "offline_location"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "offline_api_request"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "offline_config"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 43
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl$1;-><init>(Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;I)V

    const-string v2, "ef9ee7e998c276b5bbb76c71353cad26"

    const-string v3, "cb5bb033a8336011fa1c0cb04d85be40"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 218
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    const-class v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    invoke-static {}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-class v1, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    invoke-static {}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-class v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    invoke-static {}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-class v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    invoke-static {}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-class v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    invoke-static {}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public offlineAccountConfigDao()Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    return-object v0

    .line 349
    :cond_0
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offlineApiRequestDao()Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    return-object v0

    .line 335
    :cond_0
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offlineConnectionDao()Lcom/stripe/offlinemode/storage/OfflineConnectionDao;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    return-object v0

    .line 307
    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offlineLocationDao()Lcom/stripe/offlinemode/storage/OfflineLocationDao;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    return-object v0

    .line 321
    :cond_0
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 326
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offlineReaderDao()Lcom/stripe/offlinemode/storage/OfflineReaderDao;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    return-object v0

    .line 293
    :cond_0
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineDatabase_Impl;->_offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 298
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
