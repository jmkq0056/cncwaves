.class public final Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;
.super Ljava/lang/Object;
.source "ReaderInfoHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final healthLoggerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final ioProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->ioProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->readerInfoControllerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;
    .locals 6

    .line 69
    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;-><init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->readerInfoControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/hardware/ReaderInfoController;

    iget-object v2, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    iget-object v3, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    iget-object v4, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->newInstance(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->get()Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    move-result-object v0

    return-object v0
.end method
