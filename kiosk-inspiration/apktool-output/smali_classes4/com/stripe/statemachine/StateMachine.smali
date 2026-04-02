.class public abstract Lcom/stripe/statemachine/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/statemachine/StateMachine$StateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0004J\r\u0010\r\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008H\u0004J3\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u00012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0015\u00a2\u0006\u0002\u0010\u0017J\u001c\u0010\u0018\u001a\u00020\u00122\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008H\u0002J!\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u00002\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00028\u0001H\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\n\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010\u001cR\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0001X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00018\u0001X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\n\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R&\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00080\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/statemachine/StateMachine;",
        "S",
        "",
        "D",
        "()V",
        "data",
        "Ljava/lang/Object;",
        "handler",
        "Lcom/stripe/statemachine/StateMachine$StateHandler;",
        "previousData",
        "state",
        "stateHandlers",
        "",
        "getData",
        "()Ljava/lang/Object;",
        "getState",
        "getStateHandler",
        "onStateChanging",
        "",
        "to",
        "from",
        "reason",
        "",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V",
        "registerHandler",
        "transitionTo",
        "(Ljava/lang/Object;Ljava/lang/String;)V",
        "updateData",
        "(Ljava/lang/Object;)V",
        "updateDataWithoutCallback",
        "updateStateWithoutCallback",
        "StateHandler",
        "public_release"
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
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private handler:Lcom/stripe/statemachine/StateMachine$StateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/statemachine/StateMachine$StateHandler<",
            "TS;TD;>;"
        }
    .end annotation
.end field

.field private previousData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final stateHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Lcom/stripe/statemachine/StateMachine$StateHandler<",
            "TS;TD;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/stripe/statemachine/StateMachine;->stateHandlers:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$registerHandler(Lcom/stripe/statemachine/StateMachine;Lcom/stripe/statemachine/StateMachine$StateHandler;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/stripe/statemachine/StateMachine;->registerHandler(Lcom/stripe/statemachine/StateMachine$StateHandler;)V

    return-void
.end method

.method public static final synthetic access$updateDataWithoutCallback(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/stripe/statemachine/StateMachine;->updateDataWithoutCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private final registerHandler(Lcom/stripe/statemachine/StateMachine$StateHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/statemachine/StateMachine$StateHandler<",
            "TS;TD;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->stateHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: transitionTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateDataWithoutCallback(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/stripe/statemachine/StateMachine;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->state:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getStateHandler()Lcom/stripe/statemachine/StateMachine$StateHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/statemachine/StateMachine$StateHandler<",
            "TS;TD;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->handler:Lcom/stripe/statemachine/StateMachine$StateHandler;

    return-object v0
.end method

.method protected onStateChanging(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p2, "to"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public transitionTo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->state:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->state:Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/stripe/statemachine/StateMachine;->handler:Lcom/stripe/statemachine/StateMachine$StateHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onExit(Ljava/lang/Object;)V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/stripe/statemachine/StateMachine;->state:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/stripe/statemachine/StateMachine;->stateHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    .line 94
    iput-object v1, p0, Lcom/stripe/statemachine/StateMachine;->handler:Lcom/stripe/statemachine/StateMachine$StateHandler;

    .line 95
    iput-object p1, p0, Lcom/stripe/statemachine/StateMachine;->state:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 98
    iget-object v2, p0, Lcom/stripe/statemachine/StateMachine;->data:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/stripe/statemachine/StateMachine;->onStateChanging(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/stripe/statemachine/StateMachine;->data:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onEnter(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 100
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No handler registered for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final updateData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine;->data:Ljava/lang/Object;

    iput-object v0, p0, Lcom/stripe/statemachine/StateMachine;->previousData:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/stripe/statemachine/StateMachine;->data:Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/stripe/statemachine/StateMachine;->handler:Lcom/stripe/statemachine/StateMachine$StateHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final updateStateWithoutCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/stripe/statemachine/StateMachine;->state:Ljava/lang/Object;

    return-void
.end method
