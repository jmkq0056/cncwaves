.class public final Lcom/stripe/core/readerupdate/dagger/ArmadaModule;
.super Ljava/lang/Object;
.source "ArmadaModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArmadaModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArmadaModule.kt\ncom/stripe/core/readerupdate/dagger/ArmadaModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,87:1\n16#2:88\n16#2:89\n16#2:90\n*S KotlinDebug\n*F\n+ 1 ArmadaModule.kt\ncom/stripe/core/readerupdate/dagger/ArmadaModule\n*L\n44#1:88\n59#1:89\n83#1:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007JX\u0010\u0011\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00130\u0012j\u0002`\u00142\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007JH\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/ArmadaModule;",
        "",
        "()V",
        "provideArmadaIngester",
        "Lcom/stripe/core/updater/Ingester;",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lcom/stripe/core/readerupdate/ArmadaIngester;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "readerProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/core/hardware/Reader;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideArmadaMonitor",
        "Lcom/stripe/core/updater/Monitor;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/ArmadaMonitor;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "readerInfoRepository",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "provideUpdateClient",
        "armadaApi",
        "Lcom/stripe/proto/api/armada/ArmadaApi;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "featureFlagRepository",
        "offlineConfigUpdateListener",
        "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/ArmadaModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ArmadaModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideArmadaIngester(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Ingester;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation

    const-string v0, "updateClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;

    .line 89
    const-class v1, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 55
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;-><init>(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/core/updater/Ingester;

    return-object v0
.end method

.method public final provideArmadaMonitor(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/core/transaction/SettingsRepository;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Monitor;
    .locals 10
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "updateClient"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "embeddedSoftwareVersionProvider"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "readerInfoRepository"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settingsRepository"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "readerProvider"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configurationHandler"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;

    .line 88
    const-class v1, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 37
    invoke-direct/range {v2 .. v9}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;-><init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/core/transaction/SettingsRepository;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v2, Lcom/stripe/core/updater/Monitor;

    return-object v2
.end method

.method public final provideUpdateClient(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/UpdateClient;
    .locals 11
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p8

    const-string v1, "armadaApi"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "okHttpClientProvider"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoRepository"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "embeddedSoftwareVersionProvider"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "featureFlagRepository"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settingsRepository"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineConfigUpdateListener"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v2, Lcom/stripe/core/readerupdate/UpdateClient;

    .line 90
    const-class v1, Lcom/stripe/core/readerupdate/UpdateClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 75
    invoke-direct/range {v2 .. v10}, Lcom/stripe/core/readerupdate/UpdateClient;-><init>(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v2
.end method
