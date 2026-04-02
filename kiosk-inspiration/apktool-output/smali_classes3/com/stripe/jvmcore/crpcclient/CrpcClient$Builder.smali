.class public final Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
.super Ljava/lang/Object;
.source "CrpcClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/crpcclient/CrpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B+\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001bJ\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010&\u001a\u00020\u0003J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
        "",
        "client",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)V",
        "getOkHttpClient",
        "Lkotlin/Function0;",
        "Lokhttp3/OkHttpClient;",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        "requestContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V",
        "getBaseUrlProvider$crpcclient",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        "setBaseUrlProvider$crpcclient",
        "(Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;)V",
        "clientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "getClientBuilder$crpcclient",
        "()Lokhttp3/OkHttpClient$Builder;",
        "clientBuilder$delegate",
        "Lkotlin/Lazy;",
        "customApplicationInterceptors",
        "",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "getCustomApplicationInterceptors$crpcclient",
        "()Ljava/util/Set;",
        "getGetOkHttpClient$crpcclient",
        "()Lkotlin/jvm/functions/Function0;",
        "getLogWriter$crpcclient",
        "()Lcom/stripe/logwriter/LogWriter;",
        "getRequestContextProvider$crpcclient",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "addCustomCrpcInterceptor",
        "interceptor",
        "build",
        "callTimeout",
        "seconds",
        "",
        "connectTimeout",
        "readTimeout",
        "retryOnConnectionFailure",
        "retry",
        "",
        "writeTimeout",
        "crpcclient"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

.field private final clientBuilder$delegate:Lkotlin/Lazy;

.field private final customApplicationInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final getOkHttpClient:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)V
    .locals 4

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder$1;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 146
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getBaseUrlProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    .line 148
    invoke-static {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->access$getLogWriter$p(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v3

    .line 144
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V

    .line 150
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->access$getCustomCrpcInterceptors$p(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "getOkHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestContextProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getOkHttpClient:Lkotlin/jvm/functions/Function0;

    .line 133
    iput-object p2, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    .line 134
    iput-object p3, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    .line 135
    iput-object p4, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 138
    new-instance p1, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder$clientBuilder$2;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder$clientBuilder$2;-><init>(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->clientBuilder$delegate:Lkotlin/Lazy;

    .line 142
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addCustomCrpcInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 181
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final baseUrlProvider(Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 1

    const-string v0, "baseUrlProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 185
    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    return-object p0
.end method

.method public final build()Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 1

    .line 189
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;-><init>(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)V

    return-object v0
.end method

.method public final callTimeout(J)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 2

    .line 156
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 157
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final connectTimeout(J)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 2

    .line 161
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 162
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final getBaseUrlProvider$crpcclient()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    return-object v0
.end method

.method public final getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->clientBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public final getCustomApplicationInterceptors$crpcclient()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    return-object v0
.end method

.method public final getGetOkHttpClient$crpcclient()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getOkHttpClient:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getLogWriter$crpcclient()Lcom/stripe/logwriter/LogWriter;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object v0
.end method

.method public final getRequestContextProvider$crpcclient()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    return-object v0
.end method

.method public final readTimeout(J)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 2

    .line 166
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 167
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final retryOnConnectionFailure(Z)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 1

    .line 176
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 177
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final setBaseUrlProvider$crpcclient(Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    return-void
.end method

.method public final writeTimeout(J)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 2

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    .line 172
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method
