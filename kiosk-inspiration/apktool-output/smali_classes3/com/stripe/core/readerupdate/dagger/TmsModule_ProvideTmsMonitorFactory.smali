.class public final Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;
.super Ljava/lang/Object;
.source "TmsModule_ProvideTmsMonitorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/updater/Monitor<",
        "Lkotlinx/coroutines/flow/Flow<",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final embeddedSoftwareVersionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final updateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->updateControllerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->updateListenerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->embeddedSoftwareVersionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;)",
            "Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTmsMonitor(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Lcom/stripe/core/updater/Monitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ")",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/TmsModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/dagger/TmsModule;->provideTmsMonitor(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Lcom/stripe/core/updater/Monitor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/updater/Monitor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/updater/Monitor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->updateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->updateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v3, p0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->embeddedSoftwareVersionProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->provideTmsMonitor(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Lcom/stripe/core/updater/Monitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsMonitorFactory;->get()Lcom/stripe/core/updater/Monitor;

    move-result-object v0

    return-object v0
.end method
