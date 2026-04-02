.class public final Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;
.super Ljava/lang/Object;
.source "OfflineLogModule_ProvideEndToEndLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/HealthLogger<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderProvider"
        }
    .end annotation

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
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;->builderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideEndToEndLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    invoke-virtual {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->provideEndToEndLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;->builderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-static {v0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;->provideEndToEndLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;->get()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    return-object v0
.end method
