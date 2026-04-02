.class public abstract Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;
.super Ljava/lang/Object;
.source "AbstractProtoContentProviderWriter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractProtoContentProviderWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractProtoContentProviderWriter.kt\ncom/stripe/core/contentprovider/AbstractProtoContentProviderWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u00a6@\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cR\u0014\u0010\u0008\u001a\u00020\tX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;",
        "T",
        "",
        "context",
        "Landroid/content/Context;",
        "io",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V",
        "contentValueKey",
        "Lcom/stripe/core/contentprovider/ContentValueKey;",
        "getContentValueKey",
        "()Lcom/stripe/core/contentprovider/ContentValueKey;",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "getFile",
        "Ljava/io/File;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toBytes",
        "",
        "data",
        "(Ljava/lang/Object;)[B",
        "writeData",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeDataUsingInsert",
        "(Ljava/lang/Object;)Z",
        "contentprovider_release"
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
.field private final contentValueKey:Lcom/stripe/core/contentprovider/ContentValueKey;

.field private final context:Landroid/content/Context;

.field private final io:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->context:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->io:Lkotlin/coroutines/CoroutineContext;

    .line 18
    sget-object p1, Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;->INSTANCE:Lcom/stripe/core/contentprovider/ContentValueKey$UnusedContentValueKey;

    check-cast p1, Lcom/stripe/core/contentprovider/ContentValueKey;

    iput-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->contentValueKey:Lcom/stripe/core/contentprovider/ContentValueKey;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;)Landroid/content/Context;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected getContentValueKey()Lcom/stripe/core/contentprovider/ContentValueKey;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->contentValueKey:Lcom/stripe/core/contentprovider/ContentValueKey;

    return-object v0
.end method

.method public abstract getFile(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract toBytes(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation
.end method

.method public final writeData(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;

    iget v1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;

    .line 22
    iget-object p2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->io:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$2$1;

    invoke-direct {v2, p0, p1, v3}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$2$1;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter$writeData$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 23
    :goto_1
    iget-object p2, p1, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 24
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    const/4 p2, 0x0

    .line 25
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, p2

    :cond_4
    return-object p1
.end method

.method public final writeDataUsingInsert(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;

    .line 30
    invoke-virtual {p0}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->getContentValueKey()Lcom/stripe/core/contentprovider/ContentValueKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/core/contentprovider/ContentValueKey;->getValue$contentprovider_release()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, p1}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->toBytes(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 32
    iget-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 33
    iget-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderWriter;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 36
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
