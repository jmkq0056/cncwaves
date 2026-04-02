.class public final Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;
.super Ljava/lang/Object;
.source "DefaultEndToEndEventLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u0006*\u00020\u0014H\u0002J\u000c\u0010\u0013\u001a\u00020\u0006*\u00020\u0015H\u0007J\u000c\u0010\u0013\u001a\u0004\u0018\u00010\u0006*\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;",
        "",
        "()V",
        "LOGGER",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "getCollectionFailureReason",
        "Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "result",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "getCollectionFailureReason$impl_release",
        "getResult",
        "state",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "getStateWhenCancelled",
        "getStateWhenTimedOut",
        "getTransactionRequestType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "toCollectionFailureReason",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "impl_release"
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getResult(Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)Lcom/stripe/paymentcollection/metrics/Result;
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->getResult(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)Lcom/stripe/paymentcollection/metrics/Result;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStateWhenCancelled(Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->getStateWhenCancelled(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStateWhenTimedOut(Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->getStateWhenTimedOut(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object p0

    return-object p0
.end method

.method private final getResult(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)Lcom/stripe/paymentcollection/metrics/Result;
    .locals 1

    .line 147
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p2, v0, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCollectionResultType()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    move-result-object p1

    sget-object p2, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->SUCCESS:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    if-ne p1, p2, :cond_0

    .line 150
    sget-object p1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    return-object p1

    .line 152
    :cond_0
    sget-object p1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    return-object p1
.end method

.method private final getStateWhenCancelled(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 0

    .line 158
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getStateWhenCancelled()Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object p1

    return-object p1
.end method

.method private final getStateWhenTimedOut(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;
    .locals 0

    .line 160
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getStateWhenTimedOut()Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object p1

    return-object p1
.end method

.method private final getTransactionRequestType(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 0

    .line 156
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object p1

    return-object p1
.end method

.method private final toCollectionFailureReason(Lcom/stripe/hardware/emv/TransactionResult$Result;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 1

    .line 214
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 229
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CARD_STILL_INSERTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 228
    :pswitch_1
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 227
    :pswitch_2
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 226
    :pswitch_3
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 225
    :pswitch_4
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CHECK_MOBILE_DEVICE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 224
    :pswitch_5
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ICC_CARD_REMOVED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 223
    :pswitch_6
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->DEVICE_FAILURE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 222
    :pswitch_7
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CARD_BLOCKED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 221
    :pswitch_8
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 220
    :pswitch_9
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 219
    :pswitch_a
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 218
    :pswitch_b
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->READER_TERMINATED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 217
    :pswitch_c
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->READER_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 216
    :pswitch_d
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    :pswitch_e
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final getCollectionFailureReason$impl_release(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEarlyTransactionAbortReason()Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    move-result-object p2

    .line 169
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 174
    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->toCollectionFailureReason(Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->toCollectionFailureReason(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->toCollectionFailureReason(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 176
    invoke-direct {p0, v2}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->toCollectionFailureReason(Lcom/stripe/hardware/emv/TransactionResult$Result;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_6
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    :goto_0
    if-nez p1, :cond_7

    .line 178
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    :cond_7
    return-object p1
.end method

.method public final toCollectionFailureReason(Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 209
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->PIN_ENTRY_TIMED_OUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 208
    :cond_1
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->PIN_ENTRY_CANCELED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 207
    :cond_2
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 206
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CHIP_CARD_INITIALIZATION_FAILED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1
.end method

.method public final toCollectionFailureReason(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 184
    :cond_0
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 185
    :cond_1
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;

    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 186
    :cond_2
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    .line 187
    :cond_3
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 188
    :cond_4
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    .line 189
    :cond_5
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;

    :goto_4
    if-eqz v0, :cond_6

    .line 190
    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ONLINE_CONFIRMATION_UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 191
    :cond_6
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v0, :cond_7

    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 192
    :cond_7
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;

    if-eqz v0, :cond_8

    sget-object p1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->INVALID_COLLECTED_DATA:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p1

    .line 193
    :cond_8
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_5

    .line 194
    :cond_9
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;

    :goto_5
    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_6

    .line 195
    :cond_a
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_7

    .line 196
    :cond_b
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_8

    .line 197
    :cond_c
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;

    :goto_8
    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_9

    .line 198
    :cond_d
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    :goto_9
    if-eqz v0, :cond_e

    goto :goto_a

    .line 199
    :cond_e
    instance-of v1, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;

    :goto_a
    if-eqz v1, :cond_f

    const/4 p1, 0x0

    return-object p1

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
