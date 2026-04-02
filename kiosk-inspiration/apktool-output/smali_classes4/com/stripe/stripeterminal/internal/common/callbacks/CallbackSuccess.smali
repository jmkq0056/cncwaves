.class public final Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackSuccess;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackSuccess;",
        "T",
        "Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult;",
        "result",
        "(Ljava/lang/Object;)V",
        "getResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackSuccess;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackSuccess;->result:Ljava/lang/Object;

    return-object v0
.end method
