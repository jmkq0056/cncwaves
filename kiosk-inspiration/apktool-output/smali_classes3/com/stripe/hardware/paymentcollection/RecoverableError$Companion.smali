.class public final Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;
.super Ljava/lang/Object;
.source "RecoverableError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/paymentcollection/RecoverableError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;",
        "",
        "()V",
        "fromIntermediateTransactionError",
        "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
        "error",
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        "fromMagStripeReadFailure",
        "failureType",
        "Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;",
        "fromTransactionResult",
        "result",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
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

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIntermediateTransactionError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 161
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->PROCESSING_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 160
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->NOT_ACCEPTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 159
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 158
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED_CODE_05:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 157
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 156
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 155
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_NOT_READABLE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 154
    :pswitch_7
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 153
    :pswitch_8
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 152
    :pswitch_9
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->WRONG_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 151
    :pswitch_a
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 150
    :pswitch_b
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_FUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 149
    :pswitch_c
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 148
    :pswitch_d
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->EXPIRED_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 147
    :pswitch_e
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 146
    :pswitch_f
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 145
    :pswitch_10
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_TRANSACTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 144
    :pswitch_11
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 142
    :pswitch_12
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TOO_MANY_TAPS:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 141
    :pswitch_13
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->BAD_TAP_READ:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 140
    :pswitch_14
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 139
    :pswitch_15
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 138
    :pswitch_16
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch
.end method

.method public final fromMagStripeReadFailure(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    const-string v0, "failureType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 130
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 129
    :cond_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->SWIPE_FAILED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1
.end method

.method public final fromTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 179
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TOO_MANY_TAPS:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 178
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 177
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 176
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 175
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 174
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_BLOCKED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 173
    :pswitch_7
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 172
    :pswitch_8
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p1

    .line 171
    :pswitch_9
    sget-object p1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_REMOVED_TOO_SOON:Lcom/stripe/hardware/paymentcollection/RecoverableError;

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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
