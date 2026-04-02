.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;
.super Ljava/lang/Object;
.source "StripeHealthCheckerStateMachine_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
        ">;"
    }
.end annotation


# instance fields
.field private final offlineStableHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineUnstableHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final onlineStableHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final onlineUnstableHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->unknownHandlerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->onlineStableHandlerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->offlineStableHandlerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->onlineUnstableHandlerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->offlineUnstableHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;
    .locals 6

    .line 65
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->unknownHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->onlineStableHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->offlineStableHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->onlineUnstableHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->offlineUnstableHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    move-result-object v0

    return-object v0
.end method
