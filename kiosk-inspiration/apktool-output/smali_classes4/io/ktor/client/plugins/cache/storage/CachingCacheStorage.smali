.class public final Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;
.super Ljava/lang/Object;
.source "FileCacheStorage.kt"

# interfaces
.implements Lio/ktor/client/plugins/cache/storage/CacheStorage;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileCacheStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileCacheStorage.kt\nio/ktor/client/plugins/cache/storage/CachingCacheStorage\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,196:1\n167#2,3:197\n*S KotlinDebug\n*F\n+ 1 FileCacheStorage.kt\nio/ktor/client/plugins/cache/storage/CachingCacheStorage\n*L\n47#1:197,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J/\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u001f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J!\u0010\u0004\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;",
        "Lio/ktor/client/plugins/cache/storage/CacheStorage;",
        "delegate",
        "(Lio/ktor/client/plugins/cache/storage/CacheStorage;)V",
        "store",
        "Lio/ktor/util/collections/ConcurrentMap;",
        "Lio/ktor/http/Url;",
        "",
        "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
        "find",
        "url",
        "varyKeys",
        "",
        "",
        "(Lio/ktor/http/Url;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findAll",
        "(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "data",
        "(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final delegate:Lio/ktor/client/plugins/cache/storage/CacheStorage;

.field private final store:Lio/ktor/util/collections/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/ConcurrentMap<",
            "Lio/ktor/http/Url;",
            "Ljava/util/Set<",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/plugins/cache/storage/CacheStorage;)V
    .locals 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->delegate:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    .line 34
    new-instance p1, Lio/ktor/util/collections/ConcurrentMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lio/ktor/util/collections/ConcurrentMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public find(Lio/ktor/http/Url;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/Url;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;-><init>(Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/Url;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object v1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/Url;

    iget-object v0, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p3, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    invoke-virtual {p3, p1}, Lio/ktor/util/collections/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 43
    iget-object p3, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    check-cast p3, Ljava/util/Map;

    iget-object v2, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->delegate:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iput-object p0, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$find$1;->label:I

    invoke-interface {v2, p1, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p1

    move-object v1, p2

    move-object p2, p3

    move-object p3, v0

    move-object v0, p0

    :goto_1
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    move-object p1, v2

    goto :goto_2

    :cond_4
    move-object v0, p0

    .line 45
    :goto_2
    iget-object p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 46
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    .line 197
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p3

    .line 198
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVaryKeys()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_7
    return-object p3

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/Url;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;-><init>(Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/Url;

    iget-object v1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/Url;

    iget-object v0, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object p2, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    invoke-virtual {p2, p1}, Lio/ktor/util/collections/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 53
    iget-object p2, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    check-cast p2, Ljava/util/Map;

    iget-object v2, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->delegate:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iput-object p0, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$findAll$1;->label:I

    invoke-interface {v2, p1, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p1

    move-object v1, p2

    move-object p2, v0

    move-object v0, p0

    :goto_1
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    goto :goto_2

    :cond_4
    move-object v0, p0

    .line 55
    :goto_2
    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public store(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/Url;",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;-><init>(Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/Url;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/Url;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object p3, p0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->delegate:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iput-object p0, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->store(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, p0

    .line 38
    :goto_1
    iget-object p3, p2, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->store:Lio/ktor/util/collections/ConcurrentMap;

    check-cast p3, Ljava/util/Map;

    iget-object p2, p2, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage;->delegate:Lio/ktor/client/plugins/cache/storage/CacheStorage;

    iput-object p3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/cache/storage/CachingCacheStorage$store$1;->label:I

    invoke-interface {p2, p1, v0}, Lio/ktor/client/plugins/cache/storage/CacheStorage;->findAll(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    :goto_3
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
