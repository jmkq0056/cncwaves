.class public final Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;
.super Ljava/lang/Object;
.source "ArmadaModule_ProvideUpdateClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final armadaApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/api/armada/ArmadaApi;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final embeddedSoftwareVersionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
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

.field private final offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/api/armada/ArmadaApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->armadaApiProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->embeddedSoftwareVersionProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->featureFlagRepositoryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p8, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/api/armada/ArmadaApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUpdateClient(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/UpdateClient;
    .locals 9

    .line 91
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ArmadaModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;->provideUpdateClient(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/UpdateClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerupdate/UpdateClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerupdate/UpdateClient;
    .locals 9

    .line 71
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->armadaApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/api/armada/ArmadaApi;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/device/DeviceInfoRepository;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->embeddedSoftwareVersionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->featureFlagRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/transaction/SettingsRepository;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v8}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->provideUpdateClient(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/UpdateClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->get()Lcom/stripe/core/readerupdate/UpdateClient;

    move-result-object v0

    return-object v0
.end method
