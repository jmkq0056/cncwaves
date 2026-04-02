.class final Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WifiManagerHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/stripe/core/connectivity/SignalStrength;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/core/connectivity/SignalStrength;",
        "signalLevel",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;

    invoke-direct {v0}, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;-><init>()V

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lcom/stripe/core/connectivity/SignalStrength;
    .locals 1

    .line 20
    invoke-static {}, Lcom/stripe/core/connectivity/SignalStrength;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 24
    sget-object p1, Lcom/stripe/core/connectivity/SignalStrength;->None:Lcom/stripe/core/connectivity/SignalStrength;

    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/stripe/core/connectivity/SignalStrength;->High:Lcom/stripe/core/connectivity/SignalStrength;

    return-object p1

    .line 22
    :cond_1
    sget-object p1, Lcom/stripe/core/connectivity/SignalStrength;->Medium:Lcom/stripe/core/connectivity/SignalStrength;

    return-object p1

    .line 23
    :cond_2
    sget-object p1, Lcom/stripe/core/connectivity/SignalStrength;->Low:Lcom/stripe/core/connectivity/SignalStrength;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;->invoke(I)Lcom/stripe/core/connectivity/SignalStrength;

    move-result-object p1

    return-object p1
.end method
