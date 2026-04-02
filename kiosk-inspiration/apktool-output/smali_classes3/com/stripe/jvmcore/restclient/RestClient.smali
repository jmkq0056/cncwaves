.class public final Lcom/stripe/jvmcore/restclient/RestClient;
.super Ljava/lang/Object;
.source "RestClient.kt"

# interfaces
.implements Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;,
        Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestClient.kt\ncom/stripe/jvmcore/restclient/RestClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n800#2,11:263\n1789#2,3:274\n*S KotlinDebug\n*F\n+ 1 RestClient.kt\ncom/stripe/jvmcore/restclient/RestClient\n*L\n160#1:263,11\n161#1:274,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002<=B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u00cb\u0001\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\u0008\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\u0008\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\u0008\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010\'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)\u00a2\u0006\u0002\u0010*J\u00cb\u0001\u0010+\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\u0008\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\u0008\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\u0008\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010\'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)\u00a2\u0006\u0002\u0010.J\u00cb\u0001\u0010/\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\u0008\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\u0008\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\u0008\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00100\u001a\u0002012\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010\'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)\u00a2\u0006\u0002\u00102J\u0014\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#H\u0016J\u00b1\u0001\u00103\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\u0008\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\u0008\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\u0008\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00104\u001a\u0002052\u0006\u0010$\u001a\u0002H\u00192\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010\'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)H\u0002\u00a2\u0006\u0002\u00106J\u00cd\u0001\u00107\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\u0008\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\u0008\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\u0008\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u001aj\u0008\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00108\u001a\u0002092\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010\'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)H\u0002\u00a2\u0006\u0002\u0010:J\u0006\u0010;\u001a\u00020\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
        "builder",
        "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
        "(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "customRestInterceptors",
        "",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "kotlin.jvm.PlatformType",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "requestSendInterceptor",
        "Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;",
        "blockingGet",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Err",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "service",
        "",
        "method",
        "urlBuilder",
        "Lokhttp3/HttpUrl$Builder;",
        "path",
        "customHeaders",
        "",
        "requestProto",
        "responseProtoType",
        "Ljava/lang/Class;",
        "error",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "blockingMultipartPost",
        "multipartBuilder",
        "Lokhttp3/MultipartBody$Builder;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "blockingPost",
        "formBuilder",
        "Lokhttp3/FormBody$Builder;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "execute",
        "request",
        "Lokhttp3/Request;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "postHelper",
        "requestBody",
        "Lokhttp3/RequestBody;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "toBuilder",
        "BaseUrlProvider",
        "Builder",
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
.field private final baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

.field private final customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

.field private final customRestInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private final requestSendInterceptor:Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V
    .locals 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getClientBuilder$base()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 23
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getBaseUrlProvider$base()Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/jvmcore/restclient/RestClient;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    .line 24
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getCustomApplicationInterceptors$base()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/jvmcore/restclient/RestClient;->customRestInterceptors:Ljava/util/Set;

    .line 25
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getMoshi$base()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v1}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    .line 26
    new-instance v2, Lcom/squareup/wire/WireJsonAdapterFactory;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    .line 25
    :cond_0
    iput-object v1, p0, Lcom/stripe/jvmcore/restclient/RestClient;->moshi:Lcom/squareup/moshi/Moshi;

    .line 28
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getCustomMessageRedactor$base()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/jvmcore/restclient/RestClient;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 29
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getLogWriter$base()Lcom/stripe/logwriter/LogWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/jvmcore/restclient/RestClient;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 35
    new-instance v2, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;

    const-string v3, "moshi"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getCustomMessageRedactor$base()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    move-result-object v3

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->getLogWriter$base()Lcom/stripe/logwriter/LogWriter;

    move-result-object p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;-><init>(Lokhttp3/OkHttpClient;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V

    iput-object v2, p0, Lcom/stripe/jvmcore/restclient/RestClient;->requestSendInterceptor:Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;

    return-void
.end method

.method public static final synthetic access$getBaseUrlProvider$p(Lcom/stripe/jvmcore/restclient/RestClient;)Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/jvmcore/restclient/RestClient;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    return-object p0
.end method

.method public static final synthetic access$getCustomRestInterceptors$p(Lcom/stripe/jvmcore/restclient/RestClient;)Ljava/util/Set;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/jvmcore/restclient/RestClient;->customRestInterceptors:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getMoshi$p(Lcom/stripe/jvmcore/restclient/RestClient;)Lcom/squareup/moshi/Moshi;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/jvmcore/restclient/RestClient;->moshi:Lcom/squareup/moshi/Moshi;

    return-object p0
.end method

.method public static final synthetic access$getOkHttpClient$p(Lcom/stripe/jvmcore/restclient/RestClient;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/jvmcore/restclient/RestClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private final execute(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "TRq;",
            "Ljava/lang/Class<",
            "TRsp;>;TErr;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/stripe/jvmcore/restclient/InterceptorChain;

    .line 144
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestClient;->customRestInterceptors:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lcom/stripe/jvmcore/restclient/RestClient;->requestSendInterceptor:Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 143
    invoke-direct/range {v0 .. v9}, Lcom/stripe/jvmcore/restclient/InterceptorChain;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)V

    .line 155
    invoke-virtual {v0, p3}, Lcom/stripe/jvmcore/restclient/InterceptorChain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method private final postHelper(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TRq;",
            "Ljava/lang/Class<",
            "TRsp;>;TErr;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestClient;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    invoke-interface {v1}, Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p4}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p4

    .line 86
    invoke-virtual {p4}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p4

    .line 89
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 90
    invoke-virtual {v0, p4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p4

    .line 91
    invoke-virtual {p4, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 92
    sget-object p4, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {p4, p5}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p4

    invoke-virtual {p3, p4}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-class p4, Lcom/stripe/jvmcore/traffictype/TrafficType;

    .line 93
    sget-object p5, Lcom/stripe/jvmcore/traffictype/TrafficType$Rest;->INSTANCE:Lcom/stripe/jvmcore/traffictype/TrafficType$Rest;

    invoke-virtual {p3, p4, p5}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 94
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 97
    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/restclient/RestClient;->execute(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/HttpUrl$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TRq;",
            "Ljava/lang/Class<",
            "TRsp;>;TErr;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    move-object/from16 v1, p5

    const-string v2, "service"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "urlBuilder"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "path"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customHeaders"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestProto"

    move-object/from16 v7, p6

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "responseProtoType"

    move-object/from16 v8, p7

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "error"

    move-object/from16 v9, p8

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "restConfig"

    move-object/from16 v10, p9

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, p0, Lcom/stripe/jvmcore/restclient/RestClient;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    invoke-interface {v3}, Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p3

    .line 117
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p3

    .line 118
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p3, v2}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object p3

    .line 119
    invoke-virtual {p3, p4}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p3

    .line 120
    invoke-virtual {p3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p3

    .line 123
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 124
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 125
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p3

    .line 126
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-class v0, Lcom/stripe/jvmcore/traffictype/TrafficType;

    .line 127
    sget-object v1, Lcom/stripe/jvmcore/traffictype/TrafficType$Rest;->INSTANCE:Lcom/stripe/jvmcore/traffictype/TrafficType$Rest;

    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 128
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 131
    invoke-direct/range {v3 .. v10}, Lcom/stripe/jvmcore/restclient/RestClient;->execute(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final blockingMultipartPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TRq;",
            "Ljava/lang/Class<",
            "TRsp;>;TErr;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multipartBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customHeaders"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestProto"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseProtoType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lokhttp3/RequestBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 66
    invoke-direct/range {v1 .. v10}, Lcom/stripe/jvmcore/restclient/RestClient;->postHelper(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/FormBody$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TRq;",
            "Ljava/lang/Class<",
            "TRsp;>;TErr;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customHeaders"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestProto"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseProtoType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lokhttp3/RequestBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 49
    invoke-direct/range {v1 .. v10}, Lcom/stripe/jvmcore/restclient/RestClient;->postHelper(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public customHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 272
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 263
    check-cast v1, Ljava/lang/Iterable;

    .line 161
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 275
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    .line 162
    invoke-interface {v2}, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;->customHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final toBuilder()Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 3

    .line 167
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestClient;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    iget-object v2, p0, Lcom/stripe/jvmcore/restclient/RestClient;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-direct {v0, p0, v1, v2}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lcom/stripe/jvmcore/restclient/RestClient;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method
