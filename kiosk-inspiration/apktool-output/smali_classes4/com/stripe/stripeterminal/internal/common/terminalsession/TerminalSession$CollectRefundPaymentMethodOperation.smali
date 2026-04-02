.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CollectRefundPaymentMethodOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0010\u00a2\u0006\u0002\u0008\u0013J\r\u0010\u0014\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0015\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u0002H\u0010\u00a2\u0006\u0002\u0008\u0019R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)V",
        "getConfig",
        "()Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "getRefundParams",
        "()Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "executeIfNotCanceled",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "onSuccess$terminalsession_release",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "startCancel",
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
.field private final config:Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

.field private final refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
            "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
            "Lcom/stripe/stripeterminal/external/callable/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "refundParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1758
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 1762
    check-cast p4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 1759
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    .line 1760
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->config:Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    return-void
.end method


# virtual methods
.method public executeIfNotCanceled()V
    .locals 6

    .line 1765
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    .line 1766
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->config:Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->getEnableCustomerCancellation()Z

    move-result v1

    .line 1767
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 1765
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->access$checkCustomerCancellationFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;ZLcom/stripe/stripeterminal/external/models/DeviceType;)V

    .line 1770
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLocationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;->validateLocationServices()V

    .line 1771
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->waitForInput()V

    .line 1773
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    .line 1774
    new-instance v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    .line 1775
    new-instance v2, Lcom/stripe/currency/Amount;

    .line 1776
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getAmount()J

    move-result-wide v3

    .line 1777
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getCurrency()Ljava/lang/String;

    move-result-object v5

    .line 1775
    invoke-direct {v2, v3, v4, v5}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 1779
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getChargeId()Ljava/lang/String;

    move-result-object v3

    .line 1780
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v4

    .line 1781
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->config:Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->getEnableCustomerCancellation()Z

    move-result v5

    .line 1774
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType;

    .line 1773
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 1784
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->onSuccess$terminalsession_release()V

    return-void
.end method

.method public final getConfig()Lcom/stripe/stripeterminal/external/models/RefundConfiguration;
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->config:Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    return-object v0
.end method

.method public final getRefundParams()Lcom/stripe/stripeterminal/external/models/RefundParameters;
    .locals 1

    .line 1759
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    return-object v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 1800
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess$terminalsession_release()V
    .locals 1

    .line 1804
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 1805
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 1788
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->refundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1792
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 1793
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 1794
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 1795
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;->onCancelSuccess()V

    return-void
.end method
