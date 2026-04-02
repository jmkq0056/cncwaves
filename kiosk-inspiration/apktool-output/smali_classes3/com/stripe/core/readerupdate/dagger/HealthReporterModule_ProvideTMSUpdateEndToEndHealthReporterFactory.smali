.class public final Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;
.super Ljava/lang/Object;
.source "HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;->healthLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;>;)",
            "Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTMSUpdateEndToEndHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;->provideTMSUpdateEndToEndHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;->healthLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static {v0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;->provideTMSUpdateEndToEndHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory;->get()Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    move-result-object v0

    return-object v0
.end method
