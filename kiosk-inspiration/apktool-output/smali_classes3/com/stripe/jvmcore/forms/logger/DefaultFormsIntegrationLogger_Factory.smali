.class public final Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;
.super Ljava/lang/Object;
.source "DefaultFormsIntegrationLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;->stageHealthMetricsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;
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
            "Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;
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
            "Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;->stageHealthMetricsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static {v0}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;->newInstance(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger_Factory;->get()Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;

    move-result-object v0

    return-object v0
.end method
