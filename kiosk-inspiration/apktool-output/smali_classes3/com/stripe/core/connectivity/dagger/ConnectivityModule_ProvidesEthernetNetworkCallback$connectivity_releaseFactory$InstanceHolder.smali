.class final Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;

    invoke-direct {v0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;-><init>()V

    sput-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory;

    return-object v0
.end method
