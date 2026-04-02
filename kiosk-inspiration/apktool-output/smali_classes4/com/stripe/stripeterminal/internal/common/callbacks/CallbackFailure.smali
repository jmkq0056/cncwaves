.class public final Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackFailure;
.super Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult;
.source "CallbackResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackFailure;",
        "T",
        "Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult;",
        "exception",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V",
        "getException",
        "()Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "common_publish"
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
.field private final exception:Lcom/stripe/stripeterminal/external/models/TerminalException;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackFailure;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-void
.end method


# virtual methods
.method public final getException()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackFailure;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object v0
.end method
