.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/cancelintent/CancelableIntentOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmPaymentIntentOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        ">;",
        "Lcom/stripe/cancelintent/CancelableIntentOperation;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3360:1\n1#2:3361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B)\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J\u0015\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0010\u00a2\u0006\u0002\u0008\u0019J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0006J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u001fH\u0010\u00a2\u0006\u0002\u0008 R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "Lcom/stripe/cancelintent/CancelableIntentOperation;",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "amountSurcharge",
        "",
        "returnUrl",
        "",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V",
        "Ljava/lang/Long;",
        "cannotCurrentlyBeCanceledMessage",
        "getCannotCurrentlyBeCanceledMessage",
        "()Ljava/lang/String;",
        "cancelIntent",
        "",
        "collectScaPaymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "executeIfNotCanceled",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "confirmedIntent",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "startCancel",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "startCancel$terminalsession_release",
        "terminalsession_release"
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
.field private final amountSurcharge:Ljava/lang/Long;

.field private final intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field private final returnUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2701
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2706
    check-cast p5, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 2702
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    .line 2703
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->amountSurcharge:Ljava/lang/Long;

    .line 2704
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->returnUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getIntent$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 0

    .line 2700
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p0
.end method


# virtual methods
.method public cancelIntent()V
    .locals 4

    .line 2845
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2848
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2851
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    .line 2848
    const-string v2, "cancelPaymentIntent"

    const-string v3, "confirmPaymentIntent"

    invoke-static {v0, v2, v3, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$createLogCancelCallback(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/callable/Callback;

    move-result-object v0

    .line 2853
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public final collectScaPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 10

    .line 2825
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 2827
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->setIsCurrentlyCancelable(Z)V

    .line 2828
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    .line 2829
    new-instance v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    .line 2831
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v3

    .line 2832
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2833
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    new-instance v6, Lcom/stripe/currency/Amount;

    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v7

    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCurrency()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, ""

    :cond_0
    invoke-direct {v6, v7, v8, v9}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 2832
    invoke-static {v4, v5, v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$determineAmountToDisplayForCollection(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/currency/Amount;)Lcom/stripe/currency/Amount;

    move-result-object v4

    .line 2835
    sget-object v5, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;->GENERIC:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    const/4 v6, 0x0

    .line 2829
    invoke-direct/range {v1 .. v6}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType;

    .line 2828
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    const/4 v1, 0x0

    .line 2840
    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->setIsCurrentlyCancelable(Z)V

    return-object v0
.end method

.method public executeIfNotCanceled()V
    .locals 13

    .line 2713
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2714
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2715
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 2714
    const-string v3, "The PaymentIntent is not ready for processing."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 2720
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v0

    .line 2721
    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    .line 2723
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    .line 2725
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/core/transaction/TransactionRepository;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 2734
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->amountSurcharge:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 2735
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    invoke-static {v1, v0, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->access$checkSurchargingFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lcom/stripe/stripeterminal/external/models/DeviceType;)V

    .line 2737
    invoke-static {v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getUpdatePaymentIntentParamRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;->isUpdatePaymentIntentParamSet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2745
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->amountSurcharge:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    goto :goto_2

    .line 2746
    :cond_3
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2747
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 2746
    const-string v6, "Invalid surcharge parameter. Surcharge amount must be greater than or equal to 0."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 2738
    :cond_4
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2739
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 2738
    const-string v7, "Invalid surcharge parameter. updatePaymentIntent must be set to true on collectPaymentMethod in order to specify an amountSurcharge."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5

    .line 2753
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->returnUrl:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getSettingsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/SettingsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getLpmConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->default_return_url:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v12, v2

    goto :goto_4

    :cond_7
    :goto_3
    move-object v12, v0

    .line 2755
    :goto_4
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->processing()V

    .line 2756
    invoke-virtual {p0, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->setIsCurrentlyCancelable(Z)V

    .line 2757
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v4

    .line 2758
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    .line 2759
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1;-><init>(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 2760
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$2;-><init>(Ljava/lang/Object;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 2761
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$3;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$3;-><init>(Ljava/lang/Object;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 2762
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->getImmediateRecollectForSca()Z

    move-result v9

    .line 2763
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/paymentcollection/OnlineAuthStateListener;

    .line 2764
    iget-object v11, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->amountSurcharge:Ljava/lang/Long;

    .line 2757
    invoke-virtual/range {v4 .. v12}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    .line 2767
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    return-void

    .line 2726
    :cond_8
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "transactionRepository payment intent id: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/core/transaction/TransactionRepository;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Lkotlin/Pair;

    invoke-interface {v0, v2, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2727
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "confirmPaymentIntent id: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2728
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2729
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 2728
    const-string v5, "You must confirm the PaymentIntent that was most recently collected."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method

.method protected getCannotCurrentlyBeCanceledMessage()Ljava/lang/String;
    .locals 1

    .line 2709
    const-string v0, "Cannot cancel this operation while it is waiting for a network response"

    return-object v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2810
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 2811
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {p1, v0, v1}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 2812
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    return-void
.end method

.method public final onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 3

    const-string v0, "confirmedIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2818
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 2819
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {v0, v1, v2}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 2820
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 2821
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 2771
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2775
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 2780
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->getStarted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->getCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->canCurrentlyBeCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2782
    :cond_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object p1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v0, v1, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation$startCancel$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    :cond_2
    return-void
.end method
