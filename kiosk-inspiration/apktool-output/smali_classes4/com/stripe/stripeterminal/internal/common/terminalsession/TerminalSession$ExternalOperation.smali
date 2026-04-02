.class public abstract Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ExternalOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackType::",
        "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        ">",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00a0\u0004\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00060\u0003R\u00020\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH&J\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0010\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008\u0016J\r\u0010\u0017\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH&R\u0013\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;",
        "CallbackType",
        "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V",
        "getCallback",
        "()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        "isCompleted",
        "",
        "()Z",
        "execute",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "response",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;",
        "onSuccess$terminalsession_release",
        "run",
        "run$terminalsession_release",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
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
.field private final callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackType;"
        }
    .end annotation
.end field

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

    .line 1185
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1187
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    .line 1186
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public final getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCallbackType;"
        }
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    return-object v0
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->getCompleted()Z

    move-result v0

    return v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1201
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    const/4 v0, 0x3

    .line 1208
    new-array v0, v0, [Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1209
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BATTERY_CRITICALLY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1210
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 1207
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1213
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-ne v0, v1, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isMposDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const-string v1, "Rebooting reader due to missing keys error."

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1220
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$emergencyRebootReader(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    goto :goto_1

    .line 1223
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BATTERY_CRITICALLY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-ne v0, v1, :cond_1

    .line 1224
    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->CRITICALLY_LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    goto :goto_0

    .line 1226
    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    .line 1228
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v4, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->emergencyDisconnectReader$default(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1230
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->clear()V

    .line 1234
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->failure(Lcom/stripe/stripeterminal/external/models/TerminalException;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->onSuccess$terminalsession_release()V

    .line 1260
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    check-cast p1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v1, "sdk_operation"

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method

.method public run$terminalsession_release()V
    .locals 3

    .line 1242
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->run$terminalsession_release()V

    .line 1243
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 1245
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->execute()V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1247
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public abstract sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
.end method
