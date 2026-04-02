.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NullOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V",
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2588
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    return-void
.end method
