.class public abstract Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;
.super Ljava/lang/Object;
.source "AsyncQueryJob.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$Companion;,
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobRequest:",
        "Lcom/squareup/wire/Message<",
        "TJobRequest;*>;JobResponse:",
        "Lcom/squareup/wire/Message<",
        "TJobResponse;*>;QueryRequest:",
        "Lcom/squareup/wire/Message<",
        "TQueryRequest;*>;QueryResponse:",
        "Lcom/squareup/wire/Message<",
        "TQueryResponse;*>;CallbackType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncQueryJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncQueryJob.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,311:1\n16#2:312\n*S KotlinDebug\n*F\n+ 1 AsyncQueryJob.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob\n*L\n232#1:312\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008 \u0018\u0000 \"*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0001\u0010\u0003*\u000c\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0002\u0010\u0004*\u000c\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0003\u0010\u0005*\u000c\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\u0008\u00030\u0002*\u0004\u0008\u0004\u0010\u00062\u00020\u0007:\u0002\"#B=\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0018H$J\u001b\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00040\u001a2\u0006\u0010\u001b\u001a\u00028\u0003H$\u00a2\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00028\u0004H\u0082@\u00a2\u0006\u0002\u0010 J\u000e\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00030\u0018H$R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;",
        "JobRequest",
        "Lcom/squareup/wire/Message;",
        "JobResponse",
        "QueryRequest",
        "QueryResponse",
        "CallbackType",
        "",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "onFailure",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "executeJobRequest",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "getQueryResult",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;",
        "queryResponse",
        "(Lcom/squareup/wire/Message;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;",
        "launch",
        "Lkotlinx/coroutines/Job;",
        "makeJobRequest",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryJobRequest",
        "Companion",
        "QueryResult",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$Companion;

.field private static final QUERY_INTERVAL_MS:J = 0xfaL


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TCallbackType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

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

.field private final onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            "Lkotlin/jvm/functions/Function1<",
            "-TCallbackType;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 228
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->callback:Lkotlin/jvm/functions/Function1;

    .line 229
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->onFailure:Lkotlin/jvm/functions/Function1;

    .line 312
    const-class p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 232
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getOnFailure$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->onFailure:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$makeJobRequest(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->makeJobRequest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final makeJobRequest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TCallbackType;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;

    iget v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 265
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v4, "makeJobRequest"

    invoke-interface {p1, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 268
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->executeJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    .line 270
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    invoke-virtual {v2, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-object v2, p0

    .line 273
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->queryJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    .line 275
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    invoke-virtual {v4, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1

    .line 276
    invoke-virtual {v2, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->getQueryResult(Lcom/squareup/wire/Message;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    move-result-object p1

    .line 277
    instance-of v4, p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;

    if-eqz v4, :cond_4

    .line 278
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;->getData()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 281
    :cond_4
    instance-of v4, p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;

    if-nez v4, :cond_6

    .line 288
    instance-of v4, p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;

    if-nez v4, :cond_5

    .line 292
    instance-of p1, p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;

    if-eqz p1, :cond_3

    .line 294
    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$makeJobRequest$1;->label:I

    const-wide/16 v4, 0xfa

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 289
    :cond_5
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;->getError()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1

    .line 282
    :cond_6
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 283
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 282
    const-string v2, "Job was canceled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method protected abstract executeJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TJobResponse;>;"
        }
    .end annotation
.end method

.method protected abstract getQueryResult(Lcom/squareup/wire/Message;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQueryResponse;)",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult<",
            "TCallbackType;>;"
        }
    .end annotation
.end method

.method public final launch()Lkotlinx/coroutines/Job;
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method protected abstract queryJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TQueryResponse;>;"
        }
    .end annotation
.end method
