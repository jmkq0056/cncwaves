.class public final Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt;
.super Ljava/lang/Object;
.source "WifiManagerHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"#\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "signalStrengthConvertor",
        "Lkotlin/Function1;",
        "",
        "Lcom/stripe/core/connectivity/SignalStrength;",
        "getSignalStrengthConvertor$annotations",
        "()V",
        "getSignalStrengthConvertor",
        "()Lkotlin/jvm/functions/Function1;",
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


# static fields
.field private static final signalStrengthConvertor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lcom/stripe/core/connectivity/SignalStrength;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt$signalStrengthConvertor$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt;->signalStrengthConvertor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getSignalStrengthConvertor()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lcom/stripe/core/connectivity/SignalStrength;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiManagerHelperKt;->signalStrengthConvertor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static synthetic getSignalStrengthConvertor$annotations()V
    .locals 0

    return-void
.end method
