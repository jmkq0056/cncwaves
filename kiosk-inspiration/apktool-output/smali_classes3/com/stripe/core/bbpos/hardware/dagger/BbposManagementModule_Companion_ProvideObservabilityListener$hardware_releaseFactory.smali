.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;
.super Ljava/lang/Object;
.source "BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
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

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final structuredEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
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
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->structuredEventLoggerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideObservabilityListener$hardware_release(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
    .locals 1

    .line 61
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule;->Companion:Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion;->provideObservabilityListener$hardware_release(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->structuredEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/StructuredEventLogger;

    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->provideObservabilityListener$hardware_release(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory;->get()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object v0

    return-object v0
.end method
