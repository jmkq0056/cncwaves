.class public final Lcom/stripe/offlinemode/storage/OfflineApiRequestDaoKt;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "update",
        "",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;",
        "entity",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        "(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "offlinemode_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final update(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

    move-result-wide v1

    .line 222
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getAccountId()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getOfflineId()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getConnectionId()J

    move-result-wide v5

    .line 225
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v7

    .line 226
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getStripeEntityId()Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptedData()[B

    move-result-object v9

    .line 228
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptionIv()[B

    move-result-object v10

    move-object v0, p0

    move-object v11, p2

    .line 220
    invoke-interface/range {v0 .. v11}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->updatePaymentIntentId(JLjava/lang/String;Ljava/lang/String;JLcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;[B[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    .line 231
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
