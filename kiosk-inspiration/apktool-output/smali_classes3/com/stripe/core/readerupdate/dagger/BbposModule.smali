.class public final Lcom/stripe/core/readerupdate/dagger/BbposModule;
.super Ljava/lang/Object;
.source "BbposModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposModule.kt\ncom/stripe/core/readerupdate/dagger/BbposModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,66:1\n16#2:67\n16#2:68\n*S KotlinDebug\n*F\n+ 1 BbposModule.kt\ncom/stripe/core/readerupdate/dagger/BbposModule\n*L\n42#1:67\n62#1:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J`\u0010\u0003\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0002`\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J:\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/BbposModule;",
        "",
        "()V",
        "provideBbposApplicator",
        "Lcom/stripe/core/updater/Applicator;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "Lcom/stripe/core/readerupdate/BbposApplicator;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "readerProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/core/hardware/Reader;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "bbposAssetInstallProcessor",
        "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideBbposAssetInstallProcessor",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "updateListener",
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "statusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "updateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "readerConnectionController",
        "Lcom/stripe/core/hardware/ReaderConnectionController;",
        "readerupdate_release"
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/BbposModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/BbposModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/BbposModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/BbposModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/BbposModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBbposApplicator(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Applicator;
    .locals 10
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            "Lcom/stripe/device/DeviceInfoRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "io"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "readerProvider"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configurationHandler"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "embeddedSoftwareVersionProvider"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bbposAssetInstallProcessor"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoRepository"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v2, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    .line 68
    const-class v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 55
    invoke-direct/range {v2 .. v9}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v2, Lcom/stripe/core/updater/Applicator;

    return-object v2
.end method

.method public final provideBbposAssetInstallProcessor(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;
    .locals 8
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Updates;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerConnectionController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    .line 67
    const-class v0, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    move-object v6, p5

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;-><init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v1, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    return-object v1
.end method
