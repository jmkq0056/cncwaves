.class public final Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;
.super Ljava/lang/Object;
.source "OfflineLocationDao_Impl.java"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineLocationDao;


# instance fields
.field private final __dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfOfflineLocationEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfOfflineLocationEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfOfflineLocationEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/stripe/offlinemode/storage/DateTimeConverter;

    invoke-direct {v0}, Lcom/stripe/offlinemode/storage/DateTimeConverter;-><init>()V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    .line 46
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$1;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__insertionAdapterOfOfflineLocationEntity:Landroidx/room/EntityInsertionAdapter;

    .line 68
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$2;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__deletionAdapterOfOfflineLocationEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 81
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$3;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__updateAdapterOfOfflineLocationEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__insertionAdapterOfOfflineLocationEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__deletionAdapterOfOfflineLocationEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__updateAdapterOfOfflineLocationEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$6;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            ">;>;"
        }
    .end annotation

    .line 184
    const-string v0, "SELECT * FROM offline_location WHERE account_id = ? ORDER BY id"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "offline_location"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$8;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$8;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 299
    const-string v0, "SELECT * FROM offline_location WHERE id = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 302
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 303
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$10;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            ">;"
        }
    .end annotation

    .line 352
    const-string v0, "SELECT * FROM offline_location WHERE id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 355
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array p2, v1, [Ljava/lang/String;

    const-string v1, "offline_location"

    const/4 v2, 0x0

    aput-object v1, p2, v2

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$11;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$11;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v2, p2, v1}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getByStripeLocationId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "locationId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 241
    const-string v0, "SELECT * FROM offline_location WHERE stripe_location_id = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 244
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 248
    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 249
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$9;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$9;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll([Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$5;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;[Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$7;-><init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
