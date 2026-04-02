.class public final Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;
.super Ljava/lang/Object;
.source "CreateSetupIntentRequestExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateSetupIntentRequestExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateSetupIntentRequestExt.kt\ncom/stripe/proto/api/rest/CreateSetupIntentRequestExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n1855#2,2:164\n1855#2,2:166\n1855#2,2:168\n*S KotlinDebug\n*F\n+ 1 CreateSetupIntentRequestExt.kt\ncom/stripe/proto/api/rest/CreateSetupIntentRequestExt\n*L\n29#1:164,2\n79#1:166,2\n129#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;",
        "",
        "()V",
        "addCreateSetupIntentRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addSingleUseMandate",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCreateSetupIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    const-string v1, "confirm"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 67
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 68
    const-string v1, "customer"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 70
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 71
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 73
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "metadata"

    invoke-static {v4, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 77
    const-string v1, "payment_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 79
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payment_method_types"

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

    goto :goto_1

    .line 82
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 83
    const-string v1, "usage"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 85
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v0, :cond_7

    .line 86
    sget-object v1, Lcom/stripe/proto/api/rest/MandateExt;->INSTANCE:Lcom/stripe/proto/api/rest/MandateExt;

    const-string v2, "mandate_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/MandateExt;->addMandate(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 88
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 89
    const-string v1, "on_behalf_of"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 91
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_9

    .line 92
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "payment_method_options"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addPaymentMethodOptions(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 94
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 95
    const-string v1, "return_url"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 97
    :cond_a
    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz p2, :cond_b

    .line 98
    sget-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    const-string v1, "single_use"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->addSingleUseMandate(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_b
    return-object p1
.end method

.method public final addCreateSetupIntentRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 15
    const-string v1, "confirm"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 17
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 18
    const-string v1, "customer"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 20
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 21
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 23
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "metadata"

    invoke-static {v4, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 26
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 27
    const-string v1, "payment_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 29
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payment_method_types"

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

    goto :goto_1

    .line 32
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 33
    const-string v1, "usage"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 35
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v0, :cond_7

    .line 36
    sget-object v1, Lcom/stripe/proto/api/rest/MandateExt;->INSTANCE:Lcom/stripe/proto/api/rest/MandateExt;

    const-string v2, "mandate_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/MandateExt;->addMandate(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 38
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 39
    const-string v1, "on_behalf_of"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 41
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_9

    .line 42
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "payment_method_options"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addPaymentMethodOptions(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 44
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 45
    const-string v1, "return_url"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 47
    :cond_a
    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz p2, :cond_b

    .line 48
    sget-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    const-string v1, "single_use"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->addSingleUseMandate(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_b
    return-object p1
.end method

.method public final addCreateSetupIntentRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 115
    const-string v1, "confirm"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 117
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    const-string v1, "customer"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 120
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 123
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "metadata"

    invoke-static {v4, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 127
    const-string v1, "payment_method"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 129
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payment_method_types"

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

    goto :goto_1

    .line 132
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 133
    const-string v1, "usage"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 135
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v0, :cond_7

    .line 136
    sget-object v1, Lcom/stripe/proto/api/rest/MandateExt;->INSTANCE:Lcom/stripe/proto/api/rest/MandateExt;

    const-string v2, "mandate_data"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/MandateExt;->addMandate(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 138
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 139
    const-string v1, "on_behalf_of"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 141
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_9

    .line 142
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;

    const-string v2, "payment_method_options"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;->addPaymentMethodOptions(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 144
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 145
    const-string v1, "return_url"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 147
    :cond_a
    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz p2, :cond_b

    .line 148
    sget-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    const-string v1, "single_use"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->addSingleUseMandate(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_b
    return-object p1
.end method

.method public final addSingleUseMandate(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->amount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 105
    const-string v1, "amount"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 107
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->currency:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 108
    const-string v0, "currency"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addSingleUseMandate(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->amount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 55
    const-string v1, "amount"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 57
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->currency:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 58
    const-string v0, "currency"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    return-object p1
.end method

.method public final addSingleUseMandate(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->amount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 155
    const-string v1, "amount"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 157
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->currency:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 158
    const-string v0, "currency"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_1
    return-object p1
.end method
