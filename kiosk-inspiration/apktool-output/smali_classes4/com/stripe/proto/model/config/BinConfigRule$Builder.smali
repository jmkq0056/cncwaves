.class public final Lcom/stripe/proto/model/config/BinConfigRule$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BinConfigRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/BinConfigRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/BinConfigRule;",
        "Lcom/stripe/proto/model/config/BinConfigRule$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/BinConfigRule$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/BinConfigRule;",
        "()V",
        "attribute",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;",
        "bin_entry",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "credit_card_brand",
        "Lcom/stripe/proto/model/payments/CreditCardBrand;",
        "gift_card_brand",
        "Lcom/stripe/proto/model/payments/GiftCardBrand;",
        "rules",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;",
        "type",
        "Lcom/stripe/proto/model/payments/InstrumentType;",
        "build",
        "terminal_release"
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
.field public attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

.field public bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

.field public credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

.field public gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

.field public rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

.field public type:Lcom/stripe/proto/model/payments/InstrumentType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 165
    sget-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

    iput-object v0, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 168
    sget-object v0, Lcom/stripe/proto/model/payments/CreditCardBrand;->INVALID_CARD_BRAND:Lcom/stripe/proto/model/payments/CreditCardBrand;

    iput-object v0, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 171
    sget-object v0, Lcom/stripe/proto/model/payments/GiftCardBrand;->DEFAULT_GIFT:Lcom/stripe/proto/model/payments/GiftCardBrand;

    iput-object v0, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    .line 174
    sget-object v0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;->UNKNOWN:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    iput-object v0, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    return-void
.end method


# virtual methods
.method public final attribute(Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;)Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 1

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    return-object p0
.end method

.method public final bin_entry(Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;)Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->build()Lcom/stripe/proto/model/config/BinConfigRule;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/BinConfigRule;
    .locals 8

    .line 224
    new-instance v0, Lcom/stripe/proto/model/config/BinConfigRule;

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 226
    iget-object v2, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 227
    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    .line 228
    iget-object v4, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->attribute:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;

    .line 229
    iget-object v5, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->bin_entry:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 230
    iget-object v6, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    .line 231
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 224
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/config/BinConfigRule;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)V

    return-object v0
.end method

.method public final credit_card_brand(Lcom/stripe/proto/model/payments/CreditCardBrand;)Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 1

    const-string v0, "credit_card_brand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->credit_card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    return-object p0
.end method

.method public final gift_card_brand(Lcom/stripe/proto/model/payments/GiftCardBrand;)Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 1

    const-string v0, "gift_card_brand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->gift_card_brand:Lcom/stripe/proto/model/payments/GiftCardBrand;

    return-object p0
.end method

.method public final rules(Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;)Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->rules:Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/model/payments/InstrumentType;)Lcom/stripe/proto/model/config/BinConfigRule$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$Builder;->type:Lcom/stripe/proto/model/payments/InstrumentType;

    return-object p0
.end method
