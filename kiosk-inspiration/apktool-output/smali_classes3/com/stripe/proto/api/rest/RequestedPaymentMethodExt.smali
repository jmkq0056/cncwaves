.class public final Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;
.super Ljava/lang/Object;
.source "RequestedPaymentMethodExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;",
        "",
        "()V",
        "addAddress",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addBillingDetails",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;",
        "addRequestedCard",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;",
        "addRequestedCardPresent",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
        "addRequestedPaymentMethod",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "addSchemeType",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;",
        "addStandardEncryptionType",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;",
        "addTtpaEcka",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;",
        "codegen-terminalsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAddress(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;->postal_code:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 282
    const-string v0, "postal_code"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addAddress(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;->postal_code:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 147
    const-string v0, "postal_code"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addAddress(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;->postal_code:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 417
    const-string v0, "postal_code"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addBillingDetails(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->address:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;

    if-eqz p2, :cond_0

    .line 275
    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v1, "address"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addAddress(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addBillingDetails(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->address:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;

    if-eqz p2, :cond_0

    .line 140
    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v1, "address"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addAddress(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addBillingDetails(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->address:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;

    if-eqz p2, :cond_0

    .line 410
    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v1, "address"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addAddress(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addRequestedCard(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_number:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    const-string v1, "dukpt_encrypted_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 255
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_number_ksn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    const-string v1, "dukpt_encrypted_number_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 258
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->exp_month:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 259
    const-string v1, "exp_month"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 261
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->exp_year:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 262
    const-string v1, "exp_year"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 264
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_cvc:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 265
    const-string v1, "dukpt_encrypted_cvc"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 267
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_cvc_ksn:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 268
    const-string v0, "dukpt_encrypted_cvc_ksn"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_5
    return-object p1
.end method

.method public final addRequestedCard(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_number:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    const-string v1, "dukpt_encrypted_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 120
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_number_ksn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 121
    const-string v1, "dukpt_encrypted_number_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 123
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->exp_month:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 124
    const-string v1, "exp_month"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 126
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->exp_year:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 127
    const-string v1, "exp_year"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 129
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_cvc:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 130
    const-string v1, "dukpt_encrypted_cvc"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 132
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_cvc_ksn:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 133
    const-string v0, "dukpt_encrypted_cvc_ksn"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_5
    return-object p1
.end method

.method public final addRequestedCard(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_number:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 388
    const-string v1, "dukpt_encrypted_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 390
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_number_ksn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 391
    const-string v1, "dukpt_encrypted_number_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 393
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->exp_month:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 394
    const-string v1, "exp_month"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 396
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->exp_year:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 397
    const-string v1, "exp_year"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 399
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_cvc:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 400
    const-string v1, "dukpt_encrypted_cvc"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 402
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->dukpt_encrypted_cvc_ksn:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 403
    const-string v0, "dukpt_encrypted_cvc_ksn"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_5
    return-object p1
.end method

.method public final addRequestedCardPresent(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 178
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 179
    const-string v1, "read_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 181
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    const-string v1, "swipe_reason"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 184
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 185
    const-string v1, "track_2"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 187
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 188
    const-string v1, "emv_processing_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 190
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 191
    const-string v1, "emv_data"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 193
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 194
    const-string v1, "pin_block"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 196
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 197
    const-string v1, "pin_block_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 199
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 200
    const-string v1, "reader"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 202
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 203
    const-string v1, "track_2_key_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 205
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 206
    const-string v1, "track_2_key_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 208
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 209
    const-string v1, "track_2_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 211
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 212
    const-string v1, "latitude"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 214
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 215
    const-string v1, "longitude"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 217
    :cond_d
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    if-eqz p2, :cond_e

    .line 218
    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v1, "encrypted_pin_block"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addStandardEncryptionType(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_e
    return-object p1
.end method

.method public final addRequestedCardPresent(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 43
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 44
    const-string v1, "read_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 46
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    const-string v1, "swipe_reason"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 49
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 50
    const-string v1, "track_2"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 52
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 53
    const-string v1, "emv_processing_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 55
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 56
    const-string v1, "emv_data"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 58
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 59
    const-string v1, "pin_block"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 61
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 62
    const-string v1, "pin_block_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 64
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 65
    const-string v1, "reader"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 67
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 68
    const-string v1, "track_2_key_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 70
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 71
    const-string v1, "track_2_key_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 73
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 74
    const-string v1, "track_2_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 76
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 77
    const-string v1, "latitude"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 79
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 80
    const-string v1, "longitude"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 82
    :cond_d
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    if-eqz p2, :cond_e

    .line 83
    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v1, "encrypted_pin_block"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addStandardEncryptionType(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_e
    return-object p1
.end method

.method public final addRequestedCardPresent(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 313
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 314
    const-string v1, "read_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 316
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 317
    const-string v1, "swipe_reason"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 319
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 320
    const-string v1, "track_2"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 322
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 323
    const-string v1, "emv_processing_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 325
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 326
    const-string v1, "emv_data"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 328
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 329
    const-string v1, "pin_block"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 331
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 332
    const-string v1, "pin_block_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 334
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 335
    const-string v1, "reader"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 337
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 338
    const-string v1, "track_2_key_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 340
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 341
    const-string v1, "track_2_key_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 343
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 344
    const-string v1, "track_2_ksn"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 346
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 347
    const-string v1, "latitude"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 349
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 350
    const-string v1, "longitude"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 352
    :cond_d
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    if-eqz p2, :cond_e

    .line 353
    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v1, "encrypted_pin_block"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addStandardEncryptionType(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_e
    return-object p1
.end method

.method public final addRequestedPaymentMethod(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 154
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 156
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_1

    .line 157
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "card_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCardPresent(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 159
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_2

    .line 160
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "interac_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCardPresent(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 162
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v0, :cond_3

    .line 163
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCard(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 165
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v0, :cond_4

    .line 166
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "billing_details"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addBillingDetails(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 168
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 169
    const-string v0, "allow_redisplay"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_5
    return-object p1
.end method

.method public final addRequestedPaymentMethod(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 21
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_1

    .line 22
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "card_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCardPresent(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 24
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_2

    .line 25
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "interac_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCardPresent(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 27
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v0, :cond_3

    .line 28
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCard(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 30
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v0, :cond_4

    .line 31
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "billing_details"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addBillingDetails(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 33
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 34
    const-string v0, "allow_redisplay"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_5
    return-object p1
.end method

.method public final addRequestedPaymentMethod(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 291
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_1

    .line 292
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "card_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCardPresent(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 294
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_2

    .line 295
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "interac_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCardPresent(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 297
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v0, :cond_3

    .line 298
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedCard(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 300
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v0, :cond_4

    .line 301
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "billing_details"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addBillingDetails(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 303
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 304
    const-string v0, "allow_redisplay"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_5
    return-object p1
.end method

.method public final addSchemeType(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addSchemeType(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addSchemeType(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addStandardEncryptionType(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->scheme:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;

    if-eqz v0, :cond_0

    .line 227
    const-string v1, "scheme"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 229
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->ecka_ttpa:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;

    if-eqz v0, :cond_1

    .line 230
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "ecka_ttpa"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addTtpaEcka(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 232
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->encrypted_value:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 233
    const-string v0, "encrypted_value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addStandardEncryptionType(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->scheme:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;

    if-eqz v0, :cond_0

    .line 92
    const-string v1, "scheme"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 94
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->ecka_ttpa:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;

    if-eqz v0, :cond_1

    .line 95
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "ecka_ttpa"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addTtpaEcka(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 97
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->encrypted_value:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 98
    const-string v0, "encrypted_value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_2
    return-object p1
.end method

.method public final addStandardEncryptionType(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->scheme:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;

    if-eqz v0, :cond_0

    .line 362
    const-string v1, "scheme"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 364
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->ecka_ttpa:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;

    if-eqz v0, :cond_1

    .line 365
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "ecka_ttpa"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addTtpaEcka(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 367
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->encrypted_value:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 368
    const-string v0, "encrypted_value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addTtpaEcka(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->client_public_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 240
    const-string v1, "client_public_key"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 242
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->server_public_key_hash:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    const-string v1, "server_public_key_hash"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 245
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->installation_id:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 246
    const-string v0, "installation_id"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addTtpaEcka(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->client_public_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    const-string v1, "client_public_key"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 107
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->server_public_key_hash:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 108
    const-string v1, "server_public_key_hash"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 110
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->installation_id:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 111
    const-string v0, "installation_id"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_2
    return-object p1
.end method

.method public final addTtpaEcka(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->client_public_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 375
    const-string v1, "client_public_key"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 377
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->server_public_key_hash:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 378
    const-string v1, "server_public_key_hash"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 380
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;->installation_id:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 381
    const-string v0, "installation_id"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    return-object p1
.end method
