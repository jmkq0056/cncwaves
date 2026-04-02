.class public final Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;
.super Ljava/lang/Object;
.source "BbposUpdateModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/bbpos/dagger/BbposUpdateModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/dagger/BbposUpdateModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J%\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;",
        "",
        "()V",
        "EMMS_URL",
        "",
        "provideBBDeviceOTAController",
        "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/stripe/core/bbpos/BbposOtaListener;",
        "deviceController",
        "Lcom/bbpos/bbdevice/BBDeviceController;",
        "provideCustServiceManager",
        "Landroid/bbpos/CustServiceManager;",
        "provideUpdateController",
        "Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
        "otaController",
        "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
        "otaListener",
        "provideUpdateController$sdk_release",
        "Bindings",
        "sdk_release"
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
.field private static final EMMS_URL:Ljava/lang/String; = "https://api.emms.bbpos.com/"

.field public static final INSTANCE:Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;->INSTANCE:Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBBDeviceOTAController(Landroid/content/Context;Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/BBDeviceController;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->getInstance(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->setBBDeviceController(Ljava/lang/Object;)V

    .line 48
    const-string p2, "https://api.emms.bbpos.com/"

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->setOTAServerURL(Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final provideCustServiceManager(Landroid/content/Context;)Landroid/stripe/bbpos/CustServiceManager;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v0, "custservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.bbpos.CustServiceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/stripe/bbpos/CustServiceManager;

    return-object p1
.end method

.method public final provideUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)Lcom/stripe/core/bbpos/BbposReaderUpdateController;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "otaController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otaListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;-><init>(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)V

    return-object v0
.end method
