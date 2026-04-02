.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;
.super Ljava/lang/Object;
.source "BbposUpdateHardwareModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;",
        "",
        "()V",
        "provideReaderConfigurationUpdateController",
        "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "hardware_release"
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideReaderConfigurationUpdateController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "deviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    return-object v0
.end method
