.class public interface abstract Lcom/stripe/core/device/ClientDeviceType$BbposDevice;
.super Ljava/lang/Object;
.source "ClientDeviceType.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/ClientDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BbposDevice"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0001\u0005\u0006\u0007\u0008\t\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;",
        "Lcom/stripe/core/device/ClientDeviceType;",
        "metadata",
        "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "getMetadata",
        "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "Lcom/stripe/core/device/ClientDeviceType$Etna;",
        "Lcom/stripe/core/device/ClientDeviceType$S700;",
        "Lcom/stripe/core/device/ClientDeviceType$S710;",
        "Lcom/stripe/core/device/ClientDeviceType$Unknown;",
        "Lcom/stripe/core/device/ClientDeviceType$WisePosE;",
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
.method public abstract getMetadata()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
.end method
