.class public final Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;
.super Ljava/lang/Object;
.source "JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;-><init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)V

    return-object v0
.end method

.method public static provideRemoteOfflineStatisticsRepository(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;->provideRemoteOfflineStatisticsRepository()Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    invoke-static {v0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;->provideRemoteOfflineStatisticsRepository(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;->get()Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;

    move-result-object v0

    return-object v0
.end method
