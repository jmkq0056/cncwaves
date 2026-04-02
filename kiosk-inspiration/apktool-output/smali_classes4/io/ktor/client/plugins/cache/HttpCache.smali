.class public final Lio/ktor/client/plugins/cache/HttpCache;
.super Ljava/lang/Object;
.source "HttpCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/cache/HttpCache$Companion;,
        Lio/ktor/client/plugins/cache/HttpCache$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpCache.kt\nio/ktor/client/plugins/cache/HttpCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,375:1\n1#2:376\n1054#3:377\n288#3:378\n289#3:382\n167#4,3:379\n167#4,3:383\n*S KotlinDebug\n*F\n+ 1 HttpCache.kt\nio/ktor/client/plugins/cache/HttpCache\n*L\n317#1:377\n318#1:378\n318#1:382\n319#1:379,3\n331#1:383,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 *2\u00020\u0001:\u0002*+B7\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J#\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ?\u0010\u001d\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001e\u001a\u00020\u00062\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J#\u0010\u001d\u001a\u0004\u0018\u00010\u00152\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)R\u0014\u0010\n\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lio/ktor/client/plugins/cache/HttpCache;",
        "",
        "publicStorage",
        "Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;",
        "privateStorage",
        "publicStorageNew",
        "Lio/ktor/client/plugins/cache/storage/CacheStorage;",
        "privateStorageNew",
        "useOldStorage",
        "",
        "isSharedClient",
        "(Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;ZZ)V",
        "isSharedClient$ktor_client_core",
        "()Z",
        "getPrivateStorage$annotations",
        "()V",
        "getPrivateStorage",
        "()Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;",
        "getPublicStorage$annotations",
        "getPublicStorage",
        "cacheResponse",
        "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
        "response",
        "Lio/ktor/client/statement/HttpResponse;",
        "(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findAndRefresh",
        "request",
        "Lio/ktor/client/request/HttpRequest;",
        "(Lio/ktor/client/request/HttpRequest;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findResponse",
        "storage",
        "varyKeys",
        "",
        "",
        "url",
        "Lio/ktor/http/Url;",
        "(Lio/ktor/client/plugins/cache/storage/CacheStorage;Ljava/util/Map;Lio/ktor/http/Url;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "context",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "content",
        "Lio/ktor/http/content/OutgoingContent;",
        "(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "Config",
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
.field public static final Companion:Lio/ktor/client/plugins/cache/HttpCache$Companion;

.field private static final HttpResponseFromCache:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/statement/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/cache/HttpCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isSharedClient:Z

.field private final privateStorage:Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;

.field private final privateStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

.field private final publicStorage:Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;

.field private final publicStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

.field private final useOldStorage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/cache/HttpCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/cache/HttpCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/cache/HttpCache;->Companion:Lio/ktor/client/plugins/cache/HttpCache$Companion;

    .line 116
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "HttpCache"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/cache/HttpCache;->key:Lio/ktor/util/AttributeKey;

    .line 118
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/cache/HttpCache;->HttpResponseFromCache:Lio/ktor/events/EventDefinition;

    return-void
.end method

.method private constructor <init>(Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;ZZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/ktor/client/plugins/cache/HttpCache;->publicStorage:Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;

    .line 46
    iput-object p2, p0, Lio/ktor/client/plugins/cache/HttpCache;->privateStorage:Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;

    .line 48
    iput-object p3, p0, Lio/ktor/client/plugins/cache/HttpCache;->publicStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    .line 49
    iput-object p4, p0, Lio/ktor/client/plugins/cache/HttpCache;->privateStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    .line 50
    iput-boolean p5, p0, Lio/ktor/client/plugins/cache/HttpCache;->useOldStorage:Z

    .line 51
    iput-boolean p6, p0, Lio/ktor/client/plugins/cache/HttpCache;->isSharedClient:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/ktor/client/plugins/cache/HttpCache;-><init>(Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;Lio/ktor/client/plugins/cache/storage/CacheStorage;ZZ)V

    return-void
.end method

.method public static final synthetic access$cacheResponse(Lio/ktor/client/plugins/cache/HttpCache;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/cache/HttpCache;->cacheResponse(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findAndRefresh(Lio/ktor/client/plugins/cache/HttpCache;Lio/ktor/client/request/HttpRequest;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/cache/HttpCache;->findAndRefresh(Lio/ktor/client/request/HttpRequest;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findResponse(Lio/ktor/client/plugins/cache/HttpCache;Lio/ktor/client/plugins/cache/storage/CacheStorage;Ljava/util/Map;Lio/ktor/http/Url;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lio/ktor/client/plugins/cache/HttpCache;->findResponse(Lio/ktor/client/plugins/cache/storage/CacheStorage;Ljava/util/Map;Lio/ktor/http/Url;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findResponse(Lio/ktor/client/plugins/cache/HttpCache;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/cache/HttpCache;->findResponse(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHttpResponseFromCache$cp()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 43
    sget-object v0, Lio/ktor/client/plugins/cache/HttpCache;->HttpResponseFromCache:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 43
    sget-object v0, Lio/ktor/client/plugins/cache/HttpCache;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getUseOldStorage$p(Lio/ktor/client/plugins/cache/HttpCache;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lio/ktor/client/plugins/cache/HttpCache;->useOldStorage:Z

    return p0
.end method

.method private final cacheResponse(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v0

    .line 269
    move-object v1, p1

    check-cast v1, Lio/ktor/http/HttpMessage;

    invoke-static {v1}, Lio/ktor/http/HttpMessagePropertiesKt;->cacheControl(Lio/ktor/http/HttpMessage;)Ljava/util/List;

    move-result-object v1

    .line 270
    check-cast v0, Lio/ktor/http/HttpMessage;

    invoke-static {v0}, Lio/ktor/http/HttpMessagePropertiesKt;->cacheControl(Lio/ktor/http/HttpMessage;)Ljava/util/List;

    move-result-object v0

    .line 272
    sget-object v2, Lio/ktor/client/plugins/cache/CacheControl;->INSTANCE:Lio/ktor/client/plugins/cache/CacheControl;

    invoke-virtual {v2}, Lio/ktor/client/plugins/cache/CacheControl;->getPRIVATE$ktor_client_core()Lio/ktor/http/HeaderValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 274
    iget-boolean v4, p0, Lio/ktor/client/plugins/cache/HttpCache;->isSharedClient:Z

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lio/ktor/client/plugins/cache/HttpCache;->privateStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lio/ktor/client/plugins/cache/HttpCache;->publicStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    .line 279
    :goto_0
    sget-object v4, Lio/ktor/client/plugins/cache/CacheControl;->INSTANCE:Lio/ktor/client/plugins/cache/CacheControl;

    invoke-virtual {v4}, Lio/ktor/client/plugins/cache/CacheControl;->getNO_STORE$ktor_client_core()Lio/ktor/http/HeaderValue;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lio/ktor/client/plugins/cache/CacheControl;->INSTANCE:Lio/ktor/client/plugins/cache/CacheControl;

    invoke-virtual {v1}, Lio/ktor/client/plugins/cache/CacheControl;->getNO_STORE$ktor_client_core()Lio/ktor/http/HeaderValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 283
    :cond_2
    invoke-static {p1}, Lio/ktor/client/plugins/cache/HttpCacheEntryKt;->varyKeys(Lio/ktor/client/statement/HttpResponse;)Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lio/ktor/client/plugins/cache/HttpCache;->isSharedClient:Z

    invoke-static {v2, p1, v0, v1, p2}, Lio/ktor/client/plugins/cache/storage/HttpCacheStorageKt;->store(Lio/ktor/client/plugins/cache/storage/CacheStorage;Lio/ktor/client/statement/HttpResponse;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v3
.end method

.method private final findAndRefresh(Lio/ktor/client/request/HttpRequest;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequest;",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;-><init>(Lio/ktor/client/plugins/cache/HttpCache;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 286
    iget v1, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->label:I

    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v7, :cond_1

    iget-object p1, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/statement/HttpResponse;

    iget-object v0, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/request/HttpRequest;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p2, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iget-object v1, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/statement/HttpResponse;

    iget-object v2, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/request/HttpRequest;

    iget-object v3, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/client/plugins/cache/HttpCache;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p2}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object p3

    invoke-interface {p3}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object v4

    .line 288
    move-object p3, p2

    check-cast p3, Lio/ktor/http/HttpMessage;

    invoke-static {p3}, Lio/ktor/http/HttpMessagePropertiesKt;->cacheControl(Lio/ktor/http/HttpMessage;)Ljava/util/List;

    move-result-object p3

    .line 290
    sget-object v1, Lio/ktor/client/plugins/cache/CacheControl;->INSTANCE:Lio/ktor/client/plugins/cache/CacheControl;

    invoke-virtual {v1}, Lio/ktor/client/plugins/cache/CacheControl;->getPRIVATE$ktor_client_core()Lio/ktor/http/HeaderValue;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 292
    iget-boolean v1, p0, Lio/ktor/client/plugins/cache/HttpCache;->isSharedClient:Z

    if-eqz v1, :cond_4

    return-object v8

    :cond_4
    if-eqz p3, :cond_5

    .line 293
    iget-object p3, p0, Lio/ktor/client/plugins/cache/HttpCache;->privateStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    goto :goto_1

    .line 294
    :cond_5
    iget-object p3, p0, Lio/ktor/client/plugins/cache/HttpCache;->publicStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    .line 297
    :goto_1
    invoke-static {p2}, Lio/ktor/client/plugins/cache/HttpCacheEntryKt;->varyKeys(Lio/ktor/client/statement/HttpResponse;)Ljava/util/Map;

    move-result-object v3

    .line 298
    iput-object p0, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$0:Ljava/lang/Object;

    iput-object p1, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$2:Ljava/lang/Object;

    iput-object p3, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$3:Ljava/lang/Object;

    iput-object v3, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$4:Ljava/lang/Object;

    iput v2, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->label:I

    move-object v1, p0

    move-object v5, p1

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lio/ktor/client/plugins/cache/HttpCache;->findResponse(Lio/ktor/client/plugins/cache/storage/CacheStorage;Ljava/util/Map;Lio/ktor/http/Url;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, p2

    move-object p2, v2

    move-object p1, v3

    move-object v2, v5

    move-object v3, p0

    :goto_2
    check-cast p3, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    if-nez p3, :cond_7

    return-object v8

    .line 299
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p3}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVaryKeys()Ljava/util/Map;

    move-result-object p1

    .line 300
    :cond_8
    invoke-interface {v2}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object v4

    iget-boolean v3, v3, Lio/ktor/client/plugins/cache/HttpCache;->isSharedClient:Z

    invoke-static {v1, v3, v8, v7, v8}, Lio/ktor/client/plugins/cache/HttpCacheEntryKt;->cacheExpires$default(Lio/ktor/client/statement/HttpResponse;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->copy$ktor_client_core(Ljava/util/Map;Lio/ktor/util/date/GMTDate;)Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    move-result-object p1

    iput-object v2, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$1:Ljava/lang/Object;

    iput-object p3, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$3:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->L$4:Ljava/lang/Object;

    iput v7, v6, Lio/ktor/client/plugins/cache/HttpCache$findAndRefresh$1;->label:I

    invoke-interface {p2, v4, p1, v6}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->store(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_3
    return-object v0

    :cond_9
    move-object p1, p3

    move-object p2, v1

    move-object v0, v2

    .line 301
    :goto_4
    invoke-interface {v0}, Lio/ktor/client/request/HttpRequest;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/client/call/HttpClientCall;->getClient()Lio/ktor/client/HttpClient;

    move-result-object p3

    invoke-virtual {p2}, Lio/ktor/client/statement/HttpResponse;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p3, v0, p2}, Lio/ktor/client/plugins/cache/storage/HttpCacheStorageKt;->createResponse(Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lio/ktor/client/HttpClient;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/client/statement/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method private final findResponse(Lio/ktor/client/plugins/cache/storage/CacheStorage;Ljava/util/Map;Lio/ktor/http/Url;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/cache/storage/CacheStorage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/ktor/http/Url;",
            "Lio/ktor/client/request/HttpRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;

    invoke-direct {v0, p0, p5}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;-><init>(Lio/ktor/client/plugins/cache/HttpCache;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 304
    iget v2, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p5

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 310
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_5

    .line 311
    iput v4, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->label:I

    invoke-interface {p1, p3, p2, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->find(Lio/ktor/http/Url;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    return-object p1

    .line 315
    :cond_5
    invoke-interface {p4}, Lio/ktor/client/request/HttpRequest;->getContent()Lio/ktor/http/content/OutgoingContent;

    move-result-object p2

    new-instance p5, Lio/ktor/client/plugins/cache/HttpCache$findResponse$requestHeaders$1;

    invoke-interface {p4}, Lio/ktor/client/request/HttpRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v2

    invoke-direct {p5, v2}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$requestHeaders$1;-><init>(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lio/ktor/client/plugins/cache/HttpCache$findResponse$requestHeaders$2;

    invoke-interface {p4}, Lio/ktor/client/request/HttpRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p4

    invoke-direct {v2, p4}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$requestHeaders$2;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p5, v2}, Lio/ktor/client/plugins/cache/HttpCacheKt;->mergedHeadersLookup(Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    .line 316
    iput-object p2, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$1;->label:I

    invoke-interface {p1, p3, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    :goto_1
    return-object v1

    :cond_6
    move-object p1, p2

    .line 304
    :goto_2
    check-cast p5, Ljava/lang/Iterable;

    .line 377
    new-instance p2, Lio/ktor/client/plugins/cache/HttpCache$findResponse$$inlined$sortedByDescending$1;

    invoke-direct {p2}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$$inlined$sortedByDescending$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {p5, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 378
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    .line 319
    invoke-virtual {p4}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVaryKeys()Ljava/util/Map;

    move-result-object p4

    .line 379
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_4

    .line 380
    :cond_7
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    goto :goto_3

    :cond_9
    const/4 p3, 0x0

    .line 382
    :cond_a
    :goto_4
    check-cast p3, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    return-object p3
.end method

.method private final findResponse(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;

    iget v1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;-><init>(Lio/ktor/client/plugins/cache/HttpCache;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 324
    iget v2, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/http/Url;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/plugins/cache/HttpCache;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object p3

    invoke-static {p3}, Lio/ktor/http/URLUtilsKt;->Url(Lio/ktor/http/URLBuilder;)Lio/ktor/http/Url;

    move-result-object p3

    .line 326
    new-instance v2, Lio/ktor/client/plugins/cache/HttpCache$findResponse$lookup$1;

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v6

    invoke-direct {v2, v6}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$lookup$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lio/ktor/client/plugins/cache/HttpCache$findResponse$lookup$2;

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object p1

    invoke-direct {v6, p1}, Lio/ktor/client/plugins/cache/HttpCache$findResponse$lookup$2;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v2, v6}, Lio/ktor/client/plugins/cache/HttpCacheKt;->mergedHeadersLookup(Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 328
    iget-object p2, p0, Lio/ktor/client/plugins/cache/HttpCache;->privateStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iput-object p0, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$2:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->label:I

    invoke-interface {p2, p3, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, p0

    :goto_1
    check-cast p3, Ljava/util/Set;

    iget-object v2, v2, Lio/ktor/client/plugins/cache/HttpCache;->publicStorageNew:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/plugins/cache/HttpCache$findResponse$4;->label:I

    invoke-interface {v2, p2, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v7, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v7

    :goto_3
    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p1, p3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 329
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    .line 330
    invoke-virtual {p3}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVaryKeys()Ljava/util/Map;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 383
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object p3

    .line 384
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_8
    return-object p3

    :cond_9
    return-object v3
.end method

.method public static synthetic getPrivateStorage$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This will become internal"
    .end annotation

    return-void
.end method

.method public static synthetic getPublicStorage$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This will become internal"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getPrivateStorage()Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/ktor/client/plugins/cache/HttpCache;->privateStorage:Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;

    return-object v0
.end method

.method public final getPublicStorage()Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/ktor/client/plugins/cache/HttpCache;->publicStorage:Lio/ktor/client/plugins/cache/storage/HttpCacheStorage;

    return-object v0
.end method

.method public final isSharedClient$ktor_client_core()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lio/ktor/client/plugins/cache/HttpCache;->isSharedClient:Z

    return v0
.end method
