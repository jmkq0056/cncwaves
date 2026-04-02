package com.stripe.paymentcollection.metrics;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.paymentcollection.HardwareEvent;
import com.stripe.paymentcollection.HardwareListenerEvent;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthType;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.PaymentCollectionState;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultStageEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u0010,\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u0010-\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u00101\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u00102\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u001a\u00103\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u00104\u001a\u000205H\u0016J\"\u00106\u001a\u00020'2\u0006\u00107\u001a\u0002082\u0006\u0010(\u001a\u00020)2\b\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0010\u0010;\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010<\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001c\u0010=\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0010\u0010@\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u001a\u0010A\u001a\u00020'2\u0006\u0010B\u001a\u00020C2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010D\u001a\u00020'2\u0006\u0010B\u001a\u00020E2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\b\u0010F\u001a\u00020'H\u0016J\b\u0010G\u001a\u00020'H\u0016J\b\u0010H\u001a\u00020'H\u0016J\b\u0010I\u001a\u00020'H\u0016J\b\u0010J\u001a\u00020'H\u0016J\b\u0010K\u001a\u00020'H\u0016J\u0010\u0010L\u001a\u00020'2\u0006\u0010M\u001a\u00020NH\u0016J\b\u0010O\u001a\u00020'H\u0016J\b\u0010P\u001a\u00020'H\u0016J\b\u0010Q\u001a\u00020'H\u0016J\u0010\u0010R\u001a\u00020'2\u0006\u0010S\u001a\u00020?H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0012j\u0002`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "accountSelectionLogger", "Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;", "applicationSelectionLogger", "Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;", "displayCartLogger", "Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;", "dynamicCurrencyConversionLogger", "Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;", "kernelProcessingLogger", "Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "nonCardPaymentMethodActionRequiredLogger", "Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;", "nonCardPaymentMethodSelectionLogger", "Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;", "onlineAuthLogger", "Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;", "pinEntryLogger", "Lcom/stripe/paymentcollection/metrics/PinEntryLogger;", "removeCardLogger", "Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;", "waitForCardPresent", "Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;", "waitForPosCommand", "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;", "closeAccountSelectionLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "nextState", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "closeApplicationSelectionLog", "closeDisplayCartLog", "displayCartResult", "Lcom/stripe/paymentcollection/metrics/DisplayCartResult;", "closeDynamicCurrencyConversionSelectionLog", "closeNonCardPaymentMethodActionRequiredLog", "closeNonCardPaymentMethodSelectionLog", "closeOnlineAuthenticationLog", "authState", "Lcom/stripe/paymentcollection/OnlineAuthState;", "closePinEntryLog", "result", "Lcom/stripe/paymentcollection/metrics/Result;", "knownFailureReason", "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;", "closeRemoveCardLog", "closeWaitForCardPresentLog", "closeWaitForPosCommandLog", "closingCommand", "Lcom/stripe/paymentcollection/metrics/PendingPosCommand;", "onCancel", "onHardwareEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/paymentcollection/HardwareEvent;", "onHardwareListenerEvent", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "openAccountSelectionLog", "openApplicationSelectionLog", "openDisplayCartLog", "openDynamicCurrencyConversionSelectionLog", "openNonCardPaymentMethodActionRequiredLog", "openNonCardPaymentMethodSelectionLog", "openOnlineAuthenticationLog", "authType", "Lcom/stripe/paymentcollection/OnlineAuthType;", "openPinEntryLog", "openRemoveCardLog", "openWaitForCardPresentLog", "openWaitForPosCommandLog", "pendingCommand", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultStageEventLogger implements StageEventLogger {
    private final AccountSelectionLogger accountSelectionLogger;
    private final ApplicationSelectionLogger applicationSelectionLogger;
    private final DisplayCartLogger displayCartLogger;
    private final DynamicCurrencyConversionSelectionLogger dynamicCurrencyConversionLogger;
    private final KernelProcessingEventLogger kernelProcessingLogger;
    private final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger;
    private final NonCardPaymentMethodActionRequiredLogger nonCardPaymentMethodActionRequiredLogger;
    private final NonCardPaymentMethodSelectionLogger nonCardPaymentMethodSelectionLogger;
    private final OnlineAuthLogger onlineAuthLogger;
    private final PinEntryLogger pinEntryLogger;
    private final RemoveCardLogger removeCardLogger;
    private final WaitForCardPresentLogger waitForCardPresent;
    private final WaitForPosCommandEventLogger waitForPosCommand;

    public DefaultStageEventLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> healthLoggerBuildsStageHealthLogger = UtilsKt.buildsStageHealthLogger(healthLoggerBuilder);
        this.logger = healthLoggerBuildsStageHealthLogger;
        this.applicationSelectionLogger = new ApplicationSelectionLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.accountSelectionLogger = new AccountSelectionLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.displayCartLogger = new DisplayCartLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.onlineAuthLogger = new OnlineAuthLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.pinEntryLogger = new PinEntryLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.removeCardLogger = new RemoveCardLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.waitForPosCommand = new WaitForPosCommandEventLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.waitForCardPresent = new WaitForCardPresentLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.kernelProcessingLogger = new KernelProcessingEventLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.dynamicCurrencyConversionLogger = new DynamicCurrencyConversionSelectionLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.nonCardPaymentMethodSelectionLogger = new NonCardPaymentMethodSelectionLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
        this.nonCardPaymentMethodActionRequiredLogger = new NonCardPaymentMethodActionRequiredLogger(healthLoggerBuildsStageHealthLogger, endToEndEventLogger);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openApplicationSelectionLog() {
        this.applicationSelectionLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeApplicationSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nextState, "nextState");
        this.applicationSelectionLogger.closeLog(data, nextState);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openAccountSelectionLog() {
        this.accountSelectionLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeAccountSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nextState, "nextState");
        this.accountSelectionLogger.closeLog(data, nextState);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openDynamicCurrencyConversionSelectionLog() {
        this.dynamicCurrencyConversionLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeDynamicCurrencyConversionSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nextState, "nextState");
        this.dynamicCurrencyConversionLogger.closeLog(data, nextState);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openPinEntryLog() {
        this.pinEntryLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closePinEntryLog(Result result, PaymentCollectionData data, PinEntryFailureReason knownFailureReason) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(data, "data");
        this.pinEntryLogger.closeLog(result, data, knownFailureReason);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openOnlineAuthenticationLog(OnlineAuthType authType) {
        Intrinsics.checkNotNullParameter(authType, "authType");
        this.onlineAuthLogger.openLog(authType);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeOnlineAuthenticationLog(PaymentCollectionData data, OnlineAuthState authState) {
        Intrinsics.checkNotNullParameter(authState, "authState");
        this.onlineAuthLogger.closeLog(data, authState);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openDisplayCartLog() {
        this.displayCartLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeDisplayCartLog(PaymentCollectionData data, DisplayCartResult displayCartResult) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(displayCartResult, "displayCartResult");
        this.displayCartLogger.closeLog(data, displayCartResult);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openWaitForPosCommandLog(PendingPosCommand pendingCommand) {
        Intrinsics.checkNotNullParameter(pendingCommand, "pendingCommand");
        this.waitForPosCommand.openLog(pendingCommand);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeWaitForPosCommandLog(PaymentCollectionData data, PendingPosCommand closingCommand) {
        this.waitForPosCommand.closeLog(data, closingCommand);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openRemoveCardLog() {
        this.removeCardLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeRemoveCardLog(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.removeCardLogger.closeLog(data);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openWaitForCardPresentLog() {
        this.waitForCardPresent.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeWaitForCardPresentLog(PaymentCollectionData data) {
        this.waitForCardPresent.closeLog(data);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openNonCardPaymentMethodSelectionLog() {
        this.nonCardPaymentMethodSelectionLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeNonCardPaymentMethodSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nextState, "nextState");
        this.nonCardPaymentMethodSelectionLogger.closeLog(data, nextState);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void openNonCardPaymentMethodActionRequiredLog() {
        this.nonCardPaymentMethodActionRequiredLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void closeNonCardPaymentMethodActionRequiredLog(PaymentCollectionData data, PaymentCollectionState nextState) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nextState, "nextState");
        this.nonCardPaymentMethodActionRequiredLogger.closeLog(data, nextState);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void onHardwareEvent(HardwareEvent event, PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.kernelProcessingLogger.onHardwareEvent(event, data);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void onHardwareListenerEvent(HardwareListenerEvent event, PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.kernelProcessingLogger.onHardwareListenerEvent(event, data);
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogger
    public void onCancel(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        closeDisplayCartLog(data, DisplayCartResult.MERCHANT_CANCELLED);
        closeWaitForPosCommandLog(data, null);
        closeOnlineAuthenticationLog(data, OnlineAuthState.Cancelled.INSTANCE);
        closeWaitForCardPresentLog(data);
    }
}
