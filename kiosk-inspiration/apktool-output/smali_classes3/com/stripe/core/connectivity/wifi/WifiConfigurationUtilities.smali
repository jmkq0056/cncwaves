.class public final Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;
.super Ljava/lang/Object;
.source "WifiConfigurationUtilities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;,
        Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;,
        Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiConfigurationUtilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiConfigurationUtilities.kt\ncom/stripe/core/connectivity/wifi/WifiConfigurationUtilities\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n288#2,2:281\n1855#2,2:283\n1855#2,2:285\n1864#2,3:288\n766#2:291\n857#2,2:292\n1603#2,9:294\n1855#2:303\n1856#2:305\n1612#2:306\n1#3:287\n1#3:304\n*S KotlinDebug\n*F\n+ 1 WifiConfigurationUtilities.kt\ncom/stripe/core/connectivity/wifi/WifiConfigurationUtilities\n*L\n82#1:281,2\n94#1:283,2\n124#1:285,2\n165#1:288,3\n261#1:291\n261#1:292,2\n262#1:294,9\n262#1:303\n262#1:305\n262#1:306\n262#1:304\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00039:;B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0001H\u0002J+\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0017H\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004J\u001e\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!J \u0010\"\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0002J\n\u0010#\u001a\u00020\n*\u00020\u000eJ\u0010\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\n\u0010%\u001a\u00020&*\u00020\u000eJ\u000c\u0010\'\u001a\u00020(*\u0004\u0018\u00010\u000eJ\u0010\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u0010\u0010*\u001a\u0006\u0012\u0002\u0008\u00030+*\u00020\u000eH\u0002J\u0010\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u0010\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u0010\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013*\u00020\u000eJ\u000c\u0010/\u001a\u0004\u0018\u000100*\u000201J0\u00102\u001a\u00020!*\u00020\u000e2\u0006\u00103\u001a\u0002002\u0006\u00104\u001a\u0002002\u0006\u00105\u001a\u0002002\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u0002000\u0013J\u0014\u00107\u001a\u00020\n*\u00020\u000e2\u0006\u00108\u001a\u00020&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0008*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;",
        "",
        "()V",
        "DEFAULT_CONSTRUCTOR_IP_ADDRESS",
        "",
        "GATEWAY_FIELD",
        "IP_ADDRESS_FIELD",
        "TAG",
        "kotlin.jvm.PlatformType",
        "connectToNetwork",
        "",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "wifiConfiguration",
        "Landroid/net/wifi/WifiConfiguration;",
        "forgetWifiConfiguration",
        "forgetWifiNetworkId",
        "getEmptyStaticIpConfiguration",
        "getValuesFromBitset",
        "",
        "bitSet",
        "Ljava/util/BitSet;",
        "strings",
        "",
        "getValuesFromBitset$connectivity_release",
        "(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;",
        "validateIPV4FromString",
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;",
        "untrimmedText",
        "wifiConfigFromSSIDAndPassword",
        "ssid",
        "password",
        "isHidden",
        "",
        "wifiConfigFromSSIDAndPasswordHelper",
        "clearAdvancedInfo",
        "getAuthAlgorithms",
        "getConfigType",
        "Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;",
        "getCurrentStaticIpConfigurationOrEmpty",
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;",
        "getGroupCiphers",
        "getIPAssignmentEnum",
        "",
        "getPairwiseCiphers",
        "getSupportedKeys",
        "getSupportedProtocols",
        "ipv4orNull",
        "Ljava/net/Inet4Address;",
        "Ljava/net/InetAddress;",
        "setAdvancedInfo",
        "ipAddress",
        "subnetMask",
        "gateway",
        "dnsServers",
        "setIpAssignment",
        "config",
        "InetAddressParseError",
        "InetAddressValidation",
        "StaticIPConfigurationWrapper",
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
.field private static final DEFAULT_CONSTRUCTOR_IP_ADDRESS:Ljava/lang/String; = "0.0.0.0"

.field private static final GATEWAY_FIELD:Ljava/lang/String; = "gateway"

.field public static final INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

.field private static final IP_ADDRESS_FIELD:Ljava/lang/String; = "ipAddress"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    invoke-direct {v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;-><init>()V

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final forgetWifiNetworkId(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 76
    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 77
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return-void
.end method

.method private final getEmptyStaticIpConfiguration()Ljava/lang/Object;
    .locals 2

    .line 112
    const-string v0, "android.net.StaticIpConfiguration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getIPAssignmentEnum(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getIpAssignment"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Enum<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method private final setIpAssignment(Landroid/net/wifi/WifiConfiguration;Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;)V
    .locals 4

    .line 265
    invoke-direct {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getIPAssignmentEnum(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "setIpAssignment"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 270
    invoke-virtual {p2}, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;->getEnumName()Ljava/lang/String;

    move-result-object p2

    .line 268
    invoke-static {v0, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 266
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final wifiConfigFromSSIDAndPasswordHelper(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 66
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 67
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 68
    iput-boolean p3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 69
    invoke-static {p2}, Lcom/stripe/strings/StringsExtKt;->surroundInDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final clearAdvancedInfo(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;->DHCP:Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;

    invoke-direct {p0, p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->setIpAssignment(Landroid/net/wifi/WifiConfiguration;Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getCurrentStaticIpConfigurationOrEmpty(Landroid/net/wifi/WifiConfiguration;)Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "setStaticIpConfiguration"

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getEmptyStaticIpConfiguration()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final connectToNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    const-string v0, "wifiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const-string v1, "getConfiguredNetworks(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 283
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 95
    sget-object v2, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p1, v1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->forgetWifiNetworkId(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    .line 102
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 104
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    return-void
.end method

.method public final forgetWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const-string v0, "wifiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const-string v1, "getConfiguredNetworks(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 281
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 82
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->forgetWifiNetworkId(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final getAuthAlgorithms(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const-string v0, "allowedAuthAlgorithms"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v0, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    const-string v1, "strings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getValuesFromBitset$connectivity_release(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getConfigType(Landroid/net/wifi/WifiConfiguration;)Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getIPAssignmentEnum(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Enum;

    move-result-object p1

    .line 124
    invoke-static {}, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 285
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;

    .line 125
    invoke-virtual {v1}, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;->getEnumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 129
    :cond_1
    sget-object p1, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;->DHCP:Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;

    return-object p1
.end method

.method public final getCurrentStaticIpConfigurationOrEmpty(Landroid/net/wifi/WifiConfiguration;)Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;
    .locals 4

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "getStaticIpConfiguration"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 118
    :goto_0
    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getEmptyStaticIpConfiguration()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    invoke-direct {v0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getGroupCiphers(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const-string v0, "allowedGroupCiphers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    const-string v1, "strings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getValuesFromBitset$connectivity_release(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getPairwiseCiphers(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const-string v0, "allowedPairwiseCiphers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    const-string v1, "strings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getValuesFromBitset$connectivity_release(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSupportedKeys(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string v0, "allowedKeyManagement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const-string v1, "strings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getValuesFromBitset$connectivity_release(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSupportedProtocols(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const-string v0, "allowedProtocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    const-string v1, "strings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getValuesFromBitset$connectivity_release(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getValuesFromBitset$connectivity_release(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bitSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 292
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 261
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 291
    check-cast v1, Ljava/lang/Iterable;

    .line 294
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 303
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 302
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 262
    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 302
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_3
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final ipv4orNull(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/Inet4Address;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setAdvancedInfo(Landroid/net/wifi/WifiConfiguration;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "ipAddress"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "subnetMask"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "gateway"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "dnsServers"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v7, Lcom/stripe/core/connectivity/SubnetMaskUtilities;->INSTANCE:Lcom/stripe/core/connectivity/SubnetMaskUtilities;

    invoke-virtual {v7, v2}, Lcom/stripe/core/connectivity/SubnetMaskUtilities;->inetAddressMappingToPrefixLength(Ljava/net/Inet4Address;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 157
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v7, :cond_1

    goto/16 :goto_2

    .line 162
    :cond_1
    sget-object v9, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v10, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->TAG:Ljava/lang/String;

    const-string v11, "TAG"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "setAdvancedInfo IP -> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v9, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "setAdvancedInfo subnetMask -> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "setAdvancedInfo gateway -> "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object v2, v4

    check-cast v2, Ljava/lang/Iterable;

    .line 289
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v9, 0x1

    if-gez v9, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v10, Ljava/net/Inet4Address;

    .line 166
    sget-object v13, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v14, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->TAG:Ljava/lang/String;

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    const-string v8, "setAdvancedInfo DNS["

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v14, v8}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v12

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    .line 169
    sget-object v2, Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;->STATIC:Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;

    move-object/from16 v8, p0

    invoke-direct {v8, v0, v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->setIpAssignment(Landroid/net/wifi/WifiConfiguration;Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;)V

    .line 172
    new-instance v2, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;

    invoke-direct {v8}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->getEmptyStaticIpConfiguration()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;-><init>(Ljava/lang/Object;)V

    const-class v9, Landroid/net/LinkAddress;

    const/4 v10, 0x2

    .line 175
    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/net/InetAddress;

    aput-object v11, v10, v16

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    const-string v10, "getConstructor(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 178
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "null cannot be cast to non-null type android.net.LinkAddress"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/LinkAddress;

    .line 182
    invoke-virtual {v2, v5, v1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v2, v6, v3}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 190
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v3, v12, [Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->getJavaClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v16

    const-string v4, "setStaticIpConfiguration"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
    invoke-virtual {v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$StaticIPConfigurationWrapper;->getStaticConfig()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_4
    :goto_2
    move-object/from16 v8, p0

    const/16 v16, 0x0

    .line 158
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "WifiConfigUtilities"

    const-string v2, "Ignoring setAdvancedInfo for invalid configuration"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v16
.end method

.method public final validateIPV4FromString(Ljava/lang/String;)Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;
    .locals 2

    const-string v0, "untrimmedText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0.0.0.0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :goto_0
    new-instance p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;->INVALID_STRING:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    invoke-direct {p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;-><init>(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V

    check-cast p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;

    return-object p1

    .line 35
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    .line 36
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    const-string v0, "getByName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->ipv4orNull(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 38
    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Success;

    invoke-direct {v0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Success;-><init>(Ljava/net/Inet4Address;)V

    check-cast v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;

    goto :goto_1

    .line 40
    :cond_2
    new-instance p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;->IPV6_UNSUPPORTED:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    invoke-direct {p1, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;-><init>(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;

    .line 35
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    :goto_2
    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    sget-object v1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;->INVALID_STRING:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;-><init>(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V

    .line 42
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;

    return-object p1
.end method

.method public final wifiConfigFromSSIDAndPassword(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/stripe/strings/StringsExtKt;->surroundInDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->wifiConfigFromSSIDAndPasswordHelper(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method
