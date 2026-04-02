package com.stripe.loggingmodels;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApplicationTraceResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/stripe/loggingmodels/ApplicationTraceResult;", "", "outcome", "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;", "exception", "", "errorMessage", "", "errorCode", "(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V", "getErrorCode", "()Ljava/lang/String;", "getErrorMessage", "getException", "()Ljava/lang/Throwable;", "metricOutcome", "Lcom/stripe/loggingmodels/Outcome;", "getMetricOutcome", "()Lcom/stripe/loggingmodels/Outcome;", "getOutcome", "()Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;", "ApplicationTraceOutcome", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class ApplicationTraceResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName(alternate = {}, value = "error_code")
    private final String errorCode;

    @SerializedName(alternate = {}, value = "error_message")
    private final String errorMessage;
    private final transient Throwable exception;
    private final ApplicationTraceOutcome outcome;

    public ApplicationTraceResult(ApplicationTraceOutcome outcome, Throwable th, String str, String str2) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        this.outcome = outcome;
        this.exception = th;
        this.errorMessage = str;
        this.errorCode = str2;
    }

    public final ApplicationTraceOutcome getOutcome() {
        return this.outcome;
    }

    public final Throwable getException() {
        return this.exception;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ApplicationTraceResult(ApplicationTraceOutcome applicationTraceOutcome, Throwable th, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        th = (i & 2) != 0 ? null : th;
        this(applicationTraceOutcome, th, (i & 4) != 0 ? null : str, (i & 8) != 0 ? th != null ? "error" : null : str2);
    }

    public final String getErrorCode() {
        return this.errorCode;
    }

    public Outcome getMetricOutcome() {
        return ApplicationTraceOutcomeExtKt.toOutcome(this.outcome);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ApplicationTraceResult.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;", "", "(Ljava/lang/String;I)V", "SUCCESS", "FAILURE", "CANCELED", "INTERRUPTED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ApplicationTraceOutcome {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ApplicationTraceOutcome[] $VALUES;
        public static final ApplicationTraceOutcome SUCCESS = new ApplicationTraceOutcome("SUCCESS", 0);
        public static final ApplicationTraceOutcome FAILURE = new ApplicationTraceOutcome("FAILURE", 1);
        public static final ApplicationTraceOutcome CANCELED = new ApplicationTraceOutcome("CANCELED", 2);
        public static final ApplicationTraceOutcome INTERRUPTED = new ApplicationTraceOutcome("INTERRUPTED", 3);

        private static final /* synthetic */ ApplicationTraceOutcome[] $values() {
            return new ApplicationTraceOutcome[]{SUCCESS, FAILURE, CANCELED, INTERRUPTED};
        }

        public static EnumEntries<ApplicationTraceOutcome> getEntries() {
            return $ENTRIES;
        }

        public static ApplicationTraceOutcome valueOf(String str) {
            return (ApplicationTraceOutcome) Enum.valueOf(ApplicationTraceOutcome.class, str);
        }

        public static ApplicationTraceOutcome[] values() {
            return (ApplicationTraceOutcome[]) $VALUES.clone();
        }

        private ApplicationTraceOutcome(String str, int i) {
        }

        static {
            ApplicationTraceOutcome[] applicationTraceOutcomeArr$values = $values();
            $VALUES = applicationTraceOutcomeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(applicationTraceOutcomeArr$values);
        }
    }

    /* JADX INFO: compiled from: ApplicationTraceResult.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\f"}, d2 = {"Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;", "", "()V", "canceled", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "t", "", "message", "", "failure", "interrupted", FirebaseAnalytics.Param.SUCCESS, "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ApplicationTraceResult success() {
            return new ApplicationTraceResult(ApplicationTraceOutcome.SUCCESS, null, null, null, 14, null);
        }

        public final ApplicationTraceResult failure(Throwable t) {
            Intrinsics.checkNotNullParameter(t, "t");
            return new ApplicationTraceResult(ApplicationTraceOutcome.FAILURE, t, t.getMessage(), null, 8, null);
        }

        public final ApplicationTraceResult failure(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ApplicationTraceResult(ApplicationTraceOutcome.FAILURE, null, message, null, 10, null);
        }

        public static /* synthetic */ ApplicationTraceResult canceled$default(Companion companion, Throwable th, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                th = null;
            }
            if ((i & 2) != 0) {
                str = null;
            }
            return companion.canceled(th, str);
        }

        public final ApplicationTraceResult canceled(Throwable t, String message) {
            ApplicationTraceOutcome applicationTraceOutcome = ApplicationTraceOutcome.CANCELED;
            if (message == null) {
                message = t != null ? t.getMessage() : null;
            }
            return new ApplicationTraceResult(applicationTraceOutcome, t, message, null, 8, null);
        }

        public final ApplicationTraceResult interrupted() {
            return new ApplicationTraceResult(ApplicationTraceOutcome.INTERRUPTED, null, null, null, 14, null);
        }
    }
}
