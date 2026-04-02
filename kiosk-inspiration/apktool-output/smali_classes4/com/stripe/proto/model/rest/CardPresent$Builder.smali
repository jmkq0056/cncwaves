.class public final Lcom/stripe/proto/model/rest/CardPresent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardPresent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "Lcom/stripe/proto/model/rest/CardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010(J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0008\u0010)\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008J\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010*J\u0015\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010*J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008J\u0015\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010+J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0014\u0010 \u001a\u00020\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080!J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\u0008J\u0010\u0010#\u001a\u00020\u00002\u0008\u0010#\u001a\u0004\u0018\u00010\u0008J\u0010\u0010$\u001a\u00020\u00002\u0008\u0010$\u001a\u0004\u0018\u00010%J\u0010\u0010&\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\'R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/CardPresent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "()V",
        "amount_authorized",
        "",
        "Ljava/lang/Long;",
        "brand",
        "",
        "cardholder_name",
        "country",
        "description",
        "dynamic_currency_conversion",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
        "emv_auth_data",
        "exp_month",
        "",
        "Ljava/lang/Integer;",
        "exp_year",
        "fingerprint",
        "funding",
        "generated_card",
        "iin",
        "incremental_authorization_supported",
        "",
        "Ljava/lang/Boolean;",
        "issuer",
        "last4",
        "location",
        "network",
        "networks",
        "Lcom/stripe/proto/model/rest/CardNetworks;",
        "preferred_locales",
        "",
        "read_method",
        "reader_",
        "receipt",
        "Lcom/stripe/proto/model/rest/Receipt;",
        "wallet",
        "Lcom/stripe/proto/model/rest/Wallet;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/CardPresent$Builder;",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPresent$Builder;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/CardPresent$Builder;",
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
.field public amount_authorized:Ljava/lang/Long;

.field public brand:Ljava/lang/String;

.field public cardholder_name:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

.field public emv_auth_data:Ljava/lang/String;

.field public exp_month:Ljava/lang/Integer;

.field public exp_year:Ljava/lang/Integer;

.field public fingerprint:Ljava/lang/String;

.field public funding:Ljava/lang/String;

.field public generated_card:Ljava/lang/String;

.field public iin:Ljava/lang/String;

.field public incremental_authorization_supported:Ljava/lang/Boolean;

.field public issuer:Ljava/lang/String;

.field public last4:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public networks:Lcom/stripe/proto/model/rest/CardNetworks;

.field public preferred_locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public read_method:Ljava/lang/String;

.field public reader_:Ljava/lang/String;

.field public receipt:Lcom/stripe/proto/model/rest/Receipt;

.field public wallet:Lcom/stripe/proto/model/rest/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 440
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 475
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->preferred_locales:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount_authorized(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->amount_authorized:Ljava/lang/Long;

    return-object p0
.end method

.method public final brand(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent$Builder;->build()Lcom/stripe/proto/model/rest/CardPresent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/CardPresent;
    .locals 28

    move-object/from16 v0, p0

    .line 694
    new-instance v1, Lcom/stripe/proto/model/rest/CardPresent;

    .line 695
    iget-object v2, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->brand:Ljava/lang/String;

    .line 696
    iget-object v3, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->country:Ljava/lang/String;

    .line 697
    iget-object v4, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->emv_auth_data:Ljava/lang/String;

    .line 698
    iget-object v5, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->exp_month:Ljava/lang/Integer;

    .line 699
    iget-object v6, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->exp_year:Ljava/lang/Integer;

    .line 700
    iget-object v7, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->fingerprint:Ljava/lang/String;

    .line 701
    iget-object v8, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->funding:Ljava/lang/String;

    .line 702
    iget-object v9, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->generated_card:Ljava/lang/String;

    .line 703
    iget-object v10, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->last4:Ljava/lang/String;

    .line 704
    iget-object v11, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->read_method:Ljava/lang/String;

    .line 705
    iget-object v12, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    .line 706
    iget-object v13, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->preferred_locales:Ljava/util/List;

    .line 707
    iget-object v14, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->cardholder_name:Ljava/lang/String;

    .line 708
    iget-object v15, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    move-object/from16 v16, v1

    .line 709
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->incremental_authorization_supported:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    .line 710
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->iin:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 711
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->issuer:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 712
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->description:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 713
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->network:Ljava/lang/String;

    move-object/from16 v21, v1

    .line 714
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    move-object/from16 v22, v1

    .line 715
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->amount_authorized:Ljava/lang/Long;

    move-object/from16 v23, v1

    .line 716
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    move-object/from16 v24, v1

    .line 717
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->location:Ljava/lang/String;

    move-object/from16 v25, v1

    .line 718
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->reader_:Ljava/lang/String;

    .line 719
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/CardPresent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v26

    move-object/from16 v27, v25

    move-object/from16 v25, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v27

    .line 694
    invoke-direct/range {v1 .. v26}, Lcom/stripe/proto/model/rest/CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final cardholder_name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->cardholder_name:Ljava/lang/String;

    return-object p0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamic_currency_conversion(Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    return-object p0
.end method

.method public final emv_auth_data(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->emv_auth_data:Ljava/lang/String;

    return-object p0
.end method

.method public final exp_month(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->exp_month:Ljava/lang/Integer;

    return-object p0
.end method

.method public final exp_year(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->exp_year:Ljava/lang/Integer;

    return-object p0
.end method

.method public final fingerprint(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->fingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public final funding(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->funding:Ljava/lang/String;

    return-object p0
.end method

.method public final generated_card(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->generated_card:Ljava/lang/String;

    return-object p0
.end method

.method public final iin(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->iin:Ljava/lang/String;

    return-object p0
.end method

.method public final incremental_authorization_supported(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->incremental_authorization_supported:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final issuer(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method public final last4(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->last4:Ljava/lang/String;

    return-object p0
.end method

.method public final location(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final network(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->network:Ljava/lang/String;

    return-object p0
.end method

.method public final networks(Lcom/stripe/proto/model/rest/CardNetworks;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    return-object p0
.end method

.method public final preferred_locales(Ljava/util/List;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/CardPresent$Builder;"
        }
    .end annotation

    const-string v0, "preferred_locales"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->preferred_locales:Ljava/util/List;

    return-object p0
.end method

.method public final read_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->read_method:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->reader_:Ljava/lang/String;

    return-object p0
.end method

.method public final receipt(Lcom/stripe/proto/model/rest/Receipt;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    return-object p0
.end method

.method public final wallet(Lcom/stripe/proto/model/rest/Wallet;)Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    return-object p0
.end method
