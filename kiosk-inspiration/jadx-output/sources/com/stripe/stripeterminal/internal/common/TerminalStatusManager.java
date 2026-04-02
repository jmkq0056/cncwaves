package com.stripe.stripeterminal.internal.common;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.BatteryStatus;
import com.stripe.stripeterminal.external.models.ConnectionStatus;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderBatteryInfo;
import com.stripe.stripeterminal.external.models.ReaderDisplayMessage;
import com.stripe.stripeterminal.external.models.ReaderEvent;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.callable.ProxyReaderListener;
import java.util.EnumSet;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: TerminalStatusManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\rJ\u000e\u00101\u001a\u00020/2\u0006\u00100\u001a\u00020\rJ\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u001c\u00104\u001a\u00020/2\b\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108J\u0006\u00109\u001a\u00020/J\u0006\u0010:\u001a\u00020/J\u0016\u0010;\u001a\u00020/2\u0006\u00100\u001a\u00020\r2\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010=\u001a\u00020/2\u0006\u00100\u001a\u00020\rJ\u000e\u0010>\u001a\u00020/2\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010?\u001a\u00020/2\u0006\u0010<\u001a\u00020\u0010J\u0006\u0010@\u001a\u00020/J\u0010\u0010A\u001a\u00020/2\b\u0010B\u001a\u0004\u0018\u00010CJ\u000e\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FJ\u000e\u0010G\u001a\u00020/2\u0006\u0010H\u001a\u00020IJ\u000e\u0010J\u001a\u00020/2\u0006\u00105\u001a\u000206J\u000e\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u00020MJ\u000e\u0010N\u001a\u00020/2\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020/J\u0016\u0010R\u001a\u00020/2\u0006\u00105\u001a\u0002062\u0006\u0010S\u001a\u00020TJ\u001e\u0010U\u001a\u00020/2\u0006\u00100\u001a\u00020\r2\u0006\u0010V\u001a\u00020T2\u0006\u0010<\u001a\u00020\u0010J\u0006\u0010W\u001a\u00020/J\u0010\u0010X\u001a\u00020/2\u0006\u0010Y\u001a\u00020\u0015H\u0002J\u0010\u0010Z\u001a\u00020/2\u0006\u0010Y\u001a\u00020\u001eH\u0002J\u0006\u0010[\u001a\u00020/R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0012\u001a\u0004\u0018\u00010\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u001e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020\r0)¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R#\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u000f0)¢\u0006\b\n\u0000\u001a\u0004\b-\u0010+R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\\"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "_readerConnectedFlow", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/stripe/stripeterminal/external/models/Reader;", "_readerDisconnectedFlow", "Lkotlin/Pair;", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "<set-?>", "connectedReader", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "connectionStatus", "getConnectionStatus", "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "paymentStatus", "getPaymentStatus", "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "proxyReaderListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;", "getProxyReaderListener", "()Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;", "setProxyReaderListener", "(Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;)V", "readerConnectedFlow", "Lkotlinx/coroutines/flow/Flow;", "getReaderConnectedFlow", "()Lkotlinx/coroutines/flow/Flow;", "readerDisconnectedFlow", "getReaderDisconnectedFlow", "connected", "", OfflineStorageConstantsKt.READER, "connecting", "endDiscovery", "endPaymentFlow", "finishInstallingUpdate", "update", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "notConnected", "processing", "reconnectFailed", "disconnectReason", "reconnected", "reportDisconnect", "reportDisconnectForFailedReconnection", "reportLowBatteryWarning", "reportReaderBatteryInfo", "readerBatteryInfo", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "reportReaderEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/stripeterminal/external/models/ReaderEvent;", "reportReaderSoftwareUpdateProgress", "progress", "", "reportUpdateAvailable", "requestReaderDisplayMessage", "message", "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;", "requestReaderInput", "options", "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;", "startDiscovery", "startInstallingUpdate", "cancelable", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "startReconnecting", "cancelReconnect", "unexpectedDisconnect", "updateConnectionStatus", NotificationCompat.CATEGORY_STATUS, "updatePaymentStatus", "waitForInput", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalStatusManager {
    private final MutableSharedFlow<Reader> _readerConnectedFlow;
    private final MutableSharedFlow<Pair<Reader, DisconnectReason>> _readerDisconnectedFlow;
    private Reader connectedReader;
    private ConnectionStatus connectionStatus;
    private final TerminalListener listener;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private PaymentStatus paymentStatus;
    private ProxyReaderListener proxyReaderListener;
    private final Flow<Reader> readerConnectedFlow;
    private final Flow<Pair<Reader, DisconnectReason>> readerDisconnectedFlow;
    private final CoroutineScope scope;
    private final TransactionRepository transactionRepository;

    @Inject
    public TerminalStatusManager(TerminalListener listener, TransactionRepository transactionRepository, @AppScope CoroutineScope scope, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.listener = listener;
        this.transactionRepository = transactionRepository;
        this.scope = scope;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(TerminalStatusManager.class));
        MutableSharedFlow<Reader> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._readerConnectedFlow = mutableSharedFlowMutableSharedFlow$default;
        this.readerConnectedFlow = mutableSharedFlowMutableSharedFlow$default;
        MutableSharedFlow<Pair<Reader, DisconnectReason>> mutableSharedFlowMutableSharedFlow$default2 = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._readerDisconnectedFlow = mutableSharedFlowMutableSharedFlow$default2;
        this.readerDisconnectedFlow = mutableSharedFlowMutableSharedFlow$default2;
        this.connectionStatus = ConnectionStatus.NOT_CONNECTED;
        this.paymentStatus = PaymentStatus.NOT_READY;
    }

    public final ProxyReaderListener getProxyReaderListener() {
        return this.proxyReaderListener;
    }

    public final void setProxyReaderListener(ProxyReaderListener proxyReaderListener) {
        this.proxyReaderListener = proxyReaderListener;
    }

    public final Flow<Reader> getReaderConnectedFlow() {
        return this.readerConnectedFlow;
    }

    public final Flow<Pair<Reader, DisconnectReason>> getReaderDisconnectedFlow() {
        return this.readerDisconnectedFlow;
    }

    public final Reader getConnectedReader() {
        return this.connectedReader;
    }

    public final ConnectionStatus getConnectionStatus() {
        return this.connectionStatus;
    }

    public final PaymentStatus getPaymentStatus() {
        return this.paymentStatus;
    }

    public final void startDiscovery() {
        updateConnectionStatus(ConnectionStatus.DISCOVERING);
    }

    public final void endDiscovery() {
        updateConnectionStatus(ConnectionStatus.NOT_CONNECTED);
    }

    public final void connected(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.i("connected.", new Pair[0]);
        this.connectedReader = reader;
        updateConnectionStatus(ConnectionStatus.CONNECTED);
        updatePaymentStatus(PaymentStatus.READY);
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(reader, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.TerminalStatusManager$connected$1, reason: invalid class name */
    /* JADX INFO: compiled from: TerminalStatusManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.TerminalStatusManager$connected$1", f = "TerminalStatusManager.kt", i = {}, l = {88}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Reader $reader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Reader reader, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$reader = reader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TerminalStatusManager.this.new AnonymousClass1(this.$reader, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TerminalStatusManager.this._readerConnectedFlow.emit(this.$reader, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void connecting(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.i("connecting.", new Pair[0]);
        this.connectedReader = reader;
        updateConnectionStatus(ConnectionStatus.CONNECTING);
    }

    public final void endPaymentFlow() {
        this.logger.i("endPaymentFlow.", new Pair[0]);
        if (this.connectionStatus == ConnectionStatus.CONNECTED) {
            updatePaymentStatus(PaymentStatus.READY);
        } else {
            updatePaymentStatus(PaymentStatus.NOT_READY);
        }
    }

    public final void notConnected() {
        this.logger.i("notConnected.", new Pair[0]);
        this.connectedReader = null;
        updateConnectionStatus(ConnectionStatus.NOT_CONNECTED);
        updatePaymentStatus(PaymentStatus.NOT_READY);
    }

    public final void processing() {
        this.logger.i("processing.", new Pair[0]);
        updatePaymentStatus(PaymentStatus.PROCESSING);
    }

    public final void requestReaderDisplayMessage(ReaderDisplayMessage message) {
        ProxyReaderListener proxyReaderListener;
        Intrinsics.checkNotNullParameter(message, "message");
        this.logger.i("requestReaderDisplayMessage " + message + '.', new Pair[0]);
        if (this.connectedReader == null || (proxyReaderListener = this.proxyReaderListener) == null) {
            return;
        }
        proxyReaderListener.onRequestReaderDisplayMessage(message);
    }

    public final void requestReaderInput(ReaderInputOptions options) {
        ProxyReaderListener proxyReaderListener;
        Intrinsics.checkNotNullParameter(options, "options");
        this.logger.i("requestReaderInput " + options + '.', new Pair[0]);
        if (this.connectedReader == null || (proxyReaderListener = this.proxyReaderListener) == null) {
            return;
        }
        proxyReaderListener.onRequestReaderInput(options);
    }

    public final void reportReaderSoftwareUpdateProgress(float progress) {
        ProxyReaderListener proxyReaderListener;
        this.logger.i("reportReaderSoftwareUpdateProgress " + progress + '.', new Pair[0]);
        if (this.connectedReader == null || (proxyReaderListener = this.proxyReaderListener) == null) {
            return;
        }
        proxyReaderListener.onReportReaderSoftwareUpdateProgress(progress);
    }

    public static /* synthetic */ void finishInstallingUpdate$default(TerminalStatusManager terminalStatusManager, ReaderSoftwareUpdate readerSoftwareUpdate, TerminalException terminalException, int i, Object obj) {
        if ((i & 2) != 0) {
            terminalException = null;
        }
        terminalStatusManager.finishInstallingUpdate(readerSoftwareUpdate, terminalException);
    }

    public final void finishInstallingUpdate(ReaderSoftwareUpdate update, TerminalException e) {
        this.logger.i("finishInstallingUpdate.", new Pair[0]);
        ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
        if (proxyReaderListener != null) {
            proxyReaderListener.onFinishInstallingUpdate(update, e);
        }
    }

    public final void startInstallingUpdate(ReaderSoftwareUpdate update, Cancelable cancelable) {
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(cancelable, "cancelable");
        this.logger.i("startInstallingUpdate.", new Pair[0]);
        if (this.connectedReader != null) {
            boolean zAreEqual = Intrinsics.areEqual(update.getComponents(), EnumSet.of(ReaderSoftwareUpdate.UpdateComponent.INCREMENTAL));
            ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
            if (proxyReaderListener != null) {
                if (zAreEqual) {
                    cancelable = null;
                }
                proxyReaderListener.onStartInstallingUpdate(update, cancelable);
            }
        }
    }

    public final void reportLowBatteryWarning() {
        ProxyReaderListener proxyReaderListener;
        this.logger.i("reportLowBatteryWarning.", new Pair[0]);
        if (this.connectedReader == null || (proxyReaderListener = this.proxyReaderListener) == null) {
            return;
        }
        proxyReaderListener.onReportLowBatteryWarning();
    }

    public final void reportReaderBatteryInfo(ReaderBatteryInfo readerBatteryInfo) {
        this.logger.i("reportReaderBatteryInfo " + readerBatteryInfo + '.', new Pair[0]);
        Reader reader = this.connectedReader;
        if (reader != null) {
            if ((readerBatteryInfo != null ? readerBatteryInfo.getBatteryLevel() : null) == null || readerBatteryInfo.isCharging() == null) {
                this.logger.e("onReportReaderBatteryInfo batteryLevel and/or isCharging are null", new Pair[0]);
                return;
            }
            reader.setBatteryLevel(readerBatteryInfo.getBatteryLevel());
            ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
            if (proxyReaderListener != null) {
                Float batteryLevel = readerBatteryInfo.getBatteryLevel();
                Intrinsics.checkNotNull(batteryLevel);
                float fFloatValue = batteryLevel.floatValue();
                BatteryStatus batteryStatus = readerBatteryInfo.getBatteryStatus();
                Boolean boolIsCharging = readerBatteryInfo.isCharging();
                Intrinsics.checkNotNull(boolIsCharging);
                proxyReaderListener.onBatteryLevelUpdate(fFloatValue, batteryStatus, boolIsCharging.booleanValue());
            }
        }
    }

    public final void reportReaderEvent(ReaderEvent event) {
        ProxyReaderListener proxyReaderListener;
        Intrinsics.checkNotNullParameter(event, "event");
        this.logger.i("reportCardStatusChange " + event + '.', new Pair[0]);
        if (this.connectedReader == null || (proxyReaderListener = this.proxyReaderListener) == null) {
            return;
        }
        proxyReaderListener.onReportReaderEvent(event);
    }

    public final void reportUpdateAvailable(ReaderSoftwareUpdate update) {
        ProxyReaderListener proxyReaderListener;
        Intrinsics.checkNotNullParameter(update, "update");
        this.logger.i("reportUpdateAvailable.", new Pair[0]);
        if (this.connectedReader == null || (proxyReaderListener = this.proxyReaderListener) == null) {
            return;
        }
        proxyReaderListener.onReportAvailableUpdate(update);
    }

    public final void reportDisconnect(DisconnectReason disconnectReason) {
        Reader reader;
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        this.logger.i("reportDisconnect " + disconnectReason + '.', new Pair[0]);
        if (this.connectionStatus != ConnectionStatus.CONNECTED || (reader = this.connectedReader) == null) {
            return;
        }
        ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
        if (proxyReaderListener != null) {
            proxyReaderListener.onDisconnect(disconnectReason);
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new TerminalStatusManager$reportDisconnect$1$1(this, reader, disconnectReason, null), 3, null);
    }

    public final void reportDisconnectForFailedReconnection(DisconnectReason disconnectReason) {
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        this.logger.i("reportDisconnectForFailedReconnection " + disconnectReason + '.', new Pair[0]);
        Reader reader = this.connectedReader;
        if (reader != null) {
            ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
            if (proxyReaderListener != null) {
                proxyReaderListener.onDisconnect(disconnectReason);
            }
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new TerminalStatusManager$reportDisconnectForFailedReconnection$1$1(this, reader, disconnectReason, null), 3, null);
        }
    }

    public final void unexpectedDisconnect() {
        this.logger.i("unexpectedDisconnect.", new Pair[0]);
        Reader reader = this.connectedReader;
        this.connectedReader = null;
        if (reader != null) {
            updateConnectionStatus(ConnectionStatus.NOT_CONNECTED);
            updatePaymentStatus(PaymentStatus.NOT_READY);
        }
    }

    public final void startReconnecting(Reader reader, Cancelable cancelReconnect, DisconnectReason disconnectReason) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(cancelReconnect, "cancelReconnect");
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        this.logger.i("startReconnecting.", new Pair[0]);
        updateConnectionStatus(ConnectionStatus.CONNECTING);
        updatePaymentStatus(PaymentStatus.NOT_READY);
        ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
        if (proxyReaderListener != null) {
            proxyReaderListener.onReaderReconnectStarted(reader, cancelReconnect, disconnectReason);
        }
    }

    public final void reconnected(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.i("reconnected.", new Pair[0]);
        this.connectedReader = reader;
        updateConnectionStatus(ConnectionStatus.CONNECTED);
        updatePaymentStatus(PaymentStatus.READY);
        ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
        if (proxyReaderListener != null) {
            proxyReaderListener.onReaderReconnectSucceeded(reader);
        }
    }

    public final void reconnectFailed(Reader reader, DisconnectReason disconnectReason) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        this.logger.i("reconnectFailed.", new Pair[0]);
        if (this.connectedReader != null) {
            ProxyReaderListener proxyReaderListener = this.proxyReaderListener;
            if (proxyReaderListener != null) {
                proxyReaderListener.onReaderReconnectFailed(reader);
            }
            reportDisconnectForFailedReconnection(disconnectReason);
            updateConnectionStatus(ConnectionStatus.NOT_CONNECTED);
        }
        this.connectedReader = null;
    }

    public final void waitForInput() {
        this.logger.i("waitForInput.", new Pair[0]);
        updatePaymentStatus(PaymentStatus.WAITING_FOR_INPUT);
    }

    private final void updatePaymentStatus(PaymentStatus status) {
        if (status != this.paymentStatus) {
            this.paymentStatus = status;
            this.listener.onPaymentStatusChange(status);
        }
    }

    private final void updateConnectionStatus(ConnectionStatus status) {
        if (status != this.connectionStatus) {
            this.connectionStatus = status;
            if (status == ConnectionStatus.NOT_CONNECTED) {
                this.transactionRepository.setDomesticDebitAids(CollectionsKt.emptyList());
            }
            this.listener.onConnectionStatusChange(this.connectionStatus);
        }
    }
}
