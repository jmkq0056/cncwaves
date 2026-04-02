.class public interface abstract Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;
.super Ljava/lang/Object;
.source "OfflineRequestHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u000c\u001a\u00020\rH&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\u0008\u001a\u00020\tH&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\n\u001a\u00020\u000bH&J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
        "",
        "getBody",
        "",
        "Lkotlin/Pair;",
        "",
        "confirmPaymentIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "confirmSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "createPaymentIntentRequest",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "createSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "getHeaders",
        "",
        "getUrl",
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
.method public abstract getBody(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBody(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBody(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBody(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrl(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/lang/String;
.end method

.method public abstract getUrl(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/lang/String;
.end method

.method public abstract getUrl(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/lang/String;
.end method

.method public abstract getUrl(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/lang/String;
.end method
