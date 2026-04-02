.class public final Lcom/stripe/cots/common/ReaderNotConnectedException;
.super Lcom/stripe/cots/common/CotsException;
.source "CotsException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/cots/common/ReaderNotConnectedException;",
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

    .line 7
    const-string v0, "No active reader"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/stripe/cots/common/CotsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
