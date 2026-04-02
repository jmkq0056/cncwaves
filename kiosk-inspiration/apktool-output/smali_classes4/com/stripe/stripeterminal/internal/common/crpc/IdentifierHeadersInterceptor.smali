.class public final Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;
.super Ljava/lang/Object;
.source "IdentifierHeadersInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Ldagger/Reusable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentifierHeadersInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentifierHeadersInterceptor.kt\ncom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,43:1\n215#2,2:44\n*S KotlinDebug\n*F\n+ 1 IdentifierHeadersInterceptor.kt\ncom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor\n*L\n36#1:44,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
        "Lokhttp3/Interceptor;",
        "tokenProvider",
        "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "userAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/environment/UserAgentProvider;)V",
        "userAgent",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "getUserAgent",
        "()Lcom/stripe/proto/model/rest/UserAgent;",
        "userAgent$delegate",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "common_publish"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tokenProvider:Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

.field private final userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 22
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "userAgent"

    const-string v3, "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;"

    const-class v4, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/environment/UserAgentProvider;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tokenProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->tokenProvider:Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    .line 19
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 22
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    return-void
.end method

.method private final getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/environment/UserAgentProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->tokenProvider:Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;->getRpcSessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    const-string v2, "X-Stripe-Session-Token"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    const-string v2, "Stripe-Account"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;->getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/stripe/jvmcore/environment/EnvironmentKt;->toRequestHeaders(Lcom/stripe/proto/model/rest/UserAgent;Z)Ljava/util/Map;

    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
