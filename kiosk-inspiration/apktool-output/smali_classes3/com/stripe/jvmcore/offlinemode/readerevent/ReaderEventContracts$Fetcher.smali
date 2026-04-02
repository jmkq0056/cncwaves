.class public interface abstract Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;
.super Ljava/lang/Object;
.source "ReaderEventContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Fetcher"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u00a6@\u00a2\u0006\u0002\u0010\u0007\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
        "",
        "getEventsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "api",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract getEventsFlow(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
