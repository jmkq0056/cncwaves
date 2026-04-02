.class public interface abstract Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;
.super Ljava/lang/Object;
.source "OfflineForwardingApiClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0002\u0010\u0008J.\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u00a6@\u00a2\u0006\u0002\u0010\u0014\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0015\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
        "",
        "clearStoredCredentials",
        "",
        "forwardOfflinePayment",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "request",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forwardOfflineSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "retrieveSetupIntent",
        "id",
        "",
        "offlineReader",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "offlineConnection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "offlineLocation",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract clearStoredCredentials()V
.end method

.method public abstract forwardOfflinePayment(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/forwarding/ForwardingApiException;,
            Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;
        }
    .end annotation
.end method

.method public abstract forwardOfflineSetupIntent(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/forwarding/ForwardingApiException;,
            Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;
        }
    .end annotation
.end method

.method public abstract retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
