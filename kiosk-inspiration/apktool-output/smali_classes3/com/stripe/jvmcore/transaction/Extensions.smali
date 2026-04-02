.class public final Lcom/stripe/jvmcore/transaction/Extensions;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/transaction/Extensions$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/stripe/jvmcore/transaction/Extensions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n1#2:315\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0007J\u0018\u0010\t\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u000bH\u0002J\u0018\u0010\u000c\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u000bH\u0002J\u001d\u0010\r\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\u000bH\u0007\u00a2\u0006\u0002\u0008\u000fJ\n\u0010\u0010\u001a\u00020\n*\u00020\u0011J\u001d\u0010\u0012\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0008\u0013J\u001d\u0010\u0012\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0008\u0014J-\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008\u001aJ\u001d\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0008\u001cJ%\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008\u001dJ%\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0017\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0008\u000fJ\u0014\u0010\u001e\u001a\u00020\u0016*\u0004\u0018\u00010\u001f2\u0006\u0010\u0017\u001a\u00020\nJ\u0014\u0010\u001e\u001a\u00020\u0016*\u00020\u00082\u0006\u0010\u0017\u001a\u00020\nH\u0002J\u000e\u0010 \u001a\u00020\u0016*\u0004\u0018\u00010\u001fH\u0002J\u000c\u0010!\u001a\u00020\u0004*\u00020\u0004H\u0002J\u001e\u0010\"\u001a\u00020\u0016*\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010#\u001a\u00020\nH\u0002J\u0014\u0010$\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/jvmcore/transaction/Extensions;",
        "",
        "()V",
        "TAG",
        "",
        "alreadyCompletedPaymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "isDeclinedCharge",
        "",
        "Lcom/stripe/jvmcore/restclient/RestResponse$Success;",
        "isPendingNextAction",
        "isSetupError",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "toChargeAttemptForSetupIntent",
        "isSuccess",
        "Lcom/stripe/proto/model/rest/Refund;",
        "requiresExtendedAction",
        "requiresExtendedActionForPaymentIntent",
        "requiresExtendedActionForSetupIntent",
        "toChargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "allowExtendedTransactions",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "toChargeAttemptForPaymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "toChargeAttemptForPaymentMethod",
        "toChargeAttemptForRefund",
        "toDeclinedAttempt",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "toDeclinedAttemptForStandardAttempt",
        "toProperBrand",
        "toSuccessfulCharge",
        "hasAlreadySucceeded",
        "toSuccessfulRefund",
        "jvm-transaction-extensions"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

.field private static final TAG:Ljava/lang/String; = "transaction/Extensions"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-direct {v0}, Lcom/stripe/jvmcore/transaction/Extensions;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isDeclinedCharge(Lcom/stripe/jvmcore/restclient/RestResponse$Success;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$Success<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isPendingNextAction(Lcom/stripe/jvmcore/restclient/RestResponse$Success;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$Success<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;
    .locals 0

    .line 197
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorResponse;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1
.end method

.method private final toDeclinedAttemptForStandardAttempt(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/transaction/ChargeAttempt;
    .locals 2

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    const-string v1, "charge_already_refunded"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 232
    :cond_1
    new-instance v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    if-nez p1, :cond_3

    :cond_2
    const-string p1, ""

    .line 232
    :cond_3
    invoke-direct {v0, p1}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method private final toProperBrand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "discover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    const-string p1, "Discover"

    return-object p1

    .line 254
    :sswitch_1
    const-string v0, "visa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    const-string p1, "Visa"

    return-object p1

    .line 254
    :sswitch_2
    const-string v0, "amex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 261
    :cond_2
    const-string p1, "American Express"

    return-object p1

    .line 254
    :sswitch_3
    const-string v0, "jcb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 258
    :cond_3
    const-string p1, "JCB"

    return-object p1

    .line 254
    :sswitch_4
    const-string v0, "unionpay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 259
    :cond_4
    const-string p1, "UnionPay"

    return-object p1

    .line 254
    :sswitch_5
    const-string v0, "diners"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 260
    :cond_5
    const-string p1, "Diners Club"

    return-object p1

    .line 254
    :sswitch_6
    const-string v0, "mastercard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 256
    :cond_6
    const-string p1, "MasterCard"

    :goto_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x79845b8e -> :sswitch_6
        -0x4f6033c3 -> :sswitch_5
        -0x11ac4c87 -> :sswitch_4
        0x19a49 -> :sswitch_3
        0x2dbddf -> :sswitch_2
        0x373c41 -> :sswitch_1
        0x104877e9 -> :sswitch_0
    .end sparse-switch
.end method

.method private final toSuccessfulCharge(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/logwriter/LogWriter;Z)Lcom/stripe/transaction/ChargeAttempt;
    .locals 9

    .line 135
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/rest/Charges;->data_:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/Charge;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 136
    :goto_0
    new-instance v5, Lcom/stripe/currency/Amount;

    iget-object v2, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    iget-object v4, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    const-string v6, ""

    if-nez v4, :cond_2

    move-object v4, v6

    :cond_2
    invoke-direct {v5, v2, v3, v4}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 137
    iget-object v2, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;->surcharge:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails$Surcharge;->amount:Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 138
    new-instance v4, Lcom/stripe/currency/Amount;

    iget-object v7, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v6

    :cond_3
    invoke-direct {v4, v2, v3, v7}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 140
    :goto_2
    iget-object v2, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 141
    new-instance v7, Lcom/stripe/currency/Amount;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    if-nez p1, :cond_5

    move-object p1, v6

    :cond_5
    invoke-direct {v7, v2, v3, p1}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v7, v1

    :goto_3
    if-eqz v0, :cond_7

    .line 145
    iget-object p1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    goto :goto_4

    :cond_7
    move-object p1, v1

    :goto_4
    if-eqz p1, :cond_c

    .line 146
    new-instance v2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    .line 147
    iget-object p1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->toProperBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move-object v3, p1

    goto :goto_6

    :cond_9
    :goto_5
    move-object v3, v6

    .line 148
    :goto_6
    iget-object p1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    move-object v6, v4

    move-object v4, p1

    goto :goto_8

    :cond_b
    :goto_7
    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    .line 146
    :goto_8
    invoke-direct/range {v2 .. v7}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    return-object v2

    :cond_c
    move-object p1, v6

    move-object v6, v4

    if-eqz v0, :cond_d

    .line 154
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    goto :goto_9

    :cond_d
    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_12

    .line 155
    new-instance v2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    .line 156
    iget-object p2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p2, :cond_f

    iget-object p2, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz p2, :cond_f

    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toProperBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_a

    :cond_e
    move-object v3, p2

    goto :goto_b

    :cond_f
    :goto_a
    move-object v3, p1

    .line 157
    :goto_b
    iget-object p2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p2, :cond_11

    iget-object p2, p2, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-nez p2, :cond_10

    goto :goto_c

    :cond_10
    move-object v4, p2

    goto :goto_d

    :cond_11
    :goto_c
    move-object v4, p1

    .line 155
    :goto_d
    invoke-direct/range {v2 .. v7}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    return-object v2

    :cond_12
    if-eqz v0, :cond_13

    .line 163
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    goto :goto_e

    :cond_13
    move-object v2, v1

    :goto_e
    if-eqz v2, :cond_18

    .line 164
    new-instance v2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    .line 165
    iget-object p2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    if-eqz p2, :cond_15

    iget-object p2, p2, Lcom/stripe/proto/model/rest/Card;->brand:Ljava/lang/String;

    if-eqz p2, :cond_15

    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toProperBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_14

    goto :goto_f

    :cond_14
    move-object v3, p2

    goto :goto_10

    :cond_15
    :goto_f
    move-object v3, p1

    .line 166
    :goto_10
    iget-object p2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    if-eqz p2, :cond_17

    iget-object p2, p2, Lcom/stripe/proto/model/rest/Card;->last4:Ljava/lang/String;

    if-nez p2, :cond_16

    goto :goto_11

    :cond_16
    move-object v4, p2

    goto :goto_12

    :cond_17
    :goto_11
    move-object v4, p1

    .line 164
    :goto_12
    invoke-direct/range {v2 .. v7}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    return-object v2

    :cond_18
    if-eqz v0, :cond_19

    .line 172
    iget-object p1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    goto :goto_13

    :cond_19
    move-object p1, v1

    :goto_13
    if-eqz p1, :cond_1a

    .line 173
    new-instance p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    .line 174
    sget-object p2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->WECHAT_PAY:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 173
    invoke-direct {p1, p2, v5, v6, p3}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    :cond_1a
    if-eqz v0, :cond_1b

    .line 180
    iget-object p1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    goto :goto_14

    :cond_1b
    move-object p1, v1

    :goto_14
    if-eqz p1, :cond_1c

    .line 181
    new-instance p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    .line 182
    sget-object p2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->AFFIRM:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 181
    invoke-direct {p1, p2, v5, v6, p3}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 189
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unable to parse type "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    :cond_1d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "transaction/Extensions"

    invoke-interface {p2, p3, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1
.end method

.method static synthetic toSuccessfulCharge$default(Lcom/stripe/jvmcore/transaction/Extensions;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/logwriter/LogWriter;ZILjava/lang/Object;)Lcom/stripe/transaction/ChargeAttempt;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/jvmcore/transaction/Extensions;->toSuccessfulCharge(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/logwriter/LogWriter;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p0

    return-object p0
.end method

.method private final toSuccessfulRefund(Lcom/stripe/proto/model/rest/Refund;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;
    .locals 5

    .line 287
    iget-object v0, p1, Lcom/stripe/proto/model/rest/Refund;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    .line 288
    new-instance v1, Lcom/stripe/currency/Amount;

    iget-object v2, p1, Lcom/stripe/proto/model/rest/Refund;->amount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p1, Lcom/stripe/proto/model/rest/Refund;->currency:Ljava/lang/String;

    const-string v4, ""

    if-nez p1, :cond_1

    move-object p1, v4

    :cond_1
    invoke-direct {v1, v2, v3, p1}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 291
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_7

    .line 292
    new-instance p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;

    .line 293
    iget-object p2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toProperBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_3
    move-object p2, v4

    .line 294
    :cond_4
    iget-object v0, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v0

    .line 292
    :cond_6
    :goto_2
    invoke-direct {p1, p2, v4, v1}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;)V

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    :cond_7
    if-eqz v0, :cond_8

    .line 298
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    goto :goto_3

    :cond_8
    move-object v2, p1

    :goto_3
    if-eqz v2, :cond_d

    .line 299
    new-instance p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;

    .line 300
    iget-object p2, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p2, :cond_9

    iget-object p2, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toProperBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    :cond_9
    move-object p2, v4

    .line 301
    :cond_a
    iget-object v0, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    move-object v4, v0

    .line 299
    :cond_c
    :goto_4
    invoke-direct {p1, p2, v4, v1}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;)V

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 306
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_e

    iget-object p1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "transaction/Extensions"

    invoke-interface {p2, v0, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1
.end method


# virtual methods
.method public final alreadyCompletedPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentIntent;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    sget-object v2, Lcom/stripe/proto/model/rest/StatusCode;->BAD_REQUEST:Lcom/stripe/proto/model/rest/StatusCode;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_6

    .line 104
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v0, v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string v2, "payment_intent_unexpected_state"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "succeeded"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "requires_capture"

    aput-object v3, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_6

    .line 107
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object p1

    :cond_6
    return-object v1
.end method

.method public final isSuccess(Lcom/stripe/proto/model/rest/Refund;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p1, Lcom/stripe/proto/model/rest/Refund;->status:Ljava/lang/String;

    const-string v1, "pending"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/stripe/proto/model/rest/Refund;->status:Ljava/lang/String;

    const-string v0, "succeeded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final requiresExtendedActionForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/stripe/transaction/ExtendedActionConstants;->INSTANCE:Lcom/stripe/transaction/ExtendedActionConstants;

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/stripe/transaction/ExtendedActionConstants;->isExtendedActionError(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final requiresExtendedActionForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/stripe/transaction/ExtendedActionConstants;->INSTANCE:Lcom/stripe/transaction/ExtendedActionConstants;

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/stripe/transaction/ExtendedActionConstants;->isExtendedActionError(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toChargeAttemptForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;ZLcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;Z",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/transaction/ChargeAttempt;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_2

    .line 75
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->isDeclinedCharge(Lcom/stripe/jvmcore/restclient/RestResponse$Success;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v2, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    invoke-direct {p0, v1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->isPendingNextAction(Lcom/stripe/jvmcore/restclient/RestResponse$Success;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/stripe/jvmcore/transaction/Extensions;->toSuccessfulCharge$default(Lcom/stripe/jvmcore/transaction/Extensions;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/logwriter/LogWriter;ZILjava/lang/Object;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v0, p0

    move-object v2, p3

    .line 87
    instance-of p3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz p3, :cond_7

    .line 88
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p3

    sget-object v1, Lcom/stripe/jvmcore/transaction/Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/stripe/proto/model/rest/StatusCode;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v3, 0x2

    if-eq p3, v3, :cond_6

    const/4 v3, 0x3

    if-eq p3, v3, :cond_3

    .line 95
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 92
    :cond_3
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->alreadyCompletedPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-direct {p0, p3, v2, v1}, Lcom/stripe/jvmcore/transaction/Extensions;->toSuccessfulCharge(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/logwriter/LogWriter;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    return-object p3

    .line 94
    :cond_5
    :goto_0
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 90
    :cond_6
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 97
    :cond_7
    instance-of p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p1, :cond_8

    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final toChargeAttemptForPaymentMethod(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/transaction/ChargeAttempt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)",
            "Lcom/stripe/transaction/ChargeAttempt;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 242
    :cond_0
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/jvmcore/transaction/Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/StatusCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 247
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 246
    :cond_1
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 244
    :cond_2
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 249
    :cond_3
    instance-of p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final toChargeAttemptForRefund(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Refund;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/transaction/ChargeAttempt;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_2

    .line 270
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/Refund;

    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/transaction/Extensions;->isSuccess(Lcom/stripe/proto/model/rest/Refund;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/Refund;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toSuccessfulRefund(Lcom/stripe/proto/model/rest/Refund;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 273
    :cond_0
    new-instance p2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/Refund;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/Refund;->failure_reason:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-direct {p2, p1}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/stripe/transaction/ChargeAttempt;

    return-object p2

    .line 275
    :cond_2
    instance-of p2, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz p2, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p2

    sget-object v0, Lcom/stripe/jvmcore/transaction/Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/StatusCode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 280
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 279
    :cond_3
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 277
    :cond_4
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 282
    :cond_5
    instance-of p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final toChargeAttemptForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse;Z)Lcom/stripe/transaction/ChargeAttempt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;Z)",
            "Lcom/stripe/transaction/ChargeAttempt;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse$Success;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    invoke-direct {p0, v1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 123
    :cond_1
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/jvmcore/transaction/Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/StatusCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 128
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorWrapper;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 127
    :cond_2
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 125
    :cond_3
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    .line 130
    :cond_4
    instance-of p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast p1, Lcom/stripe/transaction/ChargeAttempt;

    return-object p1

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final toChargeAttemptForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse$Success;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$Success<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent;->last_setup_error:Lcom/stripe/proto/model/rest/LastSetupError;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toDeclinedAttempt(Lcom/stripe/proto/model/rest/ErrorResponse;Z)Lcom/stripe/transaction/ChargeAttempt;
    .locals 3

    if-eqz p2, :cond_e

    if-eqz p1, :cond_0

    .line 203
    iget-object p2, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2fe1181b

    const-string v2, ""

    if-eq v0, v1, :cond_9

    const v1, 0x2c9642d5

    if-eq v0, v1, :cond_5

    const v1, 0x5906edda

    if-eq v0, v1, :cond_1

    goto :goto_4

    :cond_1
    const-string v0, "mobile_device_authentication_required"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_4

    .line 215
    :cond_2
    new-instance p2, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    .line 216
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 218
    :cond_4
    :goto_1
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;->MOBILE_DEVICE_AUTHENTICATION_REQUIRED:Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;

    .line 215
    invoke-direct {p2, v2, p1}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;)V

    check-cast p2, Lcom/stripe/transaction/ChargeAttempt;

    return-object p2

    .line 203
    :cond_5
    const-string v0, "online_or_offline_pin_required"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_4

    .line 210
    :cond_6
    new-instance p2, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    .line 211
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, p1

    .line 212
    :cond_8
    :goto_2
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;->ONLINE_OR_OFFLINE_PIN_REQUIRED:Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;

    .line 210
    invoke-direct {p2, v2, p1}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;)V

    check-cast p2, Lcom/stripe/transaction/ChargeAttempt;

    return-object p2

    .line 203
    :cond_9
    const-string v0, "offline_pin_required"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    .line 205
    :cond_a
    new-instance p2, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    .line 206
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    move-object v2, p1

    .line 207
    :cond_c
    :goto_3
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;->OFFLINE_PIN_REQUIRED:Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;

    .line 205
    invoke-direct {p2, v2, p1}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;)V

    check-cast p2, Lcom/stripe/transaction/ChargeAttempt;

    return-object p2

    .line 220
    :cond_d
    :goto_4
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttemptForStandardAttempt(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1

    .line 223
    :cond_e
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->toDeclinedAttemptForStandardAttempt(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    return-object p1
.end method
