.class public final Lcom/stripe/jvmcore/client/dagger/WardenModule;
.super Ljava/lang/Object;
.source "WardenModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\u00122\u000e\u0008\u0001\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/dagger/WardenModule;",
        "",
        "()V",
        "provideCrpcClient",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "serviceUrlProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        "crpcRequestContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "traceLoggingInterceptor",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "httpClientConfigurator",
        "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideWardenApi",
        "Lcom/stripe/proto/api/warden/WardenApi;",
        "crpcClient",
        "Ldagger/Lazy;",
        "provideWireServiceUrlProvider",
        "environmentProvider",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
        "client"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/client/dagger/WardenModule;


# direct methods
.method public static synthetic $r8$lambda$09UV79myUeZGMR0nlauC1eRdni4(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/jvmcore/client/dagger/WardenModule;->provideWireServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/client/dagger/WardenModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/client/dagger/WardenModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/client/dagger/WardenModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/WardenModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideWireServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 1

    const-string v0, "$environmentProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lcom/stripe/jvmcore/environment/EnvironmentProvider;->getEnvironment()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/Environment;->getWardenApiUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Warden;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Warden;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Warden;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Warden;
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

    const-string v0, "traceLoggingInterceptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClientConfigurator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 52
    new-instance v1, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;

    invoke-direct {v1, p5, p1}, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;-><init>(Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/jvmcore/client/OkHttpClientProvider;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 39
    invoke-direct {v0, v1, p2, p3, p6}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V

    .line 52
    invoke-virtual {v0, p4}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->addCustomCrpcInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->build()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p1

    return-object p1
.end method

.method public final provideWardenApi(Ldagger/Lazy;)Lcom/stripe/proto/api/warden/WardenApi;
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Warden;
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
            "Lcom/stripe/proto/api/warden/WardenApi;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "crpcClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/stripe/proto/api/warden/WardenApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/warden/WardenApi;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method public final provideWireServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Warden;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "environmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/WardenModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/client/dagger/WardenModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V

    return-object v0
.end method
