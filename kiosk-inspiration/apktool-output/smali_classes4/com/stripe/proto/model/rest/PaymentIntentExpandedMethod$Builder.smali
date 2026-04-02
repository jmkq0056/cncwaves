.class public final Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntentExpandedMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0008\u0010-\u001a\u00020\u0002H\u0016J\u0015\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000eJ\u0015\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010,J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0002\u0010.J\u001a\u0010\u001e\u001a\u00020\u00002\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001fJ\u0010\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00002\u0008\u0010$\u001a\u0004\u0018\u00010\u0012J\u0010\u0010%\u001a\u00020\u00002\u0008\u0010%\u001a\u0004\u0018\u00010\u0012J\u0012\u0010&\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0007J\u0010\u0010(\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010\u0012J\u0010\u0010)\u001a\u00020\u00002\u0008\u0010)\u001a\u0004\u0018\u00010\u0012J\u0010\u0010*\u001a\u00020\u00002\u0008\u0010*\u001a\u0004\u0018\u00010\u0012J\u0010\u0010+\u001a\u00020\u00002\u0008\u0010+\u001a\u0004\u0018\u00010\u0012R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u001e\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "amount_capturable",
        "amount_received",
        "amount_surcharge",
        "amount_tip",
        "application_fee_amount",
        "canceled_at",
        "capture_method",
        "Lcom/stripe/proto/model/rest/Method;",
        "charges",
        "Lcom/stripe/proto/model/rest/Charges;",
        "client_secret",
        "",
        "confirmation_method",
        "created",
        "currency",
        "customer",
        "description",
        "id",
        "last_payment_error",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "metadata",
        "",
        "payment_method",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "receipt_email",
        "setup_future_usage",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "statement_descriptor",
        "statement_descriptor_suffix",
        "status",
        "transfer_group",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public amount:Ljava/lang/Long;

.field public amount_capturable:Ljava/lang/Long;

.field public amount_received:Ljava/lang/Long;

.field public amount_surcharge:Ljava/lang/Long;

.field public amount_tip:Ljava/lang/Long;

.field public application_fee_amount:Ljava/lang/Long;

.field public canceled_at:Ljava/lang/Long;

.field public capture_method:Lcom/stripe/proto/model/rest/Method;

.field public charges:Lcom/stripe/proto/model/rest/Charges;

.field public client_secret:Ljava/lang/String;

.field public confirmation_method:Lcom/stripe/proto/model/rest/Method;

.field public created:Ljava/lang/Long;

.field public currency:Ljava/lang/String;

.field public customer:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

.field public livemode:Ljava/lang/Boolean;

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

.field public payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

.field public receipt_email:Ljava/lang/String;

.field public setup_future_usage:Ljava/lang/String;

.field public source:Lcom/stripe/proto/model/rest/Source;

.field public statement_descriptor:Ljava/lang/String;

.field public statement_descriptor_suffix:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public transfer_group:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 509
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 544
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->metadata:Ljava/util/Map;

    .line 565
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    .line 571
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_capturable(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_capturable:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_received(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_received:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_surcharge(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_surcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_tip(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_tip:Ljava/lang/Long;

    return-object p0
.end method

.method public final application_fee_amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->application_fee_amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
    .locals 32

    move-object/from16 v0, p0

    .line 810
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 811
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->id:Ljava/lang/String;

    .line 812
    iget-object v3, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->created:Ljava/lang/Long;

    .line 813
    iget-object v4, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->status:Ljava/lang/String;

    .line 814
    iget-object v5, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount:Ljava/lang/Long;

    .line 815
    iget-object v6, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->currency:Ljava/lang/String;

    .line 816
    iget-object v7, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 817
    iget-object v8, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->statement_descriptor:Ljava/lang/String;

    .line 818
    iget-object v9, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->description:Ljava/lang/String;

    .line 819
    iget-object v10, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->receipt_email:Ljava/lang/String;

    .line 820
    iget-object v11, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->livemode:Ljava/lang/Boolean;

    .line 821
    iget-object v12, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 822
    iget-object v13, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->metadata:Ljava/util/Map;

    .line 823
    iget-object v14, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->charges:Lcom/stripe/proto/model/rest/Charges;

    .line 824
    iget-object v15, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    move-object/from16 v16, v1

    .line 825
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_capturable:Ljava/lang/Long;

    move-object/from16 v17, v1

    .line 826
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_received:Ljava/lang/Long;

    move-object/from16 v18, v1

    .line 827
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 v19, v1

    .line 828
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->canceled_at:Ljava/lang/Long;

    move-object/from16 v20, v1

    .line 829
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    move-object/from16 v21, v1

    .line 830
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->client_secret:Ljava/lang/String;

    move-object/from16 v22, v1

    .line 831
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    move-object/from16 v23, v1

    .line 832
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->customer:Ljava/lang/String;

    move-object/from16 v24, v1

    .line 833
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->transfer_group:Ljava/lang/String;

    move-object/from16 v25, v1

    .line 834
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_tip:Ljava/lang/Long;

    move-object/from16 v26, v1

    .line 835
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 v27, v1

    .line 836
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    move-object/from16 v28, v1

    .line 837
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->amount_surcharge:Ljava/lang/Long;

    move-object/from16 v29, v1

    .line 838
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->setup_future_usage:Ljava/lang/String;

    .line 839
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v30

    move-object/from16 v31, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v31

    .line 810
    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final canceled_at(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->canceled_at:Ljava/lang/Long;

    return-object p0
.end method

.method public final capture_method(Lcom/stripe/proto/model/rest/Method;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 1

    const-string v0, "capture_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    return-object p0
.end method

.method public final charges(Lcom/stripe/proto/model/rest/Charges;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->charges:Lcom/stripe/proto/model/rest/Charges;

    return-object p0
.end method

.method public final client_secret(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->client_secret:Ljava/lang/String;

    return-object p0
.end method

.method public final confirmation_method(Lcom/stripe/proto/model/rest/Method;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 1

    const-string v0, "confirmation_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    return-object p0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final last_payment_error(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_method(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/model/rest/PaymentMethodOptions;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    return-object p0
.end method

.method public final receipt_email(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->receipt_email:Ljava/lang/String;

    return-object p0
.end method

.method public final setup_future_usage(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->setup_future_usage:Ljava/lang/String;

    return-object p0
.end method

.method public final source(Lcom/stripe/proto/model/rest/Source;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source is deprecated"
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    return-object p0
.end method

.method public final statement_descriptor(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->statement_descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public final statement_descriptor_suffix(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final transfer_group(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;->transfer_group:Ljava/lang/String;

    return-object p0
.end method
