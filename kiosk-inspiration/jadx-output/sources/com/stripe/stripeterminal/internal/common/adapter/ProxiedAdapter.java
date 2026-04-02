package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderBatteryInfo;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: ProxiedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0010\u001a\u00020\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0017J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u000bH\u0016J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020'H\u0016J\u0012\u0010(\u001a\u00020\u000b2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010,\u001a\u0004\u0018\u00010-2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u000b0/H\u0016J\u0010\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020\u000b2\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u001f2\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R(\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006:"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "requestReconnection", "Lkotlin/Function1;", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "", "getRequestReconnection", "()Lkotlin/jvm/functions/Function1;", "setRequestReconnection", "(Lkotlin/jvm/functions/Function1;)V", "cancelCollectInputs", "cancelReconnectReader", "clearReaderDisplay", "collectInputsBlocking", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "disableAutoReconnect", "getReaderInfo", "Lcom/stripe/hardware/status/ReaderInfo;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "getReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "handleAuthResponse", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/hardware/emv/TransactionResult;", "tlvBlob", "", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "onChargeAttemptChanged", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "reconnectReader", "requestReaderBatteryInfo", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "endPolling", "Lkotlin/Function0;", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "startSession", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ProxiedAdapter extends Adapter {
    private Function1<? super DisconnectReason, Unit> requestReconnection;

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderInfo getReaderInfo(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return null;
    }

    @Override // com.stripe.transaction.ChargeAttemptChangeListener
    public void onChargeAttemptChanged(ChargeAttempt chargeAttempt) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProxiedAdapter(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(logger);
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    protected final Function1<DisconnectReason, Unit> getRequestReconnection() {
        return this.requestReconnection;
    }

    protected final void setRequestReconnection(Function1<? super DisconnectReason, Unit> function1) {
        this.requestReconnection = function1;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void clearReaderDisplay() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support clearing display", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    /* JADX INFO: renamed from: collectiblePayment */
    public CollectiblePayment getCollectiblePayment() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support calling collectiblePayment", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Deferred<TransactionResult> handleAuthResponse(String tlvBlob) throws TerminalException {
        Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support auth response", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData) throws TerminalException {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support dcc", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) throws TerminalException {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support non card payment methods", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void setReaderDisplay(Cart cart) throws TerminalException {
        Intrinsics.checkNotNullParameter(cart, "cart");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support setting display", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSettings setReaderSettings(ReaderSettingsParameters params) throws TerminalException {
        Intrinsics.checkNotNullParameter(params, "params");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support changing settings", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSettings getReaderSettings() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support querying settings", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void startSession(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support starting a session", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderBatteryInfo requestReaderBatteryInfo(Function0<Unit> endPolling) throws TerminalException {
        Intrinsics.checkNotNullParameter(endPolling, "endPolling");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support battery info polling", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Reader reconnectReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support reconnect", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelReconnectReader() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support reconnect", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public KmpCollectInputsResult collectInputsBlocking(KmpCollectInputsParameters kmpCollectInputsParameters) throws TerminalException {
        Intrinsics.checkNotNullParameter(kmpCollectInputsParameters, "kmpCollectInputsParameters");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support showing forms with collectInputs", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectInputs() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Reader does not support canceling collectInputs", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disableAutoReconnect() {
        this.requestReconnection = null;
    }
}
