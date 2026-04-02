package com.stripe.stripeterminal.internal.common.adapter;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.extensions.DeviceTypeExtensions;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.stripe.transaction.payment.Payment;
import com.stripe.transaction.payment.RemotePayment;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: RemoteReaderAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002XYBM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011¢\u0006\u0002\u0010\u0012J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0018H\u0016J\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u0018H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0017J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\n\u0010-\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u00182\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\u00182\u0006\u0010<\u001a\u00020\u001fH\u0016J.\u0010=\u001a\u00020!2\u0006\u0010 \u001a\u00020!2\u0006\u0010>\u001a\u00020?2\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0018\u0018\u00010AH\u0014J\b\u0010B\u001a\u00020\u0018H\u0016J\b\u0010C\u001a\u00020*H\u0016J\u0010\u0010D\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0016J!\u0010E\u001a\u0002HF\"\u0004\b\u0000\u0010F2\f\u0010G\u001a\b\u0012\u0004\u0012\u0002HF0\u000bH\u0002¢\u0006\u0002\u0010HJ\u0010\u0010I\u001a\u00020\u00182\u0006\u0010J\u001a\u00020KH\u0016J\u0010\u0010L\u001a\u00020\u00182\u0006\u0010M\u001a\u00020NH\u0016J\u0010\u0010O\u001a\u0002072\u0006\u0010P\u001a\u00020QH\u0016J*\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020S2\b\u0010-\u001a\u0004\u0018\u00010\u00142\u0006\u0010U\u001a\u00020#2\u0006\u0010V\u001a\u00020WH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Z"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "proxyRemoteReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "connectionTokenRepository", "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "getFeatureFlags", "Lkotlin/Function0;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "currentRefundPaymentMethod", "Lcom/stripe/transaction/CollectiblePayment;", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "cancelCollectInputs", "", "cancelCollectPaymentMethod", "cancelDiscoverReaders", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "cancelInstallUpdate", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "", "clearReaderDisplay", "collectInputsBlocking", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "collectiblePayment", "disconnectReader", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "discoverReaders", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "getReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "installUpdate", "update", "onConnectReader", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "requestReconnection", "Lkotlin/Function1;", "onPaymentMethodCollectedForPaymentIntent", "readReusableCard", "rebootReader", "requireAccessibilityFlag", "T", "block", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "updatePaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "requestDynamicCurrencyConversion", "apiPaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "CollectPaymentMethodOperation", "DiscoverReadersOperation", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RemoteReaderAdapter extends ProxiedAdapter {
    private final ConnectionTokenRepository connectionTokenRepository;
    private CollectiblePayment currentRefundPaymentMethod;
    private final Function0<ReaderFeatureFlags> getFeatureFlags;
    private final OfflineRepository offlineRepository;
    private final ProxyRemoteReaderController proxyRemoteReaderController;
    private final TerminalStatusManager terminalStatusManager;

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData) {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteReaderAdapter(ProxyRemoteReaderController proxyRemoteReaderController, TerminalStatusManager terminalStatusManager, ConnectionTokenRepository connectionTokenRepository, @Offline OfflineRepository offlineRepository, Function0<ReaderFeatureFlags> getFeatureFlags, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(logger);
        Intrinsics.checkNotNullParameter(proxyRemoteReaderController, "proxyRemoteReaderController");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(connectionTokenRepository, "connectionTokenRepository");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(getFeatureFlags, "getFeatureFlags");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.proxyRemoteReaderController = proxyRemoteReaderController;
        this.terminalStatusManager = terminalStatusManager;
        this.connectionTokenRepository = connectionTokenRepository;
        this.offlineRepository = offlineRepository;
        this.getFeatureFlags = getFeatureFlags;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public KmpCollectInputsResult collectInputsBlocking(KmpCollectInputsParameters kmpCollectInputsParameters) {
        Intrinsics.checkNotNullParameter(kmpCollectInputsParameters, "kmpCollectInputsParameters");
        return this.proxyRemoteReaderController.collectInputs(kmpCollectInputsParameters);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public CollectiblePayment collectiblePayment() {
        Payment payment;
        CollectiblePayment collectiblePayment = this.currentRefundPaymentMethod;
        if (collectiblePayment == null || (payment = collectiblePayment.getPayment()) == null || !payment.isCollectible()) {
            return null;
        }
        return this.currentRefundPaymentMethod;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectPaymentMethod() {
        getLogger().d("cancelCollectPaymentMethod", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        if (getOperationInProgress() instanceof CollectPaymentMethodOperation) {
            Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.CollectPaymentMethodOperation");
            ((CollectPaymentMethodOperation) operationInProgress).cancel();
            return;
        }
        logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(CollectPaymentMethodOperation.class));
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelDiscoverReaders(CancelDiscoverReadersReason cancelDiscoverReadersReason) {
        Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
        getLogger().d("cancelDiscoverReaders", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        if (operationInProgress instanceof DiscoverReadersOperation) {
            Adapter.ReaderOperation<?> operationInProgress2 = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.DiscoverReadersOperation");
            ((DiscoverReadersOperation) operationInProgress2).cancel(cancelDiscoverReadersReason);
        } else if (operationInProgress instanceof Adapter.NullOperation) {
            setOperationToCancel(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
        } else {
            logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelInstallUpdate() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) {
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        getLogger().d("collectPaymentMethod", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        CollectPaymentMethodOperation collectPaymentMethodOperation = new CollectPaymentMethodOperation(this, paymentMethodCollectionType);
        setOperationInProgress(collectPaymentMethodOperation);
        return collectPaymentMethodOperation.execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion, PaymentIntentUpdater apiPaymentIntentUpdater) {
        PaymentIntentExpandedMethod ipPaymentIntent;
        PaymentIntent sdkPaymentIntent;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(apiPaymentIntentUpdater, "apiPaymentIntentUpdater");
        getLogger().d("updatePaymentIntent", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        PaymentMethodData paymentMethodData = paymentIntent.getPaymentMethodData();
        return (paymentMethodData == null || (ipPaymentIntent = paymentMethodData.getIpPaymentIntent()) == null || (sdkPaymentIntent = ProtoConverter.INSTANCE.toSdkPaymentIntent(ipPaymentIntent)) == null) ? paymentIntent : sdkPaymentIntent;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onPaymentMethodCollectedForPaymentIntent() {
        this.proxyRemoteReaderController.onPaymentMethodCollectedForPaymentIntent();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    protected Reader onConnectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        this.currentRefundPaymentMethod = null;
        this.proxyRemoteReaderController.connectReader(reader, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.onConnectReader.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RemoteReaderAdapter.this.terminalStatusManager.reportDisconnect(DisconnectReason.UNKNOWN);
                RemoteReaderAdapter.this.terminalStatusManager.unexpectedDisconnect();
            }
        });
        return reader;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void clearReaderDisplay() {
        getLogger().d("clearReaderDisplay", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        setOperationInProgress(new Adapter.NullOperation());
        this.proxyRemoteReaderController.clearReaderDisplay();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void rebootReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        getLogger().d("rebootReader", new Pair[0]);
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Internet readers do not support rebooting", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disconnectReader(DisconnectReason disconnectReason) {
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        getLogger().d("disconnectReader", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        this.terminalStatusManager.reportDisconnect(disconnectReason);
        this.proxyRemoteReaderController.disconnectReader();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void discoverReaders(DiscoveryConfiguration config, DiscoveryListener listener) throws TerminalException {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        getLogger().d("discoverReaders", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        setOperationInProgress(new DiscoverReadersOperation(this, config, listener));
        getOperationInProgress().execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void installUpdate(ReaderSoftwareUpdate update) {
        Intrinsics.checkNotNullParameter(update, "update");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData readReusableCard() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public AdapterType adapterType() {
        return AdapterType.REMOTE;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectInputs() {
        this.proxyRemoteReaderController.cancelCollectInputs();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void setReaderDisplay(Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        getLogger().d("setReaderDisplay", new Pair[0]);
        this.currentRefundPaymentMethod = null;
        setOperationInProgress(new Adapter.NullOperation());
        this.proxyRemoteReaderController.setReaderDisplay(cart);
    }

    private final <T> T requireAccessibilityFlag(Function0<? extends T> block) throws TerminalException {
        if (this.getFeatureFlags.invoke().enable_client_accessibility_app) {
            return block.invoke();
        }
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This operation is not supported for this reader", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSettings setReaderSettings(final ReaderSettingsParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return (ReaderSettings) requireAccessibilityFlag(new Function0<ReaderSettings>() { // from class: com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.setReaderSettings.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ReaderSettings invoke() {
                RemoteReaderAdapter.this.getLogger().d("setReaderSettings", new Pair[0]);
                return RemoteReaderAdapter.this.proxyRemoteReaderController.setReaderSettings(params);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSettings getReaderSettings() {
        return (ReaderSettings) requireAccessibilityFlag(new Function0<ReaderSettings>() { // from class: com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.getReaderSettings.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ReaderSettings invoke() {
                RemoteReaderAdapter.this.getLogger().d("getReaderSettings", new Pair[0]);
                return RemoteReaderAdapter.this.proxyRemoteReaderController.getReaderSettings();
            }
        });
    }

    /* JADX INFO: compiled from: RemoteReaderAdapter.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\n\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Ljava/lang/Void;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V", "cancel", "", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class DiscoverReadersOperation extends Adapter.ReaderOperation<Void> {
        private final DiscoveryConfiguration config;
        private final DiscoveryListener listener;
        final /* synthetic */ RemoteReaderAdapter this$0;

        /* JADX INFO: compiled from: RemoteReaderAdapter.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[TerminalErrorCode.values().length];
                try {
                    iArr[TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TerminalErrorCode.STRIPE_API_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TerminalErrorCode.STRIPE_API_CONNECTION_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscoverReadersOperation(RemoteReaderAdapter remoteReaderAdapter, DiscoveryConfiguration config, DiscoveryListener listener) {
            super();
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.this$0 = remoteReaderAdapter;
            this.config = config;
            this.listener = listener;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public Void execute() throws TerminalException {
            this.this$0.proxyRemoteReaderController.setReaderController(this.config);
            try {
                ProxyRemoteReaderController proxyRemoteReaderController = this.this$0.proxyRemoteReaderController;
                String token = this.this$0.connectionTokenRepository.getToken();
                DiscoveryConfiguration discoveryConfiguration = this.config;
                DiscoveryConfiguration.InternetDiscoveryConfiguration internetDiscoveryConfiguration = discoveryConfiguration instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration ? (DiscoveryConfiguration.InternetDiscoveryConfiguration) discoveryConfiguration : null;
                String location = internetDiscoveryConfiguration != null ? internetDiscoveryConfiguration.getLocation() : null;
                DiscoveryConfiguration discoveryConfiguration2 = this.config;
                DiscoveryConfiguration.InternetDiscoveryConfiguration internetDiscoveryConfiguration2 = discoveryConfiguration2 instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration ? (DiscoveryConfiguration.InternetDiscoveryConfiguration) discoveryConfiguration2 : null;
                this.listener.onUpdateDiscoveredReaders(proxyRemoteReaderController.discoverReaders(token, location, internetDiscoveryConfiguration2 != null ? internetDiscoveryConfiguration2.getTimeout() : 0));
                cancel(CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE);
            } catch (TerminalException e) {
                DiscoveryConfiguration discoveryConfiguration3 = this.config;
                if (!(discoveryConfiguration3 instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration)) {
                    if (!(discoveryConfiguration3 instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration)) {
                        throw e;
                    }
                    int i = WhenMappings.$EnumSwitchMapping$0[e.getErrorCode().ordinal()];
                    if (i == 1 || i == 2 || i == 3 || i == 4) {
                        List listDiscoverOfflineReaderList$default = OfflineRepository.discoverOfflineReaderList$default(this.this$0.offlineRepository, null, 1, null);
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : listDiscoverOfflineReaderList$default) {
                            Reader reader = (Reader) obj;
                            if (DeviceTypeExtensions.INSTANCE.isSmartDevice(reader.getDeviceType())) {
                                if (((DiscoveryConfiguration.InternetDiscoveryConfiguration) this.config).getLocation() != null) {
                                    String location2 = ((DiscoveryConfiguration.InternetDiscoveryConfiguration) this.config).getLocation();
                                    Location location3 = reader.getLocation();
                                    if (Intrinsics.areEqual(location2, location3 != null ? location3.getId() : null)) {
                                    }
                                }
                                arrayList.add(obj);
                            }
                        }
                        this.listener.onUpdateDiscoveredReaders(arrayList);
                        cancel(CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE);
                    } else {
                        throw e;
                    }
                } else if (WhenMappings.$EnumSwitchMapping$0[e.getErrorCode().ordinal()] == 1) {
                    this.listener.onUpdateDiscoveredReaders(this.this$0.proxyRemoteReaderController.discoverReaders("psst_offline_token", null, 0));
                    cancel(CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE);
                } else {
                    throw e;
                }
            }
            return get();
        }

        public final void cancel(CancelDiscoverReadersReason cancelDiscoverReadersReason) {
            Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
            if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE) ? true : Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.ConnectReaderInProgress.INSTANCE)) {
                set(null);
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.MerchantRequestedCancellation.INSTANCE)) {
                setException(new TerminalException(TerminalErrorCode.CANCELED, "DiscoverReaders was canceled by the user", null, null, 12, null));
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.NewDiscoverReadersQueued.INSTANCE)) {
                setException(new TerminalException(TerminalErrorCode.CANCELED_DUE_TO_INTEGRATION_ERROR, "DiscoverReaders was canceled because of a new discovery call. The SDK can process a single discovery operation at a time.", null, null, 12, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: RemoteReaderAdapter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/PaymentMethodCollectionType;)V", "cancel", "", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class CollectPaymentMethodOperation extends Adapter.ReaderOperation<PaymentMethodData> {
        private final PaymentMethodCollectionType paymentMethodCollectionType;
        final /* synthetic */ RemoteReaderAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CollectPaymentMethodOperation(RemoteReaderAdapter remoteReaderAdapter, PaymentMethodCollectionType paymentMethodCollectionType) {
            super();
            Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
            this.this$0 = remoteReaderAdapter;
            this.paymentMethodCollectionType = paymentMethodCollectionType;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public PaymentMethodData execute() {
            PaymentMethodCollectionType paymentMethodCollectionType = this.paymentMethodCollectionType;
            if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale) {
                this.this$0.proxyRemoteReaderController.startPaymentCollection(this.paymentMethodCollectionType.getAmount(), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$1(this), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$2(this), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getSkipTipping(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getManualEntry(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getUpdatePaymentIntent(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getIntentId(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getTipEligibleAmount(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getComputedPriorities(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getStripeAccountId(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getOfflineDetails(), this.paymentMethodCollectionType.getEnableCustomerCancellation(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getRestPaymentIntent(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getRequestDynamicCurrencyConversion(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getOfflineBehavior(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getSurchargeNotice(), ((PaymentMethodCollectionType.Sale) this.paymentMethodCollectionType).getAllowRedisplay());
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) {
                this.this$0.proxyRemoteReaderController.resumeCollectPaymentMethod(((PaymentMethodCollectionType.StrongCustomerAuthentication) this.paymentMethodCollectionType).getIntentId(), ((PaymentMethodCollectionType.StrongCustomerAuthentication) this.paymentMethodCollectionType).getOfflineDetails(), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$3(this), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$4(this));
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) {
                this.this$0.proxyRemoteReaderController.startInteracRefund(this.paymentMethodCollectionType.getAmount(), ((PaymentMethodCollectionType.Refund) this.paymentMethodCollectionType).getChargeId(), ((PaymentMethodCollectionType.Refund) this.paymentMethodCollectionType).getPaymentIntentId(), this.paymentMethodCollectionType.getEnableCustomerCancellation(), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$5(this), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$6(this));
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent) {
                this.this$0.proxyRemoteReaderController.startSetupIntentPaymentCollection(((PaymentMethodCollectionType.SetupIntent) this.paymentMethodCollectionType).getIntentId(), this.paymentMethodCollectionType.getEnableCustomerCancellation(), ((PaymentMethodCollectionType.SetupIntent) this.paymentMethodCollectionType).getManualEntry(), ((PaymentMethodCollectionType.SetupIntent) this.paymentMethodCollectionType).getOfflineDetails(), ((PaymentMethodCollectionType.SetupIntent) this.paymentMethodCollectionType).getOfflineBehavior(), ((PaymentMethodCollectionType.SetupIntent) this.paymentMethodCollectionType).getAllowRedisplay(), ((PaymentMethodCollectionType.SetupIntent) this.paymentMethodCollectionType).getRestSetupIntent(), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$7(this), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$8(this));
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough) {
                this.this$0.proxyRemoteReaderController.collectData(ProtoConverter.INSTANCE.toProtoCollectDataType(((PaymentMethodCollectionType.Passthrough) this.paymentMethodCollectionType).getPassthroughType()), this.paymentMethodCollectionType.getEnableCustomerCancellation(), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9(this), new RemoteReaderAdapter$CollectPaymentMethodOperation$execute$10(this));
            }
            PaymentMethodData paymentMethodData = get();
            this.this$0.currentRefundPaymentMethod = new CollectiblePayment(new RemotePayment(paymentMethodData.getIpPaymentMethod()), null, false, 6, null);
            return paymentMethodData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void execute$convertToPaymentMethodData(CollectPaymentMethodOperation collectPaymentMethodOperation, ReaderCollectedData readerCollectedData) {
            collectPaymentMethodOperation.set(new PaymentMethodData(null, null, null, null, null, null, null, null, readerCollectedData, null, 767, null));
        }

        public final void cancel() {
            PaymentMethodCollectionType paymentMethodCollectionType = this.paymentMethodCollectionType;
            if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale ? true : paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) {
                this.this$0.proxyRemoteReaderController.cancelCollectPaymentMethod();
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough) {
                this.this$0.proxyRemoteReaderController.cancelCollectData();
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) {
                this.this$0.proxyRemoteReaderController.cancelCollectInteracRefundMethod();
            } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent) {
                this.this$0.proxyRemoteReaderController.cancelCollectSetupIntentPaymentMethod();
            }
            this.this$0.currentRefundPaymentMethod = null;
        }
    }
}
