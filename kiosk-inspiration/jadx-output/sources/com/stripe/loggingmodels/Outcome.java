package com.stripe.loggingmodels;

import com.stripe.proto.model.rest.StatusCode;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.proto.net.rpc.base.RpcEC;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.HttpHeaders;

/* JADX INFO: compiled from: Outcome.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\r\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\u0002\u0013\u0014ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/Outcome;", "", "outcome", "", "getOutcome", "()Ljava/lang/String;", "Canceled", "CotsError", "Failure", "GenericError", "HttpError", "InternalTerminalError", "Interrupted", "Ok", "RpcApplicationError", "RpcTransportError", "Success", "TerminalError", "UpdatesError", "Lcom/stripe/loggingmodels/Outcome$Failure;", "Lcom/stripe/loggingmodels/Outcome$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Outcome {

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$Failure;", "Lcom/stripe/loggingmodels/Outcome;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Failure extends Outcome {
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$Success;", "Lcom/stripe/loggingmodels/Outcome;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Success extends Outcome {
    }

    String getOutcome();

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$Ok;", "Lcom/stripe/loggingmodels/Outcome$Success;", "()V", "outcome", "", "getOutcome", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Ok implements Success {
        public static final Ok INSTANCE = new Ok();
        private static final String outcome = "ok";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Ok)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -2005136175;
        }

        public String toString() {
            return "Ok";
        }

        private Ok() {
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return outcome;
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$Canceled;", "Lcom/stripe/loggingmodels/Outcome$Success;", "()V", "outcome", "", "getOutcome", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Canceled implements Success {
        public static final Canceled INSTANCE = new Canceled();
        private static final String outcome = "canceled";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Canceled)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 134526926;
        }

        public String toString() {
            return "Canceled";
        }

        private Canceled() {
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return outcome;
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$Interrupted;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "()V", "outcome", "", "getOutcome", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Interrupted implements Failure {
        public static final Interrupted INSTANCE = new Interrupted();
        private static final String outcome = "interrupted";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Interrupted)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 106181357;
        }

        public String toString() {
            return "Interrupted";
        }

        private Interrupted() {
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return outcome;
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$GenericError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "()V", "outcome", "", "getOutcome", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class GenericError implements Failure {
        public static final GenericError INSTANCE = new GenericError();
        private static final String outcome = "generic_error";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof GenericError)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1042417882;
        }

        public String toString() {
            return "GenericError";
        }

        private GenericError() {
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return outcome;
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \b2\u00020\u0001:\u000e\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\r\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\""}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "BadRequest", "Companion", "Conflict", "Error", "ErrorUnknownState", "Forbidden", "MethodNotAllowed", "NotFound", "ParseError", "RequestFailed", "ServerError", "TooManyRequests", "Unauthorized", "UnknownStatus", "Lcom/stripe/loggingmodels/Outcome$HttpError$BadRequest;", "Lcom/stripe/loggingmodels/Outcome$HttpError$Conflict;", "Lcom/stripe/loggingmodels/Outcome$HttpError$Error;", "Lcom/stripe/loggingmodels/Outcome$HttpError$ErrorUnknownState;", "Lcom/stripe/loggingmodels/Outcome$HttpError$Forbidden;", "Lcom/stripe/loggingmodels/Outcome$HttpError$MethodNotAllowed;", "Lcom/stripe/loggingmodels/Outcome$HttpError$NotFound;", "Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;", "Lcom/stripe/loggingmodels/Outcome$HttpError$RequestFailed;", "Lcom/stripe/loggingmodels/Outcome$HttpError$ServerError;", "Lcom/stripe/loggingmodels/Outcome$HttpError$TooManyRequests;", "Lcom/stripe/loggingmodels/Outcome$HttpError$Unauthorized;", "Lcom/stripe/loggingmodels/Outcome$HttpError$UnknownStatus;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class HttpError implements Failure {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String outcome;

        public /* synthetic */ HttpError(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$UnknownStatus;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnknownStatus extends HttpError {
            public static final UnknownStatus INSTANCE = new UnknownStatus();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnknownStatus)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1791978023;
            }

            public String toString() {
                return "UnknownStatus";
            }

            private UnknownStatus() {
                super("http_unknown_status", null);
            }
        }

        private HttpError(String str) {
            this.outcome = str;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.outcome;
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$Error;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends HttpError {
            public static final Error INSTANCE = new Error();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Error)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1243075579;
            }

            public String toString() {
                return "Error";
            }

            private Error() {
                super("http_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$ErrorUnknownState;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ErrorUnknownState extends HttpError {
            public static final ErrorUnknownState INSTANCE = new ErrorUnknownState();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ErrorUnknownState)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 34924300;
            }

            public String toString() {
                return "ErrorUnknownState";
            }

            private ErrorUnknownState() {
                super("http_error_unknown_state", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$BadRequest;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class BadRequest extends HttpError {
            public static final BadRequest INSTANCE = new BadRequest();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof BadRequest)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1733217005;
            }

            public String toString() {
                return "BadRequest";
            }

            private BadRequest() {
                super("http_bad_request", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$Unauthorized;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Unauthorized extends HttpError {
            public static final Unauthorized INSTANCE = new Unauthorized();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Unauthorized)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1985857449;
            }

            public String toString() {
                return "Unauthorized";
            }

            private Unauthorized() {
                super("http_unauthorized", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$RequestFailed;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class RequestFailed extends HttpError {
            public static final RequestFailed INSTANCE = new RequestFailed();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof RequestFailed)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1808013481;
            }

            public String toString() {
                return "RequestFailed";
            }

            private RequestFailed() {
                super("http_request_failed", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$Forbidden;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Forbidden extends HttpError {
            public static final Forbidden INSTANCE = new Forbidden();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Forbidden)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 878358390;
            }

            public String toString() {
                return "Forbidden";
            }

            private Forbidden() {
                super("http_forbidden", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$NotFound;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NotFound extends HttpError {
            public static final NotFound INSTANCE = new NotFound();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NotFound)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1099247278;
            }

            public String toString() {
                return "NotFound";
            }

            private NotFound() {
                super("http_not_found", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$Conflict;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Conflict extends HttpError {
            public static final Conflict INSTANCE = new Conflict();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Conflict)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1062352053;
            }

            public String toString() {
                return "Conflict";
            }

            private Conflict() {
                super("http_conflict", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$TooManyRequests;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class TooManyRequests extends HttpError {
            public static final TooManyRequests INSTANCE = new TooManyRequests();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof TooManyRequests)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1923451788;
            }

            public String toString() {
                return "TooManyRequests";
            }

            private TooManyRequests() {
                super("http_too_many_requests", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$ServerError;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ServerError extends HttpError {
            public static final ServerError INSTANCE = new ServerError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServerError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -312546110;
            }

            public String toString() {
                return "ServerError";
            }

            private ServerError() {
                super("http_server_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ParseError extends HttpError {
            public static final ParseError INSTANCE = new ParseError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ParseError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1088674616;
            }

            public String toString() {
                return "ParseError";
            }

            private ParseError() {
                super("http_parse_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$MethodNotAllowed;", "Lcom/stripe/loggingmodels/Outcome$HttpError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class MethodNotAllowed extends HttpError {
            public static final MethodNotAllowed INSTANCE = new MethodNotAllowed();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof MethodNotAllowed)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 2076829945;
            }

            public String toString() {
                return "MethodNotAllowed";
            }

            private MethodNotAllowed() {
                super("http_method_not_allowed", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;", "", "()V", "toOutcome", "Lcom/stripe/loggingmodels/Outcome;", "Lcom/stripe/proto/model/rest/StatusCode;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {

            /* JADX INFO: compiled from: Outcome.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[StatusCode.values().length];
                    try {
                        iArr[StatusCode.UNKNOWN_STATUS.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[StatusCode.OK.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[StatusCode.HTTP_ERROR.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[StatusCode.HTTP_ERROR_UNKNOWN_STATE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[StatusCode.BAD_REQUEST.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[StatusCode.UNAUTHORIZED.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    try {
                        iArr[StatusCode.REQUEST_FAILED.ordinal()] = 7;
                    } catch (NoSuchFieldError unused7) {
                    }
                    try {
                        iArr[StatusCode.FORBIDDEN.ordinal()] = 8;
                    } catch (NoSuchFieldError unused8) {
                    }
                    try {
                        iArr[StatusCode.NOT_FOUND.ordinal()] = 9;
                    } catch (NoSuchFieldError unused9) {
                    }
                    try {
                        iArr[StatusCode.CONFLICT.ordinal()] = 10;
                    } catch (NoSuchFieldError unused10) {
                    }
                    try {
                        iArr[StatusCode.TOO_MANY_REQUESTS.ordinal()] = 11;
                    } catch (NoSuchFieldError unused11) {
                    }
                    try {
                        iArr[StatusCode.SERVER_ERROR.ordinal()] = 12;
                    } catch (NoSuchFieldError unused12) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Outcome toOutcome(StatusCode statusCode) {
                Intrinsics.checkNotNullParameter(statusCode, "<this>");
                switch (WhenMappings.$EnumSwitchMapping$0[statusCode.ordinal()]) {
                    case 1:
                        return UnknownStatus.INSTANCE;
                    case 2:
                        return Ok.INSTANCE;
                    case 3:
                        return Error.INSTANCE;
                    case 4:
                        return ErrorUnknownState.INSTANCE;
                    case 5:
                        return BadRequest.INSTANCE;
                    case 6:
                        return Unauthorized.INSTANCE;
                    case 7:
                        return RequestFailed.INSTANCE;
                    case 8:
                        return Forbidden.INSTANCE;
                    case 9:
                        return NotFound.INSTANCE;
                    case 10:
                        return Conflict.INSTANCE;
                    case 11:
                        return TooManyRequests.INSTANCE;
                    case 12:
                        return ServerError.INSTANCE;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \t2\u00020\u0001:\u000f\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u000e\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#¨\u0006$"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "AlreadyExists", "AuthenticationFailure", "Companion", "EcInvalid", "IllegalState", "InvalidConfig", "InvalidLoadId", "InvalidRequest", "InvalidSessionToken", "LockResourcesException", "ReaderInUse", "ServerError", "TooManyRequests", "Unauthorized", "Unimplemented", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AlreadyExists;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AuthenticationFailure;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$EcInvalid;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$IllegalState;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidConfig;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidLoadId;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidRequest;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidSessionToken;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$LockResourcesException;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ReaderInUse;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ServerError;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$TooManyRequests;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unauthorized;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unimplemented;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class RpcApplicationError implements Failure {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String outcome;

        public /* synthetic */ RpcApplicationError(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$EcInvalid;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class EcInvalid extends RpcApplicationError {
            public static final EcInvalid INSTANCE = new EcInvalid();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof EcInvalid)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1260530381;
            }

            public String toString() {
                return "EcInvalid";
            }

            private EcInvalid() {
                super("application_ec_invalid", null);
            }
        }

        private RpcApplicationError(String str) {
            this.outcome = str;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.outcome;
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$LockResourcesException;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class LockResourcesException extends RpcApplicationError {
            public static final LockResourcesException INSTANCE = new LockResourcesException();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof LockResourcesException)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 595423419;
            }

            public String toString() {
                return "LockResourcesException";
            }

            private LockResourcesException() {
                super("application_lock_resources_exception", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidLoadId;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidLoadId extends RpcApplicationError {
            public static final InvalidLoadId INSTANCE = new InvalidLoadId();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidLoadId)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 710422066;
            }

            public String toString() {
                return "InvalidLoadId";
            }

            private InvalidLoadId() {
                super("application_invalid_load_id", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$IllegalState;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class IllegalState extends RpcApplicationError {
            public static final IllegalState INSTANCE = new IllegalState();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof IllegalState)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 369214145;
            }

            public String toString() {
                return "IllegalState";
            }

            private IllegalState() {
                super("application_illegal_state", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AuthenticationFailure;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class AuthenticationFailure extends RpcApplicationError {
            public static final AuthenticationFailure INSTANCE = new AuthenticationFailure();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof AuthenticationFailure)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 2105282220;
            }

            public String toString() {
                return "AuthenticationFailure";
            }

            private AuthenticationFailure() {
                super("application_authentication_failure", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidSessionToken;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidSessionToken extends RpcApplicationError {
            public static final InvalidSessionToken INSTANCE = new InvalidSessionToken();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidSessionToken)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 10569172;
            }

            public String toString() {
                return "InvalidSessionToken";
            }

            private InvalidSessionToken() {
                super("application_invalid_session_token", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unauthorized;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Unauthorized extends RpcApplicationError {
            public static final Unauthorized INSTANCE = new Unauthorized();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Unauthorized)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 549953786;
            }

            public String toString() {
                return "Unauthorized";
            }

            private Unauthorized() {
                super("application_unauthorized", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidRequest;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidRequest extends RpcApplicationError {
            public static final InvalidRequest INSTANCE = new InvalidRequest();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidRequest)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1307321118;
            }

            public String toString() {
                return "InvalidRequest";
            }

            private InvalidRequest() {
                super("application_invalid_request", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ServerError;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ServerError extends RpcApplicationError {
            public static final ServerError INSTANCE = new ServerError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServerError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1754766401;
            }

            public String toString() {
                return "ServerError";
            }

            private ServerError() {
                super("application_server_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidConfig;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidConfig extends RpcApplicationError {
            public static final InvalidConfig INSTANCE = new InvalidConfig();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidConfig)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 453149907;
            }

            public String toString() {
                return "InvalidConfig";
            }

            private InvalidConfig() {
                super("application_invalid_config", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AlreadyExists;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class AlreadyExists extends RpcApplicationError {
            public static final AlreadyExists INSTANCE = new AlreadyExists();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof AlreadyExists)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 160212878;
            }

            public String toString() {
                return "AlreadyExists";
            }

            private AlreadyExists() {
                super("application_already_exists", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ReaderInUse;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReaderInUse extends RpcApplicationError {
            public static final ReaderInUse INSTANCE = new ReaderInUse();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ReaderInUse)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -598128039;
            }

            public String toString() {
                return "ReaderInUse";
            }

            private ReaderInUse() {
                super("application_reader_in_use", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$TooManyRequests;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class TooManyRequests extends RpcApplicationError {
            public static final TooManyRequests INSTANCE = new TooManyRequests();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof TooManyRequests)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1750719247;
            }

            public String toString() {
                return "TooManyRequests";
            }

            private TooManyRequests() {
                super("application_too_many_requests", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unimplemented;", "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Unimplemented extends RpcApplicationError {
            public static final Unimplemented INSTANCE = new Unimplemented();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Unimplemented)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 833969539;
            }

            public String toString() {
                return "Unimplemented";
            }

            private Unimplemented() {
                super("application_unimplemented", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;", "", "()V", "toOutcome", "Lcom/stripe/loggingmodels/Outcome;", "Lcom/stripe/proto/net/rpc/base/ApplicationEC;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {

            /* JADX INFO: compiled from: Outcome.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[ApplicationEC.values().length];
                    try {
                        iArr[ApplicationEC.APPLICATION_EC_INVALID.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[ApplicationEC.OK.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[ApplicationEC.LOCK_RESOURCES_EXCEPTION.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[ApplicationEC.INVALID_LOAD_ID.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[ApplicationEC.ILLEGAL_STATE.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[ApplicationEC.AUTHENTICATION_FAILURE.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    try {
                        iArr[ApplicationEC.INVALID_SESSION_TOKEN.ordinal()] = 7;
                    } catch (NoSuchFieldError unused7) {
                    }
                    try {
                        iArr[ApplicationEC.UNAUTHORIZED.ordinal()] = 8;
                    } catch (NoSuchFieldError unused8) {
                    }
                    try {
                        iArr[ApplicationEC.INVALID_REQUEST.ordinal()] = 9;
                    } catch (NoSuchFieldError unused9) {
                    }
                    try {
                        iArr[ApplicationEC.SERVER_ERROR.ordinal()] = 10;
                    } catch (NoSuchFieldError unused10) {
                    }
                    try {
                        iArr[ApplicationEC.INVALID_CONFIG.ordinal()] = 11;
                    } catch (NoSuchFieldError unused11) {
                    }
                    try {
                        iArr[ApplicationEC.ALREADY_EXISTS.ordinal()] = 12;
                    } catch (NoSuchFieldError unused12) {
                    }
                    try {
                        iArr[ApplicationEC.READER_IN_USE.ordinal()] = 13;
                    } catch (NoSuchFieldError unused13) {
                    }
                    try {
                        iArr[ApplicationEC.TOO_MANY_REQUESTS.ordinal()] = 14;
                    } catch (NoSuchFieldError unused14) {
                    }
                    try {
                        iArr[ApplicationEC.UNIMPLEMENTED.ordinal()] = 15;
                    } catch (NoSuchFieldError unused15) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Outcome toOutcome(ApplicationEC applicationEC) {
                Intrinsics.checkNotNullParameter(applicationEC, "<this>");
                switch (WhenMappings.$EnumSwitchMapping$0[applicationEC.ordinal()]) {
                    case 1:
                        return EcInvalid.INSTANCE;
                    case 2:
                        return Ok.INSTANCE;
                    case 3:
                        return LockResourcesException.INSTANCE;
                    case 4:
                        return InvalidLoadId.INSTANCE;
                    case 5:
                        return IllegalState.INSTANCE;
                    case 6:
                        return AuthenticationFailure.INSTANCE;
                    case 7:
                        return InvalidSessionToken.INSTANCE;
                    case 8:
                        return Unauthorized.INSTANCE;
                    case 9:
                        return InvalidRequest.INSTANCE;
                    case 10:
                        return ServerError.INSTANCE;
                    case 11:
                        return InvalidConfig.INSTANCE;
                    case 12:
                        return AlreadyExists.INSTANCE;
                    case 13:
                        return ReaderInUse.INSTANCE;
                    case 14:
                        return TooManyRequests.INSTANCE;
                    case 15:
                        return Unimplemented.INSTANCE;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \t2\u00020\u0001:\u000b\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\n\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b¨\u0006\u001c"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "BadRequest", "BadResponse", "Companion", "EcInvalid", "Error", "NetworkUnavailable", "Retry", "ServerBusy", "ServerUnreachable", "ServerUnresolvable", HttpHeaders.TIMEOUT, "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadRequest;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadResponse;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$EcInvalid;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Error;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$NetworkUnavailable;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Retry;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerBusy;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnreachable;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnresolvable;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Timeout;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class RpcTransportError implements Failure {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String outcome;

        public /* synthetic */ RpcTransportError(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$EcInvalid;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class EcInvalid extends RpcTransportError {
            public static final EcInvalid INSTANCE = new EcInvalid();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof EcInvalid)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1246790202;
            }

            public String toString() {
                return "EcInvalid";
            }

            private EcInvalid() {
                super("rpc_ec_invalid", null);
            }
        }

        private RpcTransportError(String str) {
            this.outcome = str;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.outcome;
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Error;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends RpcTransportError {
            public static final Error INSTANCE = new Error();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Error)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 831139145;
            }

            public String toString() {
                return "Error";
            }

            private Error() {
                super("rpc_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$NetworkUnavailable;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NetworkUnavailable extends RpcTransportError {
            public static final NetworkUnavailable INSTANCE = new NetworkUnavailable();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NetworkUnavailable)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -375106655;
            }

            public String toString() {
                return "NetworkUnavailable";
            }

            private NetworkUnavailable() {
                super("rpc_network_unavailable", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnresolvable;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ServerUnresolvable extends RpcTransportError {
            public static final ServerUnresolvable INSTANCE = new ServerUnresolvable();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServerUnresolvable)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -2034457842;
            }

            public String toString() {
                return "ServerUnresolvable";
            }

            private ServerUnresolvable() {
                super("rpc_server_unresolvable", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnreachable;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ServerUnreachable extends RpcTransportError {
            public static final ServerUnreachable INSTANCE = new ServerUnreachable();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServerUnreachable)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -732713646;
            }

            public String toString() {
                return "ServerUnreachable";
            }

            private ServerUnreachable() {
                super("rpc_server_unreachable", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadRequest;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class BadRequest extends RpcTransportError {
            public static final BadRequest INSTANCE = new BadRequest();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof BadRequest)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 164557865;
            }

            public String toString() {
                return "BadRequest";
            }

            private BadRequest() {
                super("rpc_bad_request", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadResponse;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class BadResponse extends RpcTransportError {
            public static final BadResponse INSTANCE = new BadResponse();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof BadResponse)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 859260391;
            }

            public String toString() {
                return "BadResponse";
            }

            private BadResponse() {
                super("rpc_bad_response", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Timeout;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Timeout extends RpcTransportError {
            public static final Timeout INSTANCE = new Timeout();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Timeout)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 25877602;
            }

            public String toString() {
                return HttpHeaders.TIMEOUT;
            }

            private Timeout() {
                super("rpc_timeout", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Retry;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Retry extends RpcTransportError {
            public static final Retry INSTANCE = new Retry();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Retry)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 842759657;
            }

            public String toString() {
                return "Retry";
            }

            private Retry() {
                super("rpc_retry", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerBusy;", "Lcom/stripe/loggingmodels/Outcome$RpcTransportError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ServerBusy extends RpcTransportError {
            public static final ServerBusy INSTANCE = new ServerBusy();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServerBusy)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1301733061;
            }

            public String toString() {
                return "ServerBusy";
            }

            private ServerBusy() {
                super("rpc_server_busy", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;", "", "()V", "toOutcome", "Lcom/stripe/loggingmodels/Outcome;", "Lcom/stripe/proto/net/rpc/base/RpcEC;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {

            /* JADX INFO: compiled from: Outcome.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[RpcEC.values().length];
                    try {
                        iArr[RpcEC.RPC_EC_INVALID.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[RpcEC.RPC_OK.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[RpcEC.RPC_ERROR.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[RpcEC.NETWORK_UNAVAILABLE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[RpcEC.SERVER_UNRESOLVABLE.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[RpcEC.SERVER_UNREACHABLE.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    try {
                        iArr[RpcEC.BAD_REQUEST.ordinal()] = 7;
                    } catch (NoSuchFieldError unused7) {
                    }
                    try {
                        iArr[RpcEC.BAD_RESPONSE.ordinal()] = 8;
                    } catch (NoSuchFieldError unused8) {
                    }
                    try {
                        iArr[RpcEC.TIMEOUT.ordinal()] = 9;
                    } catch (NoSuchFieldError unused9) {
                    }
                    try {
                        iArr[RpcEC.RETRY.ordinal()] = 10;
                    } catch (NoSuchFieldError unused10) {
                    }
                    try {
                        iArr[RpcEC.SERVER_BUSY.ordinal()] = 11;
                    } catch (NoSuchFieldError unused11) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Outcome toOutcome(RpcEC rpcEC) {
                Intrinsics.checkNotNullParameter(rpcEC, "<this>");
                switch (WhenMappings.$EnumSwitchMapping$0[rpcEC.ordinal()]) {
                    case 1:
                        return EcInvalid.INSTANCE;
                    case 2:
                        return Ok.INSTANCE;
                    case 3:
                        return Error.INSTANCE;
                    case 4:
                        return NetworkUnavailable.INSTANCE;
                    case 5:
                        return ServerUnresolvable.INSTANCE;
                    case 6:
                        return ServerUnreachable.INSTANCE;
                    case 7:
                        return BadRequest.INSTANCE;
                    case 8:
                        return BadResponse.INSTANCE;
                    case 9:
                        return Timeout.INSTANCE;
                    case 10:
                        return Retry.INSTANCE;
                    case 11:
                        return ServerBusy.INSTANCE;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$TerminalError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "errorCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V", "getErrorCode", "()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "outcome", "", "getOutcome", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class TerminalError implements Failure {
        private final TerminalErrorCode errorCode;

        public static /* synthetic */ TerminalError copy$default(TerminalError terminalError, TerminalErrorCode terminalErrorCode, int i, Object obj) {
            if ((i & 1) != 0) {
                terminalErrorCode = terminalError.errorCode;
            }
            return terminalError.copy(terminalErrorCode);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TerminalErrorCode getErrorCode() {
            return this.errorCode;
        }

        public final TerminalError copy(TerminalErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            return new TerminalError(errorCode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TerminalError) && this.errorCode == ((TerminalError) other).errorCode;
        }

        public int hashCode() {
            return this.errorCode.hashCode();
        }

        public String toString() {
            return "TerminalError(errorCode=" + this.errorCode + ')';
        }

        public TerminalError(TerminalErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            this.errorCode = errorCode;
        }

        public final TerminalErrorCode getErrorCode() {
            return this.errorCode;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.errorCode.toLogString();
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$InternalTerminalError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "KFCAssetVersionMismatch", "MissingKeyOnDevice", "Lcom/stripe/loggingmodels/Outcome$InternalTerminalError$KFCAssetVersionMismatch;", "Lcom/stripe/loggingmodels/Outcome$InternalTerminalError$MissingKeyOnDevice;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class InternalTerminalError implements Failure {
        private final String outcome;

        public /* synthetic */ InternalTerminalError(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$InternalTerminalError$MissingKeyOnDevice;", "Lcom/stripe/loggingmodels/Outcome$InternalTerminalError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class MissingKeyOnDevice extends InternalTerminalError {
            public static final MissingKeyOnDevice INSTANCE = new MissingKeyOnDevice();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof MissingKeyOnDevice)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1778792898;
            }

            public String toString() {
                return "MissingKeyOnDevice";
            }

            private MissingKeyOnDevice() {
                super("error_code_missing_key_on_device", null);
            }
        }

        private InternalTerminalError(String str) {
            this.outcome = str;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.outcome;
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$InternalTerminalError$KFCAssetVersionMismatch;", "Lcom/stripe/loggingmodels/Outcome$InternalTerminalError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class KFCAssetVersionMismatch extends InternalTerminalError {
            public static final KFCAssetVersionMismatch INSTANCE = new KFCAssetVersionMismatch();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof KFCAssetVersionMismatch)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1972890038;
            }

            public String toString() {
                return "KFCAssetVersionMismatch";
            }

            private KFCAssetVersionMismatch() {
                super("error_code_kfc_asset_version_mismatch", null);
            }
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0010\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0010\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&¨\u0006'"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "AccessNotAllowed", "Canceled", "CardReadTimedOut", "Declined", "InsecureEnvironment", "InvalidCountry", "InvalidCurrency", "IrrecoverableError", "NfcIsDisabled", "NoMutuallySupportedApplications", "NonIsoNfcTag", "ReaderNotActive", "RecoverableError", "SeePhone", "SelectNext", "Unknown", "Lcom/stripe/loggingmodels/Outcome$CotsError$AccessNotAllowed;", "Lcom/stripe/loggingmodels/Outcome$CotsError$Canceled;", "Lcom/stripe/loggingmodels/Outcome$CotsError$CardReadTimedOut;", "Lcom/stripe/loggingmodels/Outcome$CotsError$Declined;", "Lcom/stripe/loggingmodels/Outcome$CotsError$InsecureEnvironment;", "Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCountry;", "Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCurrency;", "Lcom/stripe/loggingmodels/Outcome$CotsError$IrrecoverableError;", "Lcom/stripe/loggingmodels/Outcome$CotsError$NfcIsDisabled;", "Lcom/stripe/loggingmodels/Outcome$CotsError$NoMutuallySupportedApplications;", "Lcom/stripe/loggingmodels/Outcome$CotsError$NonIsoNfcTag;", "Lcom/stripe/loggingmodels/Outcome$CotsError$ReaderNotActive;", "Lcom/stripe/loggingmodels/Outcome$CotsError$RecoverableError;", "Lcom/stripe/loggingmodels/Outcome$CotsError$SeePhone;", "Lcom/stripe/loggingmodels/Outcome$CotsError$SelectNext;", "Lcom/stripe/loggingmodels/Outcome$CotsError$Unknown;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class CotsError implements Failure {
        private final String outcome;

        public /* synthetic */ CotsError(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$AccessNotAllowed;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class AccessNotAllowed extends CotsError {
            public static final AccessNotAllowed INSTANCE = new AccessNotAllowed();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof AccessNotAllowed)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -2104823585;
            }

            public String toString() {
                return "AccessNotAllowed";
            }

            private AccessNotAllowed() {
                super("cots_outcome_access_not_allowed", null);
            }
        }

        private CotsError(String str) {
            this.outcome = str;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.outcome;
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$Canceled;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Canceled extends CotsError {
            public static final Canceled INSTANCE = new Canceled();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Canceled)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -34272353;
            }

            public String toString() {
                return "Canceled";
            }

            private Canceled() {
                super("cots_outcome_canceled", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$Declined;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Declined extends CotsError {
            public static final Declined INSTANCE = new Declined();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Declined)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 657097524;
            }

            public String toString() {
                return "Declined";
            }

            private Declined() {
                super("cots_outcome_declined", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$RecoverableError;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class RecoverableError extends CotsError {
            public static final RecoverableError INSTANCE = new RecoverableError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof RecoverableError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 972642544;
            }

            public String toString() {
                return "RecoverableError";
            }

            private RecoverableError() {
                super("cots_outcome_recoverable_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$IrrecoverableError;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class IrrecoverableError extends CotsError {
            public static final IrrecoverableError INSTANCE = new IrrecoverableError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof IrrecoverableError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 703580825;
            }

            public String toString() {
                return "IrrecoverableError";
            }

            private IrrecoverableError() {
                super("cots_outcome_irrecoverable_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCurrency;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidCurrency extends CotsError {
            public static final InvalidCurrency INSTANCE = new InvalidCurrency();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidCurrency)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1314847390;
            }

            public String toString() {
                return "InvalidCurrency";
            }

            private InvalidCurrency() {
                super("cots_outcome_invalid_currency", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCountry;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidCountry extends CotsError {
            public static final InvalidCountry INSTANCE = new InvalidCountry();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidCountry)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1458449371;
            }

            public String toString() {
                return "InvalidCountry";
            }

            private InvalidCountry() {
                super("cots_outcome_invalid_country", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$NfcIsDisabled;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NfcIsDisabled extends CotsError {
            public static final NfcIsDisabled INSTANCE = new NfcIsDisabled();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NfcIsDisabled)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1273133707;
            }

            public String toString() {
                return "NfcIsDisabled";
            }

            private NfcIsDisabled() {
                super("cots_outcome_nfc_is_disabled", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$NoMutuallySupportedApplications;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NoMutuallySupportedApplications extends CotsError {
            public static final NoMutuallySupportedApplications INSTANCE = new NoMutuallySupportedApplications();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NoMutuallySupportedApplications)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -142938423;
            }

            public String toString() {
                return "NoMutuallySupportedApplications";
            }

            private NoMutuallySupportedApplications() {
                super("cots_outcome_no_mutually_supported_applications", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$SeePhone;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SeePhone extends CotsError {
            public static final SeePhone INSTANCE = new SeePhone();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SeePhone)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1060819937;
            }

            public String toString() {
                return "SeePhone";
            }

            private SeePhone() {
                super("cots_outcome_see_phone", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$SelectNext;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SelectNext extends CotsError {
            public static final SelectNext INSTANCE = new SelectNext();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SelectNext)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -2121256043;
            }

            public String toString() {
                return "SelectNext";
            }

            private SelectNext() {
                super("cots_outcome_select_next", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$ReaderNotActive;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReaderNotActive extends CotsError {
            public static final ReaderNotActive INSTANCE = new ReaderNotActive();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ReaderNotActive)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -2018048912;
            }

            public String toString() {
                return "ReaderNotActive";
            }

            private ReaderNotActive() {
                super("cots_outcome_reader_not_active", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$NonIsoNfcTag;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NonIsoNfcTag extends CotsError {
            public static final NonIsoNfcTag INSTANCE = new NonIsoNfcTag();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NonIsoNfcTag)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 796321421;
            }

            public String toString() {
                return "NonIsoNfcTag";
            }

            private NonIsoNfcTag() {
                super("cots_non_iso_nfc_tag", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$CardReadTimedOut;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class CardReadTimedOut extends CotsError {
            public static final CardReadTimedOut INSTANCE = new CardReadTimedOut();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof CardReadTimedOut)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -928092029;
            }

            public String toString() {
                return "CardReadTimedOut";
            }

            private CardReadTimedOut() {
                super("cots_outcome_card_read_timed_out", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$InsecureEnvironment;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InsecureEnvironment extends CotsError {
            public static final InsecureEnvironment INSTANCE = new InsecureEnvironment();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InsecureEnvironment)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1945155793;
            }

            public String toString() {
                return "InsecureEnvironment";
            }

            private InsecureEnvironment() {
                super("cots_outcome_insecure_environment", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$CotsError$Unknown;", "Lcom/stripe/loggingmodels/Outcome$CotsError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Unknown extends CotsError {
            public static final Unknown INSTANCE = new Unknown();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Unknown)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -836162428;
            }

            public String toString() {
                return "Unknown";
            }

            private Unknown() {
                super("cots_unknown_error", null);
            }
        }
    }

    /* JADX INFO: compiled from: Outcome.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\n\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\n\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a¨\u0006\u001b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "BatteryLowError", "Canceled", "IntegrityError", "NoNetworkError", "NotConnectedToReader", "ReaderError", "ReaderNetworkError", "ServerError", "Tampered", "UnexpectedError", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$BatteryLowError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$Canceled;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$IntegrityError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$NoNetworkError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$NotConnectedToReader;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderNetworkError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$ServerError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$Tampered;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError$UnexpectedError;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class UpdatesError implements Failure {
        private final String outcome;

        public /* synthetic */ UpdatesError(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$Tampered;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Tampered extends UpdatesError {
            public static final Tampered INSTANCE = new Tampered();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Tampered)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -306632073;
            }

            public String toString() {
                return "Tampered";
            }

            private Tampered() {
                super("tampered", null);
            }
        }

        private UpdatesError(String str) {
            this.outcome = str;
        }

        @Override // com.stripe.loggingmodels.Outcome
        public String getOutcome() {
            return this.outcome;
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$IntegrityError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class IntegrityError extends UpdatesError {
            public static final IntegrityError INSTANCE = new IntegrityError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof IntegrityError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1020675606;
            }

            public String toString() {
                return "IntegrityError";
            }

            private IntegrityError() {
                super("integrity_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$Canceled;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Canceled extends UpdatesError {
            public static final Canceled INSTANCE = new Canceled();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Canceled)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 146980916;
            }

            public String toString() {
                return "Canceled";
            }

            private Canceled() {
                super("canceled", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$NotConnectedToReader;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NotConnectedToReader extends UpdatesError {
            public static final NotConnectedToReader INSTANCE = new NotConnectedToReader();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NotConnectedToReader)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 500656591;
            }

            public String toString() {
                return "NotConnectedToReader";
            }

            private NotConnectedToReader() {
                super("not_connected_to_reader_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$UnexpectedError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnexpectedError extends UpdatesError {
            public static final UnexpectedError INSTANCE = new UnexpectedError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnexpectedError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1746808772;
            }

            public String toString() {
                return "UnexpectedError";
            }

            private UnexpectedError() {
                super("unexpected_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$BatteryLowError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class BatteryLowError extends UpdatesError {
            public static final BatteryLowError INSTANCE = new BatteryLowError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof BatteryLowError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 88111174;
            }

            public String toString() {
                return "BatteryLowError";
            }

            private BatteryLowError() {
                super("battery_low_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReaderError extends UpdatesError {
            public static final ReaderError INSTANCE = new ReaderError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ReaderError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -221059702;
            }

            public String toString() {
                return "ReaderError";
            }

            private ReaderError() {
                super("reader_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$ServerError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ServerError extends UpdatesError {
            public static final ServerError INSTANCE = new ServerError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServerError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1374150902;
            }

            public String toString() {
                return "ServerError";
            }

            private ServerError() {
                super("server_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderNetworkError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReaderNetworkError extends UpdatesError {
            public static final ReaderNetworkError INSTANCE = new ReaderNetworkError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ReaderNetworkError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1531382456;
            }

            public String toString() {
                return "ReaderNetworkError";
            }

            private ReaderNetworkError() {
                super("reader_network_error", null);
            }
        }

        /* JADX INFO: compiled from: Outcome.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Outcome$UpdatesError$NoNetworkError;", "Lcom/stripe/loggingmodels/Outcome$UpdatesError;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NoNetworkError extends UpdatesError {
            public static final NoNetworkError INSTANCE = new NoNetworkError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NoNetworkError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1426630602;
            }

            public String toString() {
                return "NoNetworkError";
            }

            private NoNetworkError() {
                super("no_network_error", null);
            }
        }
    }
}
