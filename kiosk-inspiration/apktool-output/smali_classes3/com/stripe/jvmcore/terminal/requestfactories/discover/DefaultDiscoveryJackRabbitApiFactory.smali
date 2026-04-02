.class public final Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "DefaultDiscoveryJackRabbitApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;",
        "()V",
        "discoverReaders",
        "Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;",
        "connectionToken",
        "",
        "location",
        "terminal-requestfactories"
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
.method public discoverReaders(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;
    .locals 7

    const-string v0, "connectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v3, p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
