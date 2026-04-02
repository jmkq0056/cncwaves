.class public final Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;
.super Ljava/lang/Object;
.source "OfflineCardPresentDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineCardPresentDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineCardPresentDetails.kt\ncom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u000f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\rH\u00c6\u0001R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;",
        "",
        "()V",
        "serializedName",
        "",
        "Lcom/stripe/misc/CardBrand;",
        "getSerializedName",
        "(Lcom/stripe/misc/CardBrand;)Ljava/lang/String;",
        "fromEmvDataAndReadMethod",
        "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;",
        "emvData",
        "readMethod",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;-><init>()V

    return-void
.end method

.method private final getSerializedName(Lcom/stripe/misc/CardBrand;)Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/misc/CardBrand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 100
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "visa"

    return-object p1

    .line 99
    :pswitch_1
    const-string p1, "unknown"

    return-object p1

    .line 98
    :pswitch_2
    const-string p1, "unionpay"

    return-object p1

    .line 97
    :pswitch_3
    const-string p1, "mastercard"

    return-object p1

    .line 96
    :pswitch_4
    const-string p1, "girocard"

    return-object p1

    .line 95
    :pswitch_5
    const-string p1, "jcb"

    return-object p1

    .line 94
    :pswitch_6
    const-string p1, "eftpos_au"

    return-object p1

    .line 93
    :pswitch_7
    const-string p1, "discover"

    return-object p1

    .line 92
    :pswitch_8
    const-string p1, "diners"

    return-object p1

    .line 91
    :pswitch_9
    const-string p1, "amex"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final fromEmvDataAndReadMethod(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;
    .locals 13

    const-string v0, "emvData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 76
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationId()Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/stripe/hardware/emv/ApplicationIdKt;->getCardBrandForApplication(Lcom/stripe/hardware/emv/ApplicationId;)Lcom/stripe/misc/CardBrand;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/stripe/misc/CardBrand;->UNKNOWN:Lcom/stripe/misc/CardBrand;

    :cond_1
    invoke-direct {v2, v3}, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;->getSerializedName(Lcom/stripe/misc/CardBrand;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getExpMonthAndYear()Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v3

    .line 79
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getExpMonthAndYear()Lkotlin/Pair;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit16 v3, v2, 0x7d0

    :cond_3
    move v7, v3

    .line 80
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getLast4()Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getCardholderName()Ljava/lang/String;

    move-result-object v10

    .line 82
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReceiptDetails;->Companion:Lcom/stripe/stripeterminal/external/models/ReceiptDetails$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/external/models/ReceiptDetails$Companion;->fromEmvData$public_release(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    move-result-object v11

    .line 84
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getLanguagePreferences()Ljava/util/List;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_5
    move-object v12, v1

    .line 75
    new-instance v4, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    move-object v9, p2

    invoke-direct/range {v4 .. v12}, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Ljava/util/List;)V

    return-object v4

    :cond_6
    return-object v1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
