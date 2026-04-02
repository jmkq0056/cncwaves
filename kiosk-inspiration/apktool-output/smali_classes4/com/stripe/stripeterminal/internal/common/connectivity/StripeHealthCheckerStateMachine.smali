.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;
.super Lcom/stripe/statemachine/StateMachine;
.source "StripeHealthCheckerStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeHealthCheckerStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeHealthCheckerStateMachine.kt\ncom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1855#2,2:57\n*S KotlinDebug\n*F\n+ 1 StripeHealthCheckerStateMachine.kt\ncom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine\n*L\n24#1:57,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B/\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0003H\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
        "Lcom/stripe/statemachine/StateMachine;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;",
        "unknownHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;",
        "onlineStableHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;",
        "offlineStableHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;",
        "onlineUnstableHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;",
        "offlineUnstableHandler",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;",
        "(Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;)V",
        "getDataOrDefault",
        "registerHandlers",
        "",
        "reset",
        "state",
        "setInitialState",
        "update",
        "reachable",
        "",
        "connectivity_release"
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
.field private final offlineStableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;

.field private final offlineUnstableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;

.field private final onlineStableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;

.field private final onlineUnstableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;

.field private final unknownHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "unknownHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineStableHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineStableHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineUnstableHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineUnstableHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/stripe/statemachine/StateMachine;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->unknownHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;

    .line 14
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->onlineStableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;

    .line 15
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->offlineStableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;

    .line 16
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->onlineUnstableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;

    .line 17
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->offlineUnstableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;

    .line 20
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->registerHandlers()V

    .line 21
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->UNKNOWN:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->setInitialState(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V

    return-void
.end method

.method private final getDataOrDefault()Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;-><init>(Z)V

    :cond_0
    return-object v0
.end method

.method private final registerHandlers()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    .line 25
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->offlineUnstableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->offlineStableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->onlineUnstableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    goto :goto_1

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->onlineStableHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    goto :goto_1

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->unknownHandler:Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    .line 31
    :goto_1
    move-object v2, p0

    check-cast v2, Lcom/stripe/statemachine/StateMachine;

    invoke-virtual {v1, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->register(Lcom/stripe/statemachine/StateMachine;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final setInitialState(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V
    .locals 3

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/stripe/statemachine/StateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final reset(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->setInitialState(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V

    return-void
.end method

.method public final update(Z)V
    .locals 1

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->getDataOrDefault()Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;->copy(Z)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->updateData(Ljava/lang/Object;)V

    .line 49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
