.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
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
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1",
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

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;

    .line 2901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2911
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 2903
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    if-eq v0, v1, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 2906
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 2907
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation$startCancel$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;->onCancelSuccess()V

    return-void
.end method
