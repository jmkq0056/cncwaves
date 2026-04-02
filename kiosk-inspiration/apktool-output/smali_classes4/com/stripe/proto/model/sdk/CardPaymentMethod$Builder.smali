.class public final Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/CardPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/CardPaymentMethod;",
        "Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/CardPaymentMethod;",
        "()V",
        "card_brand",
        "Lcom/stripe/proto/model/sdk/CreditCardBrand;",
        "card_entry_method",
        "Lcom/stripe/proto/model/sdk/CardEntryMethod;",
        "expiration_date",
        "",
        "masked_pan",
        "build",
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
.field public card_brand:Lcom/stripe/proto/model/sdk/CreditCardBrand;

.field public card_entry_method:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public expiration_date:Ljava/lang/String;

.field public masked_pan:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->masked_pan:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->expiration_date:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/stripe/proto/model/sdk/CreditCardBrand;->INVALID_CREDIT_CARD_BRAND:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->card_brand:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    .line 141
    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->INVALID_ENTRY_METHOD:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->card_entry_method:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->build()Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/CardPaymentMethod;
    .locals 6

    .line 175
    new-instance v0, Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->masked_pan:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->expiration_date:Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->card_brand:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    .line 179
    iget-object v4, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->card_entry_method:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 180
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/sdk/CardPaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/CreditCardBrand;Lcom/stripe/proto/model/sdk/CardEntryMethod;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_brand(Lcom/stripe/proto/model/sdk/CreditCardBrand;)Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;
    .locals 1

    const-string v0, "card_brand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->card_brand:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p0
.end method

.method public final card_entry_method(Lcom/stripe/proto/model/sdk/CardEntryMethod;)Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;
    .locals 1

    const-string v0, "card_entry_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->card_entry_method:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    return-object p0
.end method

.method public final expiration_date(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;
    .locals 1

    const-string v0, "expiration_date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->expiration_date:Ljava/lang/String;

    return-object p0
.end method

.method public final masked_pan(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;
    .locals 1

    const-string v0, "masked_pan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;->masked_pan:Ljava/lang/String;

    return-object p0
.end method
