package com.stripe.stripeterminal.internal.common.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.Json;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000  2\u00020\u0001:\u0001 BW\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001c\u0010\u0014R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001e\u0010\u0014R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001f\u0010\u0014¨\u0006!"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "outcome", "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", FirebaseAnalytics.Param.METHOD, "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", FirebaseAnalytics.Event.REFUND, "Lcom/stripe/stripeterminal/external/models/Refund;", "(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;)V", "intentId", "", "getIntentId$annotations", "()V", "methodId", "getMethodId$annotations", "metricOutcome", "Lcom/stripe/loggingmodels/Outcome;", "getMetricOutcome", "()Lcom/stripe/loggingmodels/Outcome;", "readerId", "getReaderId$annotations", "readerName", "getReaderName$annotations", "getSetupIntent$annotations", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkResponse extends ApplicationTraceResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String intentId;
    private String methodId;
    private String readerId;
    private String readerName;
    private String setupIntent;

    @Json(name = OfflineStorageConstantsKt.PAYMENT_INTENT_ID)
    private static /* synthetic */ void getIntentId$annotations() {
    }

    @Json(name = "payment_method_id")
    private static /* synthetic */ void getMethodId$annotations() {
    }

    @Json(name = OfflineStorageConstantsKt.READER_ID)
    private static /* synthetic */ void getReaderId$annotations() {
    }

    @Json(name = "reader_name")
    private static /* synthetic */ void getReaderName$annotations() {
    }

    @Json(name = "setup_intent_id")
    private static /* synthetic */ void getSetupIntent$annotations() {
    }

    /* synthetic */ SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome applicationTraceOutcome, PaymentIntent paymentIntent, PaymentMethod paymentMethod, Reader reader, TerminalException terminalException, SetupIntent setupIntent, Refund refund, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(applicationTraceOutcome, (i & 2) != 0 ? null : paymentIntent, (i & 4) != 0 ? null : paymentMethod, (i & 8) != 0 ? null : reader, (i & 16) != 0 ? null : terminalException, (i & 32) != 0 ? null : setupIntent, (i & 64) != 0 ? null : refund);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome applicationTraceOutcome, PaymentIntent paymentIntent, PaymentMethod paymentMethod, Reader reader, TerminalException terminalException, SetupIntent setupIntent, Refund refund) {
        TerminalErrorCode errorCode;
        TerminalException terminalException2 = terminalException;
        String logString = null;
        String str = terminalException != null ? terminalException.getErrorCode() + ": " + terminalException.getErrorMessage() : null;
        if (terminalException != null && (errorCode = terminalException.getErrorCode()) != null) {
            logString = errorCode.toLogString();
        }
        super(applicationTraceOutcome, terminalException2, str, logString);
        if (paymentIntent != null) {
            this.intentId = paymentIntent.getId();
        }
        if (setupIntent != null) {
            this.setupIntent = setupIntent.getId();
        }
        if (paymentMethod != null) {
            this.methodId = paymentMethod.getId();
        }
        if (reader != null) {
            this.readerId = reader.getId();
            this.readerName = reader.getSerialNumber();
        }
    }

    @Override // com.stripe.loggingmodels.ApplicationTraceResult
    public Outcome getMetricOutcome() {
        Throwable exception = getException();
        return exception instanceof TerminalException ? new Outcome.TerminalError(((TerminalException) exception).getErrorCode()) : super.getMetricOutcome();
    }

    /* JADX INFO: compiled from: SdkResponse.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;", "", "()V", "canceled", "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;", "failure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", FirebaseAnalytics.Param.SUCCESS, "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", FirebaseAnalytics.Param.METHOD, "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", FirebaseAnalytics.Event.REFUND, "Lcom/stripe/stripeterminal/external/models/Refund;", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SdkResponse success(PaymentIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS, intent, null, null, null, null, null, WinError.ERROR_INVALID_LEVEL, null);
        }

        public final /* synthetic */ SdkResponse success(SetupIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS, null, null, null, null, intent, null, 94, null);
        }

        public final /* synthetic */ SdkResponse success(PaymentMethod method) {
            Intrinsics.checkNotNullParameter(method, "method");
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS, null, method, null, null, null, null, 122, null);
        }

        public final /* synthetic */ SdkResponse success(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS, null, null, reader, null, null, null, WinError.ERROR_INVALID_VERIFY_SWITCH, null);
        }

        public final /* synthetic */ SdkResponse success(Refund refund) {
            Intrinsics.checkNotNullParameter(refund, "refund");
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS, null, null, null, null, null, refund, 62, null);
        }

        public final /* synthetic */ SdkResponse success() {
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS, null, null, null, null, null, null, 126, null);
        }

        public final /* synthetic */ SdkResponse failure(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.FAILURE, null, null, null, e, null, null, 110, null);
        }

        public final /* synthetic */ SdkResponse canceled() {
            return new SdkResponse(ApplicationTraceResult.ApplicationTraceOutcome.CANCELED, null, null, null, null, null, null, 126, null);
        }
    }
}
