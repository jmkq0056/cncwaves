.class public interface abstract Lcom/stripe/core/device/ClientDeviceType;
.super Ljava/lang/Object;
.source "ClientDeviceType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/device/ClientDeviceType$BbposDevice;,
        Lcom/stripe/core/device/ClientDeviceType$Emulator;,
        Lcom/stripe/core/device/ClientDeviceType$Etna;,
        Lcom/stripe/core/device/ClientDeviceType$MorphDevice;,
        Lcom/stripe/core/device/ClientDeviceType$MorphVfs0100;,
        Lcom/stripe/core/device/ClientDeviceType$S700;,
        Lcom/stripe/core/device/ClientDeviceType$S710;,
        Lcom/stripe/core/device/ClientDeviceType$Unknown;,
        Lcom/stripe/core/device/ClientDeviceType$WisePosE;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\t\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0001\u0003\u0012\u0013\u0014\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0015\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/device/ClientDeviceType;",
        "",
        "isDevKit",
        "",
        "()Z",
        "manufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "getManufacturer",
        "()Lcom/stripe/core/device/HardwareManufacturer;",
        "BbposDevice",
        "Emulator",
        "Etna",
        "MorphDevice",
        "MorphVfs0100",
        "S700",
        "S710",
        "Unknown",
        "WisePosE",
        "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;",
        "Lcom/stripe/core/device/ClientDeviceType$Emulator;",
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


# virtual methods
.method public abstract getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;
.end method

.method public abstract isDevKit()Z
.end method
