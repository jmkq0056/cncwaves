package com.stripe.core.hardware.updates;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderUpdateException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\t\b\t\n\u000b\f\r\u000e\u000f\u0010B\u001b\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007\u0082\u0001\b\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018¨\u0006\u0019"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "Canceled", "NotConnectedToReader", "UnexpectedError", "UpdateFailed", "UpdateFailedAfterCancellationReaderError", "UpdateFailedBatteryLow", "UpdateFailedInterrupted", "UpdateFailedReaderError", "UpdateFailedServerError", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$Canceled;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ReaderUpdateException extends Exception {
    public /* synthetic */ ReaderUpdateException(String str, Throwable th, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, th);
    }

    public /* synthetic */ ReaderUpdateException(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : th, null);
    }

    private ReaderUpdateException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$Canceled;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Canceled extends ReaderUpdateException {
        public /* synthetic */ Canceled(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Canceled(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotConnectedToReader extends ReaderUpdateException {
        public /* synthetic */ NotConnectedToReader(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotConnectedToReader(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UnexpectedError extends ReaderUpdateException {
        public /* synthetic */ UnexpectedError(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnexpectedError(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateFailed extends ReaderUpdateException {
        public /* synthetic */ UpdateFailed(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateFailed(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateFailedBatteryLow extends ReaderUpdateException {
        public /* synthetic */ UpdateFailedBatteryLow(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateFailedBatteryLow(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateFailedInterrupted extends ReaderUpdateException {
        public /* synthetic */ UpdateFailedInterrupted(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateFailedInterrupted(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static class UpdateFailedReaderError extends ReaderUpdateException {
        public /* synthetic */ UpdateFailedReaderError(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateFailedReaderError(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateFailedServerError extends ReaderUpdateException {
        public /* synthetic */ UpdateFailedServerError(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateFailedServerError(String errorMessage, Throwable th) {
            super(errorMessage, th, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }

    /* JADX INFO: compiled from: ReaderUpdateException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError;", "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;", "errorMessage", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateFailedAfterCancellationReaderError extends UpdateFailedReaderError {
        public /* synthetic */ UpdateFailedAfterCancellationReaderError(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : th);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateFailedAfterCancellationReaderError(String errorMessage, Throwable th) {
            super(errorMessage, th);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        }
    }
}
