.class public final Lcom/stripe/transaction/payment/EmvPayment;
.super Lcom/stripe/transaction/payment/Payment;
.source "EmvPayment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/payment/EmvPayment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u000bH\u00c6\u0003J;\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020\u000b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\u0008\u0010$\u001a\u00020\u000bH\u0016J\t\u0010%\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/transaction/payment/EmvPayment;",
        "Lcom/stripe/transaction/payment/Payment;",
        "authData",
        "",
        "interfaceType",
        "Lcom/stripe/hardware/emv/InterfaceType;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "sourceType",
        "Lcom/stripe/hardware/emv/SourceType;",
        "encryptedEmv",
        "",
        "(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)V",
        "getAuthData$annotations",
        "()V",
        "getAuthData",
        "()Ljava/lang/String;",
        "getEmvTransactionType",
        "()Lcom/stripe/hardware/emv/EmvTransactionType;",
        "getEncryptedEmv",
        "()Z",
        "getInterfaceType",
        "()Lcom/stripe/hardware/emv/InterfaceType;",
        "getSourceType",
        "()Lcom/stripe/hardware/emv/SourceType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "supportsSca",
        "toString",
        "public_release"
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
.field private final authData:Ljava/lang/String;

.field private final emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

.field private final encryptedEmv:Z

.field private final interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

.field private final sourceType:Lcom/stripe/hardware/emv/SourceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const-string v5, "authData"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "interfaceType"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "emvTransactionType"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "sourceType"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v0}, Lcom/stripe/transaction/payment/Payment;-><init>()V

    .line 17
    iput-object v7, v0, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    .line 20
    iput-object v2, v0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    .line 21
    iput-object v3, v0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    .line 22
    iput-boolean v4, v0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    .line 25
    sget-object v5, Lcom/stripe/transaction/payment/EmvPayment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/InterfaceType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v20, 0x0

    const-string v6, "encrypted_emv"

    const-string v8, "emv"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v5, v10, :cond_4

    if-ne v5, v9, :cond_3

    .line 35
    new-instance v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v4, :cond_0

    move-object v2, v6

    goto :goto_0

    :cond_0
    move-object v2, v8

    .line 37
    :goto_0
    sget-object v4, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v4, v7}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "9F39"

    invoke-virtual {v4, v5}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, v20

    .line 38
    :goto_1
    const-string v5, "91"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "contactless_magstripe_mode"

    goto :goto_2

    .line 39
    :cond_2
    const-string v4, "contactless_emv"

    :goto_2
    const v18, 0xffdc

    const/16 v19, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v11, v9

    const/4 v9, 0x0

    move v12, v10

    const/4 v10, 0x0

    move v13, v11

    const/4 v11, 0x0

    move v14, v12

    const/4 v12, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v22, v17

    const/16 v17, 0x0

    move/from16 v0, v21

    .line 35
    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_4
    move v0, v10

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v8

    .line 31
    :goto_3
    invoke-static {v2}, Lcom/stripe/transaction/payment/EmvPaymentKt;->toEmvProcessingMethod(Lcom/stripe/hardware/emv/EmvTransactionType;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v6

    move-object v6, v1

    .line 27
    new-instance v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    const v18, 0xffcc

    const/16 v19, 0x0

    const-string v3, "contact_emv"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    move-object v4, v1

    .line 45
    sget-object v1, Lcom/stripe/transaction/payment/EmvPayment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {p4 .. p4}, Lcom/stripe/hardware/emv/SourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_7

    const/4 v11, 0x2

    if-ne v1, v11, :cond_6

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/transaction/payment/EmvPayment;->getRestSource()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v2

    const/16 v10, 0x7a

    const/4 v11, 0x0

    const-string v3, "interac_present"

    move-object v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v1

    goto :goto_5

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    move-object v5, v4

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/transaction/payment/EmvPayment;->getRestSource()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v2

    const/16 v10, 0x7c

    const/4 v11, 0x0

    const-string v3, "card_present"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v1

    :goto_5
    move-object/from16 v2, p0

    .line 45
    invoke-virtual {v2, v1}, Lcom/stripe/transaction/payment/EmvPayment;->setRestSource(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V

    .line 60
    invoke-virtual {v2}, Lcom/stripe/transaction/payment/EmvPayment;->getSdkSource()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 61
    new-instance v4, Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    .line 64
    sget-object v1, Lcom/stripe/transaction/payment/EmvPayment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Lcom/stripe/hardware/emv/InterfaceType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v0, :cond_9

    const/4 v11, 0x2

    if-ne v1, v11, :cond_8

    .line 66
    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->CONTACTLESS:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    goto :goto_6

    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 65
    :cond_9
    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->CHIP_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    :goto_6
    move-object v8, v0

    const/16 v10, 0x17

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 61
    invoke-direct/range {v4 .. v11}, Lcom/stripe/proto/model/sdk/CardPaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/CreditCardBrand;Lcom/stripe/proto/model/sdk/CardEntryMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0xe

    .line 60
    invoke-static/range {v3 .. v9}, Lcom/stripe/proto/model/sdk/PaymentMethod;->copy$default(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v20

    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/stripe/transaction/payment/EmvPayment;->setSdkSource(Lcom/stripe/proto/model/sdk/PaymentMethod;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/stripe/transaction/payment/EmvPayment;-><init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/payment/EmvPayment;Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;ZILjava/lang/Object;)Lcom/stripe/transaction/payment/EmvPayment;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    :cond_4
    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/transaction/payment/EmvPayment;->copy(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)Lcom/stripe/transaction/payment/EmvPayment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAuthData$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0
.end method

.method public final component3()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final component4()Lcom/stripe/hardware/emv/SourceType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)Lcom/stripe/transaction/payment/EmvPayment;
    .locals 7

    const-string v0, "authData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emvTransactionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/transaction/payment/EmvPayment;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/transaction/payment/EmvPayment;-><init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/payment/EmvPayment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/payment/EmvPayment;

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    iget-object v3, p1, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    iget-object v3, p1, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    iget-object v3, p1, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    iget-boolean p1, p1, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAuthData()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final getEncryptedEmv()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    return v0
.end method

.method public final getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0
.end method

.method public final getSourceType()Lcom/stripe/hardware/emv/SourceType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->authData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/InterfaceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/EmvTransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/SourceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsSca()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmvPayment(authData=\u2588\u2588, interfaceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emvTransactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->sourceType:Lcom/stripe/hardware/emv/SourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedEmv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/payment/EmvPayment;->encryptedEmv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
