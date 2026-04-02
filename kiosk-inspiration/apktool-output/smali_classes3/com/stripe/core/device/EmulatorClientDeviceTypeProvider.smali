.class public final Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;
.super Ljava/lang/Object;
.source "EmulatorClientDeviceTypeProvider.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceTypeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
        "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "(Lcom/stripe/core/device/BuildValues;)V",
        "get",
        "Lcom/stripe/core/device/ClientDeviceType$Emulator;",
        "Companion",
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
.field private static final CANNOLI_DISPLAY_WIDTH:I = 0x500

.field public static final Companion:Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider$Companion;


# instance fields
.field private final buildValues:Lcom/stripe/core/device/BuildValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;->Companion:Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/device/BuildValues;)V
    .locals 1

    const-string v0, "buildValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    return-void
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/ClientDeviceType$Emulator;
    .locals 4

    .line 12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v1, Lcom/stripe/core/device/ClientDeviceType$Emulator;

    .line 17
    new-instance v2, Lcom/stripe/core/device/HardwareManufacturer$Other;

    iget-object v3, p0, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v3}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v3

    invoke-interface {v3}, Lcom/stripe/core/device/HardwareManufacturer;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/stripe/core/device/HardwareManufacturer$Other;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/stripe/core/device/ClientDeviceType$Emulator;-><init>(ZLcom/stripe/core/device/HardwareManufacturer$Other;)V

    return-object v1
.end method

.method public bridge synthetic get()Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType$Emulator;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    return-object v0
.end method
