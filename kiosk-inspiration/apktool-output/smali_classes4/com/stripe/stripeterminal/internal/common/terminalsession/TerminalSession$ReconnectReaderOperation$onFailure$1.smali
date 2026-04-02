.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TerminalSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2034
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2036
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->access$getReader$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation$onFailure$1;->this$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;->access$getDisconnectReason$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;)Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reconnectFailed(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    return-void
.end method
