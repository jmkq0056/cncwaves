.class public abstract Lcom/stripe/core/connectivity/Connection;
.super Ljava/lang/Object;
.source "ConnectivityDataClasses.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/Connection$Connected;,
        Lcom/stripe/core/connectivity/Connection$Disconnected;,
        Lcom/stripe/core/connectivity/Connection$Type;,
        Lcom/stripe/core/connectivity/Connection$Unknown;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0004\u0005\u0006\u0007\u0008B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004\u0082\u0001\u0003\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/Connection;",
        "T",
        "Lcom/stripe/core/connectivity/Connection$Type;",
        "",
        "()V",
        "Connected",
        "Disconnected",
        "Type",
        "Unknown",
        "Lcom/stripe/core/connectivity/Connection$Connected;",
        "Lcom/stripe/core/connectivity/Connection$Disconnected;",
        "Lcom/stripe/core/connectivity/Connection$Unknown;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/connectivity/Connection;-><init>()V

    return-void
.end method
