.class public final Lcom/stripe/core/device/BuildValuesFactory$Companion;
.super Ljava/lang/Object;
.source "BuildValuesFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/BuildValuesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u00020\u00048F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/device/BuildValuesFactory$Companion;",
        "",
        "()V",
        "serialNumber",
        "Lcom/stripe/core/serialnumber/DeviceSerialNumber;",
        "getSerialNumber-q_5ZKBc",
        "()Ljava/lang/String;",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/stripe/core/device/BuildValuesFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/device/BuildValuesFactory$Companion;

    invoke-direct {v0}, Lcom/stripe/core/device/BuildValuesFactory$Companion;-><init>()V

    sput-object v0, Lcom/stripe/core/device/BuildValuesFactory$Companion;->$$INSTANCE:Lcom/stripe/core/device/BuildValuesFactory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSerialNumber-q_5ZKBc()Ljava/lang/String;
    .locals 5

    .line 16
    new-instance v0, Lcom/stripe/core/device/DefaultSerialSupplier;

    .line 17
    new-instance v1, Lcom/stripe/core/device/DefaultBuildValuesFactory;

    .line 18
    new-instance v2, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;->create()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v2

    .line 19
    sget-object v3, Lcom/stripe/core/device/SdkInt;->Companion:Lcom/stripe/core/device/SdkInt$Companion;

    invoke-virtual {v3}, Lcom/stripe/core/device/SdkInt$Companion;->get()Lcom/stripe/core/device/SdkInt;

    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/stripe/core/device/DefaultBuildValuesFactory;-><init>(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)V

    .line 20
    invoke-virtual {v1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->create()Lcom/stripe/core/device/BuildValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/core/device/BuildValues;->isEmulator()Z

    move-result v1

    .line 16
    invoke-direct {v0, v1}, Lcom/stripe/core/device/DefaultSerialSupplier;-><init>(Z)V

    .line 21
    invoke-virtual {v0}, Lcom/stripe/core/device/DefaultSerialSupplier;->get-q_5ZKBc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
