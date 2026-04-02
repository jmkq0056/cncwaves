.class public final Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;
.super Ljava/lang/Object;
.source "OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final embeddedAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
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
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;->embeddedAdapterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSdkStatusRepository(Lcom/stripe/stripeterminal/internal/common/Adapter;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;
    .locals 1

    .line 47
    sget-object v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;->Companion:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;->provideSdkStatusRepository(Lcom/stripe/stripeterminal/internal/common/Adapter;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;->embeddedAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;->provideSdkStatusRepository(Lcom/stripe/stripeterminal/internal/common/Adapter;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    move-result-object v0

    return-object v0
.end method
