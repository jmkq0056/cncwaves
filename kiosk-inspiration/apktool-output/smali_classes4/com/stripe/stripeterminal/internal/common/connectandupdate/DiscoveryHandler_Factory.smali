.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;
.super Ljava/lang/Object;
.source "DiscoveryHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final discoveryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
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
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;->discoveryControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;
    .locals 1

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;->discoveryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

    move-result-object v0

    return-object v0
.end method
