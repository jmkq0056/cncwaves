.class public final Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;
.super Ljava/lang/Object;
.source "HealthLoggerBuilder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDebugProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final metricLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
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
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->metricLoggerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->isDebugProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->listenersProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;
    .locals 1

    .line 58
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;-><init>(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->metricLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/MetricLogger;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->isDebugProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->listenersProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->newInstance(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->get()Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    move-result-object v0

    return-object v0
.end method
