package com.stripe.stripeterminal.internal.common.adapter;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import dagger.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DefaultAdapterRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0010\f\u001a\u00020\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0003\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017¢\u0006\u0002\u0010\u0018J\u0012\u0010+\u001a\u0004\u0018\u00010\u00102\u0006\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u0004\u0018\u00010\u00102\u0006\u0010,\u001a\u00020-H\u0016R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00102\b\u0010\u0019\u001a\u0004\u0018\u00010\u00108B@BX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b\"\u0010#*\u0004\b \u0010!R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b(\u0010&R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010)\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u001eR\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;", "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;", "bluetoothAdapterProvider", "Ldagger/Lazy;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;", "cotsAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;", "simulatedCotsAdapter", "remoteReaderAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;", "simulatedBluetoothAdapterProvider", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;", "simulatedIpAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;", "simulatedUsbAdapterProvider", "embeddedAdapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "usbAdapterProvider", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "<set-?>", "_currentAdapter", "bluetoothAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "getBluetoothAdapter", "()Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "currentAdapter", "getCurrentAdapter$delegate", "(Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;)Ljava/lang/Object;", "getCurrentAdapter", "()Lcom/stripe/stripeterminal/internal/common/Adapter;", "simulatedBluetoothAdapter", "getSimulatedBluetoothAdapter", "()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;", "simulatedUsbAdapter", "getSimulatedUsbAdapter", "usbAdapter", "getUsbAdapter", "getAdapterByDiscoveryConfiguration", "discoveryConfiguration", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "setAdapterByDiscoveryConfiguration", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultAdapterRepository implements AdapterRepository {
    private Adapter _currentAdapter;
    private final Lazy<BbposBluetoothAdapter> bluetoothAdapterProvider;
    private final CotsAdapter cotsAdapter;
    private final Adapter embeddedAdapter;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final RemoteReaderAdapter remoteReaderAdapter;
    private final Lazy<SimulatedMobileAdapter> simulatedBluetoothAdapterProvider;
    private final CotsAdapter simulatedCotsAdapter;
    private final SimulatedIpAdapter simulatedIpAdapter;
    private final Lazy<SimulatedMobileAdapter> simulatedUsbAdapterProvider;
    private final Lazy<BbposUsbAdapter> usbAdapterProvider;

    public DefaultAdapterRepository(Lazy<BbposBluetoothAdapter> bluetoothAdapterProvider, CotsAdapter cotsAdapter, CotsAdapter cotsAdapter2, RemoteReaderAdapter remoteReaderAdapter, Lazy<SimulatedMobileAdapter> simulatedBluetoothAdapterProvider, SimulatedIpAdapter simulatedIpAdapter, Lazy<SimulatedMobileAdapter> simulatedUsbAdapterProvider, Adapter adapter, Lazy<BbposUsbAdapter> usbAdapterProvider, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(bluetoothAdapterProvider, "bluetoothAdapterProvider");
        Intrinsics.checkNotNullParameter(remoteReaderAdapter, "remoteReaderAdapter");
        Intrinsics.checkNotNullParameter(simulatedBluetoothAdapterProvider, "simulatedBluetoothAdapterProvider");
        Intrinsics.checkNotNullParameter(simulatedIpAdapter, "simulatedIpAdapter");
        Intrinsics.checkNotNullParameter(simulatedUsbAdapterProvider, "simulatedUsbAdapterProvider");
        Intrinsics.checkNotNullParameter(usbAdapterProvider, "usbAdapterProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.bluetoothAdapterProvider = bluetoothAdapterProvider;
        this.cotsAdapter = cotsAdapter;
        this.simulatedCotsAdapter = cotsAdapter2;
        this.remoteReaderAdapter = remoteReaderAdapter;
        this.simulatedBluetoothAdapterProvider = simulatedBluetoothAdapterProvider;
        this.simulatedIpAdapter = simulatedIpAdapter;
        this.simulatedUsbAdapterProvider = simulatedUsbAdapterProvider;
        this.embeddedAdapter = adapter;
        this.usbAdapterProvider = usbAdapterProvider;
        this.logger = logger;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.AdapterRepository
    /* JADX INFO: renamed from: getCurrentAdapter, reason: from getter */
    public Adapter get_currentAdapter() {
        return this._currentAdapter;
    }

    private final ProxiedAdapter getBluetoothAdapter() {
        if (this.embeddedAdapter != null) {
            return null;
        }
        return this.bluetoothAdapterProvider.get();
    }

    private final ProxiedAdapter getUsbAdapter() {
        if (this.embeddedAdapter != null) {
            return null;
        }
        return this.usbAdapterProvider.get();
    }

    private final SimulatedMobileAdapter getSimulatedBluetoothAdapter() {
        SimulatedMobileAdapter simulatedMobileAdapter = this.simulatedBluetoothAdapterProvider.get();
        Intrinsics.checkNotNullExpressionValue(simulatedMobileAdapter, "get(...)");
        return simulatedMobileAdapter;
    }

    private final SimulatedMobileAdapter getSimulatedUsbAdapter() {
        SimulatedMobileAdapter simulatedMobileAdapter = this.simulatedUsbAdapterProvider.get();
        Intrinsics.checkNotNullExpressionValue(simulatedMobileAdapter, "get(...)");
        return simulatedMobileAdapter;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.AdapterRepository
    public Adapter getAdapterByDiscoveryConfiguration(DiscoveryConfiguration discoveryConfiguration) throws TerminalException {
        SimulatedMobileAdapter usbAdapter;
        RemoteReaderAdapter remoteReaderAdapter;
        SimulatedMobileAdapter bluetoothAdapter;
        CotsAdapter cotsAdapter;
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        if (discoveryConfiguration instanceof DiscoveryConfiguration.TapToPayDiscoveryConfiguration) {
            if (((DiscoveryConfiguration.TapToPayDiscoveryConfiguration) discoveryConfiguration).isSimulated()) {
                cotsAdapter = this.simulatedCotsAdapter;
            } else {
                cotsAdapter = this.cotsAdapter;
            }
            if (cotsAdapter != null) {
                return cotsAdapter;
            }
            throw new TerminalException(TerminalErrorCode.TAP_TO_PAY_LIBRARY_NOT_INCLUDED, "The Terminal `taptopay` module must be included for this DiscoveryConfiguration", null, null, 12, null);
        }
        if (discoveryConfiguration instanceof DiscoveryConfiguration.BluetoothDiscoveryConfiguration) {
            if (((DiscoveryConfiguration.BluetoothDiscoveryConfiguration) discoveryConfiguration).isSimulated()) {
                bluetoothAdapter = getSimulatedBluetoothAdapter();
            } else {
                bluetoothAdapter = getBluetoothAdapter();
            }
            return bluetoothAdapter;
        }
        if (discoveryConfiguration instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration) {
            if (((DiscoveryConfiguration.InternetDiscoveryConfiguration) discoveryConfiguration).isSimulated()) {
                remoteReaderAdapter = this.simulatedIpAdapter;
            } else {
                remoteReaderAdapter = this.remoteReaderAdapter;
            }
            return remoteReaderAdapter;
        }
        if (discoveryConfiguration instanceof DiscoveryConfiguration.EmbeddedDiscoveryConfiguration) {
            Adapter adapter = this.embeddedAdapter;
            if (adapter != null) {
                return adapter;
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "The Terminal `embedded` module must be included for this DiscoveryConfiguration", null, null, 12, null);
        }
        if (discoveryConfiguration instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration) {
            return this.remoteReaderAdapter;
        }
        if (!(discoveryConfiguration instanceof DiscoveryConfiguration.UsbDiscoveryConfiguration)) {
            throw new NoWhenBranchMatchedException();
        }
        if (((DiscoveryConfiguration.UsbDiscoveryConfiguration) discoveryConfiguration).isSimulated()) {
            usbAdapter = getSimulatedUsbAdapter();
        } else {
            usbAdapter = getUsbAdapter();
        }
        return usbAdapter;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.AdapterRepository
    public Adapter setAdapterByDiscoveryConfiguration(DiscoveryConfiguration discoveryConfiguration) throws TerminalException {
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        Adapter adapterByDiscoveryConfiguration = getAdapterByDiscoveryConfiguration(discoveryConfiguration);
        if (!Intrinsics.areEqual(adapterByDiscoveryConfiguration, this._currentAdapter)) {
            SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
            Pair<String, ? extends Object>[] pairArr = new Pair[2];
            Adapter adapter = get_currentAdapter();
            pairArr[0] = TuplesKt.to(TypedValues.TransitionType.S_FROM, adapter != null ? Reflection.getOrCreateKotlinClass(adapter.getClass()).getSimpleName() : null);
            pairArr[1] = TuplesKt.to(TypedValues.TransitionType.S_TO, adapterByDiscoveryConfiguration != null ? Reflection.getOrCreateKotlinClass(adapterByDiscoveryConfiguration.getClass()).getSimpleName() : null);
            simpleLogger.d("Switching adapters", pairArr);
            Adapter adapter2 = this._currentAdapter;
            if (adapter2 != null) {
                adapter2.dispose();
            }
            if (adapterByDiscoveryConfiguration != null) {
                adapterByDiscoveryConfiguration.init();
            }
            this._currentAdapter = adapterByDiscoveryConfiguration;
        }
        return adapterByDiscoveryConfiguration;
    }
}
