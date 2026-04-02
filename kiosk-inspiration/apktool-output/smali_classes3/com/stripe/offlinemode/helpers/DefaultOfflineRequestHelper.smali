.class public final Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;
.super Ljava/lang/Object;
.source "DefaultOfflineRequestHelper.kt"

# interfaces
.implements Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\"\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
        "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/util/List;
    .locals 16
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

    const-string v0, "confirmPaymentIntentRequest"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    .line 46
    new-instance v15, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v15, v2, v3, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v13, 0x7ef

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 47
    invoke-static/range {v1 .. v14}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v15, v1, v2}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->addConfirmPaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/FormBodyExtensionsKt;->keyValuePairs(Lokhttp3/FormBody;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBody(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/util/List;
    .locals 14
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

    const-string v0, "confirmSetupIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;

    .line 60
    new-instance v1, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v12, 0x5f

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    .line 61
    invoke-static/range {v4 .. v13}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;->addConfirmSetupIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/FormBodyExtensionsKt;->keyValuePairs(Lokhttp3/FormBody;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBody(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/util/List;
    .locals 4
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

    const-string v0, "createPaymentIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;

    .line 39
    new-instance v1, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;->addCreatePaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/FormBodyExtensionsKt;->keyValuePairs(Lokhttp3/FormBody;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBody(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/util/List;
    .locals 4
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

    const-string v0, "createSetupIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    .line 53
    new-instance v1, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->addCreateSetupIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/FormBodyExtensionsKt;->keyValuePairs(Lokhttp3/FormBody;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/util/Map;
    .locals 1
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

    const-string v0, "confirmPaymentIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/util/Map;
    .locals 1
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

    const-string v0, "confirmSetupIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/util/Map;
    .locals 1
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

    const-string v0, "createPaymentIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/util/Map;
    .locals 1
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

    const-string v0, "createSetupIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/lang/String;
    .locals 2

    const-string v0, "confirmPaymentIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v1/payment_intents/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/confirm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/lang/String;
    .locals 2

    const-string v0, "confirmSetupIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v1/setup_intents/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/confirm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/lang/String;
    .locals 1

    const-string v0, "createPaymentIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string p1, "v1/payment_intents"

    return-object p1
.end method

.method public getUrl(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/lang/String;
    .locals 1

    const-string v0, "createSetupIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-string p1, "v1/setup_intents"

    return-object p1
.end method
