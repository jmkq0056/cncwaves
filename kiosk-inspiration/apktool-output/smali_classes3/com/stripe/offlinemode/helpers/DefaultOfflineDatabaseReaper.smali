.class public final Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;
.super Ljava/lang/Object;
.source "DefaultOfflineDatabaseReaper.kt"

# interfaces
.implements Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineDatabaseReaper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineDatabaseReaper.kt\ncom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,81:1\n44#2,4:82\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineDatabaseReaper.kt\ncom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper\n*L\n34#1:82,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u0002`\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u0002`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;",
        "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
        "computationDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "ioDispatcher",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "coroutineExceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "reaperTask",
        "Lkotlinx/coroutines/Job;",
        "getReaperTask$annotations",
        "()V",
        "start",
        "",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$Companion;

.field private static final ONE_HOUR_MS:J = 0x36ee80L

.field private static final ONE_MINUTE_MS:J = 0xea60L

.field private static final ONE_SECOND_MS:J = 0x3e8L

.field public static final REAPER_TASK_INTERVAL_MS:J = 0x5265c00L


# instance fields
.field private final computationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final coroutineExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

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

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final reaperTask:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->Companion:Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .param p3    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "computationDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->computationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    iput-object p2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 31
    iput-object p3, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 32
    iput-object p4, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 82
    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p3, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p3, p2, p0}, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;)V

    check-cast p3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 34
    iput-object p3, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->coroutineExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 44
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 45
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 46
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 44
    new-instance p4, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$reaperTask$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper$reaperTask$1;-><init>(Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->reaperTask:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getComputationDispatcher$p(Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->computationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getIoDispatcher$p(Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getOfflineRepository$p(Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object p0
.end method

.method private static synthetic getReaperTask$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;->reaperTask:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    return-void
.end method
