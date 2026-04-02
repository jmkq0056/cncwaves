.class public final Lcom/stripe/core/bbpos/hardware/BbposTranslation;
.super Ljava/lang/Object;
.source "BbposTranslation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposTranslation$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u00020\u0008*\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposTranslation;",
        "",
        "()V",
        "extractMagStripeReadResult",
        "Lcom/stripe/hardware/magstripe/MagStripeReadResult;",
        "cardData",
        "Lcom/stripe/bbpos/sdk/CardData;",
        "toTransactionResult",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposTranslation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposTranslation;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/BbposTranslation;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposTranslation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractMagStripeReadResult(Lcom/stripe/bbpos/sdk/CardData;)Lcom/stripe/hardware/magstripe/MagStripeReadResult;
    .locals 11

    const-string v0, "cardData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v2, p1, Lcom/stripe/bbpos/sdk/CardData;->encTrack2:Ljava/lang/String;

    .line 19
    iget-object v3, p1, Lcom/stripe/bbpos/sdk/CardData;->ksn:Ljava/lang/String;

    .line 20
    iget-object v4, p1, Lcom/stripe/bbpos/sdk/CardData;->maskedPan:Ljava/lang/String;

    .line 21
    iget-object v5, p1, Lcom/stripe/bbpos/sdk/CardData;->expiryDate:Ljava/lang/String;

    .line 22
    iget-object v6, p1, Lcom/stripe/bbpos/sdk/CardData;->serviceCode:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 32
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 33
    :goto_0
    new-instance p1, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;

    sget-object v0, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->BAD_SWIPE:Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    invoke-direct {p1, v0}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)V

    check-cast p1, Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    return-object p1

    .line 35
    :cond_1
    new-instance v1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    return-object v1

    .line 44
    :cond_2
    new-instance p1, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;

    sget-object v0, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->MSR_FAILURE:Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    invoke-direct {p1, v0}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)V

    check-cast p1, Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    return-object p1
.end method

.method public final toTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)Lcom/stripe/hardware/emv/TransactionResult$Result;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposTranslation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 72
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 64
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 62
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 61
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 59
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 58
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 57
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 56
    :pswitch_7
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_BLOCKED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 55
    :pswitch_8
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 54
    :pswitch_9
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 53
    :pswitch_a
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 52
    :pswitch_b
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 51
    :pswitch_c
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    .line 50
    :pswitch_d
    sget-object p1, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
