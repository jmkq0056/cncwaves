.class public final Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;
.super Ljava/lang/Object;
.source "LogPointDao_Impl.java"

# interfaces
.implements Lcom/stripe/core/stripeterminal/storage/LogPointDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfLogPointEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __logLevelConverters:Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

    invoke-direct {v0}, Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;-><init>()V

    iput-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__logLevelConverters:Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

    .line 34
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$1;-><init>(Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__insertionAdapterOfLogPointEntity:Landroidx/room/EntityInsertionAdapter;

    .line 62
    new-instance v0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl$2;-><init>(Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;)Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__logLevelConverters:Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 99
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 104
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 106
    :try_start_3
    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 107
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 109
    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 110
    throw v1
.end method

.method public getAll()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 116
    const-string v0, "SELECT * FROM logpoints"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 117
    iget-object v0, v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 118
    iget-object v0, v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 120
    :try_start_0
    const-string v0, "message"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 121
    const-string v5, "exception"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 122
    const-string v6, "loglevel"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 123
    const-string v7, "timeOffsetMs"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 124
    const-string v8, "traceId"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 125
    const-string v9, "uid"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 126
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 130
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v13, v4

    goto :goto_1

    .line 133
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 136
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v14, v4

    goto :goto_2

    .line 139
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 143
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 144
    iget-object v12, v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__logLevelConverters:Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

    invoke-virtual {v12, v11}, Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;->toLogLevel(I)Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v15

    .line 146
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 148
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 150
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 151
    new-instance v12, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    invoke-direct/range {v12 .. v19}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V

    .line 152
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 157
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 156
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 157
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 158
    throw v0
.end method

.method public getLogPointsForTrace(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "traceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 164
    const-string v0, "SELECT * FROM logpoints WHERE traceId = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-object/from16 v0, p1

    .line 166
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 167
    iget-object v0, v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 168
    iget-object v0, v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 170
    :try_start_0
    const-string v0, "message"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 171
    const-string v5, "exception"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 172
    const-string v6, "loglevel"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 173
    const-string v7, "timeOffsetMs"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 174
    const-string v8, "traceId"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 175
    const-string v9, "uid"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 176
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 180
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v13, v4

    goto :goto_1

    .line 183
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 186
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v14, v4

    goto :goto_2

    .line 189
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 193
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 194
    iget-object v12, v1, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__logLevelConverters:Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;

    invoke-virtual {v12, v11}, Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;->toLogLevel(I)Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v15

    .line 196
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 198
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 200
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 201
    new-instance v12, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    invoke-direct/range {v12 .. v19}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V

    .line 202
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 207
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 206
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 207
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 208
    throw v0
.end method

.method public insert(Lcom/stripe/core/stripeterminal/storage/LogPointEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logPoint"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 75
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__insertionAdapterOfLogPointEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 81
    throw p1
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logPointEntityList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 87
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__insertionAdapterOfLogPointEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 90
    iget-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 93
    throw p1
.end method
