.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReconnectReaderOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0010\u00a2\u0006\u0002\u0008\u0015J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0015\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0002H\u0010\u00a2\u0006\u0002\u0008\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lcom/stripe/stripeterminal/external/callable/Callback;)V",
        "isConnectedToReader",
        "",
        "()Z",
        "setConnectedToReader",
        "(Z)V",
        "isReconnectingAfterReboot",
        "executeIfNotCanceled",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
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
.field private final disconnectReason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

.field private isConnectedToReader:Z

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            "Lcom/stripe/stripeterminal/external/callable/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1981
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1985
    check-cast p4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 1982
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 1983
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->disconnectReason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    return-void
.end method

.method public static final synthetic access$getDisconnectReason$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;)Lcom/stripe/stripeterminal/external/models/DisconnectReason;
    .locals 0

    .line 1981
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->disconnectReason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    return-object p0
.end method

.method public static final synthetic access$getReader$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 0

    .line 1981
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object p0
.end method

.method private final isReconnectingAfterReboot()Z
    .locals 3

    const/4 v0, 0x2

    .line 1992
    new-array v0, v0, [Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->REBOOT_REQUESTED:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1993
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->SECURITY_REBOOT:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    aput-object v2, v0, v1

    .line 1991
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->disconnectReason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public executeIfNotCanceled()V
    .locals 4

    .line 1998
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    move-object v3, p0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {v2, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->disconnectReason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->startReconnecting(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 2000
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    .line 2001
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 2000
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    const/4 v1, 0x1

    .line 2004
    iput-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->isConnectedToReader:Z

    .line 2007
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isMposDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->isReconnectingAfterReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2008
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$handleMposDevice(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2011
    :cond_0
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->onSuccess(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void
.end method

.method public final isConnectedToReader()Z
    .locals 1

    .line 1989
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->isConnectedToReader:Z

    return v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2034
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2035
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getDisconnectReasonRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->consumeDisconnectReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    move-result-object v1

    .line 2034
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v2, v3, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$emergencyDisconnectReader(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;)V

    .line 2038
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public final onSuccess(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reconnected(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2043
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 2015
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setConnectedToReader(Z)V
    .locals 0

    .line 1989
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->isConnectedToReader:Z

    return-void
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 2021
    :try_start_0
    iget-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->isConnectedToReader:Z

    if-nez p1, :cond_0

    .line 2025
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelReconnectReader()V

    .line 2026
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->onCancelSuccess()V

    return-void

    .line 2023
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const-string v2, "Too late to cancel reconnection"

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2028
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method
