.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->installAvailableUpdateOnMpos(Lcom/stripe/stripeterminal/external/models/Reader;)V
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
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1",
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
.field final synthetic $reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic $update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->$update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->$update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0, v1, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->finishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 788
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/Reader;->setAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    .line 789
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;->$update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->finishInstallingUpdate$default(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;ILjava/lang/Object;)V

    return-void
.end method
