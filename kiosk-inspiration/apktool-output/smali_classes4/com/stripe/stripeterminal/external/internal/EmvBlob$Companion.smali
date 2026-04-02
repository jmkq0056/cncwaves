.class public final Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;
.super Ljava/lang/Object;
.source "EmvBlob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/internal/EmvBlob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0017J=\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u001cJ\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;",
        "",
        "()V",
        "OFFLINE_PIN_CVM_VALUE",
        "",
        "ONLINE_PIN_CVM_VALUE",
        "PIN_BLOCK",
        "buildApplicationSpecificTlvs",
        "pan",
        "computedPriority",
        "",
        "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
        "buildCvmEmvData",
        "simulatedCardPan",
        "isScaRecollection",
        "",
        "fromCardType",
        "Lcom/stripe/stripeterminal/external/internal/EmvBlob;",
        "cardType",
        "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;",
        "fromCardType$public_release",
        "fromTestCardNumber",
        "testCardNumber",
        "fromTestCardNumber$public_release",
        "generateEmvData",
        "expMonth",
        "",
        "expYear",
        "generateEmvData$public_release",
        "generateTlv",
        "tag",
        "value",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;-><init>()V

    return-void
.end method

.method private final buildApplicationSpecificTlvs(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 99
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/RoutingPriority;->DOMESTIC:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x2

    .line 101
    new-array v6, v5, [Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    sget-object v7, Lcom/stripe/stripeterminal/external/models/RoutingPriority;->DOMESTIC:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    aput-object v7, v6, v3

    .line 102
    sget-object v7, Lcom/stripe/stripeterminal/external/models/RoutingPriority;->INTERNATIONAL:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    aput-object v7, v6, v4

    .line 100
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 105
    sget-object v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->INTERAC:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 106
    sget-object v7, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 108
    new-array v8, v5, [Ljava/lang/String;

    sget-object v9, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT_MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 109
    sget-object v9, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 107
    invoke-static {v8, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 111
    sget-object v9, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_US_COMMON_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0xe

    .line 114
    new-array v10, v10, [Ljava/lang/String;

    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 115
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 116
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 117
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_INSUFFICIENT_FUNDS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 118
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_LOST_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    aput-object v11, v10, v13

    .line 119
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_STOLEN_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x5

    aput-object v11, v10, v14

    .line 120
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_EXPIRED_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    aput-object v11, v10, v14

    .line 121
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_PROCESSING_ERROR:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x7

    aput-object v11, v10, v14

    .line 122
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x8

    aput-object v11, v10, v14

    .line 123
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x9

    aput-object v11, v10, v14

    .line 124
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xa

    aput-object v11, v10, v14

    .line 125
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xb

    aput-object v11, v10, v14

    .line 128
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xc

    aput-object v11, v10, v14

    .line 129
    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_US_COMMON_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xd

    aput-object v11, v10, v14

    .line 113
    invoke-static {v10, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 133
    new-array v11, v5, [Ljava/lang/String;

    sget-object v14, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->AMEX:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v14}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v3

    .line 134
    sget-object v14, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->AMEX_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v14}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v4

    .line 132
    invoke-static {v11, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 138
    new-array v14, v13, [Ljava/lang/String;

    sget-object v15, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v15}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    .line 139
    sget-object v15, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v15}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 140
    sget-object v15, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD_PREPAID:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v15}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 142
    sget-object v15, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT_MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v15}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v12

    .line 137
    invoke-static {v14, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 146
    new-array v13, v13, [Ljava/lang/String;

    sget-object v15, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DISCOVER:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v15}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v3

    .line 147
    sget-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DISCOVER_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v4

    .line 148
    sget-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DINERS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v5

    .line 149
    sget-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DINERS_14_DIGITS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v12

    .line 145
    invoke-static {v13, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 152
    sget-object v12, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->JCB:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v12}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 153
    sget-object v13, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->UNION_PAY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v13}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v6, :cond_1

    .line 157
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->INTERAC:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->INTERAC:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v7, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 158
    :cond_2
    new-instance v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 159
    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v11, 0xc

    const/4 v12, 0x0

    .line 158
    const-string v8, "You cannot use proprietary eftpos_au debit card with this PaymentIntent\'s routing option. We recommend setting the PaymentIntent\'s capture method to `automatic` or `manual_preferred`"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v6

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 164
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    .line 165
    new-instance v0, Lkotlin/Pair;

    .line 166
    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationId;

    .line 167
    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 165
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_6

    if-eqz v1, :cond_6

    .line 170
    new-instance v0, Lkotlin/Pair;

    .line 171
    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;

    .line 172
    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 170
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz v10, :cond_7

    .line 175
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->VISA_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->VISA:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-eqz v11, :cond_8

    .line 176
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->AMEX_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->AMEX:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    if-eqz v14, :cond_9

    .line 177
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->MASTERCARD_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->MASTERCARD:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    if-eqz v12, :cond_a

    .line 178
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->JCB:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->JCB:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    .line 179
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->DISCOVER:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->DISCOVER:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    .line 180
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->UNION_PAY:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->UNION_PAY_CREDIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 181
    :cond_c
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v13, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :goto_2
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/hardware/emv/ApplicationId;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    if-nez v1, :cond_d

    const/4 v2, -0x1

    goto :goto_3

    .line 184
    :cond_d
    sget-object v2, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/ApplicationId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    :goto_3
    if-eq v2, v4, :cond_f

    if-eq v2, v5, :cond_e

    goto :goto_4

    .line 186
    :cond_e
    sget-object v13, Lcom/stripe/hardware/emv/AccountType;->SAVINGS:Lcom/stripe/hardware/emv/AccountType;

    goto :goto_4

    .line 185
    :cond_f
    sget-object v13, Lcom/stripe/hardware/emv/AccountType;->CHECKING:Lcom/stripe/hardware/emv/AccountType;

    .line 191
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_10

    .line 193
    sget-object v3, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->Companion:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;

    const-string v4, "9F06"

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/ApplicationId;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    sget-object v3, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->Companion:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;

    const-string v4, "84"

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/ApplicationId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eqz v0, :cond_11

    .line 197
    sget-object v1, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->Companion:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;

    .line 199
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/ApplicationPreferredName;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 200
    const-string v0, ""

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    sget-object v0, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;->INSTANCE:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v3, "9F12"

    invoke-direct {v1, v3, v0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz v13, :cond_12

    .line 204
    invoke-virtual {v13}, Lcom/stripe/hardware/emv/AccountType;->toTlvBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final buildCvmEmvData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 80
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "9F34"

    if-nez v0, :cond_3

    .line 81
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    const-string p1, ""

    return-object p1

    .line 89
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "020000"

    invoke-direct {p0, v1, p2}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 90
    const-string p2, "99"

    const-string v0, "0000000000000000"

    invoke-direct {p0, p2, v0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_3
    :goto_1
    const-string p1, "410302"

    invoke-direct {p0, v1, p1}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic generateEmvData$public_release$default(Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;Ljava/lang/String;IILjava/util/List;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateEmvData$public_release(Ljava/lang/String;IILjava/util/List;Z)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object p0

    return-object p0
.end method

.method private final generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 210
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toUpperCase(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    const/16 v3, 0x10

    .line 212
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x30

    .line 214
    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final fromCardType$public_release(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 9

    const-string v0, "cardType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getExpMonth()I

    move-result v3

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getExpYear()I

    move-result v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateEmvData$public_release$default(Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;Ljava/lang/String;IILjava/util/List;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object p1

    return-object p1
.end method

.method public final fromTestCardNumber$public_release(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 9

    const-string v0, "testCardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/16 v3, 0xc

    const/16 v4, 0x1e

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateEmvData$public_release$default(Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;Ljava/lang/String;IILjava/util/List;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object p1

    return-object p1
.end method

.method public final generateEmvData$public_release(Ljava/lang/String;IILjava/util/List;Z)Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;Z)",
            "Lcom/stripe/stripeterminal/external/internal/EmvBlob;"
        }
    .end annotation

    const-string v0, "pan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPriority"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "57"

    invoke-direct {p0, v1, v0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->INTERAC:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "05"

    goto :goto_0

    :cond_0
    const-string v1, "07"

    .line 53
    :goto_0
    const-string v2, "9F39"

    invoke-direct {p0, v2, v1}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->buildApplicationSpecificTlvs(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p4

    .line 60
    const-string v2, "95"

    const-string v3, "0000008000"

    invoke-direct {p0, v2, v3}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "5F24"

    invoke-direct {p0, p3, p2}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v3, 0xf

    if-ne p3, v3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v3, 0x46

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    const-string v3, "C4"

    invoke-direct {p0, v3, p3}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 64
    const-string v3, "5F2D"

    const-string v4, "656E"

    invoke-direct {p0, v3, v4}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateTlv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v4, Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 70
    invoke-direct {p0, p1, p5}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->buildCvmEmvData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 66
    invoke-direct {v4, p1, p2}, Lcom/stripe/stripeterminal/external/internal/EmvBlob;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method
