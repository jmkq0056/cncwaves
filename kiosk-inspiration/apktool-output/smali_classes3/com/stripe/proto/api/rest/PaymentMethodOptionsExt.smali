.class public final Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;
.super Ljava/lang/Object;
.source "PaymentMethodOptionsExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;",
        "",
        "()V",
        "addCard",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addCardPresent",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;",
        "addPaymentMethodOptions",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
        "addRoutingParameters",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;",
        "addWechatPay",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCard(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;->moto:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 114
    const-string v0, "moto"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addCard(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;->moto:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 58
    const-string v0, "moto"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addCard(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;->moto:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 170
    const-string v0, "moto"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addCardPresent(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_extended_authorization:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 85
    const-string v1, "request_extended_authorization"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 87
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 88
    const-string v1, "request_incremental_authorization_support"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 90
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->capture_method:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 91
    const-string v1, "capture_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 93
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->routing:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;

    if-eqz v0, :cond_3

    .line 94
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "routing"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addRoutingParameters(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 96
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 97
    const-string v1, "dynamic_currency_conversion_selected"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 99
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_partial_authorization:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 100
    const-string v0, "request_partial_authorization"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_5
    return-object p1
.end method

.method public final addCardPresent(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_extended_authorization:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 29
    const-string v1, "request_extended_authorization"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 31
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 32
    const-string v1, "request_incremental_authorization_support"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 34
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->capture_method:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 35
    const-string v1, "capture_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 37
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->routing:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;

    if-eqz v0, :cond_3

    .line 38
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "routing"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addRoutingParameters(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 40
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 41
    const-string v1, "dynamic_currency_conversion_selected"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 43
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_partial_authorization:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 44
    const-string v0, "request_partial_authorization"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_5
    return-object p1
.end method

.method public final addCardPresent(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_extended_authorization:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 141
    const-string v1, "request_extended_authorization"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 143
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 144
    const-string v1, "request_incremental_authorization_support"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 146
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->capture_method:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 147
    const-string v1, "capture_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 149
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->routing:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;

    if-eqz v0, :cond_3

    .line 150
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "routing"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addRoutingParameters(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 152
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 153
    const-string v1, "dynamic_currency_conversion_selected"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 155
    :cond_4
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->request_partial_authorization:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 156
    const-string v0, "request_partial_authorization"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_5
    return-object p1
.end method

.method public final addPaymentMethodOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "card_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addCardPresent(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 74
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card:Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;

    if-eqz v0, :cond_1

    .line 75
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addCard(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 77
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->wechat_pay:Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;

    if-eqz p2, :cond_2

    .line 78
    sget-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v1, "wechat_pay"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addWechatPay(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addPaymentMethodOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    if-eqz v0, :cond_0

    .line 16
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "card_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addCardPresent(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 18
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card:Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;

    if-eqz v0, :cond_1

    .line 19
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addCard(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 21
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->wechat_pay:Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;

    if-eqz p2, :cond_2

    .line 22
    sget-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v1, "wechat_pay"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addWechatPay(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_2
    return-object p1
.end method

.method public final addPaymentMethodOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    if-eqz v0, :cond_0

    .line 128
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "card_present"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addCardPresent(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 130
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card:Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;

    if-eqz v0, :cond_1

    .line 131
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addCard(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 133
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->wechat_pay:Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;

    if-eqz p2, :cond_2

    .line 134
    sget-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v1, "wechat_pay"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addWechatPay(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addRoutingParameters(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;->requested_priority:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 107
    const-string v0, "requested_priority"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addRoutingParameters(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;->requested_priority:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 51
    const-string v0, "requested_priority"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addRoutingParameters(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;->requested_priority:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 163
    const-string v0, "requested_priority"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addWechatPay(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;->client:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 121
    const-string v0, "client"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addWechatPay(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;->client:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 65
    const-string v0, "client"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addWechatPay(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p2, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;->client:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 177
    const-string v0, "client"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method
