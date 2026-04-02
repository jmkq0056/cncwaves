.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;
.super Ljava/lang/Object;
.source "Cancelable.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Cancelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u00030\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u00030\u0003R\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "operation",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V",
        "isCompleted",
        "",
        "()Z",
        "cancel",
        "",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
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
.field private final operation:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;->operation:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;->operation:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;->operation:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->isCompleted()Z

    move-result v0

    return v0
.end method
