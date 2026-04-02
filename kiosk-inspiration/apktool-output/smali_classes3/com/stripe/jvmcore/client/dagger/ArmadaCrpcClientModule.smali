.class public final Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;
.super Ljava/lang/Object;
.source "ArmadaCrpcClientModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArmadaCrpcClientModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArmadaCrpcClientModule.kt\ncom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 ArmadaCrpcClientModule.kt\ncom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule\n*L\n58#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JK\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0013\u0008\u0001\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0008\u000e2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0012\u0010\u0016\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\rH\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;",
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
        "customCrpcInterceptors",
        "",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "httpClientConfigurator",
        "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideServiceUrlProvider",
        "environmentProvider",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
        "provideTraceLoggingInterceptor",
        "traceLoggingInterceptor",
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;


# direct methods
.method public static synthetic $r8$lambda$qjaqZlw9xDHT1ILUHAriVtoDPOw(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;->provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 1

    const-string v0, "$environmentProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lcom/stripe/jvmcore/environment/EnvironmentProvider;->getEnvironment()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/Environment;->getArmadaApiUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Ljava/util/Set;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okHttpClientProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceUrlProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crpcRequestContextProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customCrpcInterceptors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClientConfigurator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 57
    new-instance v1, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule$provideCrpcClient$1;

    invoke-direct {v1, p5, p1}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule$provideCrpcClient$1;-><init>(Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/jvmcore/client/OkHttpClientProvider;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 45
    invoke-direct {v0, v1, p2, p3, p6}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V

    .line 58
    check-cast p4, Ljava/lang/Iterable;

    .line 65
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    .line 59
    invoke-virtual {v0, p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->addCustomCrpcInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->build()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p1

    return-object p1
.end method

.method public final provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "environmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V

    return-object v0
.end method

.method public final provideTraceLoggingInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1
    .param p1    # Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoSet;
    .end annotation

    const-string v0, "traceLoggingInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
