.class final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "CotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscoverReadersOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V",
        "cancel",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "execute",
        "adapter_release"
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
.field private final listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 734
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    .line 733
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    return-void
.end method


# virtual methods
.method public final cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 8

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 753
    :cond_0
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 755
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->set(Ljava/lang/Object;)V

    return-void

    .line 758
    :cond_1
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 761
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 760
    const-string v3, "DiscoverReaders was canceled by the user"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 759
    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void

    .line 767
    :cond_2
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 769
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 770
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED_DUE_TO_INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 769
    const-string v2, "DiscoverReaders was canceled because of a new discovery call. The SDK can process a single discovery operation at a time."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 768
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->execute()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public execute()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$callAidlWithExceptionConverted(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/cots/aidlservice/CotsReader;

    .line 740
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$checkAndThrowCotsError(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/cots/aidlservice/CotsReader;)V

    .line 741
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    move-object v2, p0

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;

    .line 742
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$getCotsDescriptor(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/cots/aidlservice/CotsReader;)Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromCotsDescriptor(Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    .line 744
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;->onUpdateDiscoveredReaders(Ljava/util/List;)V

    .line 746
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    check-cast v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    return-void
.end method
