.class public final Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;
.super Ljava/lang/Object;
.source "PaymentMethodOptionsExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodOptionsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodOptionsExt.kt\ncom/stripe/proto/model/rest/PaymentMethodOptionsExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1855#2,2:306\n1855#2,2:308\n1855#2,2:310\n*S KotlinDebug\n*F\n+ 1 PaymentMethodOptionsExt.kt\ncom/stripe/proto/model/rest/PaymentMethodOptionsExt\n*L\n67#1:306,2\n163#1:308,2\n259#1:310,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;",
        "",
        "()V",
        "addCardOptions",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addCardPresentOptions",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;",
        "addDynamicCurrencyConversionDetails",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;",
        "addPaymentMethodOptions",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "addRequest3dSecureType",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;",
        "addRoutingOptions",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;",
        "addRoutingPriority",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "addSurcharge",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;",
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
.field public static final INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCardOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;->request_three_d_secure:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;

    if-eqz p2, :cond_0

    .line 125
    const-string v0, "request_three_d_secure"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addCardOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;->request_three_d_secure:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;

    if-eqz p2, :cond_0

    .line 29
    const-string v0, "request_three_d_secure"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addCardOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;->request_three_d_secure:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;

    if-eqz p2, :cond_0

    .line 221
    const-string v0, "request_three_d_secure"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addCardPresentOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->routing:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    if-eqz v0, :cond_0

    .line 136
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "routing"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addRoutingOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 138
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_dynamic_currency_conversion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 139
    const-string v1, "request_dynamic_currency_conversion"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 141
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    if-eqz v0, :cond_2

    .line 142
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "dynamic_currency_conversion"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addDynamicCurrencyConversionDetails(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 144
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_extended_authorization:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 145
    const-string v1, "request_extended_authorization"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 147
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    const-string v1, "request_incremental_authorization_support"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 150
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->surcharge:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;

    if-eqz v0, :cond_5

    .line 151
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "surcharge"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addSurcharge(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 153
    :cond_5
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_partial_authorization:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 154
    const-string v0, "request_partial_authorization"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_6
    return-object p1
.end method

.method public final addCardPresentOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->routing:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "routing"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addRoutingOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 42
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_dynamic_currency_conversion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    const-string v1, "request_dynamic_currency_conversion"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 45
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    if-eqz v0, :cond_2

    .line 46
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "dynamic_currency_conversion"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addDynamicCurrencyConversionDetails(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 48
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_extended_authorization:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 49
    const-string v1, "request_extended_authorization"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 51
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 52
    const-string v1, "request_incremental_authorization_support"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 54
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->surcharge:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;

    if-eqz v0, :cond_5

    .line 55
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "surcharge"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addSurcharge(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 57
    :cond_5
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_partial_authorization:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 58
    const-string v0, "request_partial_authorization"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_6
    return-object p1
.end method

.method public final addCardPresentOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->routing:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    if-eqz v0, :cond_0

    .line 232
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "routing"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addRoutingOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 234
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_dynamic_currency_conversion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 235
    const-string v1, "request_dynamic_currency_conversion"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 237
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    if-eqz v0, :cond_2

    .line 238
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "dynamic_currency_conversion"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addDynamicCurrencyConversionDetails(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 240
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_extended_authorization:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 241
    const-string v1, "request_extended_authorization"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 243
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 244
    const-string v1, "request_incremental_authorization_support"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 246
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->surcharge:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;

    if-eqz v0, :cond_5

    .line 247
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "surcharge"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addSurcharge(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 249
    :cond_5
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;->request_partial_authorization:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 250
    const-string v0, "request_partial_authorization"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_6
    return-object p1
.end method

.method public final addDynamicCurrencyConversionDetails(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 173
    const-string v2, "amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 175
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->currency:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 176
    const-string v1, "currency"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 178
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 179
    const-string v1, "transaction_fx_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 181
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 182
    const-string v1, "transaction_markup_percent"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 184
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 185
    const-string v1, "cardholder_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 187
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 188
    const-string v1, "reference_fx_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 190
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 191
    const-string v1, "reference_markup_percent"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 193
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 194
    const-string v0, "fx_as_of"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_7
    return-object p1
.end method

.method public final addDynamicCurrencyConversionDetails(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 77
    const-string v2, "amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 79
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->currency:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 80
    const-string v1, "currency"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 82
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 83
    const-string v1, "transaction_fx_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 85
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 86
    const-string v1, "transaction_markup_percent"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 88
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 89
    const-string v1, "cardholder_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 91
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 92
    const-string v1, "reference_fx_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 94
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 95
    const-string v1, "reference_markup_percent"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 97
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 98
    const-string v0, "fx_as_of"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_7
    return-object p1
.end method

.method public final addDynamicCurrencyConversionDetails(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 269
    const-string v2, "amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 271
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->currency:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 272
    const-string v1, "currency"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 274
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->transaction_fx_rate:Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 275
    const-string v1, "transaction_fx_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 277
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->transaction_markup_percent:Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 278
    const-string v1, "transaction_markup_percent"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 280
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->cardholder_rate:Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 281
    const-string v1, "cardholder_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 283
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->reference_fx_rate:Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 284
    const-string v1, "reference_fx_rate"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 286
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->reference_markup_percent:Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 287
    const-string v1, "reference_markup_percent"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 289
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;->fx_as_of:Ljava/lang/Float;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 290
    const-string v0, "fx_as_of"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_7
    return-object p1
.end method

.method public final addPaymentMethodOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->card:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;

    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addCardOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 117
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;

    if-eqz p2, :cond_1

    .line 118
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v1, "card_present"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addCardPresentOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addPaymentMethodOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->card:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;

    if-eqz v0, :cond_0

    .line 19
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addCardOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 21
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;

    if-eqz p2, :cond_1

    .line 22
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v1, "card_present"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addCardPresentOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    return-object p1
.end method

.method public final addPaymentMethodOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->card:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;

    if-eqz v0, :cond_0

    .line 211
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "card"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addCardOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 213
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;

    if-eqz p2, :cond_1

    .line 214
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v1, "card_present"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addCardPresentOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addRequest3dSecureType(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addRequest3dSecureType(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addRequest3dSecureType(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addRoutingOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;->requested_priority:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    if-eqz v0, :cond_0

    .line 161
    const-string v1, "requested_priority"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 163
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;->computed_priority:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 308
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    if-eqz v0, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computed_priority"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final addRoutingOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;->requested_priority:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    if-eqz v0, :cond_0

    .line 65
    const-string v1, "requested_priority"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 67
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;->computed_priority:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 306
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computed_priority"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final addRoutingOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;->requested_priority:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    if-eqz v0, :cond_0

    .line 257
    const-string v1, "requested_priority"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 259
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;->computed_priority:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 310
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    if-eqz v0, :cond_1

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computed_priority"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final addRoutingPriority(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addRoutingPriority(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addRoutingPriority(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addSurcharge(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;->maximum_amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 201
    const-string v2, "maximum_amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 203
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 204
    const-string v0, "status"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addSurcharge(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;->maximum_amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 105
    const-string v2, "maximum_amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 107
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 108
    const-string v0, "status"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    return-object p1
.end method

.method public final addSurcharge(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;->maximum_amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 297
    const-string v2, "maximum_amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 299
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 300
    const-string v0, "status"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_1
    return-object p1
.end method
