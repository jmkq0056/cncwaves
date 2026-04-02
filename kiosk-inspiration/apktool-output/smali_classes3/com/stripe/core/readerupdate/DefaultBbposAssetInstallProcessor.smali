.class public final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;
.super Ljava/lang/Object;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAssetInstallProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAssetInstallProcessor.kt\ncom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor\n+ 2 observable.kt\nio/reactivex/rxjava3/kotlin/ObservableKt\n*L\n1#1,366:1\n126#2:367\n*S KotlinDebug\n*F\n+ 1 BbposAssetInstallProcessor.kt\ncom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor\n*L\n331#1:367\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 <2\u00020\u0001:\u0001<BG\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010\u00a2\u0006\u0002\u0010\u0011JO\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u001c\u0010\u001c\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001dH\u0002\u00a2\u0006\u0002\u0010 J\u0008\u0010!\u001a\u00020\u0017H\u0002J\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016JF\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00162\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00162\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u00162\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u0016H\u0002J\u0016\u00104\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u00105J2\u00106\u001a\u00020\u00172\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00162\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010:J\u000c\u0010;\u001a\u00020\u001b*\u00020\u0019H\u0002R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
        "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "updateListener",
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "updateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "statusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "readerConnectionController",
        "Lcom/stripe/core/hardware/ReaderConnectionController;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "awaitInstall",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "updateFinishedObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "reader",
        "Lcom/stripe/core/hardware/Reader;",
        "needsReconnect",
        "",
        "installBlock",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;",
        "cancel",
        "install",
        "config",
        "Lcom/stripe/core/readerupdate/Update$Config;",
        "firmware",
        "Lcom/stripe/core/readerupdate/Update$Firmware;",
        "keys",
        "Lcom/stripe/core/readerupdate/Update$Keys;",
        "settings",
        "Lcom/stripe/core/readerupdate/Update$Settings;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "makeUpdateObservable",
        "finishedObservable",
        "progressObservable",
        "updateExceptionObservable",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
        "statusExceptionObservable",
        "Lcom/stripe/hardware/status/ReaderException;",
        "startSession",
        "(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "waitForReconnect",
        "connectObservable",
        "disconnectReplayObservable",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isShopifyMposReader",
        "Companion",
        "readerupdate_release"
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
.field private static final CONNECT_RETRY_QUANTUM_MILLIS:J

.field private static final CONNECT_START_DELAY_MILLIS:J

.field private static final CONNECT_TIMEOUT_MILLIS:J

.field public static final Companion:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$Companion;

.field private static final DISCONNECT_TIMEOUT_MILLIS:J


# instance fields
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

.field private final readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final statusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

.field private final updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

.field private final updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->Companion:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$Companion;

    .line 360
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_TIMEOUT_MILLIS:J

    .line 361
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->DISCONNECT_TIMEOUT_MILLIS:J

    .line 362
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_START_DELAY_MILLIS:J

    .line 363
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_RETRY_QUANTUM_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Updates;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerConnectionController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 46
    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    .line 47
    iput-object p3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    .line 48
    iput-object p4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->statusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 49
    iput-object p5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

    .line 50
    iput-object p6, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$cancel(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->cancel()V

    return-void
.end method

.method public static final synthetic access$getCONNECT_RETRY_QUANTUM_MILLIS$cp()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_RETRY_QUANTUM_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getCONNECT_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getReaderConnectionController$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/ReaderConnectionController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

    return-object p0
.end method

.method public static final synthetic access$getScheduler$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static final synthetic access$getStatusListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->statusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    return-object p0
.end method

.method public static final synthetic access$getUpdateController$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/updates/ReaderUpdateController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    return-object p0
.end method

.method public static final synthetic access$getUpdateListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$isShopifyMposReader(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->isShopifyMposReader(Lcom/stripe/core/hardware/Reader;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$makeUpdateObservable(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->makeUpdateObservable(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startSession(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->startSession(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$waitForReconnect(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->waitForReconnect(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final awaitInstall(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lcom/stripe/core/hardware/Reader;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method private final cancel()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    invoke-interface {v0}, Lcom/stripe/core/hardware/updates/ReaderUpdateController;->cancel()V

    return-void
.end method

.method private final isShopifyMposReader(Lcom/stripe/core/hardware/Reader;)Z
    .locals 2

    .line 339
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 340
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 341
    :cond_1
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    :goto_1
    if-eqz v0, :cond_2

    return v1

    .line 345
    :cond_2
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    .line 346
    :cond_3
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;

    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 347
    :cond_4
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;

    :goto_3
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    .line 348
    :cond_5
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$SerialReader;

    :goto_4
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    .line 349
    :cond_6
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    :goto_5
    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_6

    .line 350
    :cond_7
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    :goto_6
    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_7

    .line 351
    :cond_8
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;

    :goto_7
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_8

    .line 352
    :cond_9
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    :goto_8
    if-eqz v0, :cond_a

    goto :goto_9

    .line 353
    :cond_a
    instance-of v1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    :goto_9
    if-eqz v1, :cond_b

    const/4 p1, 0x0

    return p1

    .line 354
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final makeUpdateObservable(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Float;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/ReaderException;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 299
    check-cast p2, Lio/reactivex/rxjava3/core/ObservableSource;

    .line 300
    check-cast p1, Lio/reactivex/rxjava3/core/ObservableSource;

    .line 301
    check-cast p3, Lio/reactivex/rxjava3/core/ObservableSource;

    .line 302
    check-cast p4, Lio/reactivex/rxjava3/core/ObservableSource;

    .line 298
    invoke-static {p2, p1, p3, p4}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 303
    sget-object p2, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$1;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$1;

    check-cast p2, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 328
    sget-object p2, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$makeUpdateObservable$2;

    check-cast p2, Lio/reactivex/rxjava3/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->takeWhile(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "takeWhile(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    const-class p2, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "ofType(R::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final startSession(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;

    iget v1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 275
    iget v2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

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

    .line 279
    sget-object p2, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    const/4 v2, 0x2

    .line 277
    new-array v2, v2, [Lio/reactivex/rxjava3/core/ObservableSource;

    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->statusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getSessionInitializedObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    sget-object v5, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$2;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$2;

    check-cast v5, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 278
    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->statusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getSessionExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    sget-object v5, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$3;

    check-cast v5, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 276
    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->ambArray([Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v4, "ambArray(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v5, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$4;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$4;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$startSession$1;->label:I

    invoke-virtual {p2, v2, v4, v5, v0}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 276
    :cond_3
    :goto_1
    const-string p1, "awaitFirstWithBlock(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 281
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 282
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final waitForReconnect(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;

    iget v1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;

    invoke-direct {v0, p0, p4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 226
    iget v2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    iget-object p2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/reactivex/rxjava3/core/Observable;

    iget-object p3, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, p3

    move-object p3, p1

    :goto_1
    move-object p1, v10

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/stripe/core/hardware/Reader;

    iget-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/Observable;

    iget-object p2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    :try_start_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 231
    iget-object p4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "Waiting for reconnect..."

    new-array v8, v5, [Lkotlin/Pair;

    invoke-interface {p4, v2, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 234
    :try_start_3
    sget-wide v8, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->DISCONNECT_TIMEOUT_MILLIS:J

    new-instance p4, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$2;

    invoke-direct {p4, p2, v7}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$2;-><init>(Lio/reactivex/rxjava3/core/Observable;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    invoke-static {v8, v9, p4, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object p2, p0

    .line 237
    :goto_2
    iget-object p4, p2, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "Disconnected from reader"

    new-array v4, v5, [Lkotlin/Pair;

    invoke-interface {p4, v2, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 243
    sget-wide v8, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_START_DELAY_MILLIS:J

    iput-object p2, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v10, p2

    move-object p2, p1

    goto :goto_1

    .line 246
    :goto_3
    sget-wide v8, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->CONNECT_TIMEOUT_MILLIS:J

    new-instance p4, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;

    invoke-direct {p4, p1, p2, p3, v7}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$1;->label:I

    invoke-static {v8, v9, p4, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_4
    return-object v1

    .line 269
    :cond_7
    :goto_5
    iget-object p1, p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "Connected to reader"

    new-array p3, v5, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_3
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 273
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 271
    :catch_0
    new-instance p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError;

    const-string p2, "Unable to reconnect to reader"

    invoke-direct {p1, p2, v7, v6, v7}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method


# virtual methods
.method public install(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Config;",
            "Lcom/stripe/core/hardware/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderConfigUpdateObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 71
    invoke-virtual {p2}, Lcom/stripe/core/hardware/Reader;->getNeedsReconnectAfterConfigUpdate()Z

    move-result v1

    .line 68
    new-instance v2, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;-><init>(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->awaitInstall(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public install(Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Firmware;",
            "Lcom/stripe/core/hardware/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "firmware"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderFirmwareUpdateObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$1;-><init>(Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->awaitInstall(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public install(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Keys;",
            "Lcom/stripe/core/hardware/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderKeyUpdateObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$3;-><init>(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->awaitInstall(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public install(Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Settings;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p0, v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
