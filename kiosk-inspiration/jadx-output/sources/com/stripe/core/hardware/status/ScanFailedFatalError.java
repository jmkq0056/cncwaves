package com.stripe.core.hardware.status;

import com.stripe.hardware.status.ReaderException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScanFailedFatalError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/stripe/core/hardware/status/ScanFailedFatalError;", "Lcom/stripe/hardware/status/ReaderException;", "errorCode", "", "errorMessage", "", "cause", "", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "getErrorCode", "()I", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ScanFailedFatalError extends ReaderException {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int errorCode;

    public /* synthetic */ ScanFailedFatalError(int i, String str, Throwable th, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? null : th);
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScanFailedFatalError(int i, String errorMessage, Throwable th) {
        super(errorMessage + " - " + INSTANCE.errorCodeToString(i), th);
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.errorCode = i;
    }

    /* JADX INFO: compiled from: ScanFailedFatalError.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;", "", "()V", "errorCodeToString", "", "errorCode", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String errorCodeToString(int errorCode) {
            if (errorCode == 2) {
                return "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED";
            }
            if (errorCode == 3) {
                return "SCAN_FAILED_INTERNAL_ERROR";
            }
            if (errorCode == 4) {
                return "SCAN_FAILED_FEATURE_UNSUPPORTED";
            }
            if (errorCode == 5) {
                return "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES";
            }
            if (errorCode == 6) {
                return "SCAN_FAILED_SCANNING_TOO_FREQUENTLY";
            }
            return "UNKNOWN";
        }
    }
}
