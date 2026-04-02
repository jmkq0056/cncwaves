.class public final Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;
.super Ljava/lang/Object;
.source "OfflineCredentialsProviderProxy.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
        "credentialsProvider",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
        "offlineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)V",
        "fetchOfflineCredentials",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;",
        "reader",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "connection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "location",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveAccountId",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final credentialsProvider:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

.field private final offlineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;


# direct methods
.method public constructor <init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)V
    .locals 1

    const-string v0, "credentialsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;->credentialsProvider:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    .line 19
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;->offlineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    return-void
.end method


# virtual methods
.method public fetchOfflineCredentials(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;->offlineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->getListener()Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    move-result-object v0

    instance-of v1, v0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;->credentialsProvider:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    check-cast v0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    .line 27
    :cond_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;->fetchOfflineCredentials(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retrieveAccountId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;->credentialsProvider:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    invoke-virtual {v0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->retrieveAccountId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
