.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivateReaderBackgroundOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0010\u00a2\u0006\u0002\u0008\rJ\r\u0010\u000e\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V",
        "cancel",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
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
.field private final config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2059
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2062
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    .line 2060
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 2061
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 2086
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "on cancel activate reader operation"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2087
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$setOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2091
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$setOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 2092
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->emergencyDisconnectReader$default(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2093
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "ActivateReaderBackgroundOperation failed."

    invoke-interface {v0, p1, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public run$terminalsession_release()V
    .locals 3

    .line 2065
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;->run$terminalsession_release()V

    .line 2066
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundReaderActivator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->activateInBackground(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    move-result-object v0

    .line 2067
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCanceled;

    if-eqz v1, :cond_0

    .line 2068
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->cancel()V

    return-void

    .line 2071
    :cond_0
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;

    if-eqz v1, :cond_1

    .line 2072
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueActivateOp$terminalsession_release(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    return-void

    .line 2075
    :cond_1
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCompleted;

    if-eqz v1, :cond_2

    .line 2076
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->onSuccess$terminalsession_release()V

    return-void

    .line 2079
    :cond_2
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;

    if-eqz v1, :cond_3

    .line 2080
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_3
    return-void
.end method
