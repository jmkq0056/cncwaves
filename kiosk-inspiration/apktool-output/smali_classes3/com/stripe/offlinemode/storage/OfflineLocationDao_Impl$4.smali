.class Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;
.super Ljava/lang/Object;
.source "OfflineLocationDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->insert(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

.field final synthetic val$entity:Lcom/stripe/offlinemode/storage/OfflineLocationEntity;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)V
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

    .line 108
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->val$entity:Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$200(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->val$entity:Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->this$0:Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;->access$100(Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 119
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao_Impl$4;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
