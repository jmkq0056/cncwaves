.class public abstract Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;
.super Ljava/lang/Object;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Operation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00a0\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010J\r\u0010\u0011\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u0012J\r\u0010\u0013\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;",
        "",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V",
        "completed",
        "",
        "getCompleted",
        "()Z",
        "setCompleted",
        "(Z)V",
        "started",
        "getStarted",
        "setStarted",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "onSuccess$terminalsession_release",
        "run",
        "run$terminalsession_release",
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
.field private completed:Z

.field private started:Z

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCompleted()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->completed:Z

    return v0
.end method

.method public final getStarted()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->started:Z

    return v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 1128
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-static {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$setOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public onSuccess$terminalsession_release()V
    .locals 4

    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->completed:Z

    .line 1133
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    move-result-object v1

    instance-of v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->getRefundParams()Lcom/stripe/stripeterminal/external/models/RefundParameters;

    move-result-object v3

    :cond_1
    invoke-static {v0, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$setPreviousRefundParams$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/RefundParameters;)V

    .line 1134
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$setOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public run$terminalsession_release()V
    .locals 1

    const/4 v0, 0x1

    .line 1123
    iput-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->started:Z

    return-void
.end method

.method public final setCompleted(Z)V
    .locals 0

    .line 1120
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->completed:Z

    return-void
.end method

.method public final setStarted(Z)V
    .locals 0

    .line 1119
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->started:Z

    return-void
.end method
