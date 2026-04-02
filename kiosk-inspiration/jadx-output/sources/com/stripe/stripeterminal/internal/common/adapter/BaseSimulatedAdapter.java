package com.stripe.stripeterminal.internal.common.adapter;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.SourceType;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.makers.InteracEmvBlobMaker;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.BBPosHardware;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.RoutingPriority;
import com.stripe.stripeterminal.external.models.SimulatedCard;
import com.stripe.stripeterminal.external.models.SimulatedCardType;
import com.stripe.stripeterminal.external.models.SimulatorConfiguration;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.time.Clock;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.stripe.transaction.payment.EmvPayment;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.datetime.Instant;

/* JADX INFO: compiled from: BaseSimulatedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 h2\u00020\u0001:\u0002ghBK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011¢\u0006\u0002\u0010\u0012J\b\u0010#\u001a\u00020$H\u0016J(\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0002J\b\u0010-\u001a\u00020.H\u0016J\u0010\u0010\u0015\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0016J\b\u0010\u0016\u001a\u00020.H\u0016J\b\u00101\u001a\u00020.H\u0002J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u00102\u001a\u00020.2\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020.2\u0006\u0010)\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H&J\u0016\u0010=\u001a\b\u0012\u0004\u0012\u00020?0>2\u0006\u0010@\u001a\u00020(H\u0016J\u0010\u0010A\u001a\u00020.2\u0006\u0010B\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020\f2\u0006\u0010E\u001a\u00020FH\u0002J\b\u0010G\u001a\u00020.H\u0016J.\u0010H\u001a\u00020:2\u0006\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u00020K2\u0014\u0010L\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020.\u0018\u00010MH\u0014J\b\u0010N\u001a\u00020.H\u0016J\b\u0010O\u001a\u00020.H\u0016J\u001c\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\f2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010TH\u0014J\b\u0010U\u001a\u00020QH\u0016J\u0010\u0010V\u001a\u00020.2\u0006\u0010I\u001a\u00020:H\u0016J\u0010\u0010W\u001a\u00020:2\u0006\u0010I\u001a\u00020:H\u0016J\u0010\u0010X\u001a\u00020.2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0010\u0010[\u001a\u00020.2\u0006\u0010\\\u001a\u00020,H\u0004J!\u0010]\u001a\u0004\u0018\u00010^2\b\u0010_\u001a\u0004\u0018\u00010^2\u0006\u0010I\u001a\u00020:H\u0000¢\u0006\u0002\b`J*\u0010a\u001a\u00020b2\u0006\u0010c\u001a\u00020b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010d\u001a\u00020\f2\u0006\u0010e\u001a\u00020fH\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0014X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010\b\u001a\u00020\tX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006i"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "clock", "Lcom/stripe/time/Clock;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "shopifyReadersEnabled", "Lkotlin/Function0;", "", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "cancelCollectPayment", "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;", "cancelDiscoverReaders", "cancelInstallUpdate", "getCancelInstallUpdate", "()Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;", "setCancelInstallUpdate", "(Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;)V", "getClock", "()Lcom/stripe/time/Clock;", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "getSimulatorConfigurationRepository", "()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "getStatusManager", "()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "buildTestOfflineVersionsWithExpirations", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;", "firmware", "", "config", "keyProfileId", "expirationTimeMs", "", "cancelCollectPaymentMethod", "", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "clearCancellationStates", "disconnectReader", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "discoverReaders", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "getSimulatedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "handleAuthResponse", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/hardware/emv/TransactionResult;", "tlvBlob", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "isDomesticDebitOnly", "simulatedCard", "Lcom/stripe/stripeterminal/external/models/SimulatedCard;", "onConnect", "onConnectReader", OfflineStorageConstantsKt.READER, "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "requestReconnection", "Lkotlin/Function1;", "onDisconnect", "onPaymentMethodCollectedForPaymentIntent", "readCard", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "reusable", "collectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "readReusableCard", "rebootReader", "reconnectReader", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "sleep", "millis", "updateOfflineConfigForSimulatedReader", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "offlineConfig", "updateOfflineConfigForSimulatedReader$adapter_release", "updatePaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "requestDynamicCurrencyConversion", "apiPaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "CancellationState", "Companion", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BaseSimulatedAdapter extends ProxiedAdapter {
    public static final String CHIPPER_OR_M2_CONFIG_HASH = "AB91315AB4D9E0ABA497398AE2219CD2";
    public static final String OUTDATED_SIMULATED_READER_FIRMWARE_VERSION = "1.00.03.29";
    public static final String SERIAL_NUMBER_SUFFIX = "SIMULATOR";
    protected static final int SLEEP_QUANTUM_MS = 2000;
    public static final String UP_TO_DATE_SIMULATED_READER_FIRMWARE_VERSION = "1.00.03.32";
    public static final String WP3_CONFIG_HASH = "C5F54F0DA8D5C461AD01CC258CC22DD120494D5F57495345504144332D53504C415348";
    private CancellationState cancelCollectPayment;
    private CancellationState cancelDiscoverReaders;
    private CancellationState cancelInstallUpdate;
    private final Clock clock;
    private CollectiblePayment collectiblePayment;
    private final Function0<Boolean> shopifyReadersEnabled;
    private final SimulatorConfigurationRepository simulatorConfigurationRepository;
    private final TerminalStatusManager statusManager;
    private final TransactionRepository transactionRepository;

    public abstract Reader getSimulatedReader(DeviceType deviceType);

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    public void onConnect() {
    }

    public void onDisconnect() {
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onPaymentMethodCollectedForPaymentIntent() {
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData) {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
    }

    protected final Clock getClock() {
        return this.clock;
    }

    protected final SimulatorConfigurationRepository getSimulatorConfigurationRepository() {
        return this.simulatorConfigurationRepository;
    }

    protected final TerminalStatusManager getStatusManager() {
        return this.statusManager;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseSimulatedAdapter(Clock clock, TransactionRepository transactionRepository, SimulatorConfigurationRepository simulatorConfigurationRepository, TerminalStatusManager statusManager, Function0<Boolean> shopifyReadersEnabled, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(logger);
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(shopifyReadersEnabled, "shopifyReadersEnabled");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.clock = clock;
        this.transactionRepository = transactionRepository;
        this.simulatorConfigurationRepository = simulatorConfigurationRepository;
        this.statusManager = statusManager;
        this.shopifyReadersEnabled = shopifyReadersEnabled;
        this.cancelDiscoverReaders = CancellationState.NOT_CANCELED;
        this.cancelCollectPayment = CancellationState.NOT_CANCELED;
        this.cancelInstallUpdate = CancellationState.NOT_CANCELED;
    }

    protected final CancellationState getCancelInstallUpdate() {
        return this.cancelInstallUpdate;
    }

    protected final void setCancelInstallUpdate(CancellationState cancellationState) {
        Intrinsics.checkNotNullParameter(cancellationState, "<set-?>");
        this.cancelInstallUpdate = cancellationState;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    /* JADX INFO: renamed from: collectiblePayment, reason: from getter */
    public CollectiblePayment getCollectiblePayment() {
        return this.collectiblePayment;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectPaymentMethod() {
        this.cancelCollectPayment = CancellationState.CANCELED_WITH_ERROR;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelDiscoverReaders(CancelDiscoverReadersReason cancelDiscoverReadersReason) {
        CancellationState cancellationState;
        Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
        if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.NewDiscoverReadersQueued.INSTANCE) ? true : Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.MerchantRequestedCancellation.INSTANCE)) {
            cancellationState = CancellationState.CANCELED_WITH_ERROR;
        } else {
            if (!(Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE) ? true : Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.ConnectReaderInProgress.INSTANCE))) {
                throw new NoWhenBranchMatchedException();
            }
            cancellationState = CancellationState.CANCELED_SILENTLY;
        }
        this.cancelDiscoverReaders = cancellationState;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelInstallUpdate() {
        this.cancelInstallUpdate = CancellationState.CANCELED_WITH_ERROR;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    protected Reader onConnectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        setRequestReconnection(requestReconnection);
        sleep(2000L);
        onConnect();
        return getSimulatedReader(reader.getDeviceType());
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public Reader reconnectReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        sleep(2000L);
        return reader;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void rebootReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        sleep(2000L);
        Function1<DisconnectReason, Unit> requestReconnection = getRequestReconnection();
        if (requestReconnection != null) {
            requestReconnection.invoke(DisconnectReason.REBOOT_REQUESTED);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disconnectReader(DisconnectReason disconnectReason) throws TerminalException {
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        onDisconnect();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void discoverReaders(DiscoveryConfiguration config, DiscoveryListener listener) throws TerminalException {
        ArrayList arrayListListOf;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        clearCancellationStates();
        boolean z = config instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration;
        if (z) {
            arrayListListOf = CollectionsKt.listOf((Object[]) new Reader[]{getSimulatedReader(DeviceType.VERIFONE_P400), getSimulatedReader(DeviceType.WISEPOS_E)});
        } else {
            if (config instanceof DiscoveryConfiguration.BluetoothDiscoveryConfiguration ? true : config instanceof DiscoveryConfiguration.UsbDiscoveryConfiguration) {
                List listCreateListBuilder = CollectionsKt.createListBuilder();
                listCreateListBuilder.addAll(CollectionsKt.listOf((Object[]) new DeviceType[]{DeviceType.CHIPPER_2X, DeviceType.STRIPE_M2, DeviceType.WISEPAD_3}));
                if (this.shopifyReadersEnabled.invoke().booleanValue()) {
                    listCreateListBuilder.add(DeviceType.WISECUBE);
                    listCreateListBuilder.add(DeviceType.CHIPPER_1X);
                }
                List listBuild = CollectionsKt.build(listCreateListBuilder);
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listBuild, 10));
                Iterator it = listBuild.iterator();
                while (it.hasNext()) {
                    arrayList.add(getSimulatedReader((DeviceType) it.next()));
                }
                arrayListListOf = arrayList;
            } else {
                if (!(config instanceof DiscoveryConfiguration.EmbeddedDiscoveryConfiguration ? true : config instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration ? true : config instanceof DiscoveryConfiguration.TapToPayDiscoveryConfiguration)) {
                    throw new NoWhenBranchMatchedException();
                }
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Simulating reader for " + config + " is not supported.", null, null, 12, null);
            }
        }
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        long jCurrentTimeMillis2 = this.clock.currentTimeMillis();
        while (this.cancelDiscoverReaders == CancellationState.NOT_CANCELED) {
            if (this.clock.currentTimeMillis() - jCurrentTimeMillis2 >= 2000) {
                listener.onUpdateDiscoveredReaders(arrayListListOf);
                jCurrentTimeMillis2 = this.clock.currentTimeMillis();
            }
            boolean z2 = config instanceof DiscoveryConfiguration.BluetoothDiscoveryConfiguration;
            if (z2) {
                numValueOf = Integer.valueOf(((DiscoveryConfiguration.BluetoothDiscoveryConfiguration) config).getTimeout());
            } else if (config instanceof DiscoveryConfiguration.UsbDiscoveryConfiguration) {
                numValueOf = Integer.valueOf(((DiscoveryConfiguration.UsbDiscoveryConfiguration) config).getTimeout());
            } else {
                if (!(config instanceof DiscoveryConfiguration.EmbeddedDiscoveryConfiguration ? true : config instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration ? true : z ? true : config instanceof DiscoveryConfiguration.TapToPayDiscoveryConfiguration)) {
                    throw new NoWhenBranchMatchedException();
                }
                numValueOf = null;
            }
            if (numValueOf != null && numValueOf.intValue() != 0 && this.clock.currentTimeMillis() - jCurrentTimeMillis >= numValueOf.intValue() * 1000) {
                if (!z2) {
                    if (config instanceof DiscoveryConfiguration.UsbDiscoveryConfiguration) {
                        throw new TerminalException(TerminalErrorCode.USB_DISCOVERY_TIMED_OUT, "USB discovery timed out.", null, null, 12, null);
                    }
                    throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected DiscoveryConfiguration: " + config, null, null, 12, null);
                }
                throw new TerminalException(TerminalErrorCode.BLUETOOTH_SCAN_TIMED_OUT, "Bluetooth scan timed out.", null, null, 12, null);
            }
        }
        if (this.cancelDiscoverReaders == CancellationState.CANCELED_WITH_ERROR) {
            throw new TerminalException(TerminalErrorCode.CANCELED, "DiscoverReaders was canceled by the user.", null, null, 12, null);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public Deferred<TransactionResult> handleAuthResponse(String tlvBlob) {
        Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        completableDeferredCompletableDeferred$default.complete(new TransactionResult(TransactionResult.Result.APPROVED, tlvBlob));
        return completableDeferredCompletableDeferred$default;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData readReusableCard() throws TerminalException {
        return readCard$default(this, true, null, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion, PaymentIntentUpdater apiPaymentIntentUpdater) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(apiPaymentIntentUpdater, "apiPaymentIntentUpdater");
        return apiPaymentIntentUpdater.invoke(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion);
    }

    public static /* synthetic */ PaymentMethodData readCard$default(BaseSimulatedAdapter baseSimulatedAdapter, boolean z, PaymentMethodCollectionType paymentMethodCollectionType, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readCard");
        }
        if ((i & 2) != 0) {
            paymentMethodCollectionType = null;
        }
        return baseSimulatedAdapter.readCard(z, paymentMethodCollectionType);
    }

    protected PaymentMethodData readCard(boolean reusable, PaymentMethodCollectionType collectionType) throws TerminalException {
        String blob;
        EmvTransactionType emvTransactionType;
        InterfaceType interfaceType;
        List<PaymentMethodOptions.RoutingPriority> computedPriorities;
        clearCancellationStates();
        sleep(2000L);
        if (this.cancelCollectPayment != CancellationState.NOT_CANCELED) {
            throw new TerminalException(TerminalErrorCode.CANCELED, "The operation was canceled by the user.", null, null, 12, null);
        }
        sleep(2000L);
        if (this.cancelCollectPayment != CancellationState.NOT_CANCELED) {
            throw new TerminalException(TerminalErrorCode.CANCELED, "The operation was canceled by the user.", null, null, 12, null);
        }
        SimulatorConfiguration simulatorConfiguration = this.simulatorConfigurationRepository.getSimulatorConfiguration();
        boolean z = collectionType instanceof PaymentMethodCollectionType.Sale;
        PaymentMethodCollectionType.Sale sale = z ? (PaymentMethodCollectionType.Sale) collectionType : null;
        List<RoutingPriority> sdkPriorities = (sale == null || (computedPriorities = sale.getComputedPriorities()) == null) ? null : ProtoConverter.INSTANCE.toSdkPriorities(computedPriorities);
        if (sdkPriorities == null) {
            sdkPriorities = CollectionsKt.emptyList();
        }
        TransactionRepository transactionRepository = this.transactionRepository;
        transactionRepository.setAmountTip(BaseSimulatedAdapterKt.getAmountTip(transactionRepository.getAmountTip(), collectionType, simulatorConfiguration, this.statusManager.getConnectedReader()));
        boolean z2 = collectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication;
        SimulatedCard simulatedCard = simulatorConfiguration.getSimulatedCard();
        if (collectionType instanceof PaymentMethodCollectionType.Refund) {
            blob = InteracEmvBlobMaker.INSTANCE.create(((PaymentMethodCollectionType.Refund) collectionType).getAmount().getValue(), new SimulatedCard(SimulatedCardType.INTERAC).getEmvBlob().getBlob());
            emvTransactionType = EmvTransactionType.TRADITIONAL;
        } else {
            blob = simulatedCard.emvForSimulatedCard(sdkPriorities, z2).getBlob();
            emvTransactionType = EmvTransactionType.QUICK;
        }
        String str = blob;
        PaymentMethodData paymentMethodData = new PaymentMethodData(str, null, null, null, null, null, null, null, null, null, WinError.ERROR_NOTIFY_ENUM_DIR, null);
        boolean z3 = Intrinsics.areEqual(simulatedCard, new SimulatedCard(SimulatedCardType.OFFLINE_PIN_SCA_RETRY)) || Intrinsics.areEqual(simulatedCard, new SimulatedCard(SimulatedCardType.ONLINE_PIN_SCA_RETRY));
        if (z2 || paymentMethodData.getIsInterac()) {
            interfaceType = InterfaceType.CONTACT;
        } else {
            interfaceType = InterfaceType.CONTACTLESS;
        }
        if (isDomesticDebitOnly(simulatedCard)) {
            PaymentMethodCollectionType.Sale sale2 = z ? (PaymentMethodCollectionType.Sale) collectionType : null;
            if (sale2 != null && sale2.isOffline()) {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This card is not supported while operating offline.", null, null, 12, null);
            }
        }
        InterfaceType interfaceType2 = interfaceType;
        this.collectiblePayment = new CollectiblePayment(new EmvPayment(str, interfaceType2, emvTransactionType, paymentMethodData.getIsInterac() ? SourceType.INTERAC_PRESENT : SourceType.CARD_PRESENT, false), interfaceType2, z3);
        return paymentMethodData;
    }

    protected final void sleep(long millis) throws TerminalException {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException e) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Sleep failed", e, null, 8, null);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public AdapterType adapterType() {
        return AdapterType.SIMULATED;
    }

    private final void clearCancellationStates() {
        this.cancelCollectPayment = CancellationState.NOT_CANCELED;
        this.cancelDiscoverReaders = CancellationState.NOT_CANCELED;
        this.cancelInstallUpdate = CancellationState.NOT_CANCELED;
    }

    private final boolean isDomesticDebitOnly(SimulatedCard simulatedCard) {
        return Intrinsics.areEqual(simulatedCard, new SimulatedCard(SimulatedCardType.EFTPOS_AU_DEBIT));
    }

    public final OfflineConfigPb updateOfflineConfigForSimulatedReader$adapter_release(OfflineConfigPb offlineConfig, Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        BBPosHardware bBPosHardware = reader.getDeviceType().getHardwareModel().bbpos_hardware;
        if (bBPosHardware == null) {
            throw new IllegalArgumentException("Simulated reader must have a BBPOS hardware model.".toString());
        }
        String strName = bBPosHardware.name();
        String configVersion = reader.getConfigVersion();
        if (configVersion == null) {
            configVersion = "";
        }
        String pinKeyProfileId = reader.getPinKeyProfileId();
        Map mapMapOf = MapsKt.mapOf(TuplesKt.to("simulatedRegion", new OfflineConfigPb.RegionOfflineConfigPb(null, MapsKt.mapOf(TuplesKt.to(strName, buildTestOfflineVersionsWithExpirations(UP_TO_DATE_SIMULATED_READER_FIRMWARE_VERSION, configVersion, pinKeyProfileId == null ? "" : pinKeyProfileId, Instant.INSTANCE.getDISTANT_FUTURE().toEpochMilliseconds()))), null, 5, null)));
        if (offlineConfig == null) {
            return null;
        }
        boolean offlineEnabled = this.simulatorConfigurationRepository.getSimulatorConfiguration().getOfflineEnabled();
        OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb = offlineConfig.reader_offline_config;
        OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPbCopy$default = readerOfflineConfigPb != null ? OfflineConfigPb.ReaderOfflineConfigPb.copy$default(readerOfflineConfigPb, this.simulatorConfigurationRepository.getSimulatorConfiguration().getOfflineEnabled(), false, false, null, 14, null) : null;
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb = offlineConfig.account_offline_config;
        return OfflineConfigPb.copy$default(offlineConfig, offlineEnabled, 0, null, readerOfflineConfigPbCopy$default, accountOfflineConfigPb != null ? OfflineConfigPb.AccountOfflineConfigPb.copy$default(accountOfflineConfigPb, 0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, MapsKt.toMap(mapMapOf), null, null, null, 0, false, null, null, false, false, null, false, null, 134201343, null) : null, false, false, null, null, 486, null);
    }

    private final OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb buildTestOfflineVersionsWithExpirations(String firmware, String config, String keyProfileId, long expirationTimeMs) {
        return new OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb(CollectionsKt.listOf(new OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration(firmware, expirationTimeMs, null, 4, null)), CollectionsKt.listOf(new OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration(config, expirationTimeMs, null, 4, null)), CollectionsKt.listOf(new OfflineConfigPb.KeyProfileMetadata("", keyProfileId, expirationTimeMs, null, 8, null)), null, 8, null);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BaseSimulatedAdapter.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0084\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;", "", "(Ljava/lang/String;I)V", "NOT_CANCELED", "CANCELED_SILENTLY", "CANCELED_WITH_ERROR", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    protected static final class CancellationState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CancellationState[] $VALUES;
        public static final CancellationState NOT_CANCELED = new CancellationState("NOT_CANCELED", 0);
        public static final CancellationState CANCELED_SILENTLY = new CancellationState("CANCELED_SILENTLY", 1);
        public static final CancellationState CANCELED_WITH_ERROR = new CancellationState("CANCELED_WITH_ERROR", 2);

        private static final /* synthetic */ CancellationState[] $values() {
            return new CancellationState[]{NOT_CANCELED, CANCELED_SILENTLY, CANCELED_WITH_ERROR};
        }

        public static EnumEntries<CancellationState> getEntries() {
            return $ENTRIES;
        }

        public static CancellationState valueOf(String str) {
            return (CancellationState) Enum.valueOf(CancellationState.class, str);
        }

        public static CancellationState[] values() {
            return (CancellationState[]) $VALUES.clone();
        }

        private CancellationState(String str, int i) {
        }

        static {
            CancellationState[] cancellationStateArr$values = $values();
            $VALUES = cancellationStateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(cancellationStateArr$values);
        }
    }
}
