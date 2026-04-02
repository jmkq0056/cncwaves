.class public interface abstract Lcom/stripe/cots/common/CotsClientInterface;
.super Ljava/lang/Object;
.source "CotsClientInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J@\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u00a6@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\u0012H\u00a6@\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H&J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u00a6@\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\nH\u00a6@\u00a2\u0006\u0002\u0010\u001eJ\u000e\u0010\u001f\u001a\u00020\u0012H\u00a6@\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010 \u001a\u0004\u0018\u00010\u0008H\u00a6@\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010!\u001a\u00020\u0012H&J\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$H\u00a6@\u00a2\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020(H\u00a6@\u00a2\u0006\u0002\u0010)J\u0010\u0010*\u001a\u0004\u0018\u00010+H\u00a6@\u00a2\u0006\u0002\u0010\u0013R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006,\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/cots/common/CotsClientInterface;",
        "",
        "disconnectFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getDisconnectFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "activate",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "sessionToken",
        "",
        "rpcSessionToken",
        "clientType",
        "clientVersion",
        "deviceUuid",
        "countryCode",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelCollectPayment",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkDeviceCompatibility",
        "Lcom/stripe/cots/common/CotsError;",
        "collectPayment",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "parameters",
        "Lcom/stripe/cots/common/CotsCollectionParameters;",
        "(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectPin",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
        "amount",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disconnect",
        "discover",
        "initializeKeys",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setFakedContactlessOutcome",
        "fakedContactlessOutcomeType",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateReader",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "common_release"
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
.method public abstract activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation
.end method

.method public abstract cancelCollectPayment(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract checkDeviceCompatibility()Lcom/stripe/cots/common/CotsError;
.end method

.method public abstract collectPayment(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/common/CotsCollectionParameters;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation
.end method

.method public abstract collectPin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation
.end method

.method public abstract disconnect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation
.end method

.method public abstract discover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation
.end method

.method public abstract getDisconnectFlow()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initializeKeys()V
.end method

.method public abstract killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateReader(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
