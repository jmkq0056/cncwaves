.class public final Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;
.super Ljava/lang/Object;
.source "FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/HealthLogger<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final builderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;"
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
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;->builderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;)",
            "Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFormsStageHealthMetrics$forms(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;->INSTANCE:Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;->provideFormsStageHealthMetrics$forms(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;->builderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;->provideFormsStageHealthMetrics$forms(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;->get()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    return-object v0
.end method
