.class public final Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;
.super Ljava/lang/Object;
.source "ReactiveReaderUpdateListener.kt"

# interfaces
.implements Lcom/stripe/core/hardware/updates/ReaderUpdateListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001d\u001a\u00020\u0005H\u0016J\u0008\u0010\u001e\u001a\u00020\u0005H\u0016J\u0008\u0010\u001f\u001a\u00020\u0005H\u0016J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0016H\u0016J\u0012\u0010\"\u001a\u00020\u00052\u0008\u0010#\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u001aH\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0007R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
        "()V",
        "readerConfigUpdateObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "getReaderConfigUpdateObservable",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "readerConfigUpdatePublishable",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "readerFirmwareUpdateObservable",
        "getReaderFirmwareUpdateObservable",
        "readerFirmwareUpdatePublishable",
        "readerKeyUpdateObservable",
        "getReaderKeyUpdateObservable",
        "readerKeyUpdatePublishable",
        "readerTargetVersionObservable",
        "Lcom/stripe/core/hardware/Optional;",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "getReaderTargetVersionObservable",
        "readerTargetVersionPublishable",
        "readerUpdateExceptionObservable",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
        "getReaderUpdateExceptionObservable",
        "readerUpdateExceptionPublishable",
        "readerUpdateProgressObservable",
        "",
        "getReaderUpdateProgressObservable",
        "readerUpdateProgressPublishable",
        "handleConfigUpdateComplete",
        "handleFirmwareUpdateComplete",
        "handleKeyUpdateComplete",
        "handleReaderUpdateException",
        "e",
        "handleTargetReaderVersion",
        "version",
        "handleUpdateProgress",
        "progress",
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
.field private final readerConfigUpdateObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerConfigUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerFirmwareUpdateObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerFirmwareUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerKeyUpdateObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerKeyUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerTargetVersionObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Optional<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerTargetVersionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/stripe/core/hardware/Optional<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;"
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


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerConfigUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 15
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerFirmwareUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 16
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerKeyUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 17
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerTargetVersionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 18
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateExceptionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 19
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateProgressPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 22
    check-cast v4, Lio/reactivex/rxjava3/core/Observable;

    iput-object v4, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerTargetVersionObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 23
    check-cast v5, Lio/reactivex/rxjava3/core/Observable;

    iput-object v5, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 24
    check-cast v0, Lio/reactivex/rxjava3/core/Observable;

    iput-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerConfigUpdateObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 25
    check-cast v2, Lio/reactivex/rxjava3/core/Observable;

    iput-object v2, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerFirmwareUpdateObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 26
    check-cast v3, Lio/reactivex/rxjava3/core/Observable;

    iput-object v3, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerKeyUpdateObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 27
    check-cast v6, Lio/reactivex/rxjava3/core/Observable;

    iput-object v6, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateProgressObservable:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method


# virtual methods
.method public final getReaderConfigUpdateObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerConfigUpdateObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderFirmwareUpdateObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerFirmwareUpdateObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderKeyUpdateObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerKeyUpdateObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderTargetVersionObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Optional<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerTargetVersionObservable:Lio/reactivex/rxjava3/core/Observable;

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

    .line 23
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateExceptionObservable:Lio/reactivex/rxjava3/core/Observable;

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

    .line 27
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateProgressObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public handleConfigUpdateComplete()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerConfigUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleFirmwareUpdateComplete()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerFirmwareUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleKeyUpdateComplete()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerKeyUpdatePublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateExceptionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleTargetReaderVersion(Lcom/stripe/core/hardware/updates/ReaderVersion;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerTargetVersionPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Lcom/stripe/core/hardware/Optional;->Companion:Lcom/stripe/core/hardware/Optional$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/core/hardware/Optional$Companion;->fromNullable(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUpdateProgress(F)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->readerUpdateProgressPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
