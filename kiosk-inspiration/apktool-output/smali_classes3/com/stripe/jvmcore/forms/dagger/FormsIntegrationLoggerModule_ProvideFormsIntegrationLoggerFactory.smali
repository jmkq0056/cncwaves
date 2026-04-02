.class public final Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;
.super Ljava/lang/Object;
.source "FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final stageHealthMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
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
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;->stageHealthMetricsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;>;)",
            "Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFormsIntegrationLogger(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;)",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;->INSTANCE:Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;->provideFormsIntegrationLogger(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;->stageHealthMetricsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static {v0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;->provideFormsIntegrationLogger(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;->get()Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    move-result-object v0

    return-object v0
.end method
