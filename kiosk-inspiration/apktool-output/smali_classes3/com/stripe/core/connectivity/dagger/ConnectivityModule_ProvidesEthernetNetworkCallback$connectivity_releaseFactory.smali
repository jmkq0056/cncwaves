.class public final Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
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

.method public static create()Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory$InstanceHolder;->access$000()Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesEthernetNetworkCallback$connectivity_release()Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule;

    invoke-virtual {v0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->providesEthernetNetworkCallback$connectivity_release()Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;->providesEthernetNetworkCallback$connectivity_release()Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;->get()Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    move-result-object v0

    return-object v0
.end method
