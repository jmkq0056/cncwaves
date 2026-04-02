.class public final Lcom/stripe/cots/common/DebuggableException;
.super Lcom/stripe/cots/common/CotsException;
.source "CotsException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/cots/common/DebuggableException;",
        "Lcom/stripe/cots/common/CotsException;",
        "()V",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    sget-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v0}, Lcom/stripe/cots/common/CotsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/stripe/cots/common/CotsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
