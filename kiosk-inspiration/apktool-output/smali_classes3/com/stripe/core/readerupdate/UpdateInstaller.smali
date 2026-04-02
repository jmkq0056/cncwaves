.class public final Lcom/stripe/core/readerupdate/UpdateInstaller;
.super Ljava/lang/Object;
.source "UpdateInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/UpdateInstaller$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 62\u00020\u0001:\u00016BG\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u001c\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005j\u0002`\t\u0012\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060\u000bj\u0002`\r\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010*\u001a\u00020\u0013J\u0008\u0010+\u001a\u00020\u0013H\u0007J\u0008\u0010,\u001a\u00020\u0013H\u0002J\u0008\u0010-\u001a\u00020\u0013H\u0002J\u0008\u0010.\u001a\u00020\u0013H\u0002J\u0010\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0002J\u000e\u00102\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u000cJ\u0008\u00104\u001a\u00020\u0013H\u0007J\u0008\u00105\u001a\u00020\u0013H\u0007R$\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005j\u0002`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060\u000bj\u0002`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R!\u0010\u0016\u001a\u0015\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u00130\u00130\u0017\u00a2\u0006\u0002\u0008\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R!\u0010\u001c\u001a\u0015\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u00130\u00130\u0017\u00a2\u0006\u0002\u0008\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u001d\u001a\u0015\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u00130\u00130\u0017\u00a2\u0006\u0002\u0008\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0015R!\u0010#\u001a\u0015\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010!0!0\u0017\u00a2\u0006\u0002\u0008\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0015R!\u0010\'\u001a\u0015\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010%0%0\u0017\u00a2\u0006\u0002\u0008\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateInstaller;",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "applicator",
        "Lcom/stripe/core/updater/Applicator;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "Lcom/stripe/core/readerupdate/BbposApplicator;",
        "ingester",
        "Lcom/stripe/core/updater/Ingester;",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/ArmadaIngester;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/updater/Ingester;)V",
        "installJob",
        "Lkotlinx/coroutines/Job;",
        "readerUpdateCancelledObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "getReaderUpdateCancelledObservable",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "readerUpdateCancelledPublishable",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "readerUpdateCompleteObservable",
        "getReaderUpdateCompleteObservable",
        "readerUpdateCompletePublishable",
        "readerUpdateDownloadComplete",
        "readerUpdateDownloadCompleteObservable",
        "getReaderUpdateDownloadCompleteObservable",
        "readerUpdateExceptionObservable",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
        "getReaderUpdateExceptionObservable",
        "readerUpdateExceptionPublishable",
        "readerUpdateProgressObservable",
        "",
        "getReaderUpdateProgressObservable",
        "readerUpdateProgressPublishable",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "cancel",
        "cancelAndJoin",
        "completeCancel",
        "completeDownload",
        "completeInstall",
        "fail",
        "t",
        "",
        "install",
        "summary",
        "join",
        "reset",
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
.field public static final Companion:Lcom/stripe/core/readerupdate/UpdateInstaller$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final applicator:Lcom/stripe/core/updater/Applicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final ingester:Lcom/stripe/core/updater/Ingester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation
.end field

.field private installJob:Lkotlinx/coroutines/Job;

.field private final readerUpdateCancelledObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateCancelledPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateCompleteObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateCompletePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateDownloadComplete:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateDownloadCompleteObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateExceptionObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateExceptionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateProgressObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateProgressPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/readerupdate/UpdateInstaller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateInstaller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->Companion:Lcom/stripe/core/readerupdate/UpdateInstaller$Companion;

    .line 159
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/updater/Ingester;)V
    .locals 3
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Updates;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ingester"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 24
    iput-object p2, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->applicator:Lcom/stripe/core/updater/Applicator;

    .line 25
    iput-object p3, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->ingester:Lcom/stripe/core/updater/Ingester;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 28
    invoke-static {p2, p3, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCancelledPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 32
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCompletePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 33
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateDownloadComplete:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 34
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateExceptionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 35
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateProgressPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 36
    check-cast p1, Lio/reactivex/rxjava3/core/Observable;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCancelledObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 37
    check-cast p3, Lio/reactivex/rxjava3/core/Observable;

    iput-object p3, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCompleteObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 39
    check-cast v1, Lio/reactivex/rxjava3/core/Observable;

    iput-object v1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 40
    check-cast v2, Lio/reactivex/rxjava3/core/Observable;

    iput-object v2, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateProgressObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 41
    check-cast v0, Lio/reactivex/rxjava3/core/Observable;

    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateDownloadCompleteObservable:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method public static final synthetic access$completeCancel(Lcom/stripe/core/readerupdate/UpdateInstaller;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/stripe/core/readerupdate/UpdateInstaller;->completeCancel()V

    return-void
.end method

.method public static final synthetic access$completeInstall(Lcom/stripe/core/readerupdate/UpdateInstaller;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/stripe/core/readerupdate/UpdateInstaller;->completeInstall()V

    return-void
.end method

.method public static final synthetic access$fail(Lcom/stripe/core/readerupdate/UpdateInstaller;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getApplicator$p(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lcom/stripe/core/updater/Applicator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->applicator:Lcom/stripe/core/updater/Applicator;

    return-object p0
.end method

.method public static final synthetic access$getIngester$p(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lcom/stripe/core/updater/Ingester;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->ingester:Lcom/stripe/core/updater/Ingester;

    return-object p0
.end method

.method public static final synthetic access$getInstallJob$p(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->installJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getReaderUpdateProgressPublishable$p(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateProgressPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method private final completeCancel()V
    .locals 3

    .line 139
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "completeCancel"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 140
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCancelledPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final completeDownload()V
    .locals 3

    .line 134
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "downloadComplete"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 135
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateDownloadComplete:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final completeInstall()V
    .locals 3

    .line 129
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "completeInstall"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 130
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCompletePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final fail(Ljava/lang/Throwable;)V
    .locals 3

    .line 144
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "fail"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 146
    instance-of v0, p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Unexpected error"

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    check-cast p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateExceptionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 5

    monitor-enter p0

    .line 102
    :try_start_0
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const-string v1, "cancel"

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 103
    iget-object v1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->installJob:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const-string v1, "Installation already cancelled"

    new-array v3, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 107
    invoke-static {v1, v3, v4, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 103
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez v3, :cond_2

    .line 109
    const-string v1, "Installation not in progress"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancelAndJoin()V
    .locals 3

    .line 114
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelAndJoin"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 115
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateInstaller$cancelAndJoin$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/core/readerupdate/UpdateInstaller$cancelAndJoin$1;-><init>(Lcom/stripe/core/readerupdate/UpdateInstaller;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getReaderUpdateCancelledObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCancelledObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderUpdateCompleteObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateCompleteObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderUpdateDownloadCompleteObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateDownloadCompleteObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderUpdateExceptionObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderUpdateProgressObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->readerUpdateProgressObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final declared-synchronized install(Lcom/stripe/core/readerupdate/UpdateSummary;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "summary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const-string v1, "install"

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    iget-object v1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->installJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    .line 47
    const-string p1, "Installation already in progress"

    new-array v1, v2, [Lkotlin/Pair;

    invoke-virtual {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/UpdateInstaller;->reset()V

    .line 54
    const-string v1, "Downloading updates..."

    new-array v3, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :try_start_2
    new-instance v1, Lcom/stripe/core/readerupdate/UpdateInstaller$install$updates$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/stripe/core/readerupdate/UpdateInstaller$install$updates$1;-><init>(Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/core/readerupdate/UpdateSummary;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v3, v1, p1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/UpdatePackage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :try_start_3
    invoke-direct {p0}, Lcom/stripe/core/readerupdate/UpdateInstaller;->completeDownload()V

    .line 65
    const-string v1, "Starting installation job..."

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 66
    iget-object v4, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/core/readerupdate/UpdateInstaller$install$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/stripe/core/readerupdate/UpdateInstaller$install$1;-><init>(Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->installJob:Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 60
    :try_start_4
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->fail(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final join()V
    .locals 3

    .line 122
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "join"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 123
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateInstaller$join$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/core/readerupdate/UpdateInstaller$join$1;-><init>(Lcom/stripe/core/readerupdate/UpdateInstaller;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final reset()V
    .locals 3

    .line 154
    sget-object v0, Lcom/stripe/core/readerupdate/UpdateInstaller;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reset"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller;->installJob:Lkotlinx/coroutines/Job;

    return-void
.end method
