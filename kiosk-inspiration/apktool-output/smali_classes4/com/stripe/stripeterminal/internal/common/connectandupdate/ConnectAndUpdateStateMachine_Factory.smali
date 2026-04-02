.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;
.super Ljava/lang/Object;
.source "ConnectAndUpdateStateMachine_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
        ">;"
    }
.end annotation


# instance fields
.field private final cancelledHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final checkForUpdateHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final connectHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final emptyHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final installUpdatesHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final rebootHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->emptyHandlerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->checkForUpdateHandlerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->connectHandlerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->rebootHandlerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->disconnectHandlerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->discoveryHandlerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->installUpdatesHandlerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->sessionHandlerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->readerInfoHandlerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->cancelledHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;
    .locals 11

    .line 93
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;
    .locals 11

    .line 70
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->emptyHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->checkForUpdateHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->connectHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->rebootHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->disconnectHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->discoveryHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->installUpdatesHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->sessionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->readerInfoHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->cancelledHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

    invoke-static/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    move-result-object v0

    return-object v0
.end method
