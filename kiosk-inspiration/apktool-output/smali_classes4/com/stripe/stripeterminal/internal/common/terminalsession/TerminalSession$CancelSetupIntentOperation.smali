.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelSetupIntentOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation<",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V",
        "execute",
        "",
        "onSuccess",
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
.field private final intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

.field private final params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
            "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2357
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2361
    check-cast p4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 2358
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    .line 2359
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    return-void
.end method

.method private final onSuccess(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V
    .locals 1

    .line 2372
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 2373
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 2363
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    .line 2364
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->onSuccess(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 3

    .line 2368
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;->params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method
