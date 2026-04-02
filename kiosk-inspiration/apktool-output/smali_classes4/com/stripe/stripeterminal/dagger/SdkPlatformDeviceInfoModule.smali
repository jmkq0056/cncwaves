.class public interface abstract Lcom/stripe/stripeterminal/dagger/SdkPlatformDeviceInfoModule;
.super Ljava/lang/Object;
.source "SdkPlatformDeviceInfoModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/SdkPlatformDeviceInfoModule;",
        "",
        "provideEmbeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "readerPlatformDeviceInfo",
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;",
        "providePlatformDeviceInfo",
        "Lcom/stripe/device/PlatformDeviceInfo;",
        "sdkmanager_publish"
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
.method public abstract provideEmbeddedSoftwareVersionProvider(Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;)Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract providePlatformDeviceInfo(Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;)Lcom/stripe/device/PlatformDeviceInfo;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
