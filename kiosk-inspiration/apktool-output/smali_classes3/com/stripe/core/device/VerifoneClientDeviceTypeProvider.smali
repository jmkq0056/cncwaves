.class public final Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;
.super Ljava/lang/Object;
.source "VerifoneClientDeviceTypeProvider.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceTypeProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
        "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "(Lcom/stripe/core/device/BuildValues;)V",
        "get",
        "Lcom/stripe/core/device/ClientDeviceType$MorphDevice;",
        "device_release"
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
.field private final buildValues:Lcom/stripe/core/device/BuildValues;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/BuildValues;)V
    .locals 1

    const-string v0, "buildValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    return-void
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/ClientDeviceType$MorphDevice;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v0}, Lcom/stripe/core/device/BuildValues;->getModel()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string v1, "NEO660"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/core/device/ClientDeviceType$MorphVfs0100;->INSTANCE:Lcom/stripe/core/device/ClientDeviceType$MorphVfs0100;

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$MorphDevice;

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$Unknown;

    .line 11
    new-instance v1, Lcom/stripe/core/device/HardwareManufacturer$Other;

    iget-object v2, p0, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v2}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/core/device/HardwareManufacturer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/core/device/HardwareManufacturer$Other;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Lcom/stripe/core/device/ClientDeviceType$Unknown;-><init>(Lcom/stripe/core/device/HardwareManufacturer$Other;)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$MorphDevice;

    return-object v0
.end method

.method public bridge synthetic get()Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType$MorphDevice;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    return-object v0
.end method
