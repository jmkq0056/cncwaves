.class public final Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;
.super Ljava/lang/Object;
.source "IotApiModule_ProvideIotApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;",
        ">;"
    }
.end annotation


# instance fields
.field private final crpcClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
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
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;->crpcClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIotApi(Ldagger/Lazy;)Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/stripe/jvmcore/client/dagger/IotApiModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/IotApiModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/client/dagger/IotApiModule;->provideIotApi(Ldagger/Lazy;)Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;->crpcClientProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;->provideIotApi(Ldagger/Lazy;)Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/IotApiModule_ProvideIotApiFactory;->get()Lcom/stripe/proto/terminal/terminal/pub/api/armada/IotApi;

    move-result-object v0

    return-object v0
.end method
