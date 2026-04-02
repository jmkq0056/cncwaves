.class public final Lcom/stripe/offlinemode/dagger/OfflineHelperModule;
.super Ljava/lang/Object;
.source "OfflineHelperModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/offlinemode/dagger/OfflineHelperModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineHelperModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineHelperModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineHelperModule.kt\ncom/stripe/offlinemode/dagger/OfflineHelperModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,154:1\n16#2:155\n16#2:156\n16#2:157\n16#2:158\n*S KotlinDebug\n*F\n+ 1 OfflineHelperModule.kt\ncom/stripe/offlinemode/dagger/OfflineHelperModule\n*L\n59#1:155\n89#1:156\n105#1:157\n121#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u00013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J7\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000fJ\u0092\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0013\u0008\u0001\u0010\u001e\u001a\r\u0012\t\u0012\u00070 \u00a2\u0006\u0002\u0008!0\u001f2\"\u0010\"\u001a\u001e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0#j\u0002`(2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008)J.\u0010*\u001a\u00020+2\u0008\u0008\u0001\u0010,\u001a\u00020-2\u0008\u0008\u0001\u0010.\u001a\u00020-2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0007JD\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u0010\u001c\u001a\u00020\u001d2\"\u0010\"\u001a\u001e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0#j\u0002`(2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/OfflineHelperModule;",
        "",
        "()V",
        "provideDefaultOfflineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "proxyOfflineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "activeLocationConfigRepository",
        "Lcom/stripe/device/ActiveLocationConfigRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideDefaultOfflineConfigHelper$offlinemode_release",
        "provideDefaultOfflineEventHandler",
        "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "offlineIdGenerator",
        "Lcom/stripe/offlinemode/OfflineIdGenerator;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "offlineForwardingManager",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "stripeNetworkStatusFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "offlineDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "provideDefaultOfflineEventHandler$offlinemode_release",
        "provideOfflineDbReaper",
        "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
        "computationDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "ioDispatcher",
        "provideOfflinePaymentMethodValidator",
        "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "Bindings",
        "offlinemode_release"
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
.field public static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineHelperModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineHelperModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDefaultOfflineConfigHelper$offlinemode_release(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;
    .locals 7
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyOfflineListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeLocationConfigRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    .line 155
    const-class v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 54
    invoke-direct/range {v1 .. v6}, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;-><init>(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v1
.end method

.method public final provideDefaultOfflineEventHandler$offlinemode_release(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/DefaultOfflineEventHandler;
    .locals 14
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .param p9    # Lkotlinx/coroutines/flow/Flow;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/offlinemode/OfflineIdGenerator;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p11

    const-string v1, "clock"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineRepository"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineIdGenerator"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activeLocationConfigRepository"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "posInfoFactory"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineForwardingManager"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineConfigHelper"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "stripeNetworkStatusFlow"

    move-object/from16 v11, p9

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineDiscreteLogger"

    move-object/from16 v12, p10

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v2, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    .line 156
    const-class v1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v13

    move-object v3, p1

    .line 78
    invoke-direct/range {v2 .. v13}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v2
.end method

.method public final provideOfflineDbReaper(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;
    .locals 2
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Computation;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "computationDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;

    .line 157
    const-class v1, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 101
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;

    return-object v0
.end method

.method public final provideOfflinePaymentMethodValidator(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDiscreteLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;

    .line 158
    const-class v1, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 117
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    return-object v0
.end method
