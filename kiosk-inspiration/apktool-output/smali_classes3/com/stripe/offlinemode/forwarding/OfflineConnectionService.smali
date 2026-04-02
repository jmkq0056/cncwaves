.class public interface abstract Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;
.super Ljava/lang/Object;
.source "OfflineConnectionService.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/AuthTokenListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J*\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u00a6@\u00a2\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u00a6@\u00a2\u0006\u0002\u0010\u0013R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0014\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
        "Lcom/stripe/offlinemode/forwarding/AuthTokenListener;",
        "hasConnectionToken",
        "",
        "getHasConnectionToken",
        "()Z",
        "setHasConnectionToken",
        "(Z)V",
        "redeemOfflineConnection",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "request",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "traceContext",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveAccount",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
        "(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "offlinemode_release"
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
.method public abstract getHasConnectionToken()Z
.end method

.method public abstract redeemOfflineConnection(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract retrieveAccount(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setHasConnectionToken(Z)V
.end method
