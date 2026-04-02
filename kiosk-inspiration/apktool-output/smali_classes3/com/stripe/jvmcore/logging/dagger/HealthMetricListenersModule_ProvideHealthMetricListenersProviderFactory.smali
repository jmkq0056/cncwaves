.class public final Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;
.super Ljava/lang/Object;
.source "HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final healthMetricListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;->healthMetricListenersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;>;)",
            "Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHealthMetricListenersProvider(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;->provideHealthMetricListenersProvider(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;->healthMetricListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;->provideHealthMetricListenersProvider(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory;->get()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    move-result-object v0

    return-object v0
.end method
