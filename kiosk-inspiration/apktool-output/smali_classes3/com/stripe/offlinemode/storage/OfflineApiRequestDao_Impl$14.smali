.class Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->deleteOrphanedPayments(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.field final synthetic val$createdBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$accountId",
            "val$createdBefore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->val$accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->val$createdBefore:Ljava/util/Date;

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

    .line 346
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->call()Lkotlin/Unit;

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

    .line 350
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$800(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 352
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->val$accountId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 354
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->val$accountId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Lcom/stripe/offlinemode/storage/DateTimeConverter;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->val$createdBefore:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/stripe/offlinemode/storage/DateTimeConverter;->toTimeMs(Ljava/util/Date;)J

    move-result-wide v1

    const/4 v3, 0x3

    .line 357
    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 362
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 363
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :try_start_2
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$800(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 365
    :try_start_3
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 366
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 368
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$14;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$800(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 369
    throw v1
.end method
