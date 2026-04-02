.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;
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
    name = "CollectSetupIntentPaymentMethodOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        ">;",
        "Lcom/stripe/cancelintent/CancelableIntentOperation;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B7\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0002J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u001dH\u0010\u00a2\u0006\u0002\u0008\u001eR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "Lcom/stripe/cancelintent/CancelableIntentOperation;",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "customerConsentCollected",
        "",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "manualEntry",
        "enableCustomerCancellation",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;ZZLcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V",
        "cancelIntent",
        "",
        "executeIfNotCanceled",
        "isCollectionForSca",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
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
.field private final allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field private final customerConsentCollected:Z

.field private final enableCustomerCancellation:Z

.field private final intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

.field private final manualEntry:Z

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;ZZLcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Z",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1827
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1834
    check-cast p7, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p7}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 1828
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    .line 1829
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->customerConsentCollected:Z

    .line 1830
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    .line 1831
    iput-boolean p5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->manualEntry:Z

    .line 1832
    iput-boolean p6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->enableCustomerCancellation:Z

    return-void
.end method

.method private final isCollectionForSca()Z
    .locals 2

    .line 1939
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getChargeAttemptManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttemptManager;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    .line 1940
    instance-of v1, v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

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

.method private final onSuccess(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V
    .locals 2

    .line 1933
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 1934
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 1935
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    return-void
.end method


# virtual methods
.method public cancelIntent()V
    .locals 4

    .line 1944
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1951
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object v1

    .line 1948
    const-string v2, "cancelSetupIntent"

    const-string v3, "collectSetupIntent"

    invoke-static {v0, v2, v3, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$createLogCancelCallback(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/callable/Callback;

    move-result-object v0

    .line 1953
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public executeIfNotCanceled()V
    .locals 17

    move-object/from16 v0, p0

    .line 1837
    iget-boolean v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->customerConsentCollected:Z

    if-eqz v1, :cond_c

    .line 1844
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eqz v1, :cond_1

    .line 1845
    sget-object v2, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->UNSPECIFIED:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eq v1, v2, :cond_0

    .line 1853
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v1

    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v1, v2}, Lcom/stripe/core/transaction/TransactionRepository;->setAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    goto :goto_0

    .line 1846
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1847
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 1846
    const-string v5, "This command requires allow_redisplay to be set as always or limited when saving payment methods with Terminal."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 1856
    :cond_1
    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    .line 1857
    iget-boolean v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->enableCustomerCancellation:Z

    .line 1858
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 1856
    :cond_3
    invoke-static {v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->access$checkCustomerCancellationFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;ZLcom/stripe/stripeterminal/external/models/DeviceType;)V

    .line 1861
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLocationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;->validateLocationServices()V

    .line 1862
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->waitForInput()V

    .line 1864
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v1

    .line 1865
    invoke-virtual {v1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v1

    .line 1867
    iget-boolean v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->manualEntry:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1868
    :cond_4
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1869
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 1868
    const-string v5, "MO/TO payments are not enabled on this account. Contact Stripe support to enable this feature."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 1874
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 1875
    :cond_7
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getNetworkStatusProvider$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v2, v5, :cond_9

    :cond_8
    move v10, v4

    goto :goto_3

    :cond_9
    move v10, v3

    .line 1876
    :goto_3
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isDeferredAuthorizationCountry()Z

    move-result v11

    .line 1877
    iget-boolean v1, v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->manualEntry:Z

    if-nez v1, :cond_a

    move v15, v4

    goto :goto_4

    :cond_a
    move v15, v3

    .line 1878
    :goto_4
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object v3

    .line 1880
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v1

    .line 1881
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->isCollectionForSca()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1882
    new-instance v2, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    .line 1888
    new-instance v5, Lcom/stripe/currency/Amount;

    const-wide/16 v6, 0x0

    sget-object v4, Lcom/stripe/currency/CurrencyCode;->USD:Lcom/stripe/currency/CurrencyCode;

    invoke-direct {v5, v6, v7, v4}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    .line 1889
    sget-object v6, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;->GENERIC:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    .line 1890
    iget-boolean v7, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->enableCustomerCancellation:Z

    const/4 v4, 0x0

    .line 1882
    invoke-direct/range {v2 .. v7}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V

    check-cast v2, Lcom/stripe/transaction/PaymentMethodCollectionType;

    goto :goto_5

    .line 1893
    :cond_b
    new-instance v6, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    .line 1895
    iget-boolean v8, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->manualEntry:Z

    .line 1896
    iget-boolean v9, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->enableCustomerCancellation:Z

    .line 1899
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v12

    .line 1900
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v13

    .line 1901
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v2, v4}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v14

    .line 1903
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-object/from16 v16, v2

    move-object v7, v3

    .line 1893
    invoke-direct/range {v6 .. v16}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;-><init>(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    move-object v2, v6

    check-cast v2, Lcom/stripe/transaction/PaymentMethodCollectionType;

    .line 1880
    :goto_5
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v1

    .line 1907
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v2, v10}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setCollectedOffline(Z)V

    .line 1908
    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->onSuccess(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    return-void

    .line 1838
    :cond_c
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1839
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 1838
    const-string v5, "This command requires cardholder consent to be collected before it can take place"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1926
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {v0, v1, v2}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 1927
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 1928
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 1912
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1916
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 1917
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->getCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1918
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 1919
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/stripe/cancelintent/CancelableIntentOperation;

    invoke-interface {p1, v0, v1}, Lcom/stripe/cancelintent/CancelIntentManager;->onCompleteIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;)V

    .line 1920
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 1921
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;->onCancelSuccess()V

    :cond_0
    return-void
.end method
