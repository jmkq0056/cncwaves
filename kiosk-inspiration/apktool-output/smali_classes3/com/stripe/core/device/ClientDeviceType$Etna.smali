.class public final Lcom/stripe/core/device/ClientDeviceType$Etna;
.super Ljava/lang/Object;
.source "ClientDeviceType.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceType$BbposDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/ClientDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Etna"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/core/device/ClientDeviceType$Etna;",
        "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;",
        "()V",
        "isDevKit",
        "",
        "()Z",
        "manufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;",
        "getManufacturer",
        "()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;",
        "metadata",
        "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "getMetadata",
        "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field public static final INSTANCE:Lcom/stripe/core/device/ClientDeviceType$Etna;

.field private static final isDevKit:Z

.field private static final manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

.field private static final metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$Etna;

    invoke-direct {v0}, Lcom/stripe/core/device/ClientDeviceType$Etna;-><init>()V

    sput-object v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->INSTANCE:Lcom/stripe/core/device/ClientDeviceType$Etna;

    .line 53
    sget-object v0, Lcom/stripe/core/device/HardwareManufacturer$Bbpos;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    sput-object v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    .line 54
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->Etna:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sput-object v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/device/ClientDeviceType$Etna;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/stripe/core/device/ClientDeviceType$Etna;

    return v0
.end method

.method public getManufacturer()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;
    .locals 1

    .line 53
    sget-object v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    return-object v0
.end method

.method public bridge synthetic getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/stripe/core/device/ClientDeviceType$Etna;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    return-object v0
.end method

.method public getMetadata()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 1

    .line 54
    sget-object v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x2480698

    return v0
.end method

.method public isDevKit()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->isDevKit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Etna"

    return-object v0
.end method
