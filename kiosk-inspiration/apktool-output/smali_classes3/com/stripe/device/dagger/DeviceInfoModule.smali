.class public final Lcom/stripe/device/dagger/DeviceInfoModule;
.super Ljava/lang/Object;
.source "DeviceInfoModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0001\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/device/dagger/DeviceInfoModule;",
        "",
        "()V",
        "provideDeviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "platformDeviceInfoProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/device/PlatformDeviceInfo;",
        "provideDeviceInfoRepository$wiring",
        "wiring"
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
.field public static final INSTANCE:Lcom/stripe/device/dagger/DeviceInfoModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/device/dagger/DeviceInfoModule;

    invoke-direct {v0}, Lcom/stripe/device/dagger/DeviceInfoModule;-><init>()V

    sput-object v0, Lcom/stripe/device/dagger/DeviceInfoModule;->INSTANCE:Lcom/stripe/device/dagger/DeviceInfoModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDeviceInfoRepository$wiring(Ljavax/inject/Provider;)Lcom/stripe/device/DeviceInfoRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/PlatformDeviceInfo;",
            ">;)",
            "Lcom/stripe/device/DeviceInfoRepository;"
        }
    .end annotation

    const-string v0, "platformDeviceInfoProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/stripe/device/DefaultDeviceInfoRepository;

    invoke-direct {v0, p1}, Lcom/stripe/device/DefaultDeviceInfoRepository;-><init>(Ljavax/inject/Provider;)V

    check-cast v0, Lcom/stripe/device/DeviceInfoRepository;

    return-object v0
.end method
