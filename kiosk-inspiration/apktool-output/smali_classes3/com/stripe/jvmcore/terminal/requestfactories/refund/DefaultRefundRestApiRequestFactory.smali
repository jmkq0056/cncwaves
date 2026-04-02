.class public final Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;
.super Ljava/lang/Object;
.source "DefaultRefundRestApiRequestFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultRefundRestApiRequestFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultRefundRestApiRequestFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002Jr\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\t2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
        "()V",
        "refundChargeRequest",
        "Lcom/stripe/jvmcore/restclient/RestRequest;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundChargeRestRequest;",
        "charge",
        "",
        "paymentIntentId",
        "amount",
        "",
        "paymentMethodData",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "reverseTransfer",
        "",
        "refundApplicationFee",
        "reason",
        "metadata",
        "",
        "stripeAccountId",
        "terminal-requestfactories"
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refundChargeRequest(Ljava/lang/String;Ljava/lang/String;JLcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "paymentMethodData"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    move-object/from16 v2, p8

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    move-object/from16 v7, p9

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    xor-int/2addr v1, v4

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    .line 26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    const-string p1, "You can only specify one of the `charge` or `paymentIntent` id to refund, not both."

    goto :goto_3

    .line 28
    :cond_5
    :goto_2
    const-string p1, "You must specify the id of the `charge` or `paymentIntent` to refund."

    .line 25
    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_6
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 39
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 41
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    .line 44
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move-object p1, v8

    :cond_8
    if-eqz v6, :cond_a

    .line 45
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v9, p2

    goto :goto_5

    :cond_a
    :goto_4
    move-object v9, v8

    :goto_5
    move-object v6, v1

    .line 36
    new-instance v1, Lcom/stripe/proto/api/rest/RefundChargeRequest;

    const/4 v10, 0x0

    const/16 v11, 0x100

    const/4 v12, 0x0

    move-object v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/api/rest/RefundChargeRequest;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 47
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    move-object/from16 p2, p10

    invoke-static {p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/ApiRequestHeaderExtensionsKt;->withStripeAccountId(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/stripe/jvmcore/restclient/RestRequest;

    invoke-direct {p2, v1, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object p2
.end method
