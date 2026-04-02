.class public final Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;


# instance fields
.field private final __dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfOfflineApiRequestEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfOfflineApiRequestEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteByOfflineOrPaymentIntentId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByRowId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteOrphanedPayments:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRestoreSoftDeletedPayments:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdatePaymentIntentId:Landroidx/room/SharedSQLiteStatement;


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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/stripe/offlinemode/storage/DateTimeConverter;

    invoke-direct {v0}, Lcom/stripe/offlinemode/storage/DateTimeConverter;-><init>()V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    .line 61
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 62
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$1;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__insertionAdapterOfOfflineApiRequestEntity:Landroidx/room/EntityInsertionAdapter;

    .line 94
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$2;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__deletionAdapterOfOfflineApiRequestEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 107
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$3;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfUpdatePaymentIntentId:Landroidx/room/SharedSQLiteStatement;

    .line 123
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$4;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfDeleteByOfflineOrPaymentIntentId:Landroidx/room/SharedSQLiteStatement;

    .line 131
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$5;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfRestoreSoftDeletedPayments:Landroidx/room/SharedSQLiteStatement;

    .line 139
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$6;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfDeleteOrphanedPayments:Landroidx/room/SharedSQLiteStatement;

    .line 166
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$7;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfDeleteByRowId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __ApiRequestType_enumToString(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_value"
        }
    .end annotation

    .line 1116
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$26;->$SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType:[I

    invoke-virtual {p1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1120
    const-string p1, "CONFIRM_SETUP_INTENT"

    return-object p1

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t convert enum to string, unknown enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_1
    const-string p1, "CREATE_SETUP_INTENT"

    return-object p1

    .line 1118
    :cond_2
    const-string p1, "PROCESS_PAYMENT_INTENT"

    return-object p1

    .line 1117
    :cond_3
    const-string p1, "CREATE_PAYMENT_INTENT"

    return-object p1
.end method

.method private __ApiRequestType_stringToEnum(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_value"
        }
    .end annotation

    .line 1127
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CREATE_PAYMENT_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "CREATE_SETUP_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "CONFIRM_SETUP_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "PROCESS_PAYMENT_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object p1

    .line 1130
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object p1

    .line 1131
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object p1

    .line 1129
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2a75e8fb -> :sswitch_3
        0x32eb2dfd -> :sswitch_2
        0x496ac121 -> :sswitch_1
        0x496bdcb8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__ApiRequestType_enumToString(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__ApiRequestType_stringToEnum(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$300(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__insertionAdapterOfOfflineApiRequestEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__deletionAdapterOfOfflineApiRequestEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfUpdatePaymentIntentId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$600(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfDeleteByOfflineOrPaymentIntentId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$700(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfRestoreSoftDeletedPayments:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$800(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfDeleteOrphanedPayments:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$900(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__preparedStmtOfDeleteByRowId:Landroidx/room/SharedSQLiteStatement;

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

    .line 1111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$10;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$10;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteByOfflineOrPaymentIntentId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$12;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$12;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteByRowId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$15;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteOrphanedPayments(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "accountId",
            "createdBefore",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fetchNextPaymentToForward(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;"
        }
    .end annotation

    .line 561
    const-string v0, "\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                        AND ((type != \'CREATE_PAYMENT_INTENT\' AND type != \'CREATE_SETUP_INTENT\')\n                            OR stripe_api_entity_id IS NULL OR stripe_api_entity_id = \'\'\n                            OR offline_id IS NULL OR offline_id = \'\'\n                        ) \n                    ORDER BY id\n                    LIMIT 1\n        "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 563
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "offline_api_request"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$18;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$18;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public fetchUnconfirmedOfflineIntents(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;"
        }
    .end annotation

    .line 641
    const-string v0, "\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                        AND (type = \'PROCESS_PAYMENT_INTENT\' OR type = \'CONFIRM_SETUP_INTENT\')\n        "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 643
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "offline_api_request"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$19;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$19;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public fetchUnconfirmedOfflineIntentsWithoutFlow(Ljava/lang/String;)Ljava/util/List;
    .locals 30
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
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 721
    const-string v0, "\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                         AND (type = \'PROCESS_PAYMENT_INTENT\' OR type = \'CONFIRM_SETUP_INTENT\')\n        "

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-object/from16 v0, p1

    .line 723
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 724
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 725
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 727
    :try_start_0
    const-string v0, "offline_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 728
    const-string v7, "connection_id"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 729
    const-string v8, "stripe_api_entity_id"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 730
    const-string v9, "account_id"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 731
    const-string v10, "type"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 732
    const-string v11, "deleted"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 733
    const-string v12, "data_blob"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 734
    const-string v13, "iv_blob"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 735
    const-string v14, "created_timestamp"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 736
    const-string v15, "id"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 737
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 738
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 741
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v17, v5

    goto :goto_1

    .line 744
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    .line 747
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 749
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v20, v5

    goto :goto_2

    .line 752
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 755
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 757
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__ApiRequestType_stringToEnum(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v22

    .line 760
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v23, 0x1

    goto :goto_3

    :cond_2
    const/16 v23, 0x0

    .line 763
    :goto_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 765
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v29, v3

    .line 768
    :try_start_1
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 769
    iget-object v5, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    invoke-virtual {v5, v3, v4}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v26

    .line 771
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 772
    new-instance v16, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    invoke-direct/range {v16 .. v28}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V

    move-object/from16 v3, v16

    .line 773
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v3, v29

    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v29, v3

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 778
    invoke-virtual/range {v29 .. v29}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v29, v3

    .line 777
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 778
    invoke-virtual/range {v29 .. v29}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 779
    throw v0
.end method

.method public fetchUnconfirmedSetupIntents(Ljava/lang/String;)Ljava/util/List;
    .locals 30
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
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 791
    const-string v0, "\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                        AND type = \'CONFIRM_SETUP_INTENT\'\n        "

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-object/from16 v0, p1

    .line 793
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 794
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 795
    iget-object v0, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 797
    :try_start_0
    const-string v0, "offline_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 798
    const-string v7, "connection_id"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 799
    const-string v8, "stripe_api_entity_id"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 800
    const-string v9, "account_id"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 801
    const-string v10, "type"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 802
    const-string v11, "deleted"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 803
    const-string v12, "data_blob"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 804
    const-string v13, "iv_blob"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 805
    const-string v14, "created_timestamp"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 806
    const-string v15, "id"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 807
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 811
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v17, v5

    goto :goto_1

    .line 814
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    .line 817
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 819
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v20, v5

    goto :goto_2

    .line 822
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 825
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 827
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__ApiRequestType_stringToEnum(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v22

    .line 830
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v23, 0x1

    goto :goto_3

    :cond_2
    const/16 v23, 0x0

    .line 833
    :goto_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 835
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v29, v3

    .line 838
    :try_start_1
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 839
    iget-object v5, v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__dateTimeConverter:Lcom/stripe/offlinemode/storage/DateTimeConverter;

    invoke-virtual {v5, v3, v4}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toDate(J)Ljava/util/Date;

    move-result-object v26

    .line 841
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 842
    new-instance v16, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    invoke-direct/range {v16 .. v28}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V

    move-object/from16 v3, v16

    .line 843
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v3, v29

    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v29, v3

    .line 847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 848
    invoke-virtual/range {v29 .. v29}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v29, v3

    .line 847
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 848
    invoke-virtual/range {v29 .. v29}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 849
    throw v0
.end method

.method public getAll(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "limit",
            "offset",
            "accountId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 476
    const-string v0, "SELECT * FROM offline_api_request WHERE account_id = ? ORDER BY id LIMIT ? OFFSET ?"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 478
    invoke-virtual {v0, v2, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    const/4 p3, 0x2

    int-to-long v2, p1

    .line 480
    invoke-virtual {v0, p3, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    int-to-long p1, p2

    .line 482
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 483
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 484
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p3, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$17;

    invoke-direct {p3, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$17;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;"
        }
    .end annotation

    .line 402
    const-string v0, "SELECT * FROM offline_api_request WHERE account_id = ? ORDER BY id"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "offline_api_request"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$16;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$16;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getByOfflineIdAndType(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "offlineId",
            "type",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 964
    const-string v0, "SELECT * FROM offline_api_request WHERE offline_id = ? AND type = ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 966
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 968
    invoke-direct {p0, p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__ApiRequestType_enumToString(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 969
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 970
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;

    invoke-direct {v1, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$23;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionIds(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "accountId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 934
    const-string v0, "SELECT DISTINCT connection_id FROM offline_api_request WHERE account_id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 936
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 937
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 938
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$22;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$22;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMostRecentRowId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1036
    const-string v0, "SELECT MAX(id) FROM offline_api_request WHERE deleted = 0 AND account_id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 1038
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1039
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "offline_api_request"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$24;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$24;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getPaymentIntentIdForOfflineId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offlineId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 901
    const-string v0, "SELECT stripe_api_entity_id FROM offline_api_request WHERE offline_id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 903
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 904
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 905
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$21;

    invoke-direct {v2, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$21;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasMoreRequestsAfter(Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "entityId",
            "rowId",
            "accountId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 864
    const-string v0, " \n            SELECT EXISTS (\n                SELECT * \n                    FROM offline_api_request \n                        WHERE id >? \n                            AND account_id =? \n                            AND (offline_id =? OR stripe_api_entity_id =?)\n                )\n        "

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 866
    invoke-virtual {v0, v2, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 p2, 0x2

    .line 868
    invoke-virtual {v0, p2, p4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    const/4 p2, 0x3

    .line 870
    invoke-virtual {v0, p2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 872
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 873
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 874
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p3, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$20;

    invoke-direct {p3, p0, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$20;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p3, p5}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$8;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll([Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;[Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public restoreSoftDeletedPayments(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "accountId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$13;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$13;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public softDeleteByIntentId([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "paymentIds",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;

    invoke-direct {v1, p0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;[Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updatePaymentIntentId(JLjava/lang/String;Ljava/lang/String;JLcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;[B[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "rowId",
            "accountId",
            "offlineId",
            "connectionId",
            "type",
            "intentId",
            "data",
            "iv",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Ljava/lang/String;",
            "[B[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;

    move-object v2, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    move-object/from16 v12, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;-><init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;[B[BJLjava/lang/String;JLcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V

    const/4 p1, 0x1

    move-object/from16 p2, p11

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
