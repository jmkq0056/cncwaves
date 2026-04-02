.class public final Lcom/stripe/core/connectivity/wifi/WifiSecurityKt;
.super Ljava/lang/Object;
.source "WifiSecurity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiSecurity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiSecurity.kt\ncom/stripe/core/connectivity/wifi/WifiSecurityKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1747#2,3:69\n*S KotlinDebug\n*F\n+ 1 WifiSecurity.kt\ncom/stripe/core/connectivity/wifi/WifiSecurityKt\n*L\n67#1:69,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "getWifiSecurity",
        "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
        "Landroid/net/wifi/WifiConfiguration;",
        "isWpa2Eap",
        "",
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
.method public static final getWifiSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    sget-object p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA2:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/stripe/core/connectivity/wifi/WifiSecurityKt;->isWpa2Eap(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 59
    sget-object p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA2_EAP:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object p0

    .line 61
    :cond_1
    sget-object p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->UNSUPPORTED:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object p0
.end method

.method public static final isWpa2Eap(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 66
    new-array v1, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 67
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string v1, "allowedKeyManagement"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_2
    return v2
.end method
