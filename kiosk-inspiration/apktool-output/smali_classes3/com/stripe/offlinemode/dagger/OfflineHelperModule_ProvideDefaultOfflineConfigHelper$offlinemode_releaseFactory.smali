.class public final Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;
.super Ljava/lang/Object;
.source "OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeLocationConfigRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
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

.field private final offlineRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyOfflineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "settingsRepositoryProvider",
            "offlineRepositoryProvider",
            "proxyOfflineListenerProvider",
            "activeLocationConfigRepositoryProvider",
            "loggerFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->activeLocationConfigRepositoryProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "settingsRepositoryProvider",
            "offlineRepositoryProvider",
            "proxyOfflineListenerProvider",
            "activeLocationConfigRepositoryProvider",
            "loggerFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultOfflineConfigHelper$offlinemode_release(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "settingsRepository",
            "offlineRepository",
            "proxyOfflineListener",
            "activeLocationConfigRepository",
            "loggerFactory"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineHelperModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;->provideDefaultOfflineConfigHelper$offlinemode_release(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/transaction/SettingsRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    iget-object v3, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->activeLocationConfigRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/device/ActiveLocationConfigRepository;

    iget-object v4, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->provideDefaultOfflineConfigHelper$offlinemode_release(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->get()Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    move-result-object v0

    return-object v0
.end method
