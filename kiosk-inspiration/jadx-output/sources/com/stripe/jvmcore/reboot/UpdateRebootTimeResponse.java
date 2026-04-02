package com.stripe.jvmcore.reboot;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;", "", "()V", "Failure", "NoOp", "Success", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$NoOp;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class UpdateRebootTimeResponse {
    public /* synthetic */ UpdateRebootTimeResponse(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$NoOp;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;", "()V", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NoOp extends UpdateRebootTimeResponse {
        public static final NoOp INSTANCE = new NoOp();

        private NoOp() {
            super(null);
        }
    }

    private UpdateRebootTimeResponse() {
    }

    /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;", "()V", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Success extends UpdateRebootTimeResponse {
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;", "()V", "FailToClear", "FailToOverride", "InternalError", "InvalidArgument", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToClear;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToOverride;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InternalError;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InvalidArgument;", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class Failure extends UpdateRebootTimeResponse {
        public /* synthetic */ Failure(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToOverride;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class FailToOverride extends Failure {
            public static final FailToOverride INSTANCE = new FailToOverride();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof FailToOverride)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1469244940;
            }

            public String toString() {
                return "FailToOverride";
            }

            private FailToOverride() {
                super(null);
            }
        }

        private Failure() {
            super(null);
        }

        /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToClear;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class FailToClear extends Failure {
            public static final FailToClear INSTANCE = new FailToClear();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof FailToClear)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1349822757;
            }

            public String toString() {
                return "FailToClear";
            }

            private FailToClear() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InternalError;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InternalError extends Failure {
            public static final InternalError INSTANCE = new InternalError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InternalError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 380805788;
            }

            public String toString() {
                return "InternalError";
            }

            private InternalError() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: UpdateRebootTimeResponse.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InvalidArgument;", "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidArgument extends Failure {
            public static final InvalidArgument INSTANCE = new InvalidArgument();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidArgument)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 870291173;
            }

            public String toString() {
                return "InvalidArgument";
            }

            private InvalidArgument() {
                super(null);
            }
        }
    }
}
