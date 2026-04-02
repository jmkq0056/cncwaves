.class public final Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;
.super Ljava/lang/Object;
.source "ReaderInfoHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderInfoHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderInfoHandler.kt\ncom/stripe/core/hardware/reactive/ReaderInfoHandler\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n+ 4 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,87:1\n436#2,4:88\n457#3,4:92\n16#4:96\n*S KotlinDebug\n*F\n+ 1 ReaderInfoHandler.kt\ncom/stripe/core/hardware/reactive/ReaderInfoHandler\n*L\n34#1:88,4\n35#1:92,4\n50#1:96\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB1\u0008\u0017\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cB?\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011\u00a2\u0006\u0002\u0010\u0012J\u001c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR&\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
        "",
        "io",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "readerInfoController",
        "Lcom/stripe/core/hardware/ReaderInfoController;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;",
        "fetchReaderInfo",
        "Lkotlin/Result;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "fetchReaderInfo-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$Companion;

.field private static final FETCH_TIMEOUT:J


# instance fields
.field private final healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final io:Lio/reactivex/rxjava3/core/Scheduler;

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

.field private final readerInfoController:Lcom/stripe/core/hardware/ReaderInfoController;

.field private final readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->Companion:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$Companion;

    .line 84
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x3

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->FETCH_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 7
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "io"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthLoggerBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-class v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;-><init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "io"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthLoggerBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->io:Lio/reactivex/rxjava3/core/Scheduler;

    .line 28
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->readerInfoController:Lcom/stripe/core/hardware/ReaderInfoController;

    .line 29
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 31
    iput-object p5, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 34
    sget-object p1, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$healthLogger$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$healthLogger$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 88
    new-instance p2, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class p3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    const-class p5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;

    invoke-direct {p2, p4, p3, p5, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 35
    sget-object p1, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$healthLogger$2;->INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$healthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 92
    new-instance p3, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class p4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;

    const-class p5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;

    invoke-direct {p3, p2, p4, p5, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 36
    invoke-virtual {p3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method public static final synthetic access$getFETCH_TIMEOUT$cp()J
    .locals 2

    .line 25
    sget-wide v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->FETCH_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getIo$p(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->io:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static final synthetic access$getReaderInfoController$p(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)Lcom/stripe/core/hardware/ReaderInfoController;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->readerInfoController:Lcom/stripe/core/hardware/ReaderInfoController;

    return-object p0
.end method

.method public static final synthetic access$getReaderStatusListener$p(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    return-object p0
.end method


# virtual methods
.method public final fetchReaderInfo-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 61
    iget v2, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v0, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v2, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$fetchTimer$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$fetchTimer$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3, v4}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p1

    .line 64
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    .line 65
    sget-wide v5, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->FETCH_TIMEOUT:J

    new-instance v2, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;

    invoke-direct {v2, p0, v4}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$1;->label:I

    invoke-static {v5, v6, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p0

    move-object v1, p1

    move-object p1, v0

    :goto_1
    :try_start_2
    check-cast p1, Lcom/stripe/hardware/status/ReaderInfo;

    .line 64
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object v1, p1

    :goto_2
    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    move-object v7, v2

    .line 73
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 75
    iget-object v0, v7, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v2, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 76
    iget-object v0, v7, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "Failed to fetch reader info"

    invoke-interface {v0, v3, v8, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/stripe/hardware/status/ReaderInfo;

    .line 78
    iget-object v0, v7, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_5
    return-object p1
.end method
