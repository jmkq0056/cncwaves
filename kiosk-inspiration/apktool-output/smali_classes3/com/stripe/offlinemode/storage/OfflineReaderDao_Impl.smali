.class public final Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;
.super Ljava/lang/Object;
.source "OfflineReaderDao_Impl.java"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineReaderDao;


# instance fields
.field private final __dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfOfflineReaderEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfOfflineReaderEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfOfflineReaderEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/stripe/offlinemode/storage/DateTimeConverter;

    invoke-direct {v0}, Lcom/stripe/offlinemode/storage/DateTimeConverter;-><init>()V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    .line 48
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 49
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$1;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__insertionAdapterOfOfflineReaderEntity:Landroidx/room/EntityInsertionAdapter;

    .line 70
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$2;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__deletionAdapterOfOfflineReaderEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 83
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$3;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__updateAdapterOfOfflineReaderEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__insertionAdapterOfOfflineReaderEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__deletionAdapterOfOfflineReaderEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__updateAdapterOfOfflineReaderEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reader",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$6;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAll(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "offset",
            "limit",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    const-string v0, "SELECT * FROM reader ORDER BY id LIMIT ? OFFSET ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p2

    .line 245
    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    int-to-long p1, p1

    .line 247
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 248
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$9;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$9;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getByAccountId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "accountId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;>;"
        }
    .end annotation

    .line 186
    const-string v0, "SELECT * FROM reader WHERE account_id = ? ORDER BY id"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "reader"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$8;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$8;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getByIdFlow(J)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;"
        }
    .end annotation

    .line 352
    const-string v0, "SELECT * FROM reader WHERE id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 355
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array p2, v1, [Ljava/lang/String;

    const-string v1, "reader"

    const/4 v2, 0x0

    aput-object v1, p2, v2

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$11;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$11;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v2, p2, v1}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getByReaderId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 299
    const-string v0, "SELECT * FROM reader WHERE id = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 302
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 303
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$10;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$10;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBySerialAndAccount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "serialNumber",
            "accountId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 476
    const-string v0, "SELECT * FROM reader WHERE serial_number = ? AND account_id = ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 478
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 480
    invoke-virtual {v0, v1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 481
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 482
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$13;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$13;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBySerialsForAccount(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "accountId",
            "serialNumbers",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 408
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string v1, "SELECT * FROM reader WHERE account_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, " AND serial_number in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 413
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 414
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 417
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 421
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    invoke-virtual {v0, p2, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    add-int/2addr p2, v2

    goto :goto_0

    .line 425
    :cond_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 426
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$12;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reader",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$5;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll([Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reader",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$4;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;[Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reader",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl$7;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao_Impl;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
