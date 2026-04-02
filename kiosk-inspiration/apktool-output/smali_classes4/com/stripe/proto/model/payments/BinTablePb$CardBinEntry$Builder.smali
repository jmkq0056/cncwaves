.class public final Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;",
        "()V",
        "card_brand",
        "Lcom/stripe/proto/model/payments/CreditCardBrand;",
        "commercial_card",
        "",
        "ebt_state",
        "Lcom/stripe/proto/model/payments/EbtState;",
        "hsa_fsa_card",
        "instrument_type",
        "Lcom/stripe/proto/model/payments/InstrumentType;",
        "prepaid_card",
        "ranges",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
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
.field public card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

.field public commercial_card:Z

.field public ebt_state:Lcom/stripe/proto/model/payments/EbtState;

.field public hsa_fsa_card:Z

.field public instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

.field public prepaid_card:Z

.field public ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 446
    sget-object v0, Lcom/stripe/proto/model/payments/InstrumentType;->UNKNOWN_TYPE:Lcom/stripe/proto/model/payments/InstrumentType;

    iput-object v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 449
    sget-object v0, Lcom/stripe/proto/model/payments/CreditCardBrand;->INVALID_CARD_BRAND:Lcom/stripe/proto/model/payments/CreditCardBrand;

    iput-object v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 455
    sget-object v0, Lcom/stripe/proto/model/payments/EbtState;->UNKNOWN_STATE:Lcom/stripe/proto/model/payments/EbtState;

    iput-object v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->build()Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;
    .locals 9

    .line 507
    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;

    .line 508
    iget-object v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    .line 509
    iget-object v2, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    .line 510
    iget-object v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 511
    iget-object v4, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    .line 512
    iget-boolean v5, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->prepaid_card:Z

    .line 513
    iget-boolean v6, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->commercial_card:Z

    .line 514
    iget-boolean v7, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->hsa_fsa_card:Z

    .line 515
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 507
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;-><init>(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/payments/EbtState;ZZZLokio/ByteString;)V

    return-object v0
.end method

.method public final card_brand(Lcom/stripe/proto/model/payments/CreditCardBrand;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 1

    const-string v0, "card_brand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iput-object p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->card_brand:Lcom/stripe/proto/model/payments/CreditCardBrand;

    return-object p0
.end method

.method public final commercial_card(Z)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->commercial_card:Z

    return-object p0
.end method

.method public final ebt_state(Lcom/stripe/proto/model/payments/EbtState;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 1

    const-string v0, "ebt_state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iput-object p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ebt_state:Lcom/stripe/proto/model/payments/EbtState;

    return-object p0
.end method

.method public final hsa_fsa_card(Z)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 0

    .line 503
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->hsa_fsa_card:Z

    return-object p0
.end method

.method public final instrument_type(Lcom/stripe/proto/model/payments/InstrumentType;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 1

    const-string v0, "instrument_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iput-object p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->instrument_type:Lcom/stripe/proto/model/payments/InstrumentType;

    return-object p0
.end method

.method public final prepaid_card(Z)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->prepaid_card:Z

    return-object p0
.end method

.method public final ranges(Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;)Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry$Builder;->ranges:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    return-object p0
.end method
