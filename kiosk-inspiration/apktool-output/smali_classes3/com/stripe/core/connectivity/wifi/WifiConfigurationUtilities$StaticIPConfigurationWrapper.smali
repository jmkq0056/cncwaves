.class public final Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;
.super Ljava/lang/Object;
.source "WifiConfigurationUtilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticIPConfigurationWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;",
        "",
        "staticConfig",
        "(Ljava/lang/Object;)V",
        "javaClass",
        "Ljava/lang/Class;",
        "getJavaClass",
        "()Ljava/lang/Class;",
        "getStaticConfig",
        "()Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "getDnsServers",
        "",
        "Ljava/net/InetAddress;",
        "getGateway",
        "getLinkAddress",
        "Landroid/net/LinkAddress;",
        "hashCode",
        "",
        "setField",
        "",
        "name",
        "",
        "value",
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


# instance fields
.field private final javaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final staticConfig:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "staticConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->javaClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    instance-of v1, p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    :cond_2
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDnsServers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dnsServers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<java.net.InetAddress>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getGateway()Ljava/net/InetAddress;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "gateway"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->javaClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getLinkAddress()Landroid/net/LinkAddress;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ipAddress"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    return-object v0
.end method

.method public final getStaticConfig()Ljava/lang/Object;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->staticConfig:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
