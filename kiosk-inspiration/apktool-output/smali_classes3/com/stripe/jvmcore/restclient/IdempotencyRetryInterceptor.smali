.class public final Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;
.super Lcom/stripe/jvmcore/restclient/RestInterceptor;
.source "IdempotencyRetryInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdempotencyRetryInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdempotencyRetryInterceptor.kt\ncom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n40#1,3:63\n44#1,16:67\n1#2:66\n1#2:83\n*S KotlinDebug\n*F\n+ 1 IdempotencyRetryInterceptor.kt\ncom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor\n*L\n31#1:63,3\n31#1:67,16\n31#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0088\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\n\"\u001c\u0008\u0000\u0010\r*\u0016\u0012\u0004\u0012\u0002H\r\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\r`\u000f\"\u001c\u0008\u0001\u0010\u000b*\u0016\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\u000b`\u000f\"\u001c\u0008\u0002\u0010\u000c*\u0016\u0012\u0004\u0012\u0002H\u000c\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\u000c`\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\u0011H\u0016Js\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\n\"\u001c\u0008\u0000\u0010\u000b*\u0016\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\u000b`\u000f\"\u001c\u0008\u0001\u0010\u000c*\u0016\u0012\u0004\u0012\u0002H\u000c\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\u000c`\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\n0\u0016H\u0082\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "idempotencyHeader",
        "Lcom/stripe/jvmcore/restclient/IdempotencyHeader;",
        "(Lcom/stripe/jvmcore/restclient/IdempotencyHeader;)V",
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
        "withNetworkRetry",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "networkCall",
        "Lkotlin/Function0;",
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
.field private final idempotencyHeader:Lcom/stripe/jvmcore/restclient/IdempotencyHeader;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/restclient/IdempotencyHeader;)V
    .locals 1

    const-string v0, "idempotencyHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestInterceptor;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;->idempotencyHeader:Lcom/stripe/jvmcore/restclient/IdempotencyHeader;

    .line 17
    const-string p1, "IdempotencyRetryInterceptor"

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;->name:Ljava/lang/String;

    return-void
.end method

.method private final withNetworkRetry(Lcom/stripe/jvmcore/restclient/RestConfig;Lkotlin/jvm/functions/Function0;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;>;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestConfig;->getMaxAttempts()I

    move-result p1

    .line 42
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/restclient/RestResponse;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 47
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast v3, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 49
    invoke-virtual {v3}, Lcom/stripe/jvmcore/restclient/RestResponse;->shouldRetry()Z

    move-result v3

    goto :goto_2

    :cond_0
    move v3, v1

    :goto_2
    if-nez v3, :cond_1

    .line 53
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    return-object p1

    .line 55
    :cond_1
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/restclient/RestResponse;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_2
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
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

    .line 22
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;->Companion:Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;->hasIdempotencyKey(Lokhttp3/Headers;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;->idempotencyHeader:Lcom/stripe/jvmcore/restclient/IdempotencyHeader;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;->headerEntry$default(Lcom/stripe/jvmcore/restclient/IdempotencyHeader;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->getRestConfig()Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Lcom/stripe/jvmcore/restclient/RestConfig;->getMaxAttempts()I

    move-result v1

    .line 65
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    .line 32
    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v4

    .line 65
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sub-int/2addr v1, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    .line 70
    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_1

    check-cast v5, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 72
    invoke-virtual {v5}, Lcom/stripe/jvmcore/restclient/RestResponse;->shouldRetry()Z

    move-result v5

    goto :goto_3

    :cond_1
    move v5, v2

    :goto_3
    if-nez v5, :cond_2

    .line 76
    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    goto :goto_5

    .line 78
    :cond_2
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, p0

    check-cast v5, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    .line 32
    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v5

    .line 78
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_4
    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 82
    :cond_3
    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    :goto_5
    return-object p1
.end method
