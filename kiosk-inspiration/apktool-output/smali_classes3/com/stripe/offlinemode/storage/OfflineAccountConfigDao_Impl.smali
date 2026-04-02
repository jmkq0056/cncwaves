.class public final Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;
.super Ljava/lang/Object;
.source "OfflineAccountConfigDao_Impl.java"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            ">;"
        }
    .end annotation
.end field


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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$1;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__insertionAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityInsertionAdapter;

    .line 56
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$2;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__deletionAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 69
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$3;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__updateAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__insertionAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__deletionAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__updateAdapterOfOfflineAccountConfigEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$6;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getForAccountId(Ljava/lang/String;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 167
    const-string v0, "SELECT * FROM offline_config WHERE account_id = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 171
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 173
    :try_start_0
    const-string v0, "account_id"

    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 174
    const-string v3, "data_blob"

    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 175
    const-string v4, "iv_blob"

    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 176
    const-string v5, "id"

    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 184
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 186
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 187
    new-instance v7, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    invoke-direct/range {v7 .. v12}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;-><init>(Ljava/lang/String;[B[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v7

    .line 193
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v0

    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 195
    throw v0
.end method

.method public insert(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$4;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll([Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$5;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;[Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;-><init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
