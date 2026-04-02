.class public final Lcom/stripe/jvmcore/logging/CompositeDispatcher;
.super Ljava/lang/Object;
.source "CompositeDispatcher.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B)\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001c\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/CompositeDispatcher;",
        "T",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "clientLogger",
        "gator",
        "observabilityFeatureFlags",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
        "(Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;)V",
        "dispatch",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
        "batch",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logging"
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
.field private final clientLogger:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gator:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final observabilityFeatureFlags:Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "TT;>;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "TT;>;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ")V"
        }
    .end annotation

    const-string v0, "clientLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityFeatureFlags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/CompositeDispatcher;->clientLogger:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    .line 12
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/CompositeDispatcher;->gator:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    .line 13
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/CompositeDispatcher;->observabilityFeatureFlags:Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/CompositeDispatcher;->observabilityFeatureFlags:Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;->getEnableClientLoggerDispatcher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/CompositeDispatcher;->clientLogger:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;->dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/CompositeDispatcher;->gator:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;->dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
