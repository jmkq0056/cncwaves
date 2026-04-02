.class Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->updatePaymentIntentId(JLjava/lang/String;Ljava/lang/String;JLcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;[B[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$connectionId:J

.field final synthetic val$data:[B

.field final synthetic val$intentId:Ljava/lang/String;

.field final synthetic val$iv:[B

.field final synthetic val$offlineId:Ljava/lang/String;

.field final synthetic val$rowId:J

.field final synthetic val$type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;[B[BJLjava/lang/String;JLcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$intentId",
            "val$data",
            "val$iv",
            "val$rowId",
            "val$accountId",
            "val$connectionId",
            "val$type",
            "val$offlineId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$intentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$data:[B

    iput-object p4, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$iv:[B

    iput-wide p5, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$rowId:J

    iput-object p7, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$accountId:Ljava/lang/String;

    iput-wide p8, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$connectionId:J

    iput-object p10, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    iput-object p11, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$offlineId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$500(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$intentId:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 245
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 250
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$data:[B

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v1, 0x3

    .line 252
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$iv:[B

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    const/4 v1, 0x4

    .line 254
    iget-wide v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$rowId:J

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v1, 0x5

    .line 256
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$accountId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x6

    .line 258
    iget-wide v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$connectionId:J

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 260
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-static {v1, v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$offlineId:Ljava/lang/String;

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 263
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 265
    :cond_1
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 268
    :goto_1
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->val$offlineId:Ljava/lang/String;

    const/16 v2, 0x9

    if-nez v1, :cond_2

    .line 269
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 271
    :cond_2
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 274
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 277
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 278
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$500(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 280
    :try_start_3
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 281
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 283
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$11;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$500(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 284
    throw v1
.end method
