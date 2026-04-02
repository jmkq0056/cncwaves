.class public final Lcom/stripe/jvmcore/restclient/RestClient$Builder;
.super Ljava/lang/Object;
.source "RestClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/RestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestClient.kt\ncom/stripe/jvmcore/restclient/RestClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n1#2:263\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B!\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B/\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u001a\u0010+\u001a\u00020\u00002\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020.0-J\u000e\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u001bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u00101\u001a\u00020\u0003J\u000e\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u00020\u0000J\u000e\u00106\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&J\u000e\u00107\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:J\u000e\u0010;\u001a\u00020\u00002\u0006\u00103\u001a\u000204R\u001a\u0010\u000c\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006<"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
        "",
        "client",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "restRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/stripe/jvmcore/restclient/RestClient;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V",
        "getOkHttpClient",
        "Lkotlin/Function0;",
        "Lokhttp3/OkHttpClient;",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V",
        "getBaseUrlProvider$base",
        "()Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "setBaseUrlProvider$base",
        "(Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V",
        "clientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "getClientBuilder$base",
        "()Lokhttp3/OkHttpClient$Builder;",
        "clientBuilder$delegate",
        "Lkotlin/Lazy;",
        "customApplicationInterceptors",
        "",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "getCustomApplicationInterceptors$base",
        "()Ljava/util/Set;",
        "customMessageRedactor",
        "getCustomMessageRedactor$base",
        "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "setCustomMessageRedactor$base",
        "(Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)V",
        "getLogWriter$base",
        "()Lcom/stripe/logwriter/LogWriter;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "getMoshi$base",
        "()Lcom/squareup/moshi/Moshi;",
        "setMoshi$base",
        "(Lcom/squareup/moshi/Moshi;)V",
        "addCustomHeaders",
        "customHeaders",
        "",
        "",
        "addCustomRestInterceptor",
        "interceptor",
        "build",
        "callTimeout",
        "seconds",
        "",
        "clearCustomHeaders",
        "connectTimeout",
        "readTimeout",
        "retryOnConnectionFailure",
        "retry",
        "",
        "writeTimeout",
        "base"
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
.field private baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

.field private final clientBuilder$delegate:Lkotlin/Lazy;

.field private final customApplicationInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

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

.field private moshi:Lcom/squareup/moshi/Moshi;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/restclient/RestClient;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder$1;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 195
    invoke-static {p1}, Lcom/stripe/jvmcore/restclient/RestClient;->access$getBaseUrlProvider$p(Lcom/stripe/jvmcore/restclient/RestClient;)Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    move-result-object v1

    .line 191
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V

    .line 197
    iget-object p2, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p1}, Lcom/stripe/jvmcore/restclient/RestClient;->access$getCustomRestInterceptors$p(Lcom/stripe/jvmcore/restclient/RestClient;)Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 198
    invoke-static {p1}, Lcom/stripe/jvmcore/restclient/RestClient;->access$getMoshi$p(Lcom/stripe/jvmcore/restclient/RestClient;)Lcom/squareup/moshi/Moshi;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->moshi:Lcom/squareup/moshi/Moshi;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "getOkHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getOkHttpClient:Lkotlin/jvm/functions/Function0;

    .line 172
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 173
    iput-object p4, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    .line 178
    new-instance p1, Lcom/stripe/jvmcore/restclient/RestClient$Builder$clientBuilder$2;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder$clientBuilder$2;-><init>(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->clientBuilder$delegate:Lkotlin/Lazy;

    .line 182
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    .line 185
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 169
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V

    return-void
.end method

.method public static final synthetic access$getGetOkHttpClient$p(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getOkHttpClient:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final addCustomHeaders(Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestClient$Builder;"
        }
    .end annotation

    const-string v0, "customHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 203
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;

    invoke-direct {v1, p1}, Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;-><init>(Ljava/util/Map;)V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 240
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final baseUrlProvider(Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 1

    const-string v0, "baseUrlProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 244
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    return-object p0
.end method

.method public final build()Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 1

    .line 254
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestClient;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/restclient/RestClient;-><init>(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V

    return-object v0
.end method

.method public final callTimeout(J)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2

    .line 215
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 216
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final clearCustomHeaders()Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2

    .line 206
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 207
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/stripe/jvmcore/restclient/RestClient$Builder$clearCustomHeaders$1$1;->INSTANCE:Lcom/stripe/jvmcore/restclient/RestClient$Builder$clearCustomHeaders$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-object p0
.end method

.method public final connectTimeout(J)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2

    .line 220
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 221
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final getBaseUrlProvider$base()Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    return-object v0
.end method

.method public final getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->clientBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public final getCustomApplicationInterceptors$base()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customApplicationInterceptors:Ljava/util/Set;

    return-object v0
.end method

.method public final getCustomMessageRedactor$base()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-object v0
.end method

.method public final getLogWriter$base()Lcom/stripe/logwriter/LogWriter;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object v0
.end method

.method public final getMoshi$base()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->moshi:Lcom/squareup/moshi/Moshi;

    return-object v0
.end method

.method public final moshi(Lcom/squareup/moshi/Moshi;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 1

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 248
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->moshi:Lcom/squareup/moshi/Moshi;

    return-object p0
.end method

.method public final readTimeout(J)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2

    .line 225
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 226
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final restRedactor(Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 1

    const-string v0, "restRedactor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-object p0
.end method

.method public final retryOnConnectionFailure(Z)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 1

    .line 235
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 236
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final setBaseUrlProvider$base(Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    return-void
.end method

.method public final setCustomMessageRedactor$base(Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-void
.end method

.method public final setMoshi$base(Lcom/squareup/moshi/Moshi;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->moshi:Lcom/squareup/moshi/Moshi;

    return-void
.end method

.method public final writeTimeout(J)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2

    .line 230
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 231
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method
