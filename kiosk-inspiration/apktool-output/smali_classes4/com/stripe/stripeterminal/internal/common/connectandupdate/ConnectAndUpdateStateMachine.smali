.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;
.super Lcom/stripe/statemachine/StateMachine;
.source "ConnectAndUpdateStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectAndUpdateStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectAndUpdateStateMachine.kt\ncom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n1855#2,2:105\n*S KotlinDebug\n*F\n+ 1 ConnectAndUpdateStateMachine.kt\ncom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine\n*L\n47#1:105,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001BW\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\u0003H\u0002J.\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0008\u0010!\u001a\u00020\u001bH\u0002J\u0008\u0010\"\u001a\u00020\u001bH\u0002J\u001e\u0010#\u001a\u00020\u001b2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
        "Lcom/stripe/statemachine/StateMachine;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
        "emptyHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;",
        "checkForUpdateHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;",
        "connectHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
        "rebootHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;",
        "disconnectHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;",
        "discoveryHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;",
        "installUpdatesHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
        "sessionHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;",
        "readerInfoHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;",
        "cancelledHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
        "(Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;)V",
        "getDataOrDefault",
        "onStateChanging",
        "",
        "to",
        "from",
        "data",
        "reason",
        "",
        "registerHandlers",
        "setInitialState",
        "update",
        "updateSummary",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "connectionSummary",
        "Lcom/stripe/core/readerconnection/ConnectionSummary;",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cancelledHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

.field private final checkForUpdateHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;

.field private final connectHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

.field private final disconnectHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;

.field private final discoveryHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

.field private final emptyHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;

.field private final installUpdatesHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

.field private final readerInfoHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;

.field private final rebootHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;

.field private final sessionHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "emptyHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkForUpdateHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rebootHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installUpdatesHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionHandler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoHandler"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelledHandler"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/stripe/statemachine/StateMachine;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->emptyHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;

    .line 31
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->checkForUpdateHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;

    .line 32
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->connectHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

    .line 33
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->rebootHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;

    .line 34
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->disconnectHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;

    .line 35
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->discoveryHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

    .line 36
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->installUpdatesHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

    .line 37
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->sessionHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;

    .line 38
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->readerInfoHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;

    .line 39
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->cancelledHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

    .line 43
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->registerHandlers()V

    .line 44
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->setInitialState()V

    return-void
.end method

.method private final getDataOrDefault()Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;-><init>(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object v0
.end method

.method private final registerHandlers()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    .line 48
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 58
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->cancelledHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 57
    :pswitch_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->readerInfoHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 56
    :pswitch_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->sessionHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 55
    :pswitch_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->installUpdatesHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 54
    :pswitch_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->discoveryHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 53
    :pswitch_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->disconnectHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 52
    :pswitch_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->rebootHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 51
    :pswitch_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->connectHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 50
    :pswitch_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->checkForUpdateHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    goto :goto_1

    .line 49
    :pswitch_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->emptyHandler:Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;

    .line 59
    :goto_1
    move-object v2, p0

    check-cast v2, Lcom/stripe/statemachine/StateMachine;

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;->register(Lcom/stripe/statemachine/StateMachine;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setInitialState()V
    .locals 4

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/stripe/statemachine/StateMachine;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->EMPTY:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic update$default(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerconnection/ConnectionSummary;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 74
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->update(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerconnection/ConnectionSummary;)V

    return-void
.end method


# virtual methods
.method protected onStateChanging(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Ljava/lang/String;)V
    .locals 2

    const-string p3, "to"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachineKt;->access$getLOGGER$p()Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    invoke-virtual {p3, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public bridge synthetic onStateChanging(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    check-cast p3, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->onStateChanging(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Ljava/lang/String;)V

    return-void
.end method

.method public final update(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerconnection/ConnectionSummary;)V
    .locals 3

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->getDataOrDefault()Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 82
    invoke-static {v0, p2, v1, v2, v1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->copy$default(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 85
    invoke-static {v0, v1, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->copy$default(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    move-result-object v0

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->updateData(Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
