.class public final Lio/ktor/client/plugins/HttpRequestRetry;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpRequestRetry$Configuration;,
        Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;,
        Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;,
        Lio/ktor/client/plugins/HttpRequestRetry$Plugin;,
        Lio/ktor/client/plugins/HttpRequestRetry$RetryEventData;,
        Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 )2\u00020\u0001:\u0006&\'()*+B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u00a2\u0006\u0002\u0008\u001eJ\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012H\u0002JE\u0010\u0013\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2#\u0010\u0013\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0014\u00a2\u0006\u0002\u0008\u000e2\u0006\u0010\"\u001a\u00020#H\u0002JM\u0010\u0019\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2#\u0010\u0013\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00180\u0014\u00a2\u0006\u0002\u0008\u000e2\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u001aH\u0002R/\u0010\u0005\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\nR%\u0010\u000b\u001a\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\u0010\u001a\u0019\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0002\u0008\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0013\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0014\u00a2\u0006\u0002\u0008\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0019\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00180\u0014\u00a2\u0006\u0002\u0008\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpRequestRetry;",
        "",
        "configuration",
        "Lio/ktor/client/plugins/HttpRequestRetry$Configuration;",
        "(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;)V",
        "delay",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/jvm/functions/Function2;",
        "delayMillis",
        "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "maxRetries",
        "modifyRequest",
        "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "shouldRetry",
        "Lkotlin/Function3;",
        "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
        "Lio/ktor/client/request/HttpRequest;",
        "Lio/ktor/client/statement/HttpResponse;",
        "",
        "shouldRetryOnException",
        "",
        "intercept",
        "client",
        "Lio/ktor/client/HttpClient;",
        "intercept$ktor_client_core",
        "prepareRequest",
        "request",
        "retryCount",
        "call",
        "Lio/ktor/client/call/HttpClientCall;",
        "subRequest",
        "cause",
        "Configuration",
        "DelayContext",
        "ModifyRequestContext",
        "Plugin",
        "RetryEventData",
        "ShouldRetryContext",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HttpRequestRetryEvent:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/plugins/HttpRequestRetry$RetryEventData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Plugin:Lio/ktor/client/plugins/HttpRequestRetry$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/HttpRequestRetry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delay:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final delayMillis:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxRetries:I

.field private final modifyRequest:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldRetry:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "Lio/ktor/client/request/HttpRequest;",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldRetryOnException:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRequestRetry$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->Plugin:Lio/ktor/client/plugins/HttpRequestRetry$Plugin;

    .line 348
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "RetryFeature"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->key:Lio/ktor/util/AttributeKey;

    .line 353
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->HttpRequestRetryEvent:Lio/ktor/events/EventDefinition;

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->getShouldRetry$ktor_client_core()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->shouldRetry:Lkotlin/jvm/functions/Function3;

    .line 96
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->getShouldRetryOnException$ktor_client_core()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->shouldRetryOnException:Lkotlin/jvm/functions/Function3;

    .line 97
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->getDelayMillis$ktor_client_core()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->delayMillis:Lkotlin/jvm/functions/Function2;

    .line 98
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->getDelay$ktor_client_core()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->delay:Lkotlin/jvm/functions/Function2;

    .line 99
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->getMaxRetries()I

    move-result v0

    iput v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->maxRetries:I

    .line 100
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->getModifyRequest$ktor_client_core()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry;->modifyRequest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getDelay$p(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->delay:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getDelayMillis$p(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->delayMillis:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getHttpRequestRetryEvent$cp()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 44
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->HttpRequestRetryEvent:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 44
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getMaxRetries$p(Lio/ktor/client/plugins/HttpRequestRetry;)I
    .locals 0

    .line 44
    iget p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->maxRetries:I

    return p0
.end method

.method public static final synthetic access$getModifyRequest$p(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->modifyRequest:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getShouldRetry$p(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->shouldRetry:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic access$getShouldRetryOnException$p(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->shouldRetryOnException:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic access$prepareRequest(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry;->prepareRequest(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shouldRetry(Lio/ktor/client/plugins/HttpRequestRetry;IILkotlin/jvm/functions/Function3;Lio/ktor/client/call/HttpClientCall;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/client/plugins/HttpRequestRetry;->shouldRetry(IILkotlin/jvm/functions/Function3;Lio/ktor/client/call/HttpClientCall;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldRetryOnException(Lio/ktor/client/plugins/HttpRequestRetry;IILkotlin/jvm/functions/Function3;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lio/ktor/client/plugins/HttpRequestRetry;->shouldRetryOnException(IILkotlin/jvm/functions/Function3;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private final prepareRequest(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 2

    .line 337
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v0}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->takeFrom(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getExecutionContext()Lkotlinx/coroutines/Job;

    move-result-object p1

    new-instance v1, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;

    invoke-direct {v1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;-><init>(Lio/ktor/client/request/HttpRequestBuilder;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method private final shouldRetry(IILkotlin/jvm/functions/Function3;Lio/ktor/client/call/HttpClientCall;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequest;",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/client/call/HttpClientCall;",
            ")Z"
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 326
    new-instance p2, Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-direct {p2, p1}, Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;-><init>(I)V

    invoke-virtual {p4}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object p1

    invoke-virtual {p4}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p4

    invoke-interface {p3, p2, p1, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final shouldRetryOnException(IILkotlin/jvm/functions/Function3;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 334
    new-instance p2, Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-direct {p2, p1}, Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;-><init>(I)V

    invoke-interface {p3, p2, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final intercept$ktor_client_core(Lio/ktor/client/HttpClient;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lio/ktor/client/plugins/HttpSend;->Plugin:Lio/ktor/client/plugins/HttpSend$Plugin;

    check-cast v0, Lio/ktor/client/plugins/HttpClientPlugin;

    invoke-static {p1, v0}, Lio/ktor/client/plugins/HttpClientPluginKt;->plugin(Lio/ktor/client/HttpClient;Lio/ktor/client/plugins/HttpClientPlugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/client/plugins/HttpSend;

    new-instance v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;-><init>(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/HttpSend;->intercept(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
