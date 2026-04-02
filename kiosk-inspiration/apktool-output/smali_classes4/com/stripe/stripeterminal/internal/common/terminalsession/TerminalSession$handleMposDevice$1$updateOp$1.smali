.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->handleMposDevice(Lcom/stripe/stripeterminal/external/models/Reader;)V
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
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1",
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
.field final synthetic $connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic $readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

.field final synthetic $update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    .line 2230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0, v1, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->finishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 2240
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eq v0, v1, :cond_1

    .line 2252
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 2253
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-static {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAccountOfflineConfigOrDefault(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v1

    .line 2254
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getClock$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 2252
    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/extensions/ReaderExtensionsKt;->isRunningAllowedVersionFromOfflineKFC(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/external/models/Reader;->setAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    .line 2259
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportUpdateAvailable(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    return-void

    .line 2262
    :cond_0
    throw p1

    .line 2247
    :cond_1
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2248
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 2250
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 2247
    const-string v3, "Required update installation was canceled"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public onSuccess()V
    .locals 4

    .line 2232
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/Reader;->update(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    .line 2233
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;->$readerUpdate:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->finishInstallingUpdate$default(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;ILjava/lang/Object;)V

    return-void
.end method
