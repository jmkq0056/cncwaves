.class public final Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethodOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0015\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0013R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "cardholder_rate",
        "",
        "Ljava/lang/Float;",
        "currency",
        "",
        "fx_as_of",
        "reference_fx_rate",
        "reference_markup_percent",
        "transaction_fx_rate",
        "transaction_markup_percent",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;",
        "build",
        "(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;",
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

.field public cardholder_rate:Ljava/lang/Float;

.field public currency:Ljava/lang/String;

.field public fx_as_of:Ljava/lang/Float;

.field public reference_fx_rate:Ljava/lang/Float;

.field public reference_markup_percent:Ljava/lang/Float;

.field public transaction_fx_rate:Ljava/lang/Float;

.field public transaction_markup_percent:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 934
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->build()Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;
    .locals 10

    .line 999
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    .line 1000
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->amount:Ljava/lang/Long;

    .line 1001
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->currency:Ljava/lang/String;

    .line 1002
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->transaction_fx_rate:Ljava/lang/Float;

    .line 1003
    iget-object v4, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->transaction_markup_percent:Ljava/lang/Float;

    .line 1004
    iget-object v5, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->cardholder_rate:Ljava/lang/Float;

    .line 1005
    iget-object v6, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->reference_fx_rate:Ljava/lang/Float;

    .line 1006
    iget-object v7, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->reference_markup_percent:Ljava/lang/Float;

    .line 1007
    iget-object v8, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->fx_as_of:Ljava/lang/Float;

    .line 1008
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 999
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cardholder_rate(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->cardholder_rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final fx_as_of(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->fx_as_of:Ljava/lang/Float;

    return-object p0
.end method

.method public final reference_fx_rate(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->reference_fx_rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final reference_markup_percent(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->reference_markup_percent:Ljava/lang/Float;

    return-object p0
.end method

.method public final transaction_fx_rate(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->transaction_fx_rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final transaction_markup_percent(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;->transaction_markup_percent:Ljava/lang/Float;

    return-object p0
.end method
