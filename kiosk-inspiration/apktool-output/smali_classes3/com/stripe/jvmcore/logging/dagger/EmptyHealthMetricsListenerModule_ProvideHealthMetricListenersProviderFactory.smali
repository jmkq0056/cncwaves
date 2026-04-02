.class public final Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;
.super Ljava/lang/Object;
.source "EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideHealthMetricListenersProvider()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;->provideHealthMetricListenersProvider()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;->provideHealthMetricListenersProvider()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;->get()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object v0

    return-object v0
.end method
