.class public final Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;
.super Ljava/lang/Object;
.source "WardenModule_ProvideWardenApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/proto/api/warden/WardenApi;",
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
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;->crpcClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideWardenApi(Ldagger/Lazy;)Lcom/stripe/proto/api/warden/WardenApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/proto/api/warden/WardenApi;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/stripe/jvmcore/client/dagger/WardenModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/WardenModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/client/dagger/WardenModule;->provideWardenApi(Ldagger/Lazy;)Lcom/stripe/proto/api/warden/WardenApi;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/api/warden/WardenApi;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/proto/api/warden/WardenApi;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;->crpcClientProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;->provideWardenApi(Ldagger/Lazy;)Lcom/stripe/proto/api/warden/WardenApi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/WardenModule_ProvideWardenApiFactory;->get()Lcom/stripe/proto/api/warden/WardenApi;

    move-result-object v0

    return-object v0
.end method
