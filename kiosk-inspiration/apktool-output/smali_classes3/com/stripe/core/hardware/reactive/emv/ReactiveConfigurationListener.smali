.class public final Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;
.super Ljava/lang/Object;
.source "ReactiveConfigurationListener.kt"

# interfaces
.implements Lcom/stripe/hardware/emv/ConfigurationListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0016J\u001c\u0010\u001d\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0011H\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0016R#\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\tR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\tR\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\tR\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\tR\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
        "Lcom/stripe/hardware/emv/ConfigurationListener;",
        "()V",
        "readerAidObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "",
        "",
        "getReaderAidObservable",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "readerAidPublishable",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "readerDisplayObservable",
        "",
        "getReaderDisplayObservable",
        "readerDisplayPublishable",
        "readerSettingsObservable",
        "Lcom/stripe/hardware/emv/ReaderSettings;",
        "getReaderSettingsObservable",
        "readerSettingsPublishable",
        "readerUpdateAidObservable",
        "getReaderUpdateAidObservable",
        "readerUpdateAidPublishable",
        "readerUpdateSettingsObservable",
        "getReaderUpdateSettingsObservable",
        "readerUpdateSettingsPublishable",
        "handleDisplaySettings",
        "",
        "success",
        "handleReaderAid",
        "aidData",
        "handleReaderSettings",
        "readerSettings",
        "handleUpdateReaderAidData",
        "handleUpdateReaderSettings",
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
.field private final readerAidObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerAidPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readerDisplayObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDisplayPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerSettingsObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final readerSettingsPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateAidObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateAidPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateSettingsObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateSettingsPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerAidPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 13
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerDisplayPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 14
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerSettingsPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 15
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateAidPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 16
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateSettingsPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 19
    check-cast v0, Lio/reactivex/rxjava3/core/Observable;

    iput-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerAidObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 20
    check-cast v2, Lio/reactivex/rxjava3/core/Observable;

    iput-object v2, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerDisplayObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 21
    check-cast v3, Lio/reactivex/rxjava3/core/Observable;

    iput-object v3, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerSettingsObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 22
    check-cast v4, Lio/reactivex/rxjava3/core/Observable;

    iput-object v4, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateAidObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 23
    check-cast v5, Lio/reactivex/rxjava3/core/Observable;

    iput-object v5, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateSettingsObservable:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method


# virtual methods
.method public final getReaderAidObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerAidObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderDisplayObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerDisplayObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderSettingsObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerSettingsObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderUpdateAidObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateAidObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public final getReaderUpdateSettingsObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateSettingsObservable:Lio/reactivex/rxjava3/core/Observable;

    return-object v0
.end method

.method public handleDisplaySettings(Z)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerDisplayPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderAid(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aidData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerAidPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReaderSettings(Lcom/stripe/hardware/emv/ReaderSettings;)V
    .locals 1

    const-string v0, "readerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerSettingsPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUpdateReaderAidData(Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateAidPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUpdateReaderSettings(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->readerUpdateSettingsPublishable:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
