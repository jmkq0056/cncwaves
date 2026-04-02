.class final Lio/ktor/client/plugins/cache/storage/FileCacheStorage;
.super Ljava/lang/Object;
.source "FileCacheStorage.kt"

# interfaces
.implements Lio/ktor/client/plugins/cache/storage/CacheStorage;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileCacheStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileCacheStorage.kt\nio/ktor/client/plugins/cache/storage/FileCacheStorage\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n*L\n1#1,196:1\n167#2,3:197\n120#3,10:200\n8#4,4:210\n22#4,2:214\n12#4,9:216\n*S KotlinDebug\n*F\n+ 1 FileCacheStorage.kt\nio/ktor/client/plugins/cache/storage/FileCacheStorage\n*L\n83#1:197,3\n112#1:200,10\n117#1:210,4\n117#1:214,2\n117#1:216,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J/\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J\u001f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0019\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u001f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00132\u0006\u0010\u001a\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bJ!\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ!\u0010 \u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\'\u0010 \u001a\u00020$2\u0006\u0010\u001a\u001a\u00020\t2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000c0&H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/client/plugins/cache/storage/FileCacheStorage;",
        "Lio/ktor/client/plugins/cache/storage/CacheStorage;",
        "directory",
        "Ljava/io/File;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "mutexes",
        "Lio/ktor/util/collections/ConcurrentMap;",
        "",
        "Lkotlinx/coroutines/sync/Mutex;",
        "find",
        "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
        "url",
        "Lio/ktor/http/Url;",
        "varyKeys",
        "",
        "(Lio/ktor/http/Url;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findAll",
        "",
        "(Lio/ktor/http/Url;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "key",
        "readCache",
        "channel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "urlHex",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "store",
        "",
        "data",
        "(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeCache",
        "Lio/ktor/utils/io/ByteChannel;",
        "cache",
        "(Lio/ktor/utils/io/ByteChannel;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "caches",
        "",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final directory:Ljava/io/File;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final mutexes:Lio/ktor/util/collections/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 3

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->directory:Ljava/io/File;

    .line 61
    iput-object p2, p0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 64
    new-instance p2, Lio/ktor/util/collections/ConcurrentMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v1}, Lio/ktor/util/collections/ConcurrentMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->mutexes:Lio/ktor/util/collections/ConcurrentMap;

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 61
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;-><init>(Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method

.method public static final synthetic access$getDirectory$p(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;)Ljava/io/File;
    .locals 0

    .line 59
    iget-object p0, p0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->directory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getMutexes$p(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;)Lio/ktor/util/collections/ConcurrentMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->mutexes:Lio/ktor/util/collections/ConcurrentMap;

    return-object p0
.end method

.method public static final synthetic access$key(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lio/ktor/http/Url;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->key(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readCache(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->readCache(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readCache(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->readCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeCache(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lio/ktor/utils/io/ByteChannel;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->writeCache(Lio/ktor/utils/io/ByteChannel;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeCache(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->writeCache(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final key(Lio/ktor/http/Url;)Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v0, "getInstance(\"MD5\").diges\u2026ng().encodeToByteArray())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/ktor/util/CryptoKt;->hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final readCache(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;

    iget v3, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 158
    iget v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v4, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    check-cast v5, Lio/ktor/util/date/GMTDate;

    iget-object v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v6, Lio/ktor/util/date/GMTDate;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v7, Lio/ktor/util/date/GMTDate;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HeadersBuilder;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/HttpProtocolVersion;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/HttpStatusCode;

    iget-object v2, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v21, v0

    move-object/from16 v20, v4

    :goto_1
    move-object/from16 v18, v5

    move-object/from16 v16, v6

    move-object v15, v7

    move-object/from16 v17, v9

    move-object v14, v10

    goto/16 :goto_14

    :pswitch_1
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lio/ktor/util/date/GMTDate;

    iget-object v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    check-cast v6, Lio/ktor/util/date/GMTDate;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lio/ktor/util/date/GMTDate;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HeadersBuilder;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/HttpProtocolVersion;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/HttpStatusCode;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_2
    iget v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    iget v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iget-object v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$10:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$9:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    check-cast v11, Lio/ktor/util/date/GMTDate;

    iget-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    check-cast v12, Lio/ktor/util/date/GMTDate;

    iget-object v13, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v13, Lio/ktor/util/date/GMTDate;

    iget-object v14, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v14, Lio/ktor/http/HeadersBuilder;

    iget-object v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v15, Lio/ktor/http/HttpProtocolVersion;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HttpStatusCode;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move/from16 p1, v0

    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v22, v14

    move-object v14, v0

    move-object v0, v9

    move-object v9, v15

    move-object v15, v10

    move-object v10, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v13

    move-object v13, v7

    move-object/from16 v7, v22

    goto/16 :goto_11

    :pswitch_3
    iget v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    iget v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iget-object v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$9:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    check-cast v8, Lio/ktor/util/date/GMTDate;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    check-cast v9, Lio/ktor/util/date/GMTDate;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v10, Lio/ktor/util/date/GMTDate;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v11, Lio/ktor/http/HeadersBuilder;

    iget-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v12, Lio/ktor/http/HttpProtocolVersion;

    iget-object v13, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v13, Lio/ktor/http/HttpStatusCode;

    iget-object v14, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v22, v6

    move v6, v0

    move-object v0, v15

    move-object v15, v12

    move-object v12, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v10

    move-object v10, v7

    move-object v7, v14

    move-object v14, v11

    move-object v11, v8

    move-object v8, v13

    move-object/from16 v13, v22

    goto/16 :goto_10

    :pswitch_4
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/date/GMTDate;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    check-cast v5, Lio/ktor/util/date/GMTDate;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lio/ktor/util/date/GMTDate;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HeadersBuilder;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/HttpProtocolVersion;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/HttpStatusCode;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_5
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/date/GMTDate;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v5, Lio/ktor/util/date/GMTDate;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/HeadersBuilder;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HttpProtocolVersion;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/HttpStatusCode;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v0

    goto/16 :goto_d

    :pswitch_6
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/date/GMTDate;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/HeadersBuilder;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/HttpProtocolVersion;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HttpStatusCode;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HeadersBuilder;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/HttpProtocolVersion;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/HttpStatusCode;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v0

    goto/16 :goto_b

    :pswitch_8
    iget v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    iget v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HeadersBuilder;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/HttpProtocolVersion;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/HttpStatusCode;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v22, v12

    move-object v12, v8

    move-object/from16 v8, v22

    goto/16 :goto_a

    :pswitch_9
    iget v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    iget v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/HeadersBuilder;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/HttpProtocolVersion;

    iget-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/http/HttpStatusCode;

    iget-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    goto/16 :goto_9

    :pswitch_a
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpProtocolVersion;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/HttpStatusCode;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_b
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/HttpProtocolVersion$Companion;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/HttpStatusCode;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_c
    iget v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_d
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, v0

    goto :goto_4

    :pswitch_e
    iget-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v0, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_2

    goto/16 :goto_13

    :cond_2
    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    .line 160
    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v0, v2}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_3

    goto/16 :goto_13

    :cond_3
    move-object v7, v5

    move-object v5, v1

    move-object v1, v7

    move-object v7, v0

    :goto_4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    const/4 v1, 0x3

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v7, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    goto/16 :goto_13

    :cond_4
    :goto_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lio/ktor/http/HttpStatusCode;

    invoke-direct {v8, v0, v1}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    .line 161
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v7, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    goto/16 :goto_13

    :cond_5
    move-object/from16 v22, v7

    move-object v7, v5

    move-object v5, v8

    move-object/from16 v8, v22

    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/ktor/http/HttpProtocolVersion$Companion;->parse(Ljava/lang/CharSequence;)Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    .line 162
    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v8, v2}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    goto/16 :goto_13

    :cond_6
    :goto_7
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 163
    new-instance v9, Lio/ktor/http/HeadersBuilder;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v6, v10, v11}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v10, v6

    :goto_8
    if-ge v10, v1, :cond_8

    .line 165
    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iput v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    const/4 v11, 0x6

    iput v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v8, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_7

    goto/16 :goto_13

    :cond_7
    move-object v12, v8

    move-object v8, v9

    move-object v9, v0

    move v0, v10

    move-object v10, v5

    move v5, v1

    move-object v1, v11

    move-object v11, v7

    :goto_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 166
    iput-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iput v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    const/4 v1, 0x7

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v12, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_1

    goto/16 :goto_13

    :goto_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    .line 167
    invoke-virtual {v12, v7, v1}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    move-object v5, v10

    move-object v7, v11

    const/4 v11, 0x0

    move v10, v0

    move-object v0, v9

    move-object v9, v12

    goto :goto_8

    .line 169
    :cond_8
    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    const/16 v1, 0x8

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v8, v2}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_9

    goto/16 :goto_13

    :cond_9
    move-object v10, v8

    move-object v8, v5

    move-object v5, v9

    move-object v9, v7

    move-object v7, v0

    :goto_b
    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    .line 170
    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    const/16 v1, 0x9

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v10, v2}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_a

    goto/16 :goto_13

    :cond_a
    :goto_c
    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v1

    .line 171
    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    const/16 v11, 0xa

    iput v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v10, v2}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_b

    goto/16 :goto_13

    :cond_b
    move-object v12, v10

    move-object v10, v8

    move-object v8, v5

    move-object v5, v1

    move-object v1, v11

    move-object v11, v9

    move-object v9, v7

    move-object v7, v0

    :goto_d
    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    .line 172
    iput-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    const/16 v1, 0xb

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v12, v2}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_c

    goto/16 :goto_13

    :cond_c
    :goto_e
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 173
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v13

    move-object v14, v13

    :goto_f
    if-ge v6, v1, :cond_f

    .line 175
    iput-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$9:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$10:Ljava/lang/Object;

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iput v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    const/16 v15, 0xc

    iput v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v12, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_d

    goto/16 :goto_13

    :cond_d
    move-object/from16 v22, v11

    move-object v11, v0

    move-object v0, v12

    move-object v12, v5

    move v5, v1

    move-object v1, v15

    move-object v15, v9

    move-object v9, v14

    move-object v14, v8

    move-object v8, v10

    move-object v10, v13

    move-object v13, v7

    move-object/from16 v7, v22

    :goto_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    .line 176
    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$9:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$10:Ljava/lang/Object;

    iput v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$0:I

    iput v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->I$1:I

    move-object/from16 p1, v1

    const/16 v1, 0xd

    iput v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v0, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readUTF8Line(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_e

    goto/16 :goto_13

    :cond_e
    move/from16 v22, v6

    move-object/from16 v6, p1

    move/from16 p1, v22

    goto/16 :goto_2

    :goto_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    .line 177
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x1

    add-int/lit8 v6, p1, 0x1

    move v1, v5

    move-object v5, v12

    move-object v12, v14

    move-object v14, v0

    move-object v0, v11

    move-object v11, v13

    move-object v13, v15

    goto/16 :goto_f

    .line 173
    :cond_f
    invoke-static {v13}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 180
    iput-object v12, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$9:Ljava/lang/Object;

    iput-object v15, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$10:Ljava/lang/Object;

    const/16 v6, 0xe

    iput v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-interface {v12, v2}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_10

    goto :goto_13

    :cond_10
    move-object/from16 v22, v5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v6

    move-object/from16 v6, v22

    :goto_12
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 181
    new-array v1, v1, [B

    .line 182
    iput-object v11, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$4:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$7:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->L$8:Ljava/lang/Object;

    const/16 v13, 0xf

    iput v13, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$3;->label:I

    invoke-static {v12, v1, v2}, Lio/ktor/utils/io/ByteReadChannelKt;->readFully(Lio/ktor/utils/io/ByteReadChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_11

    :goto_13
    return-object v4

    :cond_11
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object v2, v11

    goto/16 :goto_1

    .line 183
    :goto_14
    new-instance v12, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    .line 184
    invoke-static {v2}, Lio/ktor/http/URLUtilsKt;->Url(Ljava/lang/String;)Lio/ktor/http/Url;

    move-result-object v13

    .line 190
    invoke-virtual {v8}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v19

    .line 183
    invoke-direct/range {v12 .. v21}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;-><init>(Lio/ktor/http/Url;Lio/ktor/http/HttpStatusCode;Lio/ktor/util/date/GMTDate;Lio/ktor/util/date/GMTDate;Lio/ktor/http/HttpProtocolVersion;Lio/ktor/util/date/GMTDate;Lio/ktor/http/Headers;Ljava/util/Map;[B)V

    return-object v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;

    iget v4, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;

    invoke-direct {v3, v1, v2}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 110
    iget v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v7, :cond_1

    iget v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$0:I

    iget-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v3, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    :goto_1
    move-object v2, v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$2:I

    iget v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$1:I

    iget v6, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$0:I

    iget-object v8, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    iget-object v12, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    iget-object v13, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v14, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/io/Closeable;

    iget-object v15, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v7

    move v7, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v11

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v4, v14

    move-object v3, v15

    goto/16 :goto_a

    :cond_3
    iget v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$0:I

    iget-object v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v7, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/io/Closeable;

    iget-object v8, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v7

    move-object v7, v5

    move-object/from16 v5, v17

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v4, v7

    :goto_2
    move-object v3, v8

    goto/16 :goto_a

    :cond_4
    iget-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v5

    move-object v12, v7

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object v2, v1, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->mutexes:Lio/ktor/util/collections/ConcurrentMap;

    sget-object v5, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$mutex$1;->INSTANCE:Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$mutex$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v0, v5}, Lio/ktor/util/collections/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 205
    iput-object v1, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    iput v10, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    invoke-interface {v2, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object v12, v1

    .line 113
    :goto_3
    :try_start_3
    new-instance v5, Ljava/io/File;

    iget-object v7, v12, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->directory:Ljava/io/File;

    invoke-direct {v5, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 209
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 116
    :cond_7
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    .line 117
    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    instance-of v5, v0, Ljava/io/BufferedInputStream;

    if-eqz v5, :cond_8

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v5, v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v5

    :goto_4
    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 213
    :try_start_5
    move-object v0, v5

    check-cast v0, Ljava/io/BufferedInputStream;

    .line 118
    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, v11, v11, v9, v11}, Lio/ktor/utils/io/jvm/javaio/ReadingKt;->toByteReadChannelWithArrayPool$default(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    .line 119
    iput-object v12, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$3:Ljava/lang/Object;

    iput v6, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$0:I

    iput v8, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    invoke-interface {v0, v3}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-ne v7, v4, :cond_9

    goto/16 :goto_8

    :cond_9
    move-object v8, v2

    move-object v2, v7

    move-object v7, v0

    move v0, v6

    :goto_5
    :try_start_6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 120
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v13, Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object v14, v7

    move v7, v0

    move-object v0, v13

    move-object v13, v14

    move-object v14, v11

    :goto_6
    if-ge v6, v2, :cond_b

    .line 122
    :try_start_7
    iput-object v12, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    iput-object v8, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    iput-object v13, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$3:Ljava/lang/Object;

    iput-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$4:Ljava/lang/Object;

    iput-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$5:Ljava/lang/Object;

    iput v7, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$0:I

    iput v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$1:I

    iput v6, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$2:I

    iput v9, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    invoke-direct {v12, v13, v3}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->readCache(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v15, v4, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v16, v14

    move-object v14, v5

    move v5, v2

    move-object v2, v15

    move-object v15, v8

    move-object v8, v0

    move v0, v6

    move-object v6, v12

    move-object v12, v8

    :goto_7
    :try_start_8
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/2addr v0, v10

    move-object v2, v6

    move v6, v0

    move-object v0, v12

    move-object v12, v2

    move v2, v5

    move-object v5, v14

    move-object v8, v15

    move-object/from16 v14, v16

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v11, v16

    goto :goto_a

    .line 124
    :cond_b
    :try_start_9
    iput-object v8, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$4:Ljava/lang/Object;

    iput-object v11, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->L$5:Ljava/lang/Object;

    iput v7, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->I$0:I

    const/4 v2, 0x4

    iput v2, v3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$readCache$1;->label:I

    invoke-static {v13, v3}, Lio/ktor/utils/io/ByteReadChannelKt;->discard(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-ne v2, v4, :cond_c

    :goto_8
    return-object v4

    :cond_c
    move-object v4, v5

    move-object v3, v8

    move-object v11, v14

    .line 215
    :goto_9
    :try_start_a
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 209
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    move-object v3, v8

    move-object v11, v14

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    move-object v3, v2

    move-object v4, v5

    goto/16 :goto_1

    .line 219
    :goto_a
    :try_start_b
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    .line 221
    :try_start_c
    invoke-static {v2, v0}, Lio/ktor/utils/io/core/CloseableJVMKt;->addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 224
    :goto_b
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    move-exception v0

    .line 215
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_1
    move-exception v0

    .line 128
    :goto_c
    :try_start_e
    invoke-static {}, Lio/ktor/client/plugins/cache/HttpCacheKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during cache lookup in a file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 209
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_a
    move-exception v0

    :goto_d
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method private final writeCache(Lio/ktor/utils/io/ByteChannel;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannel;",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;

    iget v1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 135
    iget v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_1
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, p2

    move-object p2, v2

    goto/16 :goto_c

    :pswitch_3
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_4
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_7
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_8
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_9
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_a
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_b
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p2

    move-object p2, p1

    goto/16 :goto_4

    :pswitch_c
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_d
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_e
    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_f
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    move-object p3, p1

    check-cast p3, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getUrl()Lio/ktor/http/Url;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {p3, v2, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    goto/16 :goto_f

    .line 137
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result p3

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {p1, p3, v0}, Lio/ktor/utils/io/ByteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    goto/16 :goto_f

    :cond_3
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 138
    :goto_2
    move-object p3, p2

    check-cast p3, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/http/HttpStatusCode;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {p3, v2, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto/16 :goto_f

    .line 139
    :cond_4
    :goto_3
    move-object p3, p2

    check-cast p3, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {p3, v2, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    goto/16 :goto_f

    .line 140
    :goto_4
    invoke-virtual {p2}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    check-cast p1, Lio/ktor/util/StringValues;

    invoke-static {p1}, Lio/ktor/util/StringValuesKt;->flattenEntries(Lio/ktor/util/StringValues;)Ljava/util/List;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    iput-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {v2, p3, v0}, Lio/ktor/utils/io/ByteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto/16 :goto_f

    .line 142
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 143
    move-object v6, v2

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$3:Ljava/lang/Object;

    const/4 v7, 0x6

    iput v7, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {v6, v5, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    goto/16 :goto_f

    :cond_6
    move-object v5, v2

    move-object v2, p2

    move-object p2, p1

    move-object p1, p3

    .line 144
    :goto_7
    move-object p3, v5

    check-cast p3, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$3:Ljava/lang/Object;

    const/4 v6, 0x7

    iput v6, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {p3, p1, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_f

    :cond_7
    move-object p1, p2

    move-object p2, v2

    move-object v2, v5

    goto :goto_6

    .line 146
    :cond_8
    invoke-virtual {p2}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v5

    iput-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {v2, v5, v6, v0}, Lio/ktor/utils/io/ByteChannel;->writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto/16 :goto_f

    :cond_9
    move-object p1, p2

    move-object p2, v2

    .line 147
    :goto_8
    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v5

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/16 p3, 0x9

    iput p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {p2, v5, v6, v0}, Lio/ktor/utils/io/ByteChannel;->writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    goto/16 :goto_f

    .line 148
    :cond_a
    :goto_9
    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getExpires()Lio/ktor/util/date/GMTDate;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v5

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {p2, v5, v6, v0}, Lio/ktor/utils/io/ByteChannel;->writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_b

    goto/16 :goto_f

    .line 149
    :cond_b
    :goto_a
    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVaryKeys()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {p2, p3, v0}, Lio/ktor/utils/io/ByteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_c

    goto/16 :goto_f

    .line 150
    :cond_c
    :goto_b
    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getVaryKeys()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    move-object v6, p2

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$3:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {v6, v5, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_d

    goto :goto_f

    :cond_d
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    move-object v5, p2

    move-object p2, p3

    .line 152
    :goto_d
    move-object p3, v5

    check-cast p3, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object v5, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$3:Ljava/lang/Object;

    const/16 v6, 0xd

    iput v6, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {p3, p1, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeStringUtf8(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    move-object p3, p2

    move-object p1, v2

    move-object p2, v5

    goto :goto_c

    .line 154
    :cond_f
    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getBody()[B

    move-result-object p3

    array-length p3, p3

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$2:Ljava/lang/Object;

    const/16 v2, 0xe

    iput v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-interface {p2, p3, v0}, Lio/ktor/utils/io/ByteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_10

    goto :goto_f

    .line 155
    :cond_10
    :goto_e
    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-virtual {p1}, Lio/ktor/client/plugins/cache/storage/CachedResponseData;->getBody()[B

    move-result-object p1

    iput-object v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->L$1:Ljava/lang/Object;

    const/16 p3, 0xf

    iput p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$3;->label:I

    invoke-static {p2, p1, v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_11

    :goto_f
    return-object v1

    .line 156
    :cond_11
    :goto_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final writeCache(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/cache/storage/CachedResponseData;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    new-instance v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$writeCache$2;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    instance-of v0, p3, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->key(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p1

    iput-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$find$1;->label:I

    invoke-direct {p0, p1, v0}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->readCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 80
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/Set;

    .line 82
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/cache/storage/CachedResponseData;

    .line 197
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p3

    .line 198
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
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

    if-nez v2, :cond_5

    goto :goto_2

    :cond_6
    return-object p3

    :cond_7
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

    instance-of v0, p2, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;

    iget v1, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 76
    iget v2, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->key(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$findAll$1;->label:I

    invoke-direct {p0, p1, v0}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->readCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public store(Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 70
    iget-object v0, p0, Lio/ktor/client/plugins/cache/storage/FileCacheStorage;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$store$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/ktor/client/plugins/cache/storage/FileCacheStorage$store$2;-><init>(Lio/ktor/client/plugins/cache/storage/FileCacheStorage;Lio/ktor/http/Url;Lio/ktor/client/plugins/cache/storage/CachedResponseData;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
