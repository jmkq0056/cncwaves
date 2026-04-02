.class public abstract Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CancelableOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackType::",
        "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        ">",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation<",
        "TCallbackType;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00a0\u0004\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0012\u0004\u0012\u0002H\u00010\u0003R\u00020\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0017\u001a\u00020\u0008H\u0004J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H&J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0019J\u0015\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0010\u00a2\u0006\u0002\u0008\"J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0008H\u0004J\u0015\u0010%\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008&R\u0014\u0010\u0007\u001a\u00020\u0008X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\n\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "CallbackType",
        "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V",
        "allowCompleteCancellation",
        "",
        "getAllowCompleteCancellation",
        "()Z",
        "canceled",
        "getCanceled",
        "setCanceled",
        "(Z)V",
        "cancellationCallback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cannotCurrentlyBeCanceledMessage",
        "",
        "getCannotCurrentlyBeCanceledMessage",
        "()Ljava/lang/String;",
        "currentlyCancelable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "canCurrentlyBeCancelled",
        "execute",
        "",
        "executeIfNotCanceled",
        "onCancelFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onCancelSuccess",
        "onSuccess",
        "response",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;",
        "onSuccess$terminalsession_release",
        "setIsCurrentlyCancelable",
        "isCancelable",
        "startCancel",
        "startCancel$terminalsession_release",
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
.field private final allowCompleteCancellation:Z

.field private canceled:Z

.field private cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

.field private final cannotCurrentlyBeCanceledMessage:Ljava/lang/String;

.field private final currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackType;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1272
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 1275
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1276
    const-string p1, "Operation cannot currently be canceled"

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cannotCurrentlyBeCanceledMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final canCurrentlyBeCancelled()Z
    .locals 2

    .line 1379
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public execute()V
    .locals 3

    .line 1289
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->canceled:Z

    if-nez v0, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->executeIfNotCanceled()V

    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->canceled()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method

.method public abstract executeIfNotCanceled()V
.end method

.method protected getAllowCompleteCancellation()Z
    .locals 1

    .line 1286
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->allowCompleteCancellation:Z

    return v0
.end method

.method public final getCanceled()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->canceled:Z

    return v0
.end method

.method protected getCannotCurrentlyBeCanceledMessage()Ljava/lang/String;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cannotCurrentlyBeCanceledMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_0
    const/4 p1, 0x0

    .line 1368
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    return-void
.end method

.method public final onCancelSuccess()V
    .locals 3

    .line 1356
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$setOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 1357
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    :cond_0
    const/4 v0, 0x0

    .line 1358
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    return-void
.end method

.method public onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V
    .locals 8

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 1307
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1308
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 1307
    const-string v3, "Operation completed before it could be canceled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public final setCanceled(Z)V
    .locals 0

    .line 1277
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->canceled:Z

    return-void
.end method

.method protected final setIsCurrentlyCancelable(Z)V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1373
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getCancelableOperationContext()Lcom/stripe/core/transaction/CancelableOperationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/CancelableOperationContext;->setCurrentlyCancelable(Z)V

    :cond_0
    return-void
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    .line 1329
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->getStarted()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1331
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->canceled:Z

    .line 1332
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    :cond_0
    const/4 p1, 0x0

    .line 1333
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->cancellationCallback:Lcom/stripe/stripeterminal/external/callable/Callback;

    return-void

    .line 1334
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->getCompleted()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->getAllowCompleteCancellation()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1337
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1338
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 1337
    const-string v2, "Operation completed before it could be canceled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1336
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void

    .line 1342
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->canCurrentlyBeCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1344
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1345
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 1346
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->getCannotCurrentlyBeCanceledMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1344
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1343
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_3
    return-void
.end method
