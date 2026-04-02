.class public Lcom/stripe/statemachine/StateMachine$StateHandler;
.super Ljava/lang/Object;
.source "StateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateHandler"
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
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0008\u0008\u0002\u0010\u0001*\u00020\u0002*\u0008\u0008\u0003\u0010\u0003*\u00020\u00022\u00020\u0002B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u000f\u001a\u0004\u0018\u00018\u0003H\u0016\u00a2\u0006\u0002\u0010\u0007J!\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00018\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00018\u0002H\u0017\u00a2\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00028\u0002H\u0017\u00a2\u0006\u0002\u0010\u0005J\u001f\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00028\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00018\u0003H\u0017\u00a2\u0006\u0002\u0010\u0014J\u001a\u0010\u001a\u001a\u00020\u00112\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nJ\u001f\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00028\u00022\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00028\u0003\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/statemachine/StateMachine$StateHandler;",
        "S",
        "",
        "D",
        "state",
        "(Ljava/lang/Object;)V",
        "getState",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "stateMachine",
        "Lcom/stripe/statemachine/StateMachine;",
        "getStateMachine",
        "()Lcom/stripe/statemachine/StateMachine;",
        "setStateMachine",
        "(Lcom/stripe/statemachine/StateMachine;)V",
        "getData",
        "onEnter",
        "",
        "current",
        "from",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "onExit",
        "to",
        "onUpdate",
        "new",
        "old",
        "register",
        "transitionTo",
        "reason",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;)V",
        "updateDataWithoutCallback",
        "data",
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
.field private final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public stateMachine:Lcom/stripe/statemachine/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/statemachine/StateMachine<",
            "TS;TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/statemachine/StateMachine$StateHandler;->state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 153
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: transitionTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->getStateMachine()Lcom/stripe/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/statemachine/StateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine$StateHandler;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStateMachine()Lcom/stripe/statemachine/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/statemachine/StateMachine<",
            "TS;TD;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/stripe/statemachine/StateMachine$StateHandler;->stateMachine:Lcom/stripe/statemachine/StateMachine;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "stateMachine"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TS;)V"
        }
    .end annotation

    return-void
.end method

.method public onExit(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)V"
        }
    .end annotation

    const-string p2, "new"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final register(Lcom/stripe/statemachine/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/statemachine/StateMachine<",
            "TS;TD;>;)V"
        }
    .end annotation

    const-string v0, "stateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->setStateMachine(Lcom/stripe/statemachine/StateMachine;)V

    .line 142
    invoke-static {p1, p0}, Lcom/stripe/statemachine/StateMachine;->access$registerHandler(Lcom/stripe/statemachine/StateMachine;Lcom/stripe/statemachine/StateMachine$StateHandler;)V

    return-void
.end method

.method public final setStateMachine(Lcom/stripe/statemachine/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/statemachine/StateMachine<",
            "TS;TD;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/statemachine/StateMachine$StateHandler;->stateMachine:Lcom/stripe/statemachine/StateMachine;

    return-void
.end method

.method public final transitionTo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->getStateMachine()Lcom/stripe/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/stripe/statemachine/StateMachine;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDataWithoutCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->getStateMachine()Lcom/stripe/statemachine/StateMachine;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/stripe/statemachine/StateMachine;->access$updateDataWithoutCallback(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;)V

    return-void
.end method
