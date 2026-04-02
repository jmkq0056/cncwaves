.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultLocalIpAddressProvider()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule;->Companion:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule$Companion;->provideDefaultLocalIpAddressProvider()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;->provideDefaultLocalIpAddressProvider()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;->get()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;

    move-result-object v0

    return-object v0
.end method
