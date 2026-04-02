.class public final Lcom/stripe/core/connectivity/LinkPropertiesKt;
.super Ljava/lang/Object;
.source "LinkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkProperties.kt\ncom/stripe/core/connectivity/LinkPropertiesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n43#1,2:51\n45#1:57\n46#1:69\n43#1,2:70\n45#1:76\n46#1:88\n288#2,2:49\n1549#2:53\n1620#2,3:54\n800#2,11:58\n1549#2:72\n1620#2,3:73\n800#2,11:77\n1549#2:89\n1620#2,3:90\n800#2,11:93\n*S KotlinDebug\n*F\n+ 1 LinkProperties.kt\ncom/stripe/core/connectivity/LinkPropertiesKt\n*L\n37#1:51,2\n37#1:57\n37#1:69\n38#1:70,2\n38#1:76\n38#1:88\n29#1:49,2\n37#1:53\n37#1:54,3\n37#1:58,11\n38#1:72\n38#1:73,3\n38#1:77,11\n44#1:89\n44#1:90,3\n45#1:93,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u000b\u001a\u0004\u0018\u0001H\u000c\"\n\u0008\u0000\u0010\u000c\u0018\u0001*\u00020\u0001*\u00020\u0002H\u0082\u0008\u00a2\u0006\u0002\u0010\u0004\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u0002\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u001a\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "gateway",
        "Ljava/net/InetAddress;",
        "Landroid/net/LinkProperties;",
        "getGateway",
        "(Landroid/net/LinkProperties;)Ljava/net/InetAddress;",
        "ipAddress",
        "",
        "getIpAddress",
        "(Landroid/net/LinkProperties;)Ljava/lang/String;",
        "subnetMask",
        "getSubnetMask",
        "inetAddressOfType",
        "T",
        "toNetworkLinkProperties",
        "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
        "connectivity_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final getGateway(Landroid/net/LinkProperties;)Ljava/net/InetAddress;
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p0

    const-string v0, "getRoutes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 49
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/RouteInfo;

    .line 30
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 29
    :goto_0
    check-cast v0, Landroid/net/RouteInfo;

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static final getIpAddress(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 6

    .line 51
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    const-string v1, "getLinkAddresses(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 55
    check-cast v4, Landroid/net/LinkAddress;

    .line 52
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 55
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 53
    check-cast v2, Ljava/lang/Iterable;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 69
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 37
    check-cast v0, Ljava/net/Inet4Address;

    .line 70
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 73
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    check-cast v2, Landroid/net/LinkAddress;

    .line 71
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 72
    check-cast v1, Ljava/lang/Iterable;

    .line 77
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 87
    :cond_5
    check-cast p0, Ljava/util/List;

    .line 88
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    .line 38
    check-cast p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_6

    .line 39
    check-cast v0, Ljava/net/InetAddress;

    goto :goto_4

    :cond_6
    move-object v0, p0

    check-cast v0, Ljava/net/InetAddress;

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getSubnetMask(Landroid/net/LinkProperties;)Ljava/net/InetAddress;
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p0

    const-string v0, "getRoutes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 22
    sget-object v1, Lcom/stripe/core/connectivity/SubnetMaskUtilities;->INSTANCE:Lcom/stripe/core/connectivity/SubnetMaskUtilities;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/stripe/core/connectivity/SubnetMaskUtilities;->prefixLengthToInetAddress(I)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method private static final synthetic inetAddressOfType(Landroid/net/LinkProperties;)Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/InetAddress;",
            ">(",
            "Landroid/net/LinkProperties;",
            ")TT;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    const-string v0, "getLinkAddresses(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 90
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 91
    check-cast v1, Landroid/net/LinkAddress;

    .line 44
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 89
    check-cast v0, Ljava/lang/Iterable;

    .line 93
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v1, Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_2
    check-cast p0, Ljava/util/List;

    .line 46
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    return-object p0
.end method

.method public static final toNetworkLinkProperties(Landroid/net/LinkProperties;)Lcom/stripe/core/connectivity/NetworkLinkProperties;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/stripe/core/connectivity/NetworkLinkProperties;

    .line 11
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    const-string v2, "getDnsServers(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/stripe/core/connectivity/LinkPropertiesKt;->getSubnetMask(Landroid/net/LinkProperties;)Ljava/net/InetAddress;

    move-result-object v2

    .line 13
    invoke-static {p0}, Lcom/stripe/core/connectivity/LinkPropertiesKt;->getGateway(Landroid/net/LinkProperties;)Ljava/net/InetAddress;

    move-result-object v3

    .line 14
    invoke-static {p0}, Lcom/stripe/core/connectivity/LinkPropertiesKt;->getIpAddress(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/stripe/core/connectivity/NetworkLinkProperties;-><init>(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method
