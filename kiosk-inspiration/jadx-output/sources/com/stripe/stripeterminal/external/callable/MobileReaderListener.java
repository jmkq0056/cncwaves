package com.stripe.stripeterminal.external.callable;

import com.stripe.stripeterminal.external.models.BatteryStatus;
import com.stripe.stripeterminal.external.models.ReaderDisplayMessage;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MobileReaderListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001e\u0010\f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0007H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "Lcom/stripe/stripeterminal/external/callable/ReaderListenable;", "Lcom/stripe/stripeterminal/external/callable/ReaderReconnectionListener;", "Lcom/stripe/stripeterminal/external/callable/ReaderDisconnectListener;", "onBatteryLevelUpdate", "", "batteryLevel", "", "batteryStatus", "Lcom/stripe/stripeterminal/external/models/BatteryStatus;", "isCharging", "", "onFinishInstallingUpdate", "update", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onReportAvailableUpdate", "onReportLowBatteryWarning", "onReportReaderSoftwareUpdateProgress", "progress", "onRequestReaderDisplayMessage", "message", "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;", "onRequestReaderInput", "options", "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;", "onStartInstallingUpdate", "cancelable", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MobileReaderListener extends ReaderListenable, ReaderReconnectionListener, ReaderDisconnectListener {
    default void onBatteryLevelUpdate(float batteryLevel, BatteryStatus batteryStatus, boolean isCharging) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
    }

    default void onFinishInstallingUpdate(ReaderSoftwareUpdate update, TerminalException e) {
    }

    default void onReportAvailableUpdate(ReaderSoftwareUpdate update) {
        Intrinsics.checkNotNullParameter(update, "update");
    }

    default void onReportLowBatteryWarning() {
    }

    default void onReportReaderSoftwareUpdateProgress(float progress) {
    }

    default void onRequestReaderDisplayMessage(ReaderDisplayMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }

    default void onRequestReaderInput(ReaderInputOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
    }

    default void onStartInstallingUpdate(ReaderSoftwareUpdate update, Cancelable cancelable) {
        Intrinsics.checkNotNullParameter(update, "update");
    }

    static /* synthetic */ void onFinishInstallingUpdate$default(MobileReaderListener mobileReaderListener, ReaderSoftwareUpdate readerSoftwareUpdate, TerminalException terminalException, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFinishInstallingUpdate");
        }
        if ((i & 2) != 0) {
            terminalException = null;
        }
        mobileReaderListener.onFinishInstallingUpdate(readerSoftwareUpdate, terminalException);
    }
}
