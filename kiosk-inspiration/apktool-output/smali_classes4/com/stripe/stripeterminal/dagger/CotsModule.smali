.class public final Lcom/stripe/stripeterminal/dagger/CotsModule;
.super Ljava/lang/Object;
.source "CotsModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCotsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CotsModule.kt\ncom/stripe/stripeterminal/dagger/CotsModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,179:1\n16#2:180\n16#2:181\n16#2:182\n16#2:183\n*S KotlinDebug\n*F\n+ 1 CotsModule.kt\ncom/stripe/stripeterminal/dagger/CotsModule\n*L\n60#1:180\n87#1:181\n137#1:182\n175#1:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J8\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007JF\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\"\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u001a\u0010 \u001a\u00020\r2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J.\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010#\u001a\u00020$H\u0007JF\u0010%\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/CotsModule;",
        "",
        "()V",
        "isCotsAdapterIncluded",
        "",
        "provideCotsClient",
        "Lcom/stripe/cots/common/CotsClient;",
        "applicationContext",
        "Landroid/content/Context;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "isCotsIncluded",
        "preFlightChecks",
        "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideCotsProxyAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "cotsClient",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "nfcAntennaLogger",
        "Lcom/stripe/cots/common/NfcAntennaLogger;",
        "provideNfcAntennaLogger",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "providePreflightChecks",
        "provideSimulatedCotsClient",
        "Lcom/stripe/cots/common/SimulatedCotsClient;",
        "simulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "provideSimulatedCotsProxyAdapter",
        "simulatedCotsClient",
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


# direct methods
.method public static synthetic $r8$lambda$nnbILdjQDfnJrAtq5UYwXX7fcI0(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule;->provideSimulatedCotsClient$lambda$1(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideSimulatedCotsClient$lambda$1(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Ljava/lang/String;
    .locals 1

    const-string v0, "$simulatorConfigurationRepository"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getSimulatedCard()Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->getEmvBlob()Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->getBlob()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isCotsAdapterIncluded()Z
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/IsCotsIncluded;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const/4 v0, 0x1

    .line 100
    :try_start_0
    const-string v1, "com.stripe.cots.aidlservice.CotsService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    return v0
.end method

.method public final provideCotsClient(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/CotsClient;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsCotsIncluded;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preFlightChecks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 133
    new-instance p3, Lcom/stripe/cots/common/CotsClient;

    .line 182
    const-class v0, Lcom/stripe/cots/common/CotsClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p5

    .line 133
    invoke-direct {p3, p1, p2, p4, p5}, Lcom/stripe/cots/common/CotsClient;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideCotsProxyAdapter(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
    .locals 10
    .param p5    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "applicationInformationProvider"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "terminalStatusManager"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "featureFlagsRepository"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appScope"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nfcAntennaLogger"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 53
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 55
    move-object v4, p2

    check-cast v4, Lcom/stripe/cots/common/CotsClientInterface;

    .line 180
    const-class p2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v9

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 53
    invoke-direct/range {v2 .. v9}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClientInterface;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideNfcAntennaLogger(Landroid/content/Context;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/NfcAntennaLogger;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/stripe/cots/common/NfcAntennaLogger;

    .line 174
    invoke-virtual {p2}, Lcom/stripe/core/device/BuildValues;->getSdkInt()Lcom/stripe/core/device/SdkInt;

    move-result-object p2

    .line 183
    const-class v1, Lcom/stripe/cots/common/NfcAntennaLogger;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    .line 172
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/cots/common/NfcAntennaLogger;-><init>(Landroid/content/Context;Lcom/stripe/core/device/SdkInt;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final providePreflightChecks(Landroid/content/Context;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/cots/common/compatibility/PreFlightChecks;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/scottyab/rootbeer/RootBeer;

    invoke-direct {v0, p1}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcom/scottyab/rootbeer/RootBeer;->setLogging(Z)V

    .line 120
    invoke-virtual {p2}, Lcom/stripe/core/device/BuildValues;->getSdkInt()Lcom/stripe/core/device/SdkInt;

    move-result-object p2

    .line 115
    new-instance v1, Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    invoke-direct {v1, p1, v0, p2}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;-><init>(Landroid/content/Context;Lcom/scottyab/rootbeer/RootBeer;Lcom/stripe/core/device/SdkInt;)V

    return-object v1
.end method

.method public final provideSimulatedCotsClient(Landroid/content/Context;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Lcom/stripe/cots/common/SimulatedCotsClient;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsCotsIncluded;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preFlightChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatorConfigurationRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 154
    new-instance p2, Lcom/stripe/cots/common/SimulatedCotsClient;

    .line 157
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Lcom/stripe/stripeterminal/dagger/CotsModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)V

    .line 154
    invoke-direct {p2, p1, p3, v0}, Lcom/stripe/cots/common/SimulatedCotsClient;-><init>(Landroid/content/Context;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/cots/common/SimulatedEmvBlobProvider;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideSimulatedCotsProxyAdapter(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/SimulatedCotsClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
    .locals 10
    .param p5    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/stripeterminal/dagger/SimulatedCotsAdapter;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "applicationInformationProvider"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "terminalStatusManager"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "featureFlagsRepository"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appScope"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nfcAntennaLogger"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 80
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 82
    move-object v4, p2

    check-cast v4, Lcom/stripe/cots/common/CotsClientInterface;

    .line 181
    const-class p2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v9

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 80
    invoke-direct/range {v2 .. v9}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClientInterface;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
