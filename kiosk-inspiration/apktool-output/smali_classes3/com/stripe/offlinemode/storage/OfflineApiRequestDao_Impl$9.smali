.class Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->insertAll([Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

.field final synthetic val$entity:[Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;[Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->val$entity:[Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

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

    .line 198
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$300(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->val$entity:[Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$9;->this$0:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 209
    throw v0
.end method
