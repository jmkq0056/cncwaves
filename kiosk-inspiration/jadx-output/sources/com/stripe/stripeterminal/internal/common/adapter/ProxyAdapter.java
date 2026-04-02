package com.stripe.stripeterminal.internal.common.adapter;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderBatteryInfo;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.ReaderSupportResult;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentMethodCollectionType;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: ProxyAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¾\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\u0002\u0010\tJ\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0016J\b\u0010\u001a\u001a\u00020\u0014H\u0016J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0016J\b\u0010 \u001a\u00020\u0014H\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0017J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0016J\n\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010+\u001a\u00020\u0014H\u0016J\u0010\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0013\u00104\u001a\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u000201H\u0096\u0001J\u0012\u00106\u001a\u0004\u0018\u0001072\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u00108\u001a\u000209H\u0016J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\u00142\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010B\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u001cH\u0016J\u0016\u0010D\u001a\u00020\u00142\u0006\u0010E\u001a\u00020FH\u0096@¢\u0006\u0002\u0010GJ\u0012\u0010H\u001a\u00020\u00142\b\u0010I\u001a\u0004\u0018\u00010JH\u0016J\b\u0010K\u001a\u00020\u0014H\u0016J.\u0010L\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010M\u001a\u00020N2\u0014\u0010O\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u0014\u0018\u00010PH\u0014J\u0010\u0010Q\u001a\u00020\u00142\u0006\u0010R\u001a\u00020SH\u0016J\b\u0010T\u001a\u00020\u0014H\u0016J\u0018\u0010U\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010V\u001a\u00020WH\u0016J\b\u0010X\u001a\u00020&H\u0016J\u0010\u0010Y\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010Z\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010[\u001a\u0004\u0018\u00010\\2\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00140^H\u0016J\u0010\u0010_\u001a\u00020\u00142\u0006\u0010`\u001a\u00020aH\u0016J\u0013\u0010b\u001a\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u000201H\u0096\u0001J\u001a\u0010c\u001a\u00020\u00142\n\u0010d\u001a\u00060ej\u0002`fH\u0096@¢\u0006\u0002\u0010gJ\u0010\u0010h\u001a\u00020\u00142\u0006\u0010i\u001a\u00020jH\u0016J\u0010\u0010k\u001a\u0002092\u0006\u0010l\u001a\u00020mH\u0016J\u001c\u0010n\u001a\u00020\u00142\b\u0010o\u001a\u0004\u0018\u00010p2\b\u0010q\u001a\u0004\u0018\u00010rH\u0016J\u0010\u0010s\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020w2\u0006\u00105\u001a\u000201H\u0016J*\u0010x\u001a\u00020y2\u0006\u0010z\u001a\u00020y2\b\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010{\u001a\u00020\u000e2\u0006\u0010|\u001a\u00020}H\u0016J;\u0010~\u001a\u0002H\u007f\"\u0006\b\u0000\u0010\u007f\u0018\u00012\u0007\u0010\u0080\u0001\u001a\u00020>2\u0019\u0010\u0081\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u007f0P¢\u0006\u0003\b\u0082\u0001H\u0082\b¢\u0006\u0003\u0010\u0083\u0001R\u0014\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0084\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;", "repository", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "currentAdapter", "getCurrentAdapter", "()Lcom/stripe/stripeterminal/internal/common/Adapter;", "immediateRecollectForSca", "", "getImmediateRecollectForSca", "()Z", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "cancelCollectInputs", "", "cancelCollectPaymentMethod", "cancelDiscoverReaders", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "cancelInstallUpdate", "cancelReconnectReader", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "clearReaderDisplay", "collectInputsBlocking", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "disableAutoReconnect", "disconnectReader", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "discoverReaders", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "getAdapterByDiscoveryConfiguration", "discoveryConfiguration", "getReaderInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "getReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "handleAuthResponse", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/hardware/emv/TransactionResult;", "tlvBlob", "", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "installUpdate", "update", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onChargeAttemptChanged", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "onCollectPaymentMethodApiError", "onConnectReader", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "requestReconnection", "Lkotlin/Function1;", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onPaymentMethodCollectedForPaymentIntent", "onReaderActivated", "response", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "readReusableCard", "rebootReader", "reconnectReader", "requestReaderBatteryInfo", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "endPolling", "Lkotlin/Function0;", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "setAdapterByDiscoveryConfiguration", "setFakedContactlessOutcome", "fakedContactlessOutcomeType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "Lcom/stripe/stripeterminal/internal/common/proto/FakedContactlessOutcomeType;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "setReconnectParams", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "startSession", "supportsReadersOfType", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "updatePaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "requestDynamicCurrencyConversion", "apiPaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "withCurrentAdapter", "T", "methodName", FirebaseAnalytics.Param.METHOD, "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyAdapter extends Adapter implements AdapterRepository {
    private final AdapterRepository repository;

    @Override // com.stripe.stripeterminal.internal.common.adapter.AdapterRepository
    public Adapter getAdapterByDiscoveryConfiguration(DiscoveryConfiguration discoveryConfiguration) {
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        return this.repository.getAdapterByDiscoveryConfiguration(discoveryConfiguration);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.AdapterRepository
    /* JADX INFO: renamed from: getCurrentAdapter */
    public Adapter get_currentAdapter() {
        return this.repository.get_currentAdapter();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.AdapterRepository
    public Adapter setAdapterByDiscoveryConfiguration(DiscoveryConfiguration discoveryConfiguration) {
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        return this.repository.setAdapterByDiscoveryConfiguration(discoveryConfiguration);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProxyAdapter(AdapterRepository repository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(logger);
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.repository = repository;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public boolean getImmediateRecollectForSca() {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.getImmediateRecollectForSca();
        }
        return true;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onReaderActivated(Reader reader, ActivateReaderResponse response) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(response, "response");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.onReaderActivated(reader, response);
        }
    }

    @Override // com.stripe.transaction.ChargeAttemptChangeListener
    public void onChargeAttemptChanged(ChargeAttempt chargeAttempt) {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.onChargeAttemptChanged(chargeAttempt);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectPaymentMethod() {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.cancelCollectPaymentMethod();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelDiscoverReaders(CancelDiscoverReadersReason cancelDiscoverReadersReason) {
        Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.cancelDiscoverReaders(cancelDiscoverReadersReason);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelInstallUpdate() {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.cancelInstallUpdate();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSupportResult supportsReadersOfType(DeviceType deviceType, DiscoveryConfiguration discoveryConfiguration) {
        Object objM817constructorimpl;
        ReaderSupportResult.NotSupported notSupportedM817constructorimpl;
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        try {
            Result.Companion companion = Result.INSTANCE;
            ProxyAdapter proxyAdapter = this;
            objM817constructorimpl = Result.m817constructorimpl(getAdapterByDiscoveryConfiguration(discoveryConfiguration));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            Result.Companion companion3 = Result.INSTANCE;
            Adapter adapter = (Adapter) objM817constructorimpl;
            notSupportedM817constructorimpl = Result.m817constructorimpl(adapter != null ? adapter.supportsReadersOfType(deviceType, discoveryConfiguration) : null);
        } else {
            notSupportedM817constructorimpl = Result.m817constructorimpl(objM817constructorimpl);
        }
        if (Result.m824isSuccessimpl(notSupportedM817constructorimpl)) {
            Result.Companion companion4 = Result.INSTANCE;
            notSupportedM817constructorimpl = (ReaderSupportResult) notSupportedM817constructorimpl;
            if (notSupportedM817constructorimpl == null) {
                notSupportedM817constructorimpl = new ReaderSupportResult.NotSupported(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "No Adapter for type", null, null, 12, null));
            }
        }
        Object objM817constructorimpl2 = Result.m817constructorimpl(notSupportedM817constructorimpl);
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
        if (thM820exceptionOrNullimpl != null) {
            objM817constructorimpl2 = (ReaderSupportResult) new ReaderSupportResult.NotSupported(thM820exceptionOrNullimpl);
        }
        return (ReaderSupportResult) objM817constructorimpl2;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void rebootReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.rebootReader(reader);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderInfo getReaderInfo(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.getReaderInfo(reader);
        }
        return null;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disconnectReader(DisconnectReason disconnectReason) throws TerminalException {
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.disconnectReader(disconnectReason);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void discoverReaders(DiscoveryConfiguration config, DiscoveryListener listener) throws TerminalException {
        Unit unit;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Adapter adapterByDiscoveryConfiguration = setAdapterByDiscoveryConfiguration(config);
        if (adapterByDiscoveryConfiguration != null) {
            adapterByDiscoveryConfiguration.discoverReaders(config, listener);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "No DeviceType selected", null, null, 12, null);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void installUpdate(ReaderSoftwareUpdate update) throws TerminalException {
        Intrinsics.checkNotNullParameter(update, "update");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.installUpdate(update);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    /* JADX INFO: renamed from: collectiblePayment */
    public CollectiblePayment getCollectiblePayment() {
        Adapter adapter = get_currentAdapter();
        Intrinsics.checkNotNull(adapter);
        return adapter.getCollectiblePayment();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Deferred<TransactionResult> handleAuthResponse(String tlvBlob) {
        Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
        Adapter adapter = get_currentAdapter();
        Intrinsics.checkNotNull(adapter);
        return adapter.handleAuthResponse(tlvBlob);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter, com.stripe.paymentcollection.OnlineAuthStateListener
    public void onOnlineAuthStateChanged(OnlineAuthState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.onOnlineAuthStateChanged(state);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public AdapterType adapterType() throws TerminalException {
        AdapterType adapterType;
        Adapter adapter = get_currentAdapter();
        if (adapter == null || (adapterType = adapter.adapterType()) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "AdapterType does not exist", null, null, 12, null);
        }
        return adapterType;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onCollectPaymentMethodApiError() {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.onCollectPaymentMethodApiError();
        }
    }

    private final /* synthetic */ <T> T withCurrentAdapter(String methodName, Function1<? super Adapter, ? extends T> method) throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return method.invoke(adapter);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before " + methodName, null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.checkForUpdate(reader, failSilently);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before checkForUpdate", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void clearReaderDisplay() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.clearReaderDisplay();
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before clearReaderDisplay", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSettings setReaderSettings(ReaderSettingsParameters params) throws TerminalException {
        Intrinsics.checkNotNullParameter(params, "params");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.setReaderSettings(params);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before setReaderSettings", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSettings getReaderSettings() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.getReaderSettings();
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before getReaderSettings", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.collectPaymentMethod(paymentMethodCollectionType);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before collectPaymentMethod", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion, PaymentIntentUpdater apiPaymentIntentUpdater) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(apiPaymentIntentUpdater, "apiPaymentIntentUpdater");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.updatePaymentIntent(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion, apiPaymentIntentUpdater);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before collectPaymentMethod", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onPaymentMethodCollectedForPaymentIntent() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.onPaymentMethodCollectedForPaymentIntent();
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before collectPaymentMethod", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    protected Reader onConnectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.connectReader(reader, connectionConfiguration, requestReconnection);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before connectReader", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelReconnectReader() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.cancelReconnectReader();
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before cancelReconnectReader", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Reader reconnectReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.reconnectReader(reader);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before reconnectReader", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void setReconnectParams(BluetoothAutoReconnectConfigPb bluetoothConfig, UsbAutoReconnectConfigPb usbConfig) throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.setReconnectParams(bluetoothConfig, usbConfig);
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before setReconnectParams", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disableAutoReconnect() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.disableAutoReconnect();
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before disableAutoReconnect", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData) throws TerminalException {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.selectDynamicCurrencyConversion(dynamicCurrencyConversionData);
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before selectDynamicCurrencyConversion", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) throws TerminalException {
        Intrinsics.checkNotNullParameter(data, "data");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.handleNonCardPaymentMethodConfirmationResponse(data);
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before handleNonCardPaymentMethodConfirmationResponse", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData readReusableCard() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.readReusableCard();
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before readReusableCard", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void setReaderDisplay(Cart cart) throws TerminalException {
        Intrinsics.checkNotNullParameter(cart, "cart");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.setReaderDisplay(cart);
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before setReaderDisplay", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void startSession(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.startSession(reader);
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before startSession", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderBatteryInfo requestReaderBatteryInfo(Function0<Unit> endPolling) throws TerminalException {
        Intrinsics.checkNotNullParameter(endPolling, "endPolling");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.requestReaderBatteryInfo(endPolling);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before requestReaderBatteryInfo", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public KmpCollectInputsResult collectInputsBlocking(KmpCollectInputsParameters kmpCollectInputsParameters) throws TerminalException {
        Intrinsics.checkNotNullParameter(kmpCollectInputsParameters, "kmpCollectInputsParameters");
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            return adapter.collectInputsBlocking(kmpCollectInputsParameters);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before collectInputs", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectInputs() throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            adapter.cancelCollectInputs();
            return;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before cancelCollectInputs", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Object killAidlServer(long j, Continuation<? super Unit> continuation) throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            Object objKillAidlServer = adapter.killAidlServer(j, continuation);
            return objKillAidlServer == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objKillAidlServer : Unit.INSTANCE;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before killAidlServer", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Object setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation) throws TerminalException {
        Adapter adapter = get_currentAdapter();
        if (adapter != null) {
            Object fakedContactlessOutcome = adapter.setFakedContactlessOutcome(fakedContactlessOutcomeType, continuation);
            return fakedContactlessOutcome == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? fakedContactlessOutcome : Unit.INSTANCE;
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before setFakedContactlessOutcome", null, null, 12, null);
    }
}
