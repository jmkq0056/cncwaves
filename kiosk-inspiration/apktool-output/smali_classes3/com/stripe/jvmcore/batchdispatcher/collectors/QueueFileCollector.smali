.class public final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;
.super Ljava/lang/Object;
.source "QueueFileCollector.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/Collector;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;,
        Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;,
        Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
        "TT;>;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueueFileCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueueFileCollector.kt\ncom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,424:1\n1855#2,2:425\n*S KotlinDebug\n*F\n+ 1 QueueFileCollector.kt\ncom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector\n*L\n224#1:425,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 F*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0003FGHB;\u0008\u0016\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fBC\u0008\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002J\u000e\u0010(\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010*J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010-J1\u0010+\u001a\u00020)2\"\u0010.\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000100\u0012\u0006\u0012\u0004\u0018\u0001020/H\u0016\u00a2\u0006\u0002\u00103J$\u00104\u001a\u00020)2\u0006\u00105\u001a\u0002062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u000008H\u0096@\u00a2\u0006\u0002\u00109J\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00028\u000008H\u0096@\u00a2\u0006\u0002\u0010*J\u0016\u0010;\u001a\u00020)2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u00000<H\u0002J\u0010\u0010=\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\nH\u0002J\u000e\u0010>\u001a\u00020)H\u0096@\u00a2\u0006\u0002\u0010*J\u0008\u0010?\u001a\u00020@H\u0002J\u001c\u0010A\u001a\u00020)2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u000008H\u0096@\u00a2\u0006\u0002\u0010BJ\u0008\u0010C\u001a\u00020DH\u0002J\u0008\u0010E\u001a\u00020)H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0008\u001a\n \u0018*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001f\u001a\u0004\u0018\u00010 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001c\u001a\u0004\u0008!\u0010\"\u00a8\u0006I"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;",
        "T",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "serializer",
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;",
        "configuration",
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;",
        "file",
        "Ldagger/Lazy;",
        "Ljava/io/File;",
        "loggerExceptionListener",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V",
        "fileProvider",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "kotlin.jvm.PlatformType",
        "getFile",
        "()Ljava/io/File;",
        "file$delegate",
        "Lkotlin/Lazy;",
        "queueFile",
        "Lcom/squareup/tape2/QueueFile;",
        "usedBytesMethod",
        "Ljava/lang/reflect/Method;",
        "getUsedBytesMethod",
        "()Ljava/lang/reflect/Method;",
        "usedBytesMethod$delegate",
        "canAdd",
        "",
        "bytes",
        "",
        "close",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collect",
        "record",
        "(Ljava/lang/Object;)V",
        "recordSupplier",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "handleExceptionOnBatch",
        "throwable",
        "",
        "batch",
        "",
        "(Ljava/lang/Throwable;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "peek",
        "populateBatch",
        "",
        "prepareQueueFile",
        "pruneIfNeeded",
        "queueFilename",
        "",
        "remove",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "usedBytes",
        "",
        "validateConfiguration",
        "Companion",
        "Configuration",
        "Serializer",
        "batchdispatcher"
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
.field private static final Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;


# instance fields
.field private final configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final file$delegate:Lkotlin/Lazy;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final loggerExceptionListener:Lcom/stripe/loggingmodels/LoggerExceptionListener;

.field private queueFile:Lcom/squareup/tape2/QueueFile;

.field private final serializer:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final usedBytesMethod$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer<",
            "TT;>;",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerExceptionListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;->access$createDefaultTapeDispatcher(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer<",
            "TT;>;",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerExceptionListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->serializer:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    .line 28
    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    .line 30
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 31
    iput-object p5, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->loggerExceptionListener:Lcom/stripe/loggingmodels/LoggerExceptionListener;

    .line 32
    iput-object p6, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 62
    new-instance p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$usedBytesMethod$2;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$usedBytesMethod$2;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->usedBytesMethod$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 76
    invoke-static {p2, p1, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    move-object p5, p4

    check-cast p5, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p5}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 78
    new-instance p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$file$2;

    invoke-direct {p1, p3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$file$2;-><init>(Ldagger/Lazy;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->file$delegate:Lkotlin/Lazy;

    .line 81
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->validateConfiguration()V

    .line 84
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p4

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;

    invoke-direct {p1, p0, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$canAdd(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;[B)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->canAdd([B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getConfiguration$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    return-object p0
.end method

.method public static final synthetic access$getFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/io/File;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static final synthetic access$getLoggerExceptionListener$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/loggingmodels/LoggerExceptionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->loggerExceptionListener:Lcom/stripe/loggingmodels/LoggerExceptionListener;

    return-object p0
.end method

.method public static final synthetic access$getQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/squareup/tape2/QueueFile;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    return-object p0
.end method

.method public static final synthetic access$getSerializer$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->serializer:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    return-object p0
.end method

.method public static final synthetic access$populateBatch(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Ljava/util/List;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->populateBatch(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$prepareQueueFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Ljava/io/File;)Lcom/squareup/tape2/QueueFile;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->prepareQueueFile(Ljava/io/File;)Lcom/squareup/tape2/QueueFile;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queueFilename(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFilename()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lcom/squareup/tape2/QueueFile;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    return-void
.end method

.method public static final synthetic access$usedBytes(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)J
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->usedBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private final canAdd([B)Z
    .locals 9

    .line 152
    array-length v0, p1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxEntryBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, " bytes."

    const-string v3, " dropping entry of "

    const-string v4, "access$getTAG$p(...)"

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 154
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " bytes beyond max entry size of "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 156
    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxEntryBytes()J

    move-result-wide v3

    .line 155
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-interface {v0, v5, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 161
    :cond_0
    array-length v0, p1

    int-to-long v5, v0

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->usedBytes()J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxFileBytes()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 163
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " bytes beyond max file size of "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 165
    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxFileBytes()J

    move-result-wide v3

    .line 164
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-interface {v0, v5, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private final getFile()Ljava/io/File;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->file$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final getUsedBytesMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->usedBytesMethod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private final populateBatch(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    const/4 v1, 0x0

    const-string v2, "queueFile"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 425
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 225
    array-length v6, v5

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 227
    iget-object v6, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxBatchBytes()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-lez v6, :cond_3

    .line 231
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v6, "access$getTAG$p(...)"

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " adding an entry to prevent starvation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->serializer:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;->fromBytes([B)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/squareup/tape2/QueueFile;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 237
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pruned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " batch entries due to over sized batch. Batch Entries: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 239
    const-string v0, " using "

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 240
    const-string v0, " / "

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxBatchBytes()J

    move-result-wide v3

    .line 238
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-interface {v1, v2, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_3
    iget-object v6, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->serializer:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;->fromBytes([B)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private final prepareQueueFile(Ljava/io/File;)Lcom/squareup/tape2/QueueFile;
    .locals 1

    .line 120
    new-instance v0, Lcom/squareup/tape2/QueueFile$Builder;

    invoke-direct {v0, p1}, Lcom/squareup/tape2/QueueFile$Builder;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    .line 122
    invoke-virtual {v0, p1}, Lcom/squareup/tape2/QueueFile$Builder;->zero(Z)Lcom/squareup/tape2/QueueFile$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, v0}, Lcom/squareup/tape2/QueueFile$Builder;->forceLegacy(Z)Lcom/squareup/tape2/QueueFile$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/squareup/tape2/QueueFile$Builder;->build()Lcom/squareup/tape2/QueueFile;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final queueFilename()Ljava/lang/String;
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    if-nez v0, :cond_0

    const-string v0, "queueFile"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/tape2/QueueFile;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final usedBytes()J
    .locals 3

    .line 307
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->getUsedBytesMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    if-nez v1, :cond_0

    const-string v1, "queueFile"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final validateConfiguration()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxBatchBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxEntryBytes()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxFileBytes()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getPruneFileBytes()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pruneFileBytes must be non-zero and positive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getPruneFileBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxFileBytes must be non-zero and positive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxFileBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxEntryBytes must be non-zero and positive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxEntryBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxBatchBytes must be non-zero and positive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->configuration:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getMaxBatchBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$close$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$close$2;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public collect(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$collect$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$collect$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->collect(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public collect(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recordSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$collect$2;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p0, v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$collect$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public handleExceptionOnBatch(Ljava/lang/Throwable;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->loggerExceptionListener:Lcom/stripe/loggingmodels/LoggerExceptionListener;

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFilename()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/stripe/loggingmodels/LoggerExceptionListener;->onDispatchExceptionError(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 291
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 292
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->queueFile:Lcom/squareup/tape2/QueueFile;

    if-nez p1, :cond_0

    const-string p1, "queueFile"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/tape2/QueueFile;->clear()V

    .line 296
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 294
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->remove(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public peek(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pruneIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public remove(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$remove$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$remove$2;-><init>(Ljava/util/List;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
