.class public final Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;
.super Ljava/lang/Object;
.source "ReaderBatteryInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;",
        "",
        "()V",
        "fromReaderInfo",
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "readerInfo",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "public_release"
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 3

    const-string v0, "readerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 15
    sget-object v0, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->CRITICAL:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    goto :goto_0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 16
    sget-object v0, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->LOW:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->NOMINAL:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    :goto_0
    if-nez v0, :cond_3

    .line 19
    :cond_2
    sget-object v0, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->isCharging()Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    new-instance v2, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    invoke-direct {v2, v0, v1, p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;-><init>(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-object v2
.end method
