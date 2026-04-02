.class public final Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;
.super Ljava/lang/Object;
.source "IpReaderModule_ProvideKmpCrpcClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/IpReaderModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;->module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/IpReaderModule;)Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;-><init>(Lcom/stripe/stripeterminal/dagger/IpReaderModule;)V

    return-object v0
.end method

.method public static provideKmpCrpcClient(Lcom/stripe/stripeterminal/dagger/IpReaderModule;)Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/IpReaderModule;->provideKmpCrpcClient()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;->module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;->provideKmpCrpcClient(Lcom/stripe/stripeterminal/dagger/IpReaderModule;)Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;->get()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    move-result-object v0

    return-object v0
.end method
