.class public final Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;
.super Ljava/lang/Object;
.source "DefaultOfflineKeyValueStore.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000cH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007H\u0016R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;",
        "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
        "keyValueStore",
        "Lcom/stripe/jvmcore/storage/KeyValueStore;",
        "(Lcom/stripe/jvmcore/storage/KeyValueStore;)V",
        "accountIdStateFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "clear",
        "",
        "getAccountId",
        "getSavedAccountIdStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "saveAccountId",
        "accountId",
        "offlinemode"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final accountIdStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/storage/KeyValueStore;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "keyValueStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    .line 18
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->accountIdStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "offline_account_id"

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->remove(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->accountIdStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "offline_account_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavedAccountIdStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->accountIdStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public saveAccountId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "offline_account_id"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;->accountIdStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
