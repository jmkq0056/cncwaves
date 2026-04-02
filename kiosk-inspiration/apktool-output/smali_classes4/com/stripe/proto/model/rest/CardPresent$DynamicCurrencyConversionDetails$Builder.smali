.class public final Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardPresent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cJ\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
        "()V",
        "cardholder_rate",
        "",
        "Ljava/lang/Float;",
        "fx_as_of",
        "original_amount",
        "",
        "Ljava/lang/Long;",
        "original_currency",
        "",
        "reference_fx_rate",
        "reference_markup_percent",
        "status",
        "transaction_fx_rate",
        "transaction_markup_percent",
        "build",
        "(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;",
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
.field public cardholder_rate:Ljava/lang/Float;

.field public fx_as_of:Ljava/lang/Float;

.field public original_amount:Ljava/lang/Long;

.field public original_currency:Ljava/lang/String;

.field public reference_fx_rate:Ljava/lang/Float;

.field public reference_markup_percent:Ljava/lang/Float;

.field public status:Ljava/lang/String;

.field public transaction_fx_rate:Ljava/lang/Float;

.field public transaction_markup_percent:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1085
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->build()Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
    .locals 11

    .line 1158
    new-instance v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    .line 1159
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->status:Ljava/lang/String;

    .line 1160
    iget-object v2, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->original_amount:Ljava/lang/Long;

    .line 1161
    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->original_currency:Ljava/lang/String;

    .line 1162
    iget-object v4, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->transaction_fx_rate:Ljava/lang/Float;

    .line 1163
    iget-object v5, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->transaction_markup_percent:Ljava/lang/Float;

    .line 1164
    iget-object v6, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->cardholder_rate:Ljava/lang/Float;

    .line 1165
    iget-object v7, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->reference_fx_rate:Ljava/lang/Float;

    .line 1166
    iget-object v8, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->reference_markup_percent:Ljava/lang/Float;

    .line 1167
    iget-object v9, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->fx_as_of:Ljava/lang/Float;

    .line 1168
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 1158
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cardholder_rate(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->cardholder_rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final fx_as_of(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->fx_as_of:Ljava/lang/Float;

    return-object p0
.end method

.method public final original_amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->original_amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final original_currency(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->original_currency:Ljava/lang/String;

    return-object p0
.end method

.method public final reference_fx_rate(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->reference_fx_rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final reference_markup_percent(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->reference_markup_percent:Ljava/lang/Float;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final transaction_fx_rate(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1129
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->transaction_fx_rate:Ljava/lang/Float;

    return-object p0
.end method

.method public final transaction_markup_percent(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;->transaction_markup_percent:Ljava/lang/Float;

    return-object p0
.end method
