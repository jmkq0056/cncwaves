.class public final Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;
.super Ljava/lang/Object;
.source "DefaultEnsureSingleDiscoverOperation.kt"

# interfaces
.implements Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;",
        "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
        "()V",
        "_state",
        "Lcom/stripe/discoverreaders/DiscoverOperationState;",
        "state",
        "getState",
        "()Lcom/stripe/discoverreaders/DiscoverOperationState;",
        "onCompleteDiscoverOperation",
        "",
        "cancelableDiscoverReadersOperation",
        "Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;",
        "onQueueDiscoverOperation",
        "impl_release"
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
.field private _state:Lcom/stripe/discoverreaders/DiscoverOperationState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;->INSTANCE:Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;

    check-cast v0, Lcom/stripe/discoverreaders/DiscoverOperationState;

    iput-object v0, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    return-void
.end method


# virtual methods
.method public final getState()Lcom/stripe/discoverreaders/DiscoverOperationState;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    return-object v0
.end method

.method public onCompleteDiscoverOperation(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V
    .locals 2

    const-string v0, "cancelableDiscoverReadersOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    .line 39
    instance-of v1, v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;

    invoke-virtual {v0}, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;->getDiscoverOperation()Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 41
    sget-object p1, Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;->INSTANCE:Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;

    check-cast p1, Lcom/stripe/discoverreaders/DiscoverOperationState;

    iput-object p1, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    :cond_0
    return-void

    .line 44
    :cond_1
    sget-object p1, Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;->INSTANCE:Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public onQueueDiscoverOperation(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V
    .locals 2

    const-string v0, "cancelableDiscoverReadersOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    .line 20
    instance-of v1, v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;

    if-eqz v1, :cond_0

    .line 21
    new-instance v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;

    invoke-direct {v0, p1}, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;-><init>(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V

    check-cast v0, Lcom/stripe/discoverreaders/DiscoverOperationState;

    iput-object v0, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    return-void

    .line 23
    :cond_0
    instance-of v1, v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;

    invoke-virtual {v0}, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;->getDiscoverOperation()Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;->cancelBecauseMultipleDiscoveryOperations()V

    .line 26
    new-instance v0, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;

    invoke-direct {v0, p1}, Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;-><init>(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V

    check-cast v0, Lcom/stripe/discoverreaders/DiscoverOperationState;

    iput-object v0, p0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;->_state:Lcom/stripe/discoverreaders/DiscoverOperationState;

    :cond_1
    return-void
.end method
