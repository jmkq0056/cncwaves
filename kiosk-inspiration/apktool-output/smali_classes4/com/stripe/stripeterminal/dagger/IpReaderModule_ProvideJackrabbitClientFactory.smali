.class public final Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;
.super Ljava/lang/Object;
.source "IpReaderModule_ProvideJackrabbitClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final kmpCrpcClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->kmpCrpcClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;-><init>(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideJackrabbitClient(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/IpReaderModule;->provideJackrabbitClient(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->kmpCrpcClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->provideJackrabbitClient(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->get()Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    move-result-object v0

    return-object v0
.end method
