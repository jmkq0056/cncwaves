.class Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;
.super Ljava/lang/Object;
.source "OfflineConnectionDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->retainByIds(Ljava/lang/String;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$idsToRetain:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$idsToRetain",
            "val$accountId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->val$idsToRetain:Ljava/util/Set;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->val$accountId:Ljava/lang/String;

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

    .line 431
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    const-string v1, "DELETE FROM offline_connection WHERE account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, " AND id NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->val$idsToRetain:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 440
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 441
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->val$accountId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->val$idsToRetain:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 448
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    add-int/2addr v3, v2

    goto :goto_0

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 453
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 454
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 455
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl$13;->this$0:Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineConnectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 458
    throw v0
.end method
