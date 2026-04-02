.class public interface abstract Lcom/stripe/core/connectivity/NetworkCallback;
.super Ljava/lang/Object;
.source "NetworkCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/NetworkCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/core/connectivity/Connection$Type;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008`\u0018\u0000 \u000c*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u000cR\u001e\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/NetworkCallback;",
        "T",
        "Lcom/stripe/core/connectivity/Connection$Type;",
        "",
        "connectionFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/core/connectivity/Connection;",
        "getConnectionFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "linkProperties",
        "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
        "getLinkProperties",
        "Companion",
        "connectivity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/core/connectivity/NetworkCallback$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/core/connectivity/NetworkCallback$Companion;->$$INSTANCE:Lcom/stripe/core/connectivity/NetworkCallback$Companion;

    sput-object v0, Lcom/stripe/core/connectivity/NetworkCallback;->Companion:Lcom/stripe/core/connectivity/NetworkCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract getConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getLinkProperties()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
            ">;"
        }
    .end annotation
.end method
