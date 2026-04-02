package com.stripe.stripeterminal.internal.common;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.CheckForCardBehavior;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthStateListener;
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
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.ChargeAttemptChangeListener;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.stripe.transaction.PaymentMethodCollectionType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: Adapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Â\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000 \u008f\u00012\u00020\u00012\u00020\u0002:\u0006\u008f\u0001\u0090\u0001\u0091\u0001B\u001d\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u001b\u001a\u00020\u001cH&J\b\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u001eH&J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H&J\b\u0010#\u001a\u00020\u001eH&J\b\u0010$\u001a\u00020\u001eH&J\u001c\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020\nH&J\b\u0010*\u001a\u00020\u001eH&J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H'J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H&J\n\u00103\u001a\u0004\u0018\u000104H&J.\u00105\u001a\u00020(2\u0006\u0010'\u001a\u00020(2\u0006\u00106\u001a\u0002072\u0016\b\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u001e\u0018\u000109J\b\u0010;\u001a\u00020\u001eH&J\u0010\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020:H&J\u0018\u0010>\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH&J\b\u0010C\u001a\u00020\u001eH\u0016J\u0012\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010'\u001a\u00020(H&J\b\u0010F\u001a\u00020GH&J\u0016\u0010H\u001a\b\u0012\u0004\u0012\u00020J0I2\u0006\u0010K\u001a\u00020LH&J\u0010\u0010M\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH&J\b\u0010P\u001a\u00020\u001eH\u0016J\u0010\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020&H&J\u0018\u0010S\u001a\u00020\u001e2\b\b\u0002\u0010T\u001a\u00020UH\u0096@¢\u0006\u0002\u0010VJ \u0010W\u001a\u00020\u001e\"\b\b\u0000\u0010X*\u00020Y2\f\u0010Z\u001a\b\u0012\u0004\u0012\u0002HX0\u0016H\u0004J\b\u0010[\u001a\u00020\u001eH\u0016J0\u0010\\\u001a\u00020(2\u0006\u0010'\u001a\u00020(2\u0006\u00106\u001a\u0002072\u0016\b\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u001e\u0018\u000109H$J\u0010\u0010]\u001a\u00020\u001e2\u0006\u0010^\u001a\u00020_H\u0016J\b\u0010`\u001a\u00020\u001eH&J\u0018\u0010a\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\u0006\u0010b\u001a\u00020cH\u0016J\b\u0010d\u001a\u000200H&J\u0010\u0010e\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H&J\u0010\u0010f\u001a\u00020(2\u0006\u0010'\u001a\u00020(H&J\u0018\u0010g\u001a\u0004\u0018\u00010h2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u001e0jH&J\u0010\u0010k\u001a\u00020\u001e2\u0006\u0010l\u001a\u00020mH&J\u001a\u0010n\u001a\u00020\u001e2\n\u0010o\u001a\u00060pj\u0002`qH\u0096@¢\u0006\u0002\u0010rJ\u0010\u0010s\u001a\u00020\u001e2\u0006\u0010t\u001a\u00020uH&J\u0010\u0010v\u001a\u00020G2\u0006\u0010w\u001a\u00020xH&J\u001c\u0010y\u001a\u00020\u001e2\b\u0010z\u001a\u0004\u0018\u00010{2\b\u0010|\u001a\u0004\u0018\u00010}H\u0016J\u0010\u0010~\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H&J\u001c\u0010\u007f\u001a\u00030\u0080\u00012\b\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020@H\u0016J\u0010\u0010\u0084\u0001\u001a\u00020\u001eH\u0096@¢\u0006\u0003\u0010\u0085\u0001J\u001b\u0010\u0086\u0001\u001a\u00020L2\u0007\u0010\u0087\u0001\u001a\u00020L2\u0007\u0010\u0088\u0001\u001a\u00020LH\u0002J1\u0010\u0089\u0001\u001a\u00030\u008a\u00012\b\u0010\u008b\u0001\u001a\u00030\u008a\u00012\b\u00103\u001a\u0004\u0018\u0001042\u0007\u0010\u008c\u0001\u001a\u00020\n2\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001H&R\u0014\u0010\t\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR$\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0002\b\u00030\u0010R\u00020\u0000X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0015\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u0092\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/Adapter;", "Lcom/stripe/transaction/ChargeAttemptChangeListener;", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "immediateRecollectForSca", "", "getImmediateRecollectForSca", "()Z", "getLogger", "()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "operationInProgress", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "getOperationInProgress", "()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "setOperationInProgress", "(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V", "operationToCancel", "Lkotlin/reflect/KClass;", "getOperationToCancel", "()Lkotlin/reflect/KClass;", "setOperationToCancel", "(Lkotlin/reflect/KClass;)V", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "cancelCollectInputs", "", "cancelCollectPaymentMethod", "cancelDiscoverReaders", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "cancelInstallUpdate", "cancelReconnectReader", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "clearReaderDisplay", "collectInputsBlocking", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "connectReader", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "requestReconnection", "Lkotlin/Function1;", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "disableAutoReconnect", "disconnectReader", "disconnectReason", "discoverReaders", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "dispose", "getReaderInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "getReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "handleAuthResponse", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/hardware/emv/TransactionResult;", "tlvBlob", "", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "init", "installUpdate", "update", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "logUnexpectedOperationInProgressWarning", "T", "", "clazz", "onCollectPaymentMethodApiError", "onConnectReader", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onPaymentMethodCollectedForPaymentIntent", "onReaderActivated", "response", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "readReusableCard", "rebootReader", "reconnectReader", "requestReaderBatteryInfo", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "endPolling", "Lkotlin/Function0;", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "setFakedContactlessOutcome", "fakedContactlessOutcomeType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "Lcom/stripe/stripeterminal/internal/common/proto/FakedContactlessOutcomeType;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "setReconnectParams", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "startSession", "supportsReadersOfType", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "discoveryConfiguration", "testPinCollection", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unexpectedOperationInProgressMessage", "expected", "found", "updatePaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "requestDynamicCurrencyConversion", "apiPaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "Companion", "NullOperation", "ReaderOperation", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Adapter implements ChargeAttemptChangeListener, OnlineAuthStateListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean immediateRecollectForSca;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private ReaderOperation<?> operationInProgress;
    private KClass<?> operationToCancel;

    public abstract AdapterType adapterType();

    public abstract void cancelCollectInputs();

    public abstract void cancelCollectPaymentMethod();

    public abstract void cancelDiscoverReaders(CancelDiscoverReadersReason cancelDiscoverReadersReason);

    public abstract void cancelInstallUpdate();

    public abstract void cancelReconnectReader();

    public abstract ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) throws TerminalException;

    public abstract void clearReaderDisplay() throws TerminalException;

    public abstract KmpCollectInputsResult collectInputsBlocking(KmpCollectInputsParameters kmpCollectInputsParameters);

    public abstract PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) throws TerminalException;

    public abstract CollectiblePayment collectiblePayment() throws TerminalException;

    public abstract void disableAutoReconnect();

    public abstract void disconnectReader(DisconnectReason disconnectReason) throws TerminalException;

    public abstract void discoverReaders(DiscoveryConfiguration config, DiscoveryListener listener) throws TerminalException;

    public void dispose() {
    }

    public abstract ReaderInfo getReaderInfo(Reader reader) throws TerminalException;

    public abstract ReaderSettings getReaderSettings() throws TerminalException;

    public abstract Deferred<TransactionResult> handleAuthResponse(String tlvBlob);

    public abstract void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) throws TerminalException;

    public void init() {
    }

    public abstract void installUpdate(ReaderSoftwareUpdate update) throws TerminalException;

    public Object killAidlServer(long j, Continuation<? super Unit> continuation) {
        return killAidlServer$suspendImpl(this, j, continuation);
    }

    public void onCollectPaymentMethodApiError() {
    }

    protected abstract Reader onConnectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) throws TerminalException;

    @Override // com.stripe.paymentcollection.OnlineAuthStateListener
    public void onOnlineAuthStateChanged(OnlineAuthState state) {
        Intrinsics.checkNotNullParameter(state, "state");
    }

    public abstract void onPaymentMethodCollectedForPaymentIntent();

    public void onReaderActivated(Reader reader, ActivateReaderResponse response) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public abstract PaymentMethodData readReusableCard() throws TerminalException;

    public abstract void rebootReader(Reader reader) throws TerminalException;

    public abstract Reader reconnectReader(Reader reader) throws TerminalException;

    public abstract ReaderBatteryInfo requestReaderBatteryInfo(Function0<Unit> endPolling) throws TerminalException;

    public abstract void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData);

    public Object setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation) {
        return setFakedContactlessOutcome$suspendImpl(this, fakedContactlessOutcomeType, continuation);
    }

    public abstract void setReaderDisplay(Cart cart) throws TerminalException;

    public abstract ReaderSettings setReaderSettings(ReaderSettingsParameters params) throws TerminalException;

    public abstract void startSession(Reader reader) throws TerminalException;

    public Object testPinCollection(Continuation<? super Unit> continuation) {
        return testPinCollection$suspendImpl(this, continuation);
    }

    public abstract PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion, PaymentIntentUpdater apiPaymentIntentUpdater);

    public Adapter(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.operationInProgress = new NullOperation();
        this.immediateRecollectForSca = true;
    }

    protected final SimpleLogger<ApplicationTrace, ApplicationTraceResult> getLogger() {
        return this.logger;
    }

    protected final ReaderOperation<?> getOperationInProgress() {
        return this.operationInProgress;
    }

    protected final void setOperationInProgress(ReaderOperation<?> readerOperation) {
        Intrinsics.checkNotNullParameter(readerOperation, "<set-?>");
        this.operationInProgress = readerOperation;
    }

    protected final KClass<?> getOperationToCancel() {
        return this.operationToCancel;
    }

    protected final void setOperationToCancel(KClass<?> kClass) {
        this.operationToCancel = kClass;
    }

    public static /* synthetic */ ReaderSoftwareUpdate checkForUpdate$default(Adapter adapter, Reader reader, boolean z, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkForUpdate");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return adapter.checkForUpdate(reader, z);
    }

    public ReaderSupportResult supportsReadersOfType(DeviceType deviceType, DiscoveryConfiguration discoveryConfiguration) {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        return ReaderSupportResult.Supported.INSTANCE;
    }

    public boolean getImmediateRecollectForSca() {
        return this.immediateRecollectForSca;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Reader connectReader$default(Adapter adapter, Reader reader, ConnectionConfiguration connectionConfiguration, Function1 function1, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: connectReader");
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return adapter.connectReader(reader, connectionConfiguration, function1);
    }

    public final Reader connectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        this.logger.d("connectReader", TuplesKt.to(OfflineStorageConstantsKt.READER, reader.getId()), TuplesKt.to("deviceInfo", reader.toDeviceInfo().toString()), TuplesKt.to("connectionConfigurationType", Reflection.getOrCreateKotlinClass(connectionConfiguration.getClass()).getSimpleName()));
        return onConnectReader(reader, connectionConfiguration, requestReconnection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Reader onConnectReader$default(Adapter adapter, Reader reader, ConnectionConfiguration connectionConfiguration, Function1 function1, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onConnectReader");
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return adapter.onConnectReader(reader, connectionConfiguration, function1);
    }

    public static /* synthetic */ Object killAidlServer$default(Adapter adapter, long j, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: killAidlServer");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        return adapter.killAidlServer(j, continuation);
    }

    static /* synthetic */ Object killAidlServer$suspendImpl(Adapter adapter, long j, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This adapter doesn't support killAidlServer", null, null, 12, null);
    }

    static /* synthetic */ Object testPinCollection$suspendImpl(Adapter adapter, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This adapter doesn't support testPinCollection", null, null, 12, null);
    }

    static /* synthetic */ Object setFakedContactlessOutcome$suspendImpl(Adapter adapter, CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Setting faked contactless outcome is not supported outside of testing environments", null, null, 12, null);
    }

    public void setReconnectParams(BluetoothAutoReconnectConfigPb bluetoothConfig, UsbAutoReconnectConfigPb usbConfig) throws TerminalException {
        this.logger.w("Unexpectedly called setReconnectParams from adapter without defined handling.", new Pair[0]);
    }

    protected final <T> void logUnexpectedOperationInProgressWarning(KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Logger.w$default(this.logger, new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, unexpectedOperationInProgressMessage(clazz.toString(), this.operationInProgress.toString()), null, null, 12, null), null, new Pair[0], 2, null);
    }

    private final String unexpectedOperationInProgressMessage(String expected, String found) {
        return "Unexpected operation in progress. Expected: " + expected + ", found: " + found;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: Adapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b¤\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\r\u0010\b\u001a\u00028\u0000H&¢\u0006\u0002\u0010\tJ\u000b\u0010\n\u001a\u00028\u0000¢\u0006\u0002\u0010\tJ\u0013\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "T", "", "(Lcom/stripe/stripeterminal/internal/common/Adapter;)V", "deferred", "Lkotlinx/coroutines/CompletableDeferred;", "getDeferred", "()Lkotlinx/coroutines/CompletableDeferred;", "execute", "()Ljava/lang/Object;", "get", "set", "", "result", "(Ljava/lang/Object;)V", "setException", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public abstract class ReaderOperation<T> {
        private final CompletableDeferred<T> deferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);

        public abstract T execute() throws TerminalException;

        public ReaderOperation() {
        }

        public final CompletableDeferred<T> getDeferred() {
            return this.deferred;
        }

        public final T get() throws TerminalException {
            T t = (T) AdapterExt_commonJvmKt.executeBlockingAdapterOperation(this.deferred);
            ResultKt.throwOnFailure(t);
            return t;
        }

        public final void set(T result) {
            this.deferred.complete(result);
        }

        public void setException(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.deferred.completeExceptionally(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: Adapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0084\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "(Lcom/stripe/stripeterminal/internal/common/Adapter;)V", "execute", "setException", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class NullOperation extends ReaderOperation<Unit> {
        /* JADX INFO: renamed from: execute, reason: avoid collision after fix types in other method */
        public void execute2() {
        }

        public NullOperation() {
            super();
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public /* bridge */ /* synthetic */ Unit execute() {
            execute2();
            return Unit.INSTANCE;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public void setException(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            Logger.w$default(Adapter.this.getLogger(), e, null, new Pair[0], 2, null);
        }
    }

    /* JADX INFO: compiled from: Adapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;", "", "()V", "getPaymentCollectionCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: Adapter.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DeviceType.values().length];
                try {
                    iArr[DeviceType.WISEPOS_E.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DeviceType.WISEPOS_E_DEVKIT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DeviceType.STRIPE_S700.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[DeviceType.STRIPE_S700_DEVKIT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[DeviceType.STRIPE_S710.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[DeviceType.STRIPE_S710_DEVKIT.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[DeviceType.ETNA.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[DeviceType.VERIFONE_P400.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[DeviceType.WISEPAD_3.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[DeviceType.WISEPAD_3S.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[DeviceType.CHIPPER_1X.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[DeviceType.WISECUBE.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr[DeviceType.CHIPPER_2X.ordinal()] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr[DeviceType.STRIPE_M2.ordinal()] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr[DeviceType.UNKNOWN.ordinal()] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr[DeviceType.TAP_TO_PAY_DEVICE.ordinal()] = 16;
                } catch (NoSuchFieldError unused16) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PaymentCollectionDeviceCapability getPaymentCollectionCapability(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            switch (WhenMappings.$EnumSwitchMapping$0[reader.getDeviceType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    return new PaymentCollectionDeviceCapability(true, true, CheckForCardBehavior.POLL_FOR_CARD_REMOVAL, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY(), true, false, false, 96, null);
                case 8:
                    return new PaymentCollectionDeviceCapability(true, false, CheckForCardBehavior.DO_NOT_POLL, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP(), true, false, false, 96, null);
                case 9:
                case 10:
                    return new PaymentCollectionDeviceCapability(false, true, CheckForCardBehavior.DO_NOT_POLL, ReaderConfiguration.INSTANCE.getINSERT_OR_TAP(), false, false, false, 32, null);
                case 11:
                    return new PaymentCollectionDeviceCapability(false, false, CheckForCardBehavior.DO_NOT_POLL, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT(), false, false, false, 96, null);
                case 12:
                    return new PaymentCollectionDeviceCapability(false, false, CheckForCardBehavior.DO_NOT_POLL, ReaderConfiguration.INSTANCE.getINSERT_OR_TAP(), false, false, false, 64, null);
                case 13:
                case 14:
                case 15:
                    return new PaymentCollectionDeviceCapability(false, false, CheckForCardBehavior.DO_NOT_POLL, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP(), false, false, false, 96, null);
                case 16:
                    return new PaymentCollectionDeviceCapability(false, false, CheckForCardBehavior.DO_NOT_POLL, SetsKt.emptySet(), false, false, false, 112, null);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }
}
