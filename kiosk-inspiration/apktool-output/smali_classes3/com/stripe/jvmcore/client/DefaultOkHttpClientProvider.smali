.class public final Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Lcom/stripe/jvmcore/client/OkHttpClientProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B1\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0013\u001a\u00020\u000eH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "isCotsIncluded",
        "",
        "eventListenerFactory",
        "Ljava/util/Optional;",
        "Lokhttp3/EventListener$Factory;",
        "certificatesFactory",
        "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
        "(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "client$delegate",
        "Lkotlin/Lazy;",
        "get"
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
.field private final certificatesFactory:Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

.field private final client$delegate:Lkotlin/Lazy;

.field private final eventListenerFactory:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final isCotsIncluded:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;Z",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;",
            "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListenerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificatesFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->interceptors:Ljava/util/Set;

    .line 24
    iput-boolean p2, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->isCotsIncluded:Z

    .line 25
    iput-object p3, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->eventListenerFactory:Ljava/util/Optional;

    .line 26
    iput-object p4, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->certificatesFactory:Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    .line 28
    new-instance p1, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;-><init>(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->client$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCertificatesFactory$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->certificatesFactory:Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    return-object p0
.end method

.method public static final synthetic access$getEventListenerFactory$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Ljava/util/Optional;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->eventListenerFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public static final synthetic access$getInterceptors$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Ljava/util/Set;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->interceptors:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$isCotsIncluded$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->isCotsIncluded:Z

    return p0
.end method

.method private final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->client$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public get()Lokhttp3/OkHttpClient;
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
