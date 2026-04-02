.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;
.super Ljava/lang/Object;
.source "DefaultOfflineForwardingDelayCalculator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
        ">;"
    }
.end annotation


# instance fields
.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final randomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offlineConfigHelperProvider",
            "randomProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->randomProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offlineConfigHelperProvider",
            "randomProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlin/random/Random;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offlineConfigHelper",
            "random"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;-><init>(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlin/random/Random;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->randomProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/random/Random;

    invoke-static {v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->newInstance(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlin/random/Random;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

    move-result-object v0

    return-object v0
.end method
