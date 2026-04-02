.class Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->softDeleteByIntentId([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

.field final synthetic val$paymentIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$paymentIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1073
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->val$paymentIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1077
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    const-string v1, "UPDATE offline_api_request SET deleted = 1 WHERE offline_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->val$paymentIds:[Ljava/lang/String;

    array-length v1, v1

    .line 1080
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1081
    const-string v2, ") OR stripe_api_entity_id in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->val$paymentIds:[Ljava/lang/String;

    array-length v2, v2

    .line 1083
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1084
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 1088
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->val$paymentIds:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v8, v2, v6

    .line 1089
    invoke-interface {v0, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    add-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    .line 1093
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->val$paymentIds:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 1094
    invoke-interface {v0, v1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    add-int/2addr v1, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1097
    :cond_1
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1099
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1100
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1104
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$25;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
