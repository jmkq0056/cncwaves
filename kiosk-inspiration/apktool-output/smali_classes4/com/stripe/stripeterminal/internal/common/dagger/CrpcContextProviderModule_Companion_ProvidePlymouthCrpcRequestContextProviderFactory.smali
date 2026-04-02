.class public final Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;
.super Ljava/lang/Object;
.source "CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rpcSessionTokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalStatusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->rpcSessionTokenProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->localIpAddressProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePlymouthCrpcRequestContextProvider(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;
    .locals 6

    .line 75
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule;->Companion:Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule$Companion;->providePlymouthCrpcRequestContextProvider(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->rpcSessionTokenProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->localIpAddressProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->providePlymouthCrpcRequestContextProvider(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->get()Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    move-result-object v0

    return-object v0
.end method
