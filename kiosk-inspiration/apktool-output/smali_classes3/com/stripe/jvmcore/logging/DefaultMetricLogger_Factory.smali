.class public final Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;
.super Ljava/lang/Object;
.source "DefaultMetricLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/DefaultMetricLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final batchDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->batchDispatcherProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;)Lcom/stripe/jvmcore/logging/DefaultMetricLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;",
            "Lcom/stripe/time/Clock;",
            ")",
            "Lcom/stripe/jvmcore/logging/DefaultMetricLogger;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;-><init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/DefaultMetricLogger;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->batchDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/time/Clock;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->newInstance(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;)Lcom/stripe/jvmcore/logging/DefaultMetricLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->get()Lcom/stripe/jvmcore/logging/DefaultMetricLogger;

    move-result-object v0

    return-object v0
.end method
