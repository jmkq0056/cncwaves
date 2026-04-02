.class public Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0090\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V",
        "cancel",
        "",
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

    .line 1144
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method
