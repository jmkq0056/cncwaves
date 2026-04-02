.class public final Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;
.super Ljava/lang/Object;
.source "ReaderEventApiModule_ProvideReaderEventApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;->crpcClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReaderEventApi(Ldagger/Lazy;)Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule;->provideReaderEventApi(Ldagger/Lazy;)Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;->crpcClientProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;->provideReaderEventApi(Ldagger/Lazy;)Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/ReaderEventApiModule_ProvideReaderEventApiFactory;->get()Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;

    move-result-object v0

    return-object v0
.end method
