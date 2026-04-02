.class public abstract Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;
.super Ljava/lang/Object;
.source "AbstractProtoContentProviderLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;,
        Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0002\'(BG\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0017H&\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0086@\u00a2\u0006\u0002\u0010\u001aJ&\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0084@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0007J\u0014\u0010\"\u001a\u00020#2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000!J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;",
        "T",
        "",
        "uri",
        "Landroid/net/Uri;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "io",
        "Lkotlin/coroutines/CoroutineContext;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "treatEmptyBytesAsNull",
        "",
        "(Landroid/net/Uri;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/ContentResolver;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Z)V",
        "getUri",
        "()Landroid/net/Uri;",
        "convertBytes",
        "byteArray",
        "",
        "([B)Ljava/lang/Object;",
        "load",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Result;",
        "load-gIAlu-s",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "notifyChange",
        "",
        "callback",
        "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;",
        "registerObserver",
        "Ljava/io/Closeable;",
        "unregisterObserver",
        "contentObserver",
        "Landroid/database/ContentObserver;",
        "DataChangedCallback",
        "DataContentObserver",
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
.field private final appScope:Lkotlinx/coroutines/CoroutineScope;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final io:Lkotlin/coroutines/CoroutineContext;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final treatEmptyBytesAsNull:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$cF7Sas3O6v2cWEHMWgHQYSU7x_E(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->registerObserver$lambda$2(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/ContentResolver;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroid/content/ContentResolver;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->uri:Landroid/net/Uri;

    .line 18
    iput-object p2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->appScope:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    iput-object p3, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->io:Lkotlin/coroutines/CoroutineContext;

    .line 20
    iput-object p4, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object p5, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 31
    iput-boolean p6, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->treatEmptyBytesAsNull:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/ContentResolver;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;-><init>(Landroid/net/Uri;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/ContentResolver;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Z)V

    return-void
.end method

.method public static final synthetic access$getContentResolver$p(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;)Landroid/content/ContentResolver;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->contentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getTreatEmptyBytesAsNull$p(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->treatEmptyBytesAsNull:Z

    return p0
.end method

.method private static final registerObserver$lambda$2(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$contentObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    check-cast p1, Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->unregisterObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private final unregisterObserver(Landroid/database/ContentObserver;)V
    .locals 4

    .line 79
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;

    .line 82
    iget-object v0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "uri"

    iget-object v3, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Failed to unregister ContentObserver"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract convertBytes([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;

    iget v1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->uri:Landroid/net/Uri;

    iput v3, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$3;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->load-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    return-object p1
.end method

.method protected final load-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;

    iget v1, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;->label:I

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

    iget-object p2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->io:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$2;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$load$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final notifyChange(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$notifyChange$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$notifyChange$1;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final registerObserver(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)Ljava/io/Closeable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback<",
            "TT;>;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataChangedCallback;)V

    const/4 p1, 0x0

    .line 65
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;

    .line 66
    iget-object v1, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 67
    iget-object v2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->uri:Landroid/net/Uri;

    .line 69
    move-object v3, v0

    check-cast v3, Landroid/database/ContentObserver;

    .line 66
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
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

    .line 71
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "uri"

    iget-object v5, p0, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;->uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, p1

    const-string p1, "Failed to register ContentObserver"

    invoke-interface {v2, p1, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 75
    :cond_0
    new-instance p1, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader;Lcom/stripe/core/contentprovider/AbstractProtoContentProviderLoader$DataContentObserver;)V

    return-object p1
.end method
