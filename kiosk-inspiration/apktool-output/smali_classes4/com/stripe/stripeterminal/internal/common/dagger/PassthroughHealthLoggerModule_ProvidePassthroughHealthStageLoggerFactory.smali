.class public final Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;
.super Ljava/lang/Object;
.source "PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/HealthLogger<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
        ">;>;"
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
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePassthroughHealthStageLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;->providePassthroughHealthStageLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;->providePassthroughHealthStageLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;->get()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    return-object v0
.end method
