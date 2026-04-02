.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onSuccess",
        "terminalsession_release"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;

    .line 2782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2803
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 2784
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    if-eq v0, v1, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 2789
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->cancelPaymentIntentActionRequired()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2794
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    .line 2795
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->access$getIntent$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    .line 2796
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;

    check-cast v2, Lcom/stripe/cancelintent/CancelableIntentOperation;

    .line 2794
    invoke-interface {v0, v1, v2}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 2798
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 2799
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->onCancelSuccess()V

    return-void
.end method
