.class public final Lcom/stripe/jvmcore/client/dagger/GatorModule;
.super Ljava/lang/Object;
.source "GatorModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGatorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GatorModule.kt\ncom/stripe/jvmcore/client/dagger/GatorModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JL\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u0012\u001a\u00020\u00132\u000e\u0008\u0001\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0018H\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/dagger/GatorModule;",
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
        "observabilityClientFailuresInterceptor",
        "httpClientConfigurator",
        "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideGatorApi",
        "Lcom/stripe/proto/api/gator/GatorApi;",
        "crpcClient",
        "Ldagger/Lazy;",
        "provideServiceUrlProvider",
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/client/dagger/GatorModule;


# direct methods
.method public static synthetic $r8$lambda$_qLQUdkxt0-WVgk3WKB3UNcZGU4(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/jvmcore/client/dagger/GatorModule;->provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/client/dagger/GatorModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/client/dagger/GatorModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/client/dagger/GatorModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/GatorModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 1

    const-string v0, "$environmentProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lcom/stripe/jvmcore/environment/EnvironmentProvider;->getEnvironment()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/Environment;->getGatorApiUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ObservabilityClientFailures;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
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

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 54
    new-instance v1, Lcom/stripe/jvmcore/client/dagger/GatorModule$provideCrpcClient$1;

    invoke-direct {v1, p6, p1}, Lcom/stripe/jvmcore/client/dagger/GatorModule$provideCrpcClient$1;-><init>(Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/jvmcore/client/OkHttpClientProvider;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 41
    invoke-direct {v0, v1, p2, p3, p7}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V

    if-eqz p5, :cond_0

    .line 55
    invoke-virtual {v0, p5}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->addCustomCrpcInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 57
    :cond_0
    invoke-virtual {v0, p4}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->addCustomCrpcInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->build()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p1

    return-object p1
.end method

.method public final provideGatorApi(Ldagger/Lazy;)Lcom/stripe/proto/api/gator/GatorApi;
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
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
            "Lcom/stripe/proto/api/gator/GatorApi;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "crpcClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/stripe/proto/api/gator/GatorApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/gator/GatorApi;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method public final provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "environmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/GatorModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/client/dagger/GatorModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V

    return-object v0
.end method
