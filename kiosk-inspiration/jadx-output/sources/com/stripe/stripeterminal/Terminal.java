package com.stripe.stripeterminal;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.Terminal;
import com.stripe.stripeterminal.dagger.DaggerDefaultSdkDependenciesComponent;
import com.stripe.stripeterminal.dagger.DefaultSdkDependenciesComponent;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.callable.CollectInputsResultCallback;
import com.stripe.stripeterminal.external.callable.CollectedDataCallback;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.callable.LocationListCallback;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.callable.PaymentIntentCallback;
import com.stripe.stripeterminal.external.callable.ReaderCallback;
import com.stripe.stripeterminal.external.callable.ReaderSettingsCallback;
import com.stripe.stripeterminal.external.callable.RefundCallback;
import com.stripe.stripeterminal.external.callable.SetupIntentCallback;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.CollectConfiguration;
import com.stripe.stripeterminal.external.models.CollectDataConfiguration;
import com.stripe.stripeterminal.external.models.CollectInputsParameters;
import com.stripe.stripeterminal.external.models.ConfirmConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionStatus;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.ListLocationsParameters;
import com.stripe.stripeterminal.external.models.OfflineStatus;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.ReaderSupportResult;
import com.stripe.stripeterminal.external.models.RefundConfiguration;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentConfiguration;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.SimulatorConfiguration;
import com.stripe.stripeterminal.external.models.TapToPayUxConfiguration;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import com.stripe.stripeterminal.log.LogLevel;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Terminal.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¤\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 r2\u00020\u0001:\u0001rB\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u001e\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010\"\u001a\u00020)J\u0006\u0010*\u001a\u00020\u001fJ\u000e\u0010+\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020,J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010\"\u001a\u000201J\u0016\u00102\u001a\u00020.2\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u000205J\"\u00106\u001a\u00020.2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\b\b\u0002\u0010/\u001a\u000207H\u0007J\"\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020:2\b\b\u0002\u0010/\u001a\u00020;2\u0006\u0010\"\u001a\u00020,H\u0007J*\u0010<\u001a\u00020.2\u0006\u0010 \u001a\u00020&2\u0006\u0010=\u001a\u00020>2\b\b\u0002\u0010/\u001a\u00020?2\u0006\u0010\"\u001a\u00020)H\u0007J\"\u0010@\u001a\u00020.2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\b\b\u0002\u0010/\u001a\u00020AH\u0007J\u000e\u0010B\u001a\u00020.2\u0006\u0010\"\u001a\u00020CJ\u0016\u0010D\u001a\u00020.2\u0006\u0010 \u001a\u00020&2\u0006\u0010\"\u001a\u00020)J\u001e\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00020\u00062\u0006\u0010/\u001a\u00020G2\u0006\u0010H\u001a\u00020IJ\u0016\u0010J\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020K2\u0006\u0010\"\u001a\u00020#J\"\u0010J\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020K2\u0006\u0010\"\u001a\u00020#2\b\u0010L\u001a\u0004\u0018\u00010MH\u0007J\u0016\u0010N\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020O2\u0006\u0010\"\u001a\u00020)J\"\u0010N\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020O2\u0006\u0010\"\u001a\u00020)2\b\u0010L\u001a\u0004\u0018\u00010MH\u0007J\u000e\u0010P\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020,J \u0010Q\u001a\u00020.2\u0006\u0010/\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010\"\u001a\u00020,H\u0007J\u000e\u0010U\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020VJ\u0006\u0010W\u001a\u00020\u001fJ\u0016\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010\"\u001a\u00020[J\u000e\u0010\\\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020,J\u0016\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020#J\u0016\u0010`\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020)J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020cH\u0007J\u0016\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020f2\u0006\u0010\"\u001a\u00020,J\u0016\u0010g\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020h2\u0006\u0010\"\u001a\u00020VJ\u000e\u0010i\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020jJ\u000e\u0010k\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020lJ\u0016\u0010m\u001a\u00020n2\u0006\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020RR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00188F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006s"}, d2 = {"Lcom/stripe/stripeterminal/Terminal;", "", "terminalSession", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "connectionStatus", "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "getConnectionStatus", "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "offlineStatus", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "getOfflineStatus$annotations", "()V", "getOfflineStatus", "()Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "paymentStatus", "Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "getPaymentStatus", "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "value", "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "simulatorConfiguration", "getSimulatorConfiguration", "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "setSimulatorConfiguration", "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V", "cancelPaymentIntent", "", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "cancelSetupIntent", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "clearCachedCredentials", "clearReaderDisplay", "Lcom/stripe/stripeterminal/external/callable/Callback;", "collectData", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "config", "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;", "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;", "collectInputs", "collectInputsParameters", "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;", "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;", "collectPaymentMethod", "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;", "collectRefundPaymentMethod", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", "collectSetupIntentPaymentMethod", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;", "confirmPaymentIntent", "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;", "confirmRefund", "Lcom/stripe/stripeterminal/external/callable/RefundCallback;", "confirmSetupIntent", "connectReader", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "connectionCallback", "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;", "createPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "disconnectReader", "discoverReaders", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "discoveryListener", "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "getReaderSettings", "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;", "installAvailableUpdate", "listLocations", "parameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;", "rebootReader", "retrievePaymentIntent", "clientSecret", "", "retrieveSetupIntent", "setOfflineListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "setTapToPayUxConfiguration", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "setTerminalListener", "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "supportsReadersOfType", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "discoveryConfiguration", "Companion", "core_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Terminal {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(Terminal.class);
    private static Terminal instance;
    private final TerminalSession terminalSession;

    @JvmStatic
    public static final Terminal getInstance() {
        return INSTANCE.getInstance();
    }

    public static /* synthetic */ void getOfflineStatus$annotations() {
    }

    @JvmStatic
    public static final void initTerminal(Context context, ConnectionTokenProvider connectionTokenProvider, TerminalListener terminalListener) throws TerminalException {
        INSTANCE.initTerminal(context, connectionTokenProvider, terminalListener);
    }

    @JvmStatic
    public static final void initTerminal(Context context, LogLevel logLevel, ConnectionTokenProvider connectionTokenProvider, TerminalListener terminalListener) throws TerminalException {
        INSTANCE.initTerminal(context, logLevel, connectionTokenProvider, terminalListener);
    }

    @JvmStatic
    public static final void initTerminal(Context context, LogLevel logLevel, ConnectionTokenProvider connectionTokenProvider, TerminalListener terminalListener, OfflineListener offlineListener) throws TerminalException {
        INSTANCE.initTerminal(context, logLevel, connectionTokenProvider, terminalListener, offlineListener);
    }

    @JvmStatic
    public static final boolean isInitialized() {
        return INSTANCE.isInitialized();
    }

    public final Cancelable collectPaymentMethod(PaymentIntent intent, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return collectPaymentMethod$default(this, intent, callback, null, 4, null);
    }

    public final Cancelable collectRefundPaymentMethod(RefundParameters refundParams, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return collectRefundPaymentMethod$default(this, refundParams, null, callback, 2, null);
    }

    public final Cancelable collectSetupIntentPaymentMethod(SetupIntent intent, AllowRedisplay allowRedisplay, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(allowRedisplay, "allowRedisplay");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return collectSetupIntentPaymentMethod$default(this, intent, allowRedisplay, null, callback, 4, null);
    }

    public final Cancelable confirmPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return confirmPaymentIntent$default(this, intent, callback, null, 4, null);
    }

    public Terminal(TerminalSession terminalSession) {
        Intrinsics.checkNotNullParameter(terminalSession, "terminalSession");
        this.terminalSession = terminalSession;
    }

    public final ConnectionStatus getConnectionStatus() {
        return this.terminalSession.getConnectionStatus();
    }

    public final PaymentStatus getPaymentStatus() {
        return this.terminalSession.getPaymentStatus();
    }

    public final Reader getConnectedReader() {
        return this.terminalSession.getConnectedReader();
    }

    public final OfflineStatus getOfflineStatus() {
        return this.terminalSession.getOfflineStatusStateFlow().getValue();
    }

    public final SimulatorConfiguration getSimulatorConfiguration() {
        return this.terminalSession.getSimulatorConfiguration();
    }

    public final void setSimulatorConfiguration(SimulatorConfiguration value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.terminalSession.setSimulatorConfiguration(value);
    }

    public final void setTerminalListener(TerminalListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        LOGGER.d("setTerminalListener", new Pair[0]);
        this.terminalSession.setTerminalListener(listener);
    }

    public final void cancelPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("cancelPaymentIntent", new Pair[0]);
        this.terminalSession.cancelPaymentIntent(intent, callback);
    }

    public final void clearCachedCredentials() {
        LOGGER.d("clearCachedCredentials", new Pair[0]);
        this.terminalSession.clearCachedCredentials();
    }

    public final void clearReaderDisplay(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("clearReaderDisplay", new Pair[0]);
        this.terminalSession.clearReaderDisplay(callback);
    }

    public static /* synthetic */ Cancelable collectPaymentMethod$default(Terminal terminal, PaymentIntent paymentIntent, PaymentIntentCallback paymentIntentCallback, CollectConfiguration collectConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            collectConfiguration = new CollectConfiguration.Builder().build();
        }
        return terminal.collectPaymentMethod(paymentIntent, paymentIntentCallback, collectConfiguration);
    }

    public final Cancelable collectPaymentMethod(PaymentIntent intent, PaymentIntentCallback callback, CollectConfiguration config) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(config, "config");
        LOGGER.d("collectPaymentMethod", TuplesKt.to("config", config));
        return this.terminalSession.collectPaymentMethod(intent, callback, config);
    }

    public final void listLocations(ListLocationsParameters parameters, LocationListCallback callback) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("listLocations", new Pair[0]);
        this.terminalSession.listLocations(parameters, callback);
    }

    public static /* synthetic */ Cancelable collectRefundPaymentMethod$default(Terminal terminal, RefundParameters refundParameters, RefundConfiguration refundConfiguration, com.stripe.stripeterminal.external.callable.Callback callback, int i, Object obj) {
        if ((i & 2) != 0) {
            refundConfiguration = new RefundConfiguration.Builder().build();
        }
        return terminal.collectRefundPaymentMethod(refundParameters, refundConfiguration, callback);
    }

    public final Cancelable collectRefundPaymentMethod(RefundParameters refundParams, RefundConfiguration config, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("collectRefundPaymentMethod", TuplesKt.to("config", config));
        return this.terminalSession.collectRefundPaymentMethod(refundParams, config, callback);
    }

    public final void retrieveSetupIntent(String clientSecret, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("retrieveSetupIntent", new Pair[0]);
        this.terminalSession.retrieveSetupIntent(clientSecret, callback);
    }

    public static /* synthetic */ Cancelable collectSetupIntentPaymentMethod$default(Terminal terminal, SetupIntent setupIntent, AllowRedisplay allowRedisplay, SetupIntentConfiguration setupIntentConfiguration, SetupIntentCallback setupIntentCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            setupIntentConfiguration = new SetupIntentConfiguration.Builder().build();
        }
        return terminal.collectSetupIntentPaymentMethod(setupIntent, allowRedisplay, setupIntentConfiguration, setupIntentCallback);
    }

    public final Cancelable collectSetupIntentPaymentMethod(SetupIntent intent, AllowRedisplay allowRedisplay, SetupIntentConfiguration config, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(allowRedisplay, "allowRedisplay");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("collectSetupIntentPaymentMethod", TuplesKt.to("config", config));
        return this.terminalSession.collectSetupIntentPaymentMethod(intent, allowRedisplay, config, callback);
    }

    public final Cancelable confirmSetupIntent(SetupIntent intent, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("confirmSetupIntent", new Pair[0]);
        return this.terminalSession.confirmSetupIntent(intent, callback);
    }

    public final void connectReader(Reader reader, ConnectionConfiguration config, ReaderCallback connectionCallback) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(connectionCallback, "connectionCallback");
        LOGGER.d("connectReader", TuplesKt.to(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, reader.getSerialNumber()));
        this.terminalSession.connectReader(reader, config, connectionCallback);
    }

    public final void createPaymentIntent(PaymentIntentParameters params, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("createPaymentIntent", new Pair[0]);
        this.terminalSession.createPaymentIntent(params, callback);
    }

    public final void createPaymentIntent(PaymentIntentParameters params, PaymentIntentCallback callback, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("createPaymentIntent", new Pair[0]);
        this.terminalSession.createPaymentIntent(params, callback, createConfiguration);
    }

    public final void createSetupIntent(SetupIntentParameters params, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("createSetupIntent", new Pair[0]);
        this.terminalSession.createSetupIntent(params, callback, null);
    }

    public final void createSetupIntent(SetupIntentParameters params, SetupIntentCallback callback, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("createSetupIntent", new Pair[0]);
        this.terminalSession.createSetupIntent(params, callback, createConfiguration);
    }

    public final void cancelSetupIntent(SetupIntent setupIntent, SetupIntentCancellationParameters params, SetupIntentCallback callback) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("cancelSetupIntent", new Pair[0]);
        this.terminalSession.cancelSetupIntent(setupIntent, params, callback);
    }

    public final void rebootReader(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("rebootReader", new Pair[0]);
        this.terminalSession.rebootReader(callback);
    }

    public final void disconnectReader(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("disconnectReader", new Pair[0]);
        this.terminalSession.disconnectReader(callback);
    }

    public final Cancelable discoverReaders(DiscoveryConfiguration config, DiscoveryListener discoveryListener, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(discoveryListener, "discoveryListener");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("discoverReaders", new Pair[0]);
        return this.terminalSession.discoverReaders(config, discoveryListener, callback);
    }

    public static /* synthetic */ Cancelable confirmPaymentIntent$default(Terminal terminal, PaymentIntent paymentIntent, PaymentIntentCallback paymentIntentCallback, ConfirmConfiguration confirmConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            confirmConfiguration = new ConfirmConfiguration.Builder().build();
        }
        return terminal.confirmPaymentIntent(paymentIntent, paymentIntentCallback, confirmConfiguration);
    }

    public final Cancelable confirmPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback, ConfirmConfiguration config) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(config, "config");
        LOGGER.d("confirmPaymentIntent", new Pair[0]);
        return this.terminalSession.confirmPaymentIntent(intent, callback, config);
    }

    public final Cancelable confirmRefund(RefundCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("confirmRefund", new Pair[0]);
        return this.terminalSession.confirmRefund(callback);
    }

    public final void retrievePaymentIntent(String clientSecret, PaymentIntentCallback callback) {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("retrievePaymentIntent", new Pair[0]);
        this.terminalSession.retrievePaymentIntent(clientSecret, callback);
    }

    public final void setReaderDisplay(Cart cart, com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("setReaderDisplay", new Pair[0]);
        this.terminalSession.setReaderDisplay(cart, callback);
    }

    public final Cancelable collectInputs(CollectInputsParameters collectInputsParameters, CollectInputsResultCallback callback) {
        Intrinsics.checkNotNullParameter(collectInputsParameters, "collectInputsParameters");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("collectInputs", new Pair[0]);
        return this.terminalSession.collectInputs(collectInputsParameters, callback);
    }

    public final Cancelable collectData(CollectDataConfiguration config, CollectedDataCallback callback) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("collectData", new Pair[0]);
        return this.terminalSession.collectData(config, callback);
    }

    public final ReaderSupportResult supportsReadersOfType(DeviceType deviceType, DiscoveryConfiguration discoveryConfiguration) {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        LOGGER.d("supportsReaderOfType", new Pair[0]);
        return this.terminalSession.supportsReadersOfType(deviceType, discoveryConfiguration);
    }

    public final void installAvailableUpdate() throws TerminalException {
        LOGGER.d("installAvailableUpdate", new Pair[0]);
        this.terminalSession.installAvailableUpdate();
    }

    public final void setOfflineListener(OfflineListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        LOGGER.d("setOfflineListener", new Pair[0]);
        this.terminalSession.setOfflineListener(listener);
    }

    public final void setReaderSettings(ReaderSettingsParameters params, ReaderSettingsCallback callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("setReaderSettings", new Pair[0]);
        this.terminalSession.setReaderSettings(params, callback);
    }

    public final void setTapToPayUxConfiguration(TapToPayUxConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        LOGGER.d("setTapToPayUxConfiguration", new Pair[0]);
        this.terminalSession.setTapToPayUxConfiguration(config);
    }

    public final void getReaderSettings(ReaderSettingsCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        LOGGER.d("getReaderSettings", new Pair[0]);
        this.terminalSession.getReaderSettings(callback);
    }

    /* JADX INFO: compiled from: Terminal.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0007J*\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J4\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\b\u0010\u0014\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/Terminal$Companion;", "", "()V", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "instance", "Lcom/stripe/stripeterminal/Terminal;", "getInstance", "initTerminal", "", "context", "Landroid/content/Context;", "logLevel", "Lcom/stripe/stripeterminal/log/LogLevel;", "tokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "offlineListener", "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "isInitialized", "", "core_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void initTerminal(Context context, ConnectionTokenProvider tokenProvider, TerminalListener listener) throws TerminalException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
            Intrinsics.checkNotNullParameter(listener, "listener");
            initTerminal$default(this, context, null, tokenProvider, listener, 2, null);
        }

        private Companion() {
        }

        public static /* synthetic */ void initTerminal$default(Companion companion, Context context, LogLevel logLevel, ConnectionTokenProvider connectionTokenProvider, TerminalListener terminalListener, int i, Object obj) throws TerminalException {
            if ((i & 2) != 0) {
                logLevel = LogLevel.NONE;
            }
            companion.initTerminal(context, logLevel, connectionTokenProvider, terminalListener);
        }

        @JvmStatic
        public final void initTerminal(Context context, LogLevel logLevel, ConnectionTokenProvider tokenProvider, TerminalListener listener) throws TerminalException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
            Intrinsics.checkNotNullParameter(listener, "listener");
            initTerminal(context, logLevel, tokenProvider, listener, null);
        }

        public static /* synthetic */ void initTerminal$default(Companion companion, Context context, LogLevel logLevel, ConnectionTokenProvider connectionTokenProvider, TerminalListener terminalListener, OfflineListener offlineListener, int i, Object obj) throws TerminalException {
            if ((i & 2) != 0) {
                logLevel = LogLevel.NONE;
            }
            companion.initTerminal(context, logLevel, connectionTokenProvider, terminalListener, offlineListener);
        }

        @JvmStatic
        public final void initTerminal(Context context, LogLevel logLevel, ConnectionTokenProvider tokenProvider, TerminalListener listener, OfflineListener offlineListener) throws TerminalException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
            Intrinsics.checkNotNullParameter(listener, "listener");
            if (Terminal.instance != null) {
                throw new IllegalStateException("You can only call initTerminal *before* requesting the Terminal instance for the first time. If you are trying to switch accounts in your app, refer to the documentation for the `clearCachedCredentials` method.".toString());
            }
            TerminalSdkManager terminalSdkManager = TerminalSdkManager.INSTANCE;
            com.stripe.loggingmodels.LogLevel coreObject$core_publish = logLevel.toCoreObject$core_publish();
            DefaultSdkDependenciesComponent defaultSdkDependenciesComponentCreate = DaggerDefaultSdkDependenciesComponent.create();
            Intrinsics.checkNotNullExpressionValue(defaultSdkDependenciesComponentCreate, "create(...)");
            terminalSdkManager.initTerminalSession(context, coreObject$core_publish, tokenProvider, listener, offlineListener, defaultSdkDependenciesComponentCreate, new Function1<TerminalSession, Unit>() { // from class: com.stripe.stripeterminal.Terminal$Companion$initTerminal$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TerminalSession terminalSession) {
                    invoke2(terminalSession);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TerminalSession session) {
                    Intrinsics.checkNotNullParameter(session, "session");
                    Terminal.Companion companion = Terminal.INSTANCE;
                    Terminal.instance = new Terminal(session);
                }
            });
        }

        @JvmStatic
        public final boolean isInitialized() {
            return Terminal.instance != null;
        }

        @JvmStatic
        public final Terminal getInstance() {
            Terminal terminal = Terminal.instance;
            if (terminal != null) {
                return terminal;
            }
            throw new IllegalStateException("initTerminal must be called before attempting to get the instance".toString());
        }
    }
}
