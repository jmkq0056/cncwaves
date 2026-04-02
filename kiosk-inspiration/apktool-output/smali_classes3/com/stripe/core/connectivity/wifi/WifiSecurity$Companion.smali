.class public final Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;
.super Ljava/lang/Object;
.source "WifiSecurity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/wifi/WifiSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiSecurity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiSecurity.kt\ncom/stripe/core/connectivity/wifi/WifiSecurity$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n288#2,2:69\n*S KotlinDebug\n*F\n+ 1 WifiSecurity.kt\ncom/stripe/core/connectivity/wifi/WifiSecurity$Companion\n*L\n50#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;",
        "",
        "()V",
        "ORDERED_SECURITY_MODES",
        "",
        "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
        "fromCapabilities",
        "capabilities",
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
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCapabilities(Ljava/lang/String;)Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 7

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->access$getORDERED_SECURITY_MODES$cp()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    .line 50
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->getCode()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v3, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :cond_1
    check-cast v2, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    if-nez v2, :cond_2

    sget-object p1, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->UNSUPPORTED:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object p1

    :cond_2
    return-object v2
.end method
