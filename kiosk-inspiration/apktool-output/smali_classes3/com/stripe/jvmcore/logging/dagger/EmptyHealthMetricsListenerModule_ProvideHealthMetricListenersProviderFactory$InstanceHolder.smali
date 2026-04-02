.class final Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory$InstanceHolder;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;

    return-object v0
.end method
