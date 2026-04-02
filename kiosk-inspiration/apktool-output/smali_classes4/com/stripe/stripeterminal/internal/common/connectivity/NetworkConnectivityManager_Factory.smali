.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;
.super Ljava/lang/Object;
.source "NetworkConnectivityManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
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
            "Landroid/net/ConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;->connectivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/net/ConnectivityManager;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;
    .locals 1

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;->newInstance(Landroid/net/ConnectivityManager;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    move-result-object v0

    return-object v0
.end method
