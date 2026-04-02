.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CollectDataOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0010\u00a2\u0006\u0002\u0008\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0015\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u001bH\u0010\u00a2\u0006\u0002\u0008\u001cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "passthroughType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;",
        "enableCustomerCancellation",
        "",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;ZLcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)V",
        "networkTimer",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "getNetworkTimer",
        "()Lcom/stripe/jvmcore/logging/PendingTimer;",
        "setNetworkTimer",
        "(Lcom/stripe/jvmcore/logging/PendingTimer;)V",
        "timer",
        "getTimer",
        "executeIfNotCanceled",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
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
.field private final enableCustomerCancellation:Z

.field private networkTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

.field private final passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

.field private final timer:Lcom/stripe/jvmcore/logging/PendingTimer;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;ZLcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;",
            "Z",
            "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "passthroughType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3216
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3220
    check-cast p4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 3217
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    .line 3218
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->enableCustomerCancellation:Z

    .line 3221
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$timer$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$timer$1;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p3, p4}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method


# virtual methods
.method public executeIfNotCanceled()V
    .locals 12

    .line 3224
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->supportsCollectData(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3225
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 3226
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 3225
    const-string v3, "Collect data is not currently supported for this reader type."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 3231
    :cond_1
    :goto_0
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    .line 3232
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->enableCustomerCancellation:Z

    .line 3233
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 3231
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->access$checkCustomerCancellationFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;ZLcom/stripe/stripeterminal/external/models/DeviceType;)V

    .line 3237
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->enableCustomerCancellation:Z

    .line 3238
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    .line 3236
    new-instance v2, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    invoke-direct {v2, v1, v0}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;-><init>(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)V

    .line 3241
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    check-cast v2, Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    .line 3243
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$executeIfNotCanceled$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$executeIfNotCanceled$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4, v3}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->networkTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 3244
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;

    move-result-object v0

    .line 3245
    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->networkTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3246
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v5

    sget-object v1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v7, v1

    check-cast v7, Lcom/stripe/loggingmodels/Outcome;

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3249
    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v5

    .line 3250
    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 3251
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v7, v1

    check-cast v7, Lcom/stripe/loggingmodels/Outcome;

    const/4 v1, 0x3

    .line 3253
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "ANDROID_SDK_"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v8}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->name()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntegrationType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3254
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    invoke-virtual {v2}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CollectDataType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3255
    const-string v2, "OperationResult"

    const-string v3, "SUCCESS"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 3252
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 3249
    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3259
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;

    invoke-interface {v1, v0}, Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/CollectedData;)V

    .line 3260
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    return-void
.end method

.method public final getNetworkTimer()Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 1

    .line 3222
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->networkTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-object v0
.end method

.method public final getTimer()Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 1

    .line 3221
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-object v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 14

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/api/ApiError;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "terminal_reader_collected_data_invalid"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3276
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$onFailure$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$onFailure$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x5

    .line 3278
    new-array v0, v0, [Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 3279
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 3280
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 3281
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const/4 v2, 0x4

    .line 3282
    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    aput-object v7, v0, v2

    .line 3277
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3285
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$onFailure$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation$onFailure$2;

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 3289
    new-instance v0, Lcom/stripe/loggingmodels/Outcome$TerminalError;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/stripe/loggingmodels/Outcome$TerminalError;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    .line 3291
    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->networkTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v8, :cond_2

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3292
    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v7

    move-object v9, v0

    check-cast v9, Lcom/stripe/loggingmodels/Outcome;

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3295
    :cond_2
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v7

    .line 3296
    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 3297
    move-object v9, v0

    check-cast v9, Lcom/stripe/loggingmodels/Outcome;

    .line 3299
    new-array v0, v6, [Lkotlin/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "ANDROID_SDK_"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->name()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntegrationType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3300
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectDataType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3301
    const-string v1, "OperationResult"

    const-string v2, "FAILURE"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    .line 3298
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 3295
    invoke-static/range {v7 .. v13}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3305
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 3264
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->collectData(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setNetworkTimer(Lcom/stripe/jvmcore/logging/PendingTimer;)V
    .locals 0

    .line 3222
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->networkTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3268
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 3269
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 3270
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;->onCancelSuccess()V

    return-void
.end method
