.class public final Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;
.super Lcom/stripe/jvmcore/restclient/RestInterceptor;
.source "RequestSendInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0088\u0001\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00120\u0010\"\u001c\u0008\u0000\u0010\u0013*\u0016\u0012\u0004\u0012\u0002H\u0013\u0012\u0002\u0008\u00030\u0014j\u0008\u0012\u0004\u0012\u0002H\u0013`\u0015\"\u001c\u0008\u0001\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\u0008\u00030\u0014j\u0008\u0012\u0004\u0012\u0002H\u0011`\u0015\"\u001c\u0008\u0002\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u0014j\u0008\u0012\u0004\u0012\u0002H\u0012`\u00152\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00120\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lokhttp3/OkHttpClient;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "intercept",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Err",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "chain",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
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
.field private final client:Lokhttp3/OkHttpClient;

.field private final customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestInterceptor;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 22
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->moshi:Lcom/squareup/moshi/Moshi;

    .line 23
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 24
    iput-object p4, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 27
    const-string p1, "requestSendInterceptor"

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain<",
            "TRq;TRsp;TErr;>;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->getRestConfig()Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/jvmcore/restclient/RestConfig;->getTimeoutMs()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->client:Lokhttp3/OkHttpClient;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 37
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 45
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v1

    check-cast v3, Lokhttp3/Response;

    .line 46
    sget-object v2, Lcom/stripe/jvmcore/restclient/RestResponse;->Companion:Lcom/stripe/jvmcore/restclient/RestResponse$Companion;

    iget-object v4, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->moshi:Lcom/squareup/moshi/Moshi;

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->responseProtoType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->error()Lcom/squareup/wire/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    iget-object v8, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual/range {v2 .. v8}, Lcom/stripe/jvmcore/restclient/RestResponse$Companion;->toRestResponse(Lokhttp3/Response;Lcom/squareup/moshi/Moshi;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 45
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->logWriter:Lcom/stripe/logwriter/LogWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException in REST Call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "RequestSendInterceptor"

    invoke-interface {v1, v3, v2, v0}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 56
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 57
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->redact()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    new-instance v1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    .line 64
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->error()Lcom/squareup/wire/Message;

    move-result-object v2

    .line 65
    sget-object v3, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    .line 68
    iget-object v6, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->moshi:Lcom/squareup/moshi/Moshi;

    .line 69
    iget-object v7, p0, Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 70
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    .line 63
    invoke-direct/range {v1 .. v8}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;-><init>(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    check-cast v1, Lcom/stripe/jvmcore/restclient/RestResponse;

    return-object v1
.end method
