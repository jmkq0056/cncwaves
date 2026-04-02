.class Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;
.super Ljava/lang/Object;
.source "OfflineAccountConfigDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->update(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

.field final synthetic val$entity:Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;)V
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

    .line 148
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->val$entity:Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

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

    .line 148
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->access$300(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->val$entity:Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    invoke-virtual {v0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 155
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 156
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl$7;->this$0:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;->access$000(Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 159
    throw v0
.end method
