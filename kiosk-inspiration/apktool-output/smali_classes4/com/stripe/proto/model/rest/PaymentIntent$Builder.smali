.class public final Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0015\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0015\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0008\u00104\u001a\u00020\u0002H\u0016J\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0011J\u0015\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0015\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0002\u00105J\u001a\u0010!\u001a\u00020\u00002\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\"J\u0010\u0010#\u001a\u00020\u00002\u0008\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010%\u001a\u00020\u00002\u0008\u0010%\u001a\u0004\u0018\u00010\u0015J\u0010\u0010&\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\'\u001a\u00020\u00002\u0008\u0010\'\u001a\u0004\u0018\u00010(J\u0016\u0010)\u001a\u00020\u00002\u000e\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150*J\u0010\u0010+\u001a\u00020\u00002\u0008\u0010+\u001a\u0004\u0018\u00010\u0015J\u0010\u0010,\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u0015J\u0012\u0010-\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0007J\u0010\u0010/\u001a\u00020\u00002\u0008\u0010/\u001a\u0004\u0018\u00010\u0015J\u0010\u00100\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u00010\u0015J\u0010\u00101\u001a\u00020\u00002\u0008\u00101\u001a\u0004\u0018\u00010\u0015J\u0010\u00102\u001a\u00020\u00002\u0008\u00102\u001a\u0004\u0018\u00010\u0015R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010 R\u001e\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150*8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010-\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "amount_capturable",
        "amount_details",
        "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;",
        "amount_received",
        "amount_requested",
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
        "next_action",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
        "on_behalf_of",
        "payment_method",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "payment_method_types",
        "",
        "receipt_email",
        "setup_future_usage",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "statement_descriptor",
        "statement_descriptor_suffix",
        "status",
        "transfer_group",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;",
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

.field public amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

.field public amount_received:Ljava/lang/Long;

.field public amount_requested:Ljava/lang/Long;

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

.field public next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

.field public on_behalf_of:Ljava/lang/String;

.field public payment_method:Ljava/lang/String;

.field public payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

.field public payment_method_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 591
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 626
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->metadata:Ljava/util/Map;

    .line 647
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    .line 653
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    .line 683
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_capturable(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_capturable:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_details(Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    return-object p0
.end method

.method public final amount_received(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_received:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_requested(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_requested:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_surcharge(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_surcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public final amount_tip(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_tip:Ljava/lang/Long;

    return-object p0
.end method

.method public final application_fee_amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->application_fee_amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 37

    move-object/from16 v0, p0

    .line 942
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 943
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->id:Ljava/lang/String;

    .line 944
    iget-object v3, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->created:Ljava/lang/Long;

    .line 945
    iget-object v4, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->status:Ljava/lang/String;

    .line 946
    iget-object v5, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount:Ljava/lang/Long;

    .line 947
    iget-object v6, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->currency:Ljava/lang/String;

    .line 948
    iget-object v7, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 949
    iget-object v8, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->statement_descriptor:Ljava/lang/String;

    .line 950
    iget-object v9, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->description:Ljava/lang/String;

    .line 951
    iget-object v10, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->receipt_email:Ljava/lang/String;

    .line 952
    iget-object v11, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->livemode:Ljava/lang/Boolean;

    .line 953
    iget-object v12, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 954
    iget-object v13, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->metadata:Ljava/util/Map;

    .line 955
    iget-object v14, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->charges:Lcom/stripe/proto/model/rest/Charges;

    .line 956
    iget-object v15, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 957
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_capturable:Ljava/lang/Long;

    move-object/from16 v17, v1

    .line 958
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_received:Ljava/lang/Long;

    move-object/from16 v18, v1

    .line 959
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 v19, v1

    .line 960
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->canceled_at:Ljava/lang/Long;

    move-object/from16 v20, v1

    .line 961
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    move-object/from16 v21, v1

    .line 962
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->client_secret:Ljava/lang/String;

    move-object/from16 v22, v1

    .line 963
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    move-object/from16 v23, v1

    .line 964
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->customer:Ljava/lang/String;

    move-object/from16 v24, v1

    .line 965
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->transfer_group:Ljava/lang/String;

    move-object/from16 v25, v1

    .line 966
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    move-object/from16 v26, v1

    .line 967
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_tip:Ljava/lang/Long;

    move-object/from16 v27, v1

    .line 968
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 v28, v1

    .line 969
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    move-object/from16 v29, v1

    .line 970
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->on_behalf_of:Ljava/lang/String;

    move-object/from16 v30, v1

    .line 971
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->setup_future_usage:Ljava/lang/String;

    move-object/from16 v31, v1

    .line 972
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_surcharge:Ljava/lang/Long;

    move-object/from16 v32, v1

    .line 973
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_types:Ljava/util/List;

    move-object/from16 v33, v1

    .line 974
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    move-object/from16 v34, v1

    .line 975
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_requested:Ljava/lang/Long;

    .line 976
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v35

    move-object/from16 v36, v34

    move-object/from16 v34, v1

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

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v36

    .line 942
    invoke-direct/range {v1 .. v35}, Lcom/stripe/proto/model/rest/PaymentIntent;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final canceled_at(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->canceled_at:Ljava/lang/Long;

    return-object p0
.end method

.method public final capture_method(Lcom/stripe/proto/model/rest/Method;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 1

    const-string v0, "capture_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    return-object p0
.end method

.method public final charges(Lcom/stripe/proto/model/rest/Charges;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->charges:Lcom/stripe/proto/model/rest/Charges;

    return-object p0
.end method

.method public final client_secret(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->client_secret:Ljava/lang/String;

    return-object p0
.end method

.method public final confirmation_method(Lcom/stripe/proto/model/rest/Method;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 1

    const-string v0, "confirmation_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    return-object p0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final last_payment_error(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentIntent$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final next_action(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    return-object p0
.end method

.method public final on_behalf_of(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->on_behalf_of:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/model/rest/PaymentMethodOptions;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentIntent$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 922
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final receipt_email(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->receipt_email:Ljava/lang/String;

    return-object p0
.end method

.method public final setup_future_usage(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->setup_future_usage:Ljava/lang/String;

    return-object p0
.end method

.method public final source(Lcom/stripe/proto/model/rest/Source;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source is deprecated"
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    return-object p0
.end method

.method public final statement_descriptor(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->statement_descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public final statement_descriptor_suffix(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final transfer_group(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->transfer_group:Ljava/lang/String;

    return-object p0
.end method
