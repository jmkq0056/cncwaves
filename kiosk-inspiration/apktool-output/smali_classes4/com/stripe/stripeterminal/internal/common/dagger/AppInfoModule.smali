.class public final Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;
.super Ljava/lang/Object;
.source "AppInfoModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J9\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001\u00a2\u0006\u0002\u0008\u0012J\u0017\u0010\u0013\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0014J/\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0001\u00a2\u0006\u0002\u0008\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
        "",
        "()V",
        "provideAppInfoParser",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
        "context",
        "Landroid/content/Context;",
        "provideAppInfoParser$common_publish",
        "provideDeviceUuidProvider",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "deviceUuidSharedPrefsProvider",
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "manufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "serialSupplier",
        "Lcom/stripe/core/device/SerialSupplier;",
        "provideDeviceUuidProvider$common_publish",
        "provideDeviceUuidSharedPrefsProvider",
        "provideDeviceUuidSharedPrefsProvider$common_publish",
        "provideSdkApplicationInformationFactory",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
        "deviceUuidProvider",
        "appInfoParser",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "provideSdkApplicationInformationFactory$common_publish",
        "common_publish"
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
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAppInfoParser$common_publish(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultAppInfoParser;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultAppInfoParser;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    return-object v0
.end method

.method public final provideDeviceUuidProvider$common_publish(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/terminal/appinfo/DeviceUuidProvider;
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "deviceUuidSharedPrefsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "io"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "manufacturer"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "serialSupplier"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;

    .line 59
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 57
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;-><init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Lkotlin/coroutines/CoroutineContext;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)V

    check-cast p2, Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    return-object p2
.end method

.method public final provideDeviceUuidSharedPrefsProvider$common_publish(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;

    return-object v0
.end method

.method public final provideSdkApplicationInformationFactory$common_publish(Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUuidProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;-><init>(Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;

    return-object v0
.end method
