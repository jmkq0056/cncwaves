.class public final Lcom/stripe/stripeterminal/dagger/JackrabbitModule;
.super Ljava/lang/Object;
.source "JackrabbitModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001\u00a2\u0006\u0002\u0008\u0012J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0008\u0010\u0016\u001a\u00020\u0017H\u0007J\u0012\u0010\u0018\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0017H\u0007J\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u000e\u0008\u0001\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001eH\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/JackrabbitModule;",
        "",
        "()V",
        "provideCrpcClientBuilder",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "internetReaderDns",
        "Lokhttp3/Dns;",
        "crpcRequestContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "tracingInterceptor",
        "Lokhttp3/Interceptor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideCrpcRequestContextProvider",
        "readerCrpcRequestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
        "provideCrpcRequestContextProvider$sdkmanager_publish",
        "provideDistributedTracingInterceptor",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "provideInetAddressValidator",
        "Lcom/stripe/jvmcore/dns/InetAddressValidator;",
        "provideInternetReaderDns",
        "inetAddressValidator",
        "provideJackrabbitApiResolver",
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        "crpcClientBuilder",
        "Ldagger/Lazy;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;


# direct methods
.method public static synthetic $r8$lambda$_TqHFfn0X2dJMH70Mx_ITJQJUiQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideCrpcClientBuilder$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideCrpcClientBuilder$lambda$0()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final provideCrpcClientBuilder(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lokhttp3/Interceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 2
    .param p2    # Lokhttp3/Dns;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
        .end annotation
    .end param
    .param p4    # Lokhttp3/Interceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okHttpClientProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internetReaderDns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crpcRequestContextProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingInterceptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 77
    new-instance v1, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;

    invoke-direct {v1, p1, p2, p4}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;-><init>(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lokhttp3/Interceptor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$$ExternalSyntheticLambda0;-><init>()V

    .line 76
    invoke-direct {v0, v1, p1, p3, p5}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method

.method public final provideCrpcRequestContextProvider$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "readerCrpcRequestContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    return-object p1
.end method

.method public final provideDistributedTracingInterceptor(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lokhttp3/Interceptor;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "traceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V

    check-cast v0, Lokhttp3/Interceptor;

    return-object v0
.end method

.method public final provideInetAddressValidator()Lcom/stripe/jvmcore/dns/InetAddressValidator;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/dns/SocketConnectInetAddressValidator;

    invoke-direct {v0}, Lcom/stripe/jvmcore/dns/SocketConnectInetAddressValidator;-><init>()V

    check-cast v0, Lcom/stripe/jvmcore/dns/InetAddressValidator;

    return-object v0
.end method

.method public final provideInternetReaderDns(Lcom/stripe/jvmcore/dns/InetAddressValidator;)Lokhttp3/Dns;
    .locals 5
    .param p1    # Lcom/stripe/jvmcore/dns/InetAddressValidator;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "inetAddressValidator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/stripe/jvmcore/dns/InternetReaderDns;

    .line 62
    sget-object v1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    const/4 v2, 0x1

    .line 63
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "device.stripe-terminal-local-reader.net"

    aput-object v4, v2, v3

    .line 60
    invoke-direct {v0, p1, v1, v2}, Lcom/stripe/jvmcore/dns/InternetReaderDns;-><init>(Lcom/stripe/jvmcore/dns/InetAddressValidator;Lokhttp3/Dns;[Ljava/lang/String;)V

    check-cast v0, Lokhttp3/Dns;

    return-object v0
.end method

.method public final provideJackrabbitApiResolver(Ldagger/Lazy;)Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;
    .locals 3
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Jackrabbit;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;)",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "crpcClientBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    .line 33
    sget-object v1, Lcom/stripe/jvmcore/terminal/crpc/LocalIpReaderResolutionStrategy;->INSTANCE:Lcom/stripe/jvmcore/terminal/crpc/LocalIpReaderResolutionStrategy;

    check-cast v1, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;

    .line 34
    sget-object v2, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideJackrabbitApiResolver$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 31
    invoke-direct {v0, p1, v1, v2}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;-><init>(Ldagger/Lazy;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
