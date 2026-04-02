.class public final Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;
.super Ljava/lang/Object;
.source "CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final localIpAddressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final posInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->localIpAddressProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRemoteReaderCrpcRequestContextProvider(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;
    .locals 1

    .line 54
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule;->Companion:Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule$Companion;->provideRemoteReaderCrpcRequestContextProvider(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->localIpAddressProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->provideRemoteReaderCrpcRequestContextProvider(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->get()Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    move-result-object v0

    return-object v0
.end method
