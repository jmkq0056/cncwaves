.class public final Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;
.super Ljava/lang/Object;
.source "MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final traceLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->metricLoggerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTraceLoggingRestClientInterceptor(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;
    .locals 1

    .line 58
    sget-object v0, Lcom/stripe/stripeterminal/dagger/MainlandModule;->Companion:Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;->provideTraceLoggingRestClientInterceptor(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->metricLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/MetricLogger;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/TraceLogger;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->provideTraceLoggingRestClientInterceptor(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->get()Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;

    move-result-object v0

    return-object v0
.end method
