.class public final Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;
.super Ljava/lang/Object;
.source "ConnectivityDataClasses.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/Connection$Disconnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\n\u0008\u0002\u0010\u0005\u0018\u0001*\u00020\u0006H\u0086\n\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;",
        "",
        "()V",
        "invoke",
        "Lcom/stripe/core/connectivity/Connection$Disconnected;",
        "T",
        "Lcom/stripe/core/connectivity/Connection$Type;",
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Lcom/stripe/core/connectivity/Connection$Disconnected;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/stripe/core/connectivity/Connection$Type;",
            ">()",
            "Lcom/stripe/core/connectivity/Connection$Disconnected<",
            "TT;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lcom/stripe/core/connectivity/Connection$Type;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    return-object v0
.end method
