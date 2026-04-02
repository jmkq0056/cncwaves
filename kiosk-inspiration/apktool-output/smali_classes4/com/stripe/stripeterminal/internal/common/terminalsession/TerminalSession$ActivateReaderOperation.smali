.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivateReaderOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation<",
        "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;",
        "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;)V",
        "execute",
        "",
        "onSuccess",
        "response",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
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
.field private final config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2285
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2289
    check-cast p4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 2286
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 2287
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    return-void
.end method

.method private final onSuccess(Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
    .locals 1

    .line 2300
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;->onSuccess(Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    .line 2301
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 2291
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->activateReader$terminalsession_release(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object v0

    .line 2292
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->onSuccess(Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 2296
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method
