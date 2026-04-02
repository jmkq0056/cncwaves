.class public final Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;
.super Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;
.source "StripeTerminalDatabase_Impl.java"


# instance fields
.field private volatile _eventDao:Lcom/stripe/core/stripeterminal/storage/EventDao;

.field private volatile _logPointDao:Lcom/stripe/core/stripeterminal/storage/LogPointDao;

.field private volatile _traceDao:Lcom/stripe/core/stripeterminal/storage/TraceDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 167
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->assertNotMainThread()V

    .line 168
    invoke-super {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 170
    :try_start_0
    invoke-super {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->beginTransaction()V

    .line 171
    const-string v3, "DELETE FROM `events`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v3, "DELETE FROM `logpoints`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v3, "DELETE FROM `traces`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-super {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->endTransaction()V

    .line 177
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 178
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 176
    invoke-super {p0}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->endTransaction()V

    .line 177
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 178
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 160
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 162
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "events"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "logpoints"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "traces"

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

    .line 38
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl$1;-><init>(Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;I)V

    const-string v2, "9bf83398a5dde48d79a5c4f594b4bf80"

    const-string v3, "f37b1ae7a9517128cb8956719a3d7429"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
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

    .line 153
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public eventDao()Lcom/stripe/core/stripeterminal/storage/EventDao;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_eventDao:Lcom/stripe/core/stripeterminal/storage/EventDao;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_eventDao:Lcom/stripe/core/stripeterminal/storage/EventDao;

    return-object v0

    .line 214
    :cond_0
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_eventDao:Lcom/stripe/core/stripeterminal/storage/EventDao;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_eventDao:Lcom/stripe/core/stripeterminal/storage/EventDao;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_eventDao:Lcom/stripe/core/stripeterminal/storage/EventDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 219
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 205
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

    .line 197
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

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-class v1, Lcom/stripe/core/stripeterminal/storage/EventDao;

    invoke-static {}, Lcom/stripe/core/stripeterminal/storage/EventDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-class v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    invoke-static {}, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-class v1, Lcom/stripe/core/stripeterminal/storage/TraceDao;

    invoke-static {}, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public logPointDao()Lcom/stripe/core/stripeterminal/storage/LogPointDao;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_logPointDao:Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_logPointDao:Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    return-object v0

    .line 228
    :cond_0
    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_logPointDao:Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_logPointDao:Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_logPointDao:Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public traceDao()Lcom/stripe/core/stripeterminal/storage/TraceDao;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_traceDao:Lcom/stripe/core/stripeterminal/storage/TraceDao;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_traceDao:Lcom/stripe/core/stripeterminal/storage/TraceDao;

    return-object v0

    .line 242
    :cond_0
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_traceDao:Lcom/stripe/core/stripeterminal/storage/TraceDao;

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;

    invoke-direct {v0, p0}, Lcom/stripe/core/stripeterminal/storage/TraceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_traceDao:Lcom/stripe/core/stripeterminal/storage/TraceDao;

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase_Impl;->_traceDao:Lcom/stripe/core/stripeterminal/storage/TraceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
