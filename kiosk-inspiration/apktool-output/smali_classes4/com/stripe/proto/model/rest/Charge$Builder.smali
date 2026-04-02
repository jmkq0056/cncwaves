.class public final Lcom/stripe/proto/model/rest/Charge$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Charge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Charge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Charge;",
        "Lcom/stripe/proto/model/rest/Charge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010)J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010)J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010)J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0008\u0010*\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010+J\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010)J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nJ\u0015\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010+J\u001a\u0010\u0017\u001a\u00020\u00002\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0018J\u0015\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010+J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\nJ\u0010\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010\nJ\u0015\u0010!\u001a\u00020\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010+J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0012\u0010$\u001a\u00020\u00002\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0007J\u0010\u0010&\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\nJ\u0010\u0010\'\u001a\u00020\u00002\u0008\u0010\'\u001a\u0004\u0018\u00010\nJ\u0010\u0010(\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u001e\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u001a\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Charge$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Charge;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "amount_refunded",
        "application_fee_amount",
        "authorization_code",
        "",
        "balance_transaction",
        "calculated_statement_descriptor",
        "captured",
        "",
        "Ljava/lang/Boolean;",
        "created",
        "currency",
        "description",
        "failure_code",
        "failure_message",
        "id",
        "livemode",
        "metadata",
        "",
        "paid",
        "payment_intent",
        "payment_method",
        "payment_method_details",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "receipt_email",
        "receipt_number",
        "receipt_url",
        "refunded",
        "refunds",
        "Lcom/stripe/proto/model/rest/Refunds;",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "statement_descriptor",
        "statement_descriptor_suffix",
        "status",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Charge$Builder;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charge$Builder;",
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

.field public amount_refunded:Ljava/lang/Long;

.field public application_fee_amount:Ljava/lang/Long;

.field public authorization_code:Ljava/lang/String;

.field public balance_transaction:Ljava/lang/String;

.field public calculated_statement_descriptor:Ljava/lang/String;

.field public captured:Ljava/lang/Boolean;

.field public created:Ljava/lang/Long;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public failure_code:Ljava/lang/String;

.field public failure_message:Ljava/lang/String;

.field public id:Ljava/lang/String;

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

.field public paid:Ljava/lang/Boolean;

.field public payment_intent:Ljava/lang/String;

.field public payment_method:Ljava/lang/String;

.field public payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

.field public receipt_email:Ljava/lang/String;

.field public receipt_number:Ljava/lang/String;

.field public receipt_url:Ljava/lang/String;

.field public refunded:Ljava/lang/Boolean;

.field public refunds:Lcom/stripe/proto/model/rest/Refunds;

.field public source:Lcom/stripe/proto/model/rest/Source;

.field public statement_descriptor:Ljava/lang/String;

.field public statement_descriptor_suffix:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 509
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 550
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_refunded(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->amount_refunded:Ljava/lang/Long;

    return-object p0
.end method

.method public final application_fee_amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->application_fee_amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final authorization_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->authorization_code:Ljava/lang/String;

    return-object p0
.end method

.method public final balance_transaction(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->balance_transaction:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charge$Builder;->build()Lcom/stripe/proto/model/rest/Charge;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Charge;
    .locals 32

    move-object/from16 v0, p0

    .line 819
    new-instance v1, Lcom/stripe/proto/model/rest/Charge;

    .line 820
    iget-object v2, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->id:Ljava/lang/String;

    .line 821
    iget-object v3, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->amount:Ljava/lang/Long;

    .line 822
    iget-object v4, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->amount_refunded:Ljava/lang/Long;

    .line 823
    iget-object v5, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->captured:Ljava/lang/Boolean;

    .line 824
    iget-object v6, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->refunded:Ljava/lang/Boolean;

    .line 825
    iget-object v7, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->created:Ljava/lang/Long;

    .line 826
    iget-object v8, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->currency:Ljava/lang/String;

    .line 827
    iget-object v9, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->description:Ljava/lang/String;

    .line 828
    iget-object v10, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->statement_descriptor:Ljava/lang/String;

    .line 829
    iget-object v11, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_email:Ljava/lang/String;

    .line 830
    iget-object v12, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->failure_code:Ljava/lang/String;

    .line 831
    iget-object v13, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->failure_message:Ljava/lang/String;

    .line 832
    iget-object v14, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->livemode:Ljava/lang/Boolean;

    .line 833
    iget-object v15, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->metadata:Ljava/util/Map;

    move-object/from16 v16, v1

    .line 834
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    move-object/from16 v17, v1

    .line 835
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_intent:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 836
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->status:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 837
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_method:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 838
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    move-object/from16 v21, v1

    .line 839
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->paid:Ljava/lang/Boolean;

    move-object/from16 v22, v1

    .line 840
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_url:Ljava/lang/String;

    move-object/from16 v23, v1

    .line 841
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    move-object/from16 v24, v1

    .line 842
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 v25, v1

    .line 843
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->balance_transaction:Ljava/lang/String;

    move-object/from16 v26, v1

    .line 844
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_number:Ljava/lang/String;

    move-object/from16 v27, v1

    .line 845
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 v28, v1

    .line 846
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->calculated_statement_descriptor:Ljava/lang/String;

    move-object/from16 v29, v1

    .line 847
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->authorization_code:Ljava/lang/String;

    .line 848
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/Charge$Builder;->buildUnknownFields()Lokio/ByteString;

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

    .line 819
    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/model/rest/Charge;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final calculated_statement_descriptor(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->calculated_statement_descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public final captured(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->captured:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->failure_code:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_message(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->failure_message:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/Charge$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final paid(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->paid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final payment_intent(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_intent:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_details(Lcom/stripe/proto/model/rest/PaymentMethodDetails;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    return-object p0
.end method

.method public final receipt_email(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_email:Ljava/lang/String;

    return-object p0
.end method

.method public final receipt_number(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_number:Ljava/lang/String;

    return-object p0
.end method

.method public final receipt_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_url:Ljava/lang/String;

    return-object p0
.end method

.method public final refunded(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->refunded:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final refunds(Lcom/stripe/proto/model/rest/Refunds;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    return-object p0
.end method

.method public final source(Lcom/stripe/proto/model/rest/Source;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source is deprecated"
    .end annotation

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    return-object p0
.end method

.method public final statement_descriptor(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->statement_descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public final statement_descriptor_suffix(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge$Builder;->status:Ljava/lang/String;

    return-object p0
.end method
