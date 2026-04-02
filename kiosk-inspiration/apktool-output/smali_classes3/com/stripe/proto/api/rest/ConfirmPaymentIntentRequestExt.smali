.class public final Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;
.super Ljava/lang/Object;
.source "ConfirmPaymentIntentRequestExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfirmPaymentIntentRequestExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfirmPaymentIntentRequestExt.kt\ncom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n1855#2,2:139\n1855#2,2:141\n1855#2,2:143\n1855#2,2:145\n1855#2,2:147\n*S KotlinDebug\n*F\n+ 1 ConfirmPaymentIntentRequestExt.kt\ncom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt\n*L\n14#1:137,2\n48#1:139,2\n55#1:141,2\n89#1:143,2\n96#1:145,2\n130#1:147,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;",
        "",
        "()V",
        "addConfirmPaymentIntentRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addRedirectPreferences",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addConfirmPaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_1

    .line 59
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "source_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedPaymentMethod(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 61
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_2

    .line 62
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "payment_method_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedPaymentMethod(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 64
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 65
    const-string v2, "amount_to_confirm"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 67
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 68
    const-string v1, "id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 70
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 71
    const-string v2, "amount_tip"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 73
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v0, :cond_6

    .line 74
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "payment_method_options"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addPaymentMethodOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 76
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 77
    const-string v2, "amount_surcharge"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 79
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 80
    const-string v1, "return_url"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 82
    :cond_8
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    if-eqz p2, :cond_9

    .line 83
    sget-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    const-string v1, "redirect_preferences"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->addRedirectPreferences(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_9
    return-object p1
.end method

.method public final addConfirmPaymentIntentRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_1

    .line 18
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "source_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedPaymentMethod(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 20
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_2

    .line 21
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "payment_method_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedPaymentMethod(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 23
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 24
    const-string v2, "amount_to_confirm"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 26
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 27
    const-string v1, "id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 29
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 30
    const-string v2, "amount_tip"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 32
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v0, :cond_6

    .line 33
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "payment_method_options"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addPaymentMethodOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 35
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 36
    const-string v2, "amount_surcharge"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 38
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 39
    const-string v1, "return_url"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 41
    :cond_8
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    if-eqz p2, :cond_9

    .line 42
    sget-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    const-string v1, "redirect_preferences"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->addRedirectPreferences(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_9
    return-object p1
.end method

.method public final addConfirmPaymentIntentRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 145
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->source_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_1

    .line 100
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "source_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedPaymentMethod(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 102
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_2

    .line 103
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->INSTANCE:Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;

    const-string v2, "payment_method_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;->addRequestedPaymentMethod(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 105
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_to_confirm:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 106
    const-string v2, "amount_to_confirm"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 108
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 109
    const-string v1, "id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 111
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 112
    const-string v2, "amount_tip"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 114
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v0, :cond_6

    .line 115
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;

    const-string v2, "payment_method_options"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;->addPaymentMethodOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 117
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_surcharge:Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 118
    const-string v2, "amount_surcharge"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 120
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 121
    const-string v1, "return_url"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 123
    :cond_8
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->redirect_preferences:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    if-eqz p2, :cond_9

    .line 124
    sget-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    const-string v1, "redirect_preferences"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->addRedirectPreferences(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_9
    return-object p1
.end method

.method public final addRedirectPreferences(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;->additional_formats:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 143
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_formats"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final addRedirectPreferences(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;->additional_formats:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 139
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_formats"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final addRedirectPreferences(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;->additional_formats:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 147
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_formats"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_0
    return-object p1
.end method
