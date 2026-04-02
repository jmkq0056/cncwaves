.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;
.super Ljava/lang/Object;
.source "DefaultLocalIpAddressProvider.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;",
        "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
        "()V",
        "getLocalIp",
        "",
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
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .line 8
    const-string v0, "TODO"

    return-object v0
.end method
