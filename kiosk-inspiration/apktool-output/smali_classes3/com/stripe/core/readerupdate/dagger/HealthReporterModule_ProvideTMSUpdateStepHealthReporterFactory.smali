.class public final Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;
.super Ljava/lang/Object;
.source "HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private final healthLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;->healthLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;>;)",
            "Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTMSUpdateStepHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;->provideTMSUpdateStepHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;->healthLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static {v0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;->provideTMSUpdateStepHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory;->get()Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    move-result-object v0

    return-object v0
.end method
