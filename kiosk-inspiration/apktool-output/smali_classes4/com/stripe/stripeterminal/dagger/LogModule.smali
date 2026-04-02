.class public final Lcom/stripe/stripeterminal/dagger/LogModule;
.super Ljava/lang/Object;
.source "LogModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;,
        Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogModule.kt\ncom/stripe/stripeterminal/dagger/LogModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 4 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,167:1\n1#2:168\n436#3,4:169\n436#3,4:177\n457#4,4:173\n457#4,4:181\n*S KotlinDebug\n*F\n+ 1 LogModule.kt\ncom/stripe/stripeterminal/dagger/LogModule\n*L\n153#1:169,4\n163#1:177,4\n154#1:173,4\n164#1:181,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J,\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\u0008j\u0002`\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0001\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J@\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0007J\u0015\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'H\u0001\u00a2\u0006\u0002\u0008(J/\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0008\u0008\u0001\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0001\u00a2\u0006\u0002\u00082J\u0008\u00103\u001a\u00020.H\u0007J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u00020*H\u0007J\n\u00107\u001a\u0004\u0018\u00010\u001dH\u0007J\u0015\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0001\u00a2\u0006\u0002\u0008<J\u0010\u0010=\u001a\u00020\u00192\u0006\u0010>\u001a\u00020?H\u0007J,\u0010@\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020B0\u0008j\u0002`C2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006D"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/LogModule;",
        "",
        "()V",
        "provideApiLogPointInterceptor",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "apiLogPointInterceptor",
        "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;",
        "provideBluetoothConnectivityHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/BluetoothConnectivityHealthLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "provideClientLoggerApi",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
        "crpcClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "provideCrpcClient",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "serviceUrlProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        "crpcRequestContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "observabilityClientFailuresInterceptor",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "headerInterceptor",
        "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideCrpcLogPointInterceptor",
        "crpcLogPointInterceptor",
        "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;",
        "provideCrpcRequestContextProvider",
        "requestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;",
        "provideCrpcRequestContextProvider$sdkmanager_publish",
        "provideDeviceRoleLogUploader",
        "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;",
        "deviceUuidProvider",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "role",
        "",
        "clientLoggerApi",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideDeviceRoleLogUploader$sdkmanager_publish",
        "provideLogRole",
        "provideLogUploader",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
        "uploader",
        "provideObservabilityClientFailuresInterceptor",
        "provideRpcSessionTokenProvider",
        "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "provideRpcSessionTokenProvider$sdkmanager_publish",
        "provideServiceUrlProvider",
        "environmentProvider",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
        "provideUsbConnectivityHealthLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;


# direct methods
.method public static synthetic $r8$lambda$ELfbh-AE2nRtndOH4ccCUFjY6g0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/stripeterminal/dagger/LogModule;->provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/LogModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/LogModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 1

    const-string v0, "$environmentProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Lcom/stripe/jvmcore/environment/EnvironmentProvider;->getEnvironment()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/Environment;->getClientLoggerApiUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideApiLogPointInterceptor(Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;)Lcom/stripe/jvmcore/restclient/RestInterceptor;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "apiLogPointInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    return-object p1
.end method

.method public final provideBluetoothConnectivityHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule$provideBluetoothConnectivityHealthLogger$1;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule$provideBluetoothConnectivityHealthLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 169
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 154
    sget-object p1, Lcom/stripe/stripeterminal/dagger/LogModule$provideBluetoothConnectivityHealthLogger$2;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule$provideBluetoothConnectivityHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 173
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 155
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final provideClientLoggerApi(Ldagger/Lazy;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "crpcClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method public final provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ObservabilityClientFailures;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okHttpClientProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceUrlProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crpcRequestContextProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerInterceptor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 113
    new-instance v1, Lcom/stripe/stripeterminal/dagger/LogModule$provideCrpcClient$1;

    invoke-direct {v1, p1, p5}, Lcom/stripe/stripeterminal/dagger/LogModule$provideCrpcClient$1;-><init>(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 102
    invoke-direct {v0, v1, p2, p3, p6}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V

    if-eqz p4, :cond_0

    .line 114
    invoke-virtual {v0, p4}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->addCustomCrpcInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->build()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p1

    return-object p1
.end method

.method public final provideCrpcLogPointInterceptor(Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "crpcLogPointInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    return-object p1
.end method

.method public final provideCrpcRequestContextProvider$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "requestContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    return-object p1
.end method

.method public final provideDeviceRoleLogUploader$sdkmanager_publish(Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/stripe/jvmcore/dagger/LogRole;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "deviceUuidProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLoggerApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;-><init>(Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method

.method public final provideLogRole()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/LogRole;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 43
    const-string v0, "terminal-android-sdk"

    return-object v0
.end method

.method public final provideLogUploader(Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "uploader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    return-object p1
.end method

.method public final provideObservabilityClientFailuresInterceptor()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/ObservabilityClientFailures;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final provideRpcSessionTokenProvider$sdkmanager_publish(Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "sessionTokenRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    return-object p1
.end method

.method public final provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "environmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/LogModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V

    return-object v0
.end method

.method public final provideUsbConnectivityHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule$provideUsbConnectivityHealthLogger$1;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule$provideUsbConnectivityHealthLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 177
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 164
    sget-object p1, Lcom/stripe/stripeterminal/dagger/LogModule$provideUsbConnectivityHealthLogger$2;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule$provideUsbConnectivityHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 181
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 165
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method
