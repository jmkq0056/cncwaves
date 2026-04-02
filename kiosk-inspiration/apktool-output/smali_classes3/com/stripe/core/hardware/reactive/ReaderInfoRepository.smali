.class public final Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;
.super Ljava/lang/Object;
.source "ReaderInfoRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001!B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\rJ\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0016H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fR\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "readerInfoHandler",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "_readerInfo",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "readerInfo",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getReaderInfo",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "awaitRefresh",
        "Lkotlin/Result;",
        "awaitRefresh-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAllMissingReaderKeys",
        "",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;",
        "isReaderMissingKey",
        "",
        "refresh",
        "",
        "refreshIfNull",
        "KeyType",
        "hardware-reactive_release"
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
.field private final _readerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

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

.field private final readerInfo:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoHandler:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->readerInfoHandler:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    .line 20
    iput-object p4, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->_readerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 24
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->readerInfo:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getReaderInfoHandler$p(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;)Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->readerInfoHandler:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    return-object p0
.end method

.method public static final synthetic access$get_readerInfo$p(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->_readerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final awaitRefresh-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$2;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$awaitRefresh$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAllMissingReaderKeys()Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "Checking if reader is missing keys"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 67
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->readerInfo:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/status/ReaderInfo;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "Reader info empty, cannot determine key state"

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 70
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v2

    .line 75
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getMacKeyProfileId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getMacKeysetId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 76
    :cond_2
    sget-object v3, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;->MAC:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getEmvKeyProfileId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getEmvKeysetId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 79
    :cond_5
    sget-object v3, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;->EMV:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getPinKeysetId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 82
    :cond_8
    sget-object v3, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;->PIN:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getTrackKeyProfileId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderInfo;->getTrackKeysetId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 85
    :cond_b
    sget-object v0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;->TRACK:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$KeyType;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_c
    :goto_3
    invoke-static {v2}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 90
    const-string v3, "No keys missing"

    goto :goto_4

    .line 92
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "List of keys missing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    const-string v4, ","

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    sget-object v4, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$getAllMissingReaderKeys$1$2$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$getAllMissingReaderKeys$1$2$1;

    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-array v1, v1, [Lkotlin/Pair;

    .line 88
    invoke-interface {v2, v3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v0
.end method

.method public final getReaderInfo()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->readerInfo:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isReaderMissingKey()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->getAllMissingReaderKeys()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final refresh()V
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$refresh$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$refresh$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final refreshIfNull()V
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$refreshIfNull$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository$refreshIfNull$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
