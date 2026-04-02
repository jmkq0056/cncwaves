.class public final Lcom/stripe/paymentcollection/ProcessingHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/ProcessingHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generatePresentProcessingEvent",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onPaymentCollectionDataUpdate",
        "new",
        "old",
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
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1159
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method

.method private final generatePresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 0

    .line 1250
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ProcessingHandler;->createPresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PresentProcessingEvent;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ProcessingHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 1165
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 1167
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/ProcessingHandler;->generatePresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1168
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/ProcessingHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1156
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 11

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1185
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEarlyTransactionAbortReason()Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 1186
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 1189
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedApplicationIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 1190
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    .line 1192
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAccountSelectionStatus()Lcom/stripe/paymentcollection/AccountSelectionStatus;

    move-result-object v5

    sget-object v6, Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;->INSTANCE:Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1195
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v6

    sget-object v7, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne v6, v7, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v2

    .line 1198
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move v7, v2

    .line 1200
    :goto_4
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePaymentCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1201
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object v8

    sget-object v9, Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v2

    .line 1204
    :goto_5
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v9

    sget-object v10, Lcom/stripe/hardware/paymentcollection/TransactionType;->MAGSTRIPE_PASSTHROUGH:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-ne v9, v10, :cond_6

    move v9, v3

    goto :goto_6

    :cond_6
    move v9, v2

    .line 1207
    :goto_6
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isWaitingForCard()Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isWaitingForCard()Z

    move-result p2

    if-nez p2, :cond_7

    move v2, v3

    :cond_7
    if-eqz v0, :cond_8

    .line 1210
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Empty candidate list."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez v4, :cond_9

    if-nez v1, :cond_9

    .line 1213
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->APPLICATION_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1214
    const-string p2, "Application selection requested."

    .line 1212
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v5, :cond_a

    .line 1218
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ACCOUNT_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1219
    const-string p2, "Account selection requested."

    .line 1217
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz v6, :cond_c

    .line 1222
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object p1

    sget-object p2, Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1223
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->MAGSTRIPE_PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "MagStripe Pin entry requested."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1225
    :cond_b
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Pin entry requested."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz v9, :cond_d

    if-eqz v8, :cond_d

    .line 1228
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->PASSTHROUGH_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_d
    if-eqz v7, :cond_e

    .line 1231
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1232
    const-string p2, "Online authorization data obtained."

    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz v8, :cond_f

    .line 1236
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1237
    const-string p2, "MagStripe online auth ready."

    .line 1235
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1239
    :cond_f
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ProcessingHandler;->checkForPrematureTransactionCompletionAndTransitionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_11

    .line 1242
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Card must be presented again."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ProcessingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    :goto_7
    return-void
.end method
