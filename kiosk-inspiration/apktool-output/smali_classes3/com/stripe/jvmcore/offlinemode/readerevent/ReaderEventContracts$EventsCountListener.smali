.class public interface abstract Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;
.super Ljava/lang/Object;
.source "ReaderEventContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventsCountListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0002\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\t\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
        "",
        "notifyUnAckedEvents",
        "Lkotlinx/coroutines/Job;",
        "api",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "count",
        "",
        "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "offlinemode"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract notifyUnAckedEvents(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
