.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;
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
    name = "CollectPaymentMethodOperation"
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
    value = "SMAP\nTerminalSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3360:1\n1#2:3361\n1#2:3372\n1#2:3385\n1603#3,9:3362\n1855#3:3371\n1856#3:3373\n1612#3:3374\n1603#3,9:3375\n1855#3:3384\n1856#3:3386\n1612#3:3387\n*S KotlinDebug\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation\n*L\n1565#1:3372\n1615#1:3385\n1565#1:3362,9\n1565#1:3371\n1565#1:3373\n1565#1:3374\n1615#1:3375,9\n1615#1:3384\n1615#1:3386\n1615#1:3387\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004Bo\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0008\u0010\u001f\u001a\u00020\u0006H\u0002J\u0008\u0010 \u001a\u00020\u0008H\u0002J\u0008\u0010!\u001a\u00020\u0008H\u0002J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u0006H\u0002J\u0015\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0010\u00a2\u0006\u0002\u0008\'J\u0010\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020*H\u0002J\r\u0010+\u001a\u00020\u0016H\u0010\u00a2\u0006\u0002\u0008,J\u0008\u0010-\u001a\u00020.H\u0016J\u0015\u0010/\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u000200H\u0010\u00a2\u0006\u0002\u00081R\u0014\u0010\u0019\u001a\u00020\u0008X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "Lcom/stripe/cancelintent/CancelableIntentOperation;",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "skipTipping",
        "",
        "manualEntry",
        "updatePaymentIntent",
        "tipEligibleAmount",
        "",
        "enableCustomerCancellation",
        "requestDynamicCurrencyConversion",
        "surchargeNotice",
        "",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "onApiErrorCallback",
        "Lkotlin/Function1;",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;ZZZLjava/lang/Long;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V",
        "allowCompleteCancellation",
        "getAllowCompleteCancellation",
        "()Z",
        "Ljava/lang/Long;",
        "cancelIntent",
        "executeIfNotCanceled",
        "getUpdatedPaymentIntent",
        "isCollectionForOnlineOrOfflinePinSca",
        "isCollectionForSca",
        "maybePromptForDynamicCurrencyConversion",
        "paymentIntent",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onPaymentMethodCollected",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "onSuccess",
        "onSuccess$terminalsession_release",
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
.field private final allowCompleteCancellation:Z

.field private final allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field private final enableCustomerCancellation:Z

.field private final intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field private final manualEntry:Z

.field private final onApiErrorCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final requestDynamicCurrencyConversion:Z

.field private final skipTipping:Z

.field private final surchargeNotice:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

.field private final tipEligibleAmount:Ljava/lang/Long;

.field private final updatePaymentIntent:Z


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;ZZZLjava/lang/Long;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "ZZZ",
            "Ljava/lang/Long;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onApiErrorCallback"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1435
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1449
    check-cast p12, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p12}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 1436
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    .line 1437
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->skipTipping:Z

    .line 1438
    iput-boolean p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->manualEntry:Z

    .line 1439
    iput-boolean p5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    .line 1440
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->tipEligibleAmount:Ljava/lang/Long;

    .line 1441
    iput-boolean p7, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->enableCustomerCancellation:Z

    .line 1442
    iput-boolean p8, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->requestDynamicCurrencyConversion:Z

    .line 1443
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->surchargeNotice:Ljava/lang/String;

    .line 1444
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    .line 1447
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->onApiErrorCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 1454
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowCompleteCancellation:Z

    return-void
.end method

.method private final getUpdatedPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 47

    move-object/from16 v0, p0

    .line 1713
    iget-boolean v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    if-eqz v1, :cond_0

    .line 1714
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v1

    .line 1715
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    .line 1716
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/core/transaction/TransactionRepository;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v3

    .line 1717
    iget-boolean v4, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->requestDynamicCurrencyConversion:Z

    .line 1718
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPaymentIntentUpdater$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    move-result-object v5

    .line 1714
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/Adapter;->updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    goto :goto_0

    .line 1721
    :cond_0
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    :goto_0
    move-object v2, v1

    .line 1723
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object v39

    .line 1724
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v43

    .line 1725
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v40

    const/16 v45, 0x3

    const/16 v46, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const v44, 0x3fffffff    # 1.9999999f

    .line 1722
    invoke-static/range {v2 .. v46}, Lcom/stripe/stripeterminal/internal/common/extensions/PaymentIntentExtensionsKt;->copyWithVars$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    return-object v1
.end method

.method private final isCollectionForOnlineOrOfflinePinSca()Z
    .locals 3

    .line 1730
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getChargeAttemptManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttemptManager;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    .line 1731
    instance-of v1, v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v1, :cond_0

    .line 1732
    check-cast v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1733
    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;->getRequirement()Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;

    move-result-object v0

    sget-object v1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;->ONLINE_OR_OFFLINE_PIN_REQUIRED:Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isCollectionForSca()Z
    .locals 2

    .line 1737
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getChargeAttemptManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttemptManager;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    .line 1738
    instance-of v1, v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final maybePromptForDynamicCurrencyConversion(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 19

    .line 1684
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->getCardPresent()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->getDynamicCurrencyConversion()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1686
    sget-object v3, Lcom/stripe/currency/CountryCode;->Companion:Lcom/stripe/currency/CountryCode$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->getCardPresentDetails()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->getCountry()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Lcom/stripe/currency/CountryCode$Companion;->getByCode(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;

    move-result-object v18

    .line 1687
    sget-object v3, Lcom/stripe/currency/CountryCode;->Companion:Lcom/stripe/currency/CountryCode$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Location;->getAddress()Lcom/stripe/stripeterminal/external/models/Address;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Address;->getCountry()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v3, v5}, Lcom/stripe/currency/CountryCode$Companion;->getByCode(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;

    move-result-object v17

    .line 1689
    new-instance v6, Lcom/stripe/transaction/DynamicCurrencyConversionData;

    .line 1690
    new-instance v7, Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getAmount()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v3, v4, v5}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 1691
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getTransactionFxRate()F

    move-result v8

    .line 1692
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getTransactionMarkupPercent()F

    move-result v9

    .line 1693
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getCardholderRate()F

    move-result v10

    .line 1694
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getReferenceFxRate()Ljava/lang/Float;

    move-result-object v11

    .line 1695
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getReferenceMarkupPercent()Ljava/lang/Float;

    move-result-object v12

    .line 1696
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getFxAsOf()F

    move-result v13

    .line 1697
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getSetupFutureUsage()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v4

    :goto_2
    xor-int/lit8 v14, v0, 0x1

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->getCardPresent()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v15, v0

    goto :goto_3

    :cond_4
    move v15, v3

    .line 1699
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->getCardPresent()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->getRequestExtendedAuthorization()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_5
    move/from16 v16, v3

    .line 1689
    invoke-direct/range {v6 .. v18}, Lcom/stripe/transaction/DynamicCurrencyConversionData;-><init>(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V

    .line 1704
    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getDynamicCurrencyConversionOfferPresented()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1705
    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/stripe/core/transaction/TransactionRepository;->setDynamicCurrencyConversionOfferPresented(Z)V

    .line 1706
    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/stripe/stripeterminal/internal/common/Adapter;->selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V

    return-void

    :cond_6
    move-object/from16 v1, p0

    :cond_7
    return-void
.end method

.method private final onPaymentMethodCollected(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 1667
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->getUpdatedPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 1668
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->maybePromptForDynamicCurrencyConversion(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    .line 1670
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 1671
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1673
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->onApiErrorCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    :cond_0
    throw p1
.end method


# virtual methods
.method public cancelIntent()V
    .locals 4

    .line 1742
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1748
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    .line 1745
    const-string v2, "cancelPaymentIntent"

    const-string v3, "collectPaymentMethod"

    invoke-static {v0, v2, v3, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$createLogCancelCallback(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/callable/Callback;

    move-result-object v0

    .line 1750
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public executeIfNotCanceled()V
    .locals 27

    move-object/from16 v1, p0

    .line 1458
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->clearTipAmount()V

    .line 1459
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLocationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;->validateLocationServices()V

    .line 1460
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->waitForInput()V

    .line 1461
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getUpdatePaymentIntentParamRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;->resetIfNewPaymentIntent(Ljava/lang/String;)V

    .line 1463
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCollectPaymentMethodOperationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;

    move-result-object v2

    .line 1464
    iget-boolean v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->skipTipping:Z

    .line 1465
    iget-boolean v4, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->manualEntry:Z

    .line 1466
    iget-boolean v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    .line 1467
    iget-object v6, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->tipEligibleAmount:Ljava/lang/Long;

    .line 1468
    iget-boolean v7, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->enableCustomerCancellation:Z

    .line 1469
    iget-boolean v8, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->requestDynamicCurrencyConversion:Z

    .line 1470
    iget-object v9, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->surchargeNotice:Ljava/lang/String;

    .line 1463
    invoke-interface/range {v2 .. v9}, Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;->validateParams(ZZZLjava/lang/Long;ZZLjava/lang/String;)V

    .line 1473
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq v0, v2, :cond_1

    .line 1474
    iget-boolean v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1477
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 1476
    const-string v4, "Updating PaymentIntents is not supported while offline mode is enabled."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 1482
    :cond_1
    :goto_0
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    .line 1483
    iget-boolean v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->enableCustomerCancellation:Z

    .line 1484
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 1482
    :cond_3
    invoke-static {v0, v2, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->access$checkCustomerCancellationFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;ZLcom/stripe/stripeterminal/external/models/DeviceType;)V

    .line 1491
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmountDetails()Lcom/stripe/stripeterminal/external/models/AmountDetails;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/AmountDetails;->getTip()Lcom/stripe/stripeterminal/external/models/Tip;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Tip;->getAmount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1492
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v4

    sub-long/2addr v4, v2

    goto :goto_1

    .line 1493
    :cond_4
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v4

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_23

    .line 1502
    new-instance v8, Lcom/stripe/currency/Amount;

    .line 1504
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCurrency()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_5

    move-object v0, v2

    .line 1502
    :cond_5
    invoke-direct {v8, v4, v5, v0}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 1507
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v3

    .line 1509
    iget-boolean v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->requestDynamicCurrencyConversion:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1510
    :cond_6
    new-instance v9, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1511
    sget-object v10, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v14, 0xc

    const/4 v15, 0x0

    .line 1510
    const-string v11, "Dynamic Currency Conversion is not enabled on this account. Contact Stripe support to enable this feature."

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v9

    .line 1517
    :cond_7
    :goto_2
    iget-boolean v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->manualEntry:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    if-eqz v0, :cond_8

    goto :goto_3

    .line 1518
    :cond_8
    new-instance v9, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1519
    sget-object v10, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v14, 0xc

    const/4 v15, 0x0

    .line 1518
    const-string v11, "MO/TO payments are not enabled on this account. Contact Stripe support to enable this feature."

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v9

    .line 1524
    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->surchargeNotice:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 1525
    :cond_a
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v5

    goto :goto_4

    :cond_b
    move-object v5, v4

    :goto_4
    invoke-static {v0, v3, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->access$checkSurchargingFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lcom/stripe/stripeterminal/external/models/DeviceType;)V

    .line 1529
    :cond_c
    :goto_5
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eqz v0, :cond_10

    .line 1530
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getSetupFutureUsage()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->UNSPECIFIED:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eq v0, v5, :cond_e

    goto :goto_6

    .line 1531
    :cond_e
    new-instance v9, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1532
    sget-object v10, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v14, 0xc

    const/4 v15, 0x0

    .line 1531
    const-string v11, "This command requires allow_redisplay to be set as always or limited when saving payment methods with Terminal."

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v9

    .line 1538
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v0

    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v0, v5}, Lcom/stripe/core/transaction/TransactionRepository;->setAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    .line 1541
    :cond_10
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTipEligibleValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;

    move-result-object v0

    .line 1542
    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->tipEligibleAmount:Ljava/lang/Long;

    .line 1543
    iget-boolean v6, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->skipTipping:Z

    .line 1544
    invoke-static {v8}, Lcom/stripe/currency/AmountExtensionsKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object v7

    .line 1541
    invoke-interface {v0, v5, v6, v7}, Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;->validateTipEligibleAmount(Ljava/lang/Long;ZLjava/lang/String;)V

    .line 1547
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getUpdatePaymentIntentParamRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object v0

    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    invoke-interface {v0, v5, v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;->setIfNewPaymentIntent(Ljava/lang/String;Z)V

    .line 1550
    iget-boolean v0, v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1551
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_7

    :cond_11
    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1552
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->tipEligibleAmount:Ljava/lang/Long;

    if-eqz v0, :cond_13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 1553
    new-instance v0, Lcom/stripe/currency/Amount;

    iget-object v7, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCurrency()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    move-object v2, v7

    :goto_8
    invoke-direct {v0, v5, v6, v2}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    goto :goto_9

    :cond_13
    move-object v0, v4

    :goto_9
    move-object v14, v0

    goto :goto_a

    :cond_14
    move-object v14, v4

    .line 1557
    :goto_a
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->hasOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_16

    .line 1558
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getNetworkStatusProvider$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v0, v6, :cond_15

    goto :goto_b

    :cond_15
    move v11, v5

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v11, 0x1

    .line 1559
    :goto_c
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isDeferredAuthorizationCountry()Z

    move-result v12

    .line 1561
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v16

    .line 1564
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .line 1565
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getSettingsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/SettingsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getLpmConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->enabled_payment_method_types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object v7, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3362
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .line 3371
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3370
    check-cast v0, Ljava/lang/String;

    .line 1566
    :try_start_0
    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v13, v1

    check-cast v13, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "toUpperCase(...)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v13

    if-nez v13, :cond_18

    goto :goto_f

    .line 1567
    :cond_18
    invoke-static {v7}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to parse invalid LPMConfig Payment Method Type: "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v15, v5, [Lkotlin/Pair;

    invoke-interface {v0, v13, v2, v15}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    move-object v0, v4

    .line 1566
    :goto_f
    check-cast v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eqz v0, :cond_17

    .line 3370
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 3374
    :cond_19
    check-cast v9, Ljava/util/List;

    .line 3362
    check-cast v9, Ljava/lang/Iterable;

    .line 1570
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1564
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1571
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1574
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->getCardPresent()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v24, v2

    goto :goto_10

    :cond_1a
    move/from16 v24, v5

    .line 1576
    :goto_10
    iget-boolean v2, v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    if-eqz v2, :cond_1d

    .line 1577
    iget-boolean v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->manualEntry:Z

    if-nez v2, :cond_1d

    .line 1578
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getSetupFutureUsage()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    if-eqz v24, :cond_1d

    :cond_1c
    const/16 v25, 0x1

    goto :goto_11

    :cond_1d
    move/from16 v25, v5

    .line 1580
    :goto_11
    invoke-direct {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->isCollectionForSca()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1581
    invoke-direct {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->isCollectionForOnlineOrOfflinePinSca()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1582
    sget-object v0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;->ONLINE_OR_OFFLINE_PIN:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    goto :goto_12

    .line 1584
    :cond_1e
    sget-object v0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;->GENERIC:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    :goto_12
    move-object/from16 v19, v0

    .line 1587
    new-instance v15, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    .line 1589
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v17

    .line 1590
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v0, v2, v8}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$determineAmountToDisplayForCollection(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/currency/Amount;)Lcom/stripe/currency/Amount;

    move-result-object v18

    .line 1592
    iget-boolean v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->enableCustomerCancellation:Z

    move/from16 v20, v0

    .line 1587
    invoke-direct/range {v15 .. v20}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V

    move-object/from16 v2, v16

    check-cast v15, Lcom/stripe/transaction/PaymentMethodCollectionType;

    goto/16 :goto_14

    :cond_1f
    move-object/from16 v2, v16

    .line 1596
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1597
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v17

    .line 1599
    iget-boolean v9, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->skipTipping:Z

    .line 1600
    iget-boolean v10, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->manualEntry:Z

    .line 1603
    iget-boolean v13, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    .line 1605
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1606
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->getCardPresent()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1607
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->getRouting()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1608
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->getComputedPriority()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_20

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v4, v3}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoPriorities(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :cond_20
    move-object v15, v4

    .line 1609
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object v16

    .line 1610
    iget-boolean v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->enableCustomerCancellation:Z

    .line 1611
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v4, v5}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v20

    .line 1612
    iget-boolean v4, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->requestDynamicCurrencyConversion:Z

    .line 1613
    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v21

    .line 1614
    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->surchargeNotice:Ljava/lang/String;

    .line 1615
    check-cast v0, Ljava/lang/Iterable;

    .line 3375
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 3384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 3383
    check-cast v18, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-object/from16 v19, v0

    .line 1616
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;

    move/from16 v22, v3

    invoke-virtual/range {v18 .. v18}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;->fromTypeName(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3383
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object/from16 v0, v19

    move/from16 v3, v22

    goto :goto_13

    :cond_22
    move/from16 v22, v3

    .line 3387
    move-object/from16 v23, v6

    check-cast v23, Ljava/util/List;

    .line 1620
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    .line 1595
    new-instance v6, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    move-object/from16 v26, v0

    move/from16 v18, v4

    move/from16 v19, v22

    move-object/from16 v22, v5

    invoke-direct/range {v6 .. v26}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;-><init>(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    move-object v15, v6

    check-cast v15, Lcom/stripe/transaction/PaymentMethodCollectionType;

    .line 1624
    :goto_14
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    .line 1625
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v3, v11}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setCollectedOffline(Z)V

    .line 1628
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v3

    iget-object v4, v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/stripe/core/transaction/TransactionRepository;->setPaymentIntentId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->onPaymentMethodCollected(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    return-void

    .line 1496
    :cond_23
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1497
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 1496
    const-string v7, "Adjusted amount from recollecting after confirmation was less than or equal to 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5
.end method

.method protected getAllowCompleteCancellation()Z
    .locals 1

    .line 1454
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->allowCompleteCancellation:Z

    return v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {v0, v1, v2}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 1658
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 1659
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess$terminalsession_release()V
    .locals 3

    .line 1652
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {v0, v1, v2}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 1653
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onSuccess$terminalsession_release()V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 3

    .line 1633
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->updatePaymentIntent:Z

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Z)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 1640
    :try_start_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->cancelPaymentIntentActionRequired()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :catch_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 1645
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {p1, v0, v1}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 1646
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 1647
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getUpdatePaymentIntentParamRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;->forceReset()V

    .line 1648
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;->onCancelSuccess()V

    return-void
.end method
