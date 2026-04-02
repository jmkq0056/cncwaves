package com.stripe.core.hardware.reactive.status;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.status.CancellationType;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderBatteryStatus;
import com.stripe.hardware.status.ReaderDisplayMessage;
import com.stripe.hardware.status.ReaderEvent;
import com.stripe.hardware.status.ReaderException;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.hardware.status.ReaderPowerEvent;
import com.stripe.hardware.status.ReaderRebootAttempt;
import com.stripe.hardware.status.RebootCause;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReactiveReaderStatusListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u001fJ\u000e\u0010O\u001a\u00020\n2\u0006\u0010P\u001a\u00020&J\b\u0010Q\u001a\u00020\nH\u0016J\b\u0010R\u001a\u00020\nH\u0016J\u0010\u0010S\u001a\u00020\n2\u0006\u0010T\u001a\u00020\u0016H\u0016J\b\u0010U\u001a\u00020\nH\u0016J\u0010\u0010V\u001a\u00020\n2\u0006\u0010W\u001a\u00020\u0013H\u0016J\u0010\u0010X\u001a\u00020\n2\u0006\u0010Y\u001a\u00020<H\u0016J\u0010\u0010Z\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u001fH\u0016J\u0010\u0010[\u001a\u00020\n2\u0006\u0010\\\u001a\u00020&H\u0016J\u0016\u0010]\u001a\u00020\n2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001aH\u0016J\u0010\u0010_\u001a\u00020\n2\u0006\u0010`\u001a\u00020-H\u0016J\u0010\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u000201H\u0016J\u0010\u0010c\u001a\u00020\n2\u0006\u0010d\u001a\u000205H\u0016J\u0010\u0010e\u001a\u00020\n2\u0006\u0010b\u001a\u00020@H\u0016J\u0018\u0010f\u001a\u00020\n2\u0006\u0010g\u001a\u00020h2\u0006\u0010\\\u001a\u00020iH\u0016J\u0016\u0010j\u001a\u00020\n2\f\u0010k\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0010\u0010l\u001a\u00020\n2\u0006\u0010d\u001a\u000205H\u0016J\b\u0010m\u001a\u00020\nH\u0016J\u0014\u0010n\u001a\b\u0012\u0004\u0012\u0002Ho0\u000e\"\u0004\b\u0000\u0010oH\u0002R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\fR\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\fR\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\fR\u001a\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\t¢\u0006\b\n\u0000\u001a\u0004\b \u0010\fR\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\fR\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\t¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\fR\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020&0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001a0\t¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\fR\u001a\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001a0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\t¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\fR\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020-0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u00100\u001a\b\u0012\u0004\u0012\u0002010\t¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\fR\u0014\u00103\u001a\b\u0012\u0004\u0012\u0002010\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u00104\u001a\b\u0012\u0004\u0012\u0002050\t¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\fR\u0014\u00107\u001a\b\u0012\u0004\u0012\u0002050\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u00108\u001a\b\u0012\u0004\u0012\u00020\u00130\t¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\fR\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00130\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010;\u001a\b\u0012\u0004\u0012\u00020<0\t¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\fR\u0014\u0010>\u001a\b\u0012\u0004\u0012\u00020<0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\t¢\u0006\b\n\u0000\u001a\u0004\bA\u0010\fR\u0014\u0010B\u001a\b\u0012\u0004\u0012\u00020@0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010C\u001a\b\u0012\u0004\u0012\u00020D0\t¢\u0006\b\n\u0000\u001a\u0004\bE\u0010\fR\u0014\u0010F\u001a\b\u0012\u0004\u0012\u00020D0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010G\u001a\b\u0012\u0004\u0012\u0002050\t¢\u0006\b\n\u0000\u001a\u0004\bH\u0010\fR\u0014\u0010I\u001a\b\u0012\u0004\u0012\u0002050\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010J\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\bK\u0010\fR\u0014\u0010L\u001a\b\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006p"}, d2 = {"Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "accountTypeSelectionRequestObservable", "Lio/reactivex/rxjava3/core/Observable;", "", "getAccountTypeSelectionRequestObservable", "()Lio/reactivex/rxjava3/core/Observable;", "accountTypeSelectionRequestPublishable", "Lio/reactivex/rxjava3/subjects/Subject;", "applicationSelectionRequestObservable", "getApplicationSelectionRequestObservable", "applicationSelectionRequestPublishable", "readerBatteryInfoObservable", "Lcom/stripe/hardware/status/ReaderInfo;", "getReaderBatteryInfoObservable", "readerCancellationObservable", "Lcom/stripe/hardware/status/CancellationType;", "getReaderCancellationObservable", "readerCancellationPublishable", "readerConfigurationObservable", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "getReaderConfigurationObservable", "readerConfigurationPublishable", "readerConnectObservable", "Lcom/stripe/core/hardware/Reader;", "getReaderConnectObservable", "readerConnectPublishable", "readerDeviceBusyObservable", "getReaderDeviceBusyObservable", "readerDeviceBusyPublishable", "readerDisconnectObservable", "Lcom/stripe/hardware/status/DisconnectCause;", "getReaderDisconnectObservable", "readerDisconnectPublishable", "readerDiscoveryObservable", "getReaderDiscoveryObservable", "readerDiscoveryPublishable", "readerDisplayMessageObservable", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "getReaderDisplayMessageObservable", "readerDisplayMessagePublishable", "readerEventObservable", "Lcom/stripe/hardware/status/ReaderEvent;", "getReaderEventObservable", "readerEventPublishable", "readerExceptionObservable", "Lcom/stripe/hardware/status/ReaderException;", "getReaderExceptionObservable", "readerExceptionPublishable", "readerInfoObservable", "getReaderInfoObservable", "readerInfoPublishable", "readerLowBatteryObservable", "Lcom/stripe/hardware/status/ReaderBatteryStatus;", "getReaderLowBatteryObservable", "readerLowBatteryPublishable", "readerPowerEventObservable", "Lcom/stripe/hardware/status/ReaderPowerEvent;", "getReaderPowerEventObservable", "readerPowerEventPublishable", "readerRebootAttemptObservable", "Lcom/stripe/hardware/status/ReaderRebootAttempt;", "getReaderRebootAttemptObservable", "readerRebootAttemptPublishable", "sessionExceptionObservable", "getSessionExceptionObservable", "sessionExceptionPublishable", "sessionInitializedObservable", "getSessionInitializedObservable", "sessionInitializedPublishable", "emitSerialConnected", OfflineStorageConstantsKt.READER, "emitSerialDisconnected", "disconnectCause", "handleAccountTypeSelectionRequest", "handleApplicationSelectionRequest", "handleCancellation", "type", "handleDeviceBusy", "handleDeviceInfo", "info", "handleLowBattery", "batteryStatus", "handleReaderConnect", "handleReaderDisconnect", "cause", "handleReaderDiscovery", "readers", "handleReaderDisplayMessage", "message", "handleReaderEvent", NotificationCompat.CATEGORY_EVENT, "handleReaderException", "e", "handleReaderPowerEvent", "handleReaderRebootAttempt", FirebaseAnalytics.Param.SUCCESS, "", "Lcom/stripe/hardware/status/RebootCause;", "handleRequestReaderConfiguration", "options", "handleSessionException", "handleSessionInitialized", "serializedSubject", "T", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReactiveReaderStatusListener implements ReaderStatusListener {
    private final Observable<Unit> accountTypeSelectionRequestObservable;
    private final Subject<Unit> accountTypeSelectionRequestPublishable;
    private final Observable<Unit> applicationSelectionRequestObservable;
    private final Subject<Unit> applicationSelectionRequestPublishable;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final Observable<ReaderInfo> readerBatteryInfoObservable;
    private final Observable<CancellationType> readerCancellationObservable;
    private final Subject<CancellationType> readerCancellationPublishable;
    private final Observable<Set<ReaderConfiguration.ReaderType>> readerConfigurationObservable;
    private final Subject<Set<ReaderConfiguration.ReaderType>> readerConfigurationPublishable;
    private final Observable<Reader> readerConnectObservable;
    private final Subject<Reader> readerConnectPublishable;
    private final Observable<Unit> readerDeviceBusyObservable;
    private final Subject<Unit> readerDeviceBusyPublishable;
    private final Observable<DisconnectCause> readerDisconnectObservable;
    private final Subject<DisconnectCause> readerDisconnectPublishable;
    private final Observable<Set<Reader>> readerDiscoveryObservable;
    private final Subject<Set<Reader>> readerDiscoveryPublishable;
    private final Observable<ReaderDisplayMessage> readerDisplayMessageObservable;
    private final Subject<ReaderDisplayMessage> readerDisplayMessagePublishable;
    private final Observable<ReaderEvent> readerEventObservable;
    private final Subject<ReaderEvent> readerEventPublishable;
    private final Observable<ReaderException> readerExceptionObservable;
    private final Subject<ReaderException> readerExceptionPublishable;
    private final Observable<ReaderInfo> readerInfoObservable;
    private final Subject<ReaderInfo> readerInfoPublishable;
    private final Observable<ReaderBatteryStatus> readerLowBatteryObservable;
    private final Subject<ReaderBatteryStatus> readerLowBatteryPublishable;
    private final Observable<ReaderPowerEvent> readerPowerEventObservable;
    private final Subject<ReaderPowerEvent> readerPowerEventPublishable;
    private final Observable<ReaderRebootAttempt> readerRebootAttemptObservable;
    private final Subject<ReaderRebootAttempt> readerRebootAttemptPublishable;
    private final Observable<ReaderException> sessionExceptionObservable;
    private final Subject<ReaderException> sessionExceptionPublishable;
    private final Observable<Unit> sessionInitializedObservable;
    private final Subject<Unit> sessionInitializedPublishable;

    public ReactiveReaderStatusListener(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        Subject<Unit> subjectSerializedSubject = serializedSubject();
        this.readerDeviceBusyPublishable = subjectSerializedSubject;
        Subject<ReaderDisplayMessage> subjectSerializedSubject2 = serializedSubject();
        this.readerDisplayMessagePublishable = subjectSerializedSubject2;
        Subject<Unit> subjectSerializedSubject3 = serializedSubject();
        this.accountTypeSelectionRequestPublishable = subjectSerializedSubject3;
        Subject<Unit> subjectSerializedSubject4 = serializedSubject();
        this.applicationSelectionRequestPublishable = subjectSerializedSubject4;
        Subject<CancellationType> subjectSerializedSubject5 = serializedSubject();
        this.readerCancellationPublishable = subjectSerializedSubject5;
        Subject<ReaderEvent> subjectSerializedSubject6 = serializedSubject();
        this.readerEventPublishable = subjectSerializedSubject6;
        Subject<Set<ReaderConfiguration.ReaderType>> subjectSerializedSubject7 = serializedSubject();
        this.readerConfigurationPublishable = subjectSerializedSubject7;
        Subject<Reader> subjectSerializedSubject8 = serializedSubject();
        this.readerConnectPublishable = subjectSerializedSubject8;
        Subject<DisconnectCause> subjectSerializedSubject9 = serializedSubject();
        this.readerDisconnectPublishable = subjectSerializedSubject9;
        Subject<ReaderBatteryStatus> subjectSerializedSubject10 = serializedSubject();
        this.readerLowBatteryPublishable = subjectSerializedSubject10;
        Subject<ReaderInfo> subjectSerializedSubject11 = serializedSubject();
        this.readerInfoPublishable = subjectSerializedSubject11;
        Subject<Set<Reader>> subjectSerializedSubject12 = serializedSubject();
        this.readerDiscoveryPublishable = subjectSerializedSubject12;
        Subject<ReaderException> subjectSerializedSubject13 = serializedSubject();
        this.readerExceptionPublishable = subjectSerializedSubject13;
        Subject<ReaderRebootAttempt> subjectSerializedSubject14 = serializedSubject();
        this.readerRebootAttemptPublishable = subjectSerializedSubject14;
        Subject<Unit> subjectSerializedSubject15 = serializedSubject();
        this.sessionInitializedPublishable = subjectSerializedSubject15;
        Subject<ReaderException> subjectSerializedSubject16 = serializedSubject();
        this.sessionExceptionPublishable = subjectSerializedSubject16;
        Subject<ReaderPowerEvent> subjectSerializedSubject17 = serializedSubject();
        this.readerPowerEventPublishable = subjectSerializedSubject17;
        this.readerCancellationObservable = subjectSerializedSubject5;
        this.readerDeviceBusyObservable = subjectSerializedSubject;
        this.readerDisplayMessageObservable = subjectSerializedSubject2;
        Observable<ReaderEvent> observableDistinctUntilChanged = subjectSerializedSubject6.distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(observableDistinctUntilChanged, "distinctUntilChanged(...)");
        this.readerEventObservable = observableDistinctUntilChanged;
        this.accountTypeSelectionRequestObservable = subjectSerializedSubject3;
        this.applicationSelectionRequestObservable = subjectSerializedSubject4;
        this.readerConfigurationObservable = subjectSerializedSubject7;
        this.readerConnectObservable = subjectSerializedSubject8;
        this.readerDisconnectObservable = subjectSerializedSubject9;
        this.readerLowBatteryObservable = subjectSerializedSubject10;
        Observable<ReaderInfo> observableFilter = subjectSerializedSubject11.filter(new Predicate() { // from class: com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener$readerInfoObservable$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(ReaderInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Map<String, String> rawReaderData = it.getRawReaderData();
                return rawReaderData == null || rawReaderData.size() != 3 || it.isCharging() == null || it.getBatteryLevel() == null || it.isUsbConnected() == null;
            }
        });
        Intrinsics.checkNotNullExpressionValue(observableFilter, "filter(...)");
        this.readerInfoObservable = observableFilter;
        Observable<ReaderInfo> observableFilter2 = subjectSerializedSubject11.filter(new Predicate() { // from class: com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener$readerBatteryInfoObservable$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(ReaderInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return (it.isCharging() == null || it.getBatteryLevel() == null) ? false : true;
            }
        });
        Intrinsics.checkNotNullExpressionValue(observableFilter2, "filter(...)");
        this.readerBatteryInfoObservable = observableFilter2;
        this.readerDiscoveryObservable = subjectSerializedSubject12;
        this.readerExceptionObservable = subjectSerializedSubject13;
        this.readerRebootAttemptObservable = subjectSerializedSubject14;
        this.sessionInitializedObservable = subjectSerializedSubject15;
        this.sessionExceptionObservable = subjectSerializedSubject16;
        this.readerPowerEventObservable = subjectSerializedSubject17;
    }

    public final Observable<CancellationType> getReaderCancellationObservable() {
        return this.readerCancellationObservable;
    }

    public final Observable<Unit> getReaderDeviceBusyObservable() {
        return this.readerDeviceBusyObservable;
    }

    public final Observable<ReaderDisplayMessage> getReaderDisplayMessageObservable() {
        return this.readerDisplayMessageObservable;
    }

    public final Observable<ReaderEvent> getReaderEventObservable() {
        return this.readerEventObservable;
    }

    public final Observable<Unit> getAccountTypeSelectionRequestObservable() {
        return this.accountTypeSelectionRequestObservable;
    }

    public final Observable<Unit> getApplicationSelectionRequestObservable() {
        return this.applicationSelectionRequestObservable;
    }

    public final Observable<Set<ReaderConfiguration.ReaderType>> getReaderConfigurationObservable() {
        return this.readerConfigurationObservable;
    }

    public final Observable<Reader> getReaderConnectObservable() {
        return this.readerConnectObservable;
    }

    public final Observable<DisconnectCause> getReaderDisconnectObservable() {
        return this.readerDisconnectObservable;
    }

    public final Observable<ReaderBatteryStatus> getReaderLowBatteryObservable() {
        return this.readerLowBatteryObservable;
    }

    public final Observable<ReaderInfo> getReaderInfoObservable() {
        return this.readerInfoObservable;
    }

    public final Observable<ReaderInfo> getReaderBatteryInfoObservable() {
        return this.readerBatteryInfoObservable;
    }

    public final Observable<Set<Reader>> getReaderDiscoveryObservable() {
        return this.readerDiscoveryObservable;
    }

    public final Observable<ReaderException> getReaderExceptionObservable() {
        return this.readerExceptionObservable;
    }

    public final Observable<ReaderRebootAttempt> getReaderRebootAttemptObservable() {
        return this.readerRebootAttemptObservable;
    }

    public final Observable<Unit> getSessionInitializedObservable() {
        return this.sessionInitializedObservable;
    }

    public final Observable<ReaderException> getSessionExceptionObservable() {
        return this.sessionExceptionObservable;
    }

    public final Observable<ReaderPowerEvent> getReaderPowerEventObservable() {
        return this.readerPowerEventObservable;
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleCancellation(CancellationType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.readerCancellationPublishable.onNext(type);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleDeviceBusy() {
        this.readerDeviceBusyPublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderDisplayMessage(ReaderDisplayMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.readerDisplayMessagePublishable.onNext(message);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderEvent(ReaderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.readerEventPublishable.onNext(event);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleApplicationSelectionRequest() {
        this.applicationSelectionRequestPublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleAccountTypeSelectionRequest() {
        this.accountTypeSelectionRequestPublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleRequestReaderConfiguration(Set<? extends ReaderConfiguration.ReaderType> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.readerConfigurationPublishable.onNext(options);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderConnect(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.d("handleReaderConnect", TuplesKt.to(OfflineStorageConstantsKt.READER, reader));
        this.readerConnectPublishable.onNext(reader);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderDisconnect(DisconnectCause cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        this.logger.d("handleReaderDisconnect", TuplesKt.to("cause", cause));
        this.readerDisconnectPublishable.onNext(cause);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleLowBattery(ReaderBatteryStatus batteryStatus) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        this.readerLowBatteryPublishable.onNext(batteryStatus);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleDeviceInfo(ReaderInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.readerInfoPublishable.onNext(info);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderDiscovery(Set<? extends Reader> readers) {
        Intrinsics.checkNotNullParameter(readers, "readers");
        this.readerDiscoveryPublishable.onNext(readers);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderException(ReaderException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.readerExceptionPublishable.onNext(e);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleSessionException(ReaderException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.sessionExceptionPublishable.onNext(e);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleSessionInitialized() {
        this.sessionInitializedPublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderRebootAttempt(boolean success, RebootCause cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        this.readerRebootAttemptPublishable.onNext(new ReaderRebootAttempt(success, cause));
    }

    @Override // com.stripe.core.hardware.status.ReaderStatusListener
    public void handleReaderPowerEvent(ReaderPowerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.readerPowerEventPublishable.onNext(event);
    }

    private final <T> Subject<T> serializedSubject() {
        Subject<T> serialized = PublishSubject.create().toSerialized();
        Intrinsics.checkNotNullExpressionValue(serialized, "toSerialized(...)");
        return serialized;
    }

    public final void emitSerialConnected(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.i("emitSerialConnected: " + reader, new Pair[0]);
        this.readerConnectPublishable.onNext(reader);
    }

    public final void emitSerialDisconnected(DisconnectCause disconnectCause) {
        Intrinsics.checkNotNullParameter(disconnectCause, "disconnectCause");
        this.logger.i("emitSerialDisconnected: " + disconnectCause, new Pair[0]);
        this.readerDisconnectPublishable.onNext(disconnectCause);
    }
}
