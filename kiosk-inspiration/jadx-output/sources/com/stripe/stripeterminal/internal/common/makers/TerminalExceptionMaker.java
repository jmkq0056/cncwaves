package com.stripe.stripeterminal.internal.common.makers;

import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalExceptionMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker;", "", "()V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalExceptionMaker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: TerminalExceptionMaker.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;", "", "()V", "fromReaderUpdateException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "exception", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TerminalException fromReaderUpdateException(ReaderUpdateException exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            if (exception instanceof ReaderUpdateException.UpdateFailed) {
                return new TerminalException(TerminalErrorCode.READER_SOFTWARE_UPDATE_FAILED, "Update failed due to configuration error", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.UpdateFailedBatteryLow) {
                return new TerminalException(TerminalErrorCode.READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW, "Update failed due to low battery", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.UpdateFailedInterrupted) {
                return new TerminalException(TerminalErrorCode.READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED, "Update failed due to being interrupted", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.UpdateFailedReaderError) {
                return new TerminalException(TerminalErrorCode.READER_SOFTWARE_UPDATE_FAILED_READER_ERROR, "Update failed since there is no connected reader", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.UpdateFailedServerError) {
                return new TerminalException(TerminalErrorCode.READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR, "Update failed due to lack of internet connection", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.UnexpectedError) {
                return new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected SDK error", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.Canceled) {
                return new TerminalException(TerminalErrorCode.CANCELED, "Update canceled", exception, null, 8, null);
            }
            if (exception instanceof ReaderUpdateException.NotConnectedToReader) {
                return new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "Not connected to reader", exception, null, 8, null);
            }
            throw new NoWhenBranchMatchedException();
        }
    }
}
