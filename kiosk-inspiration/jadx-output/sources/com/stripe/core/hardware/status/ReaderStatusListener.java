package com.stripe.core.hardware.status;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.hardware.Reader;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.status.CancellationType;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderBatteryStatus;
import com.stripe.hardware.status.ReaderDisplayMessage;
import com.stripe.hardware.status.ReaderEvent;
import com.stripe.hardware.status.ReaderException;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.hardware.status.ReaderPowerEvent;
import com.stripe.hardware.status.RebootCause;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderStatusListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0012\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0014H&J\u0016\u0010\u0015\u001a\u00020\u00032\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\"H&J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020&H&J\u0016\u0010'\u001a\u00020\u00032\f\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u0017H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H&J\b\u0010+\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006,À\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/status/ReaderStatusListener;", "", "handleAccountTypeSelectionRequest", "", "handleApplicationSelectionRequest", "handleCancellation", "type", "Lcom/stripe/hardware/status/CancellationType;", "handleDeviceBusy", "handleDeviceInfo", "info", "Lcom/stripe/hardware/status/ReaderInfo;", "handleLowBattery", "batteryStatus", "Lcom/stripe/hardware/status/ReaderBatteryStatus;", "handleReaderConnect", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "handleReaderDisconnect", "cause", "Lcom/stripe/hardware/status/DisconnectCause;", "handleReaderDiscovery", "readers", "", "handleReaderDisplayMessage", "message", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "handleReaderEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/hardware/status/ReaderEvent;", "handleReaderException", "e", "Lcom/stripe/hardware/status/ReaderException;", "handleReaderPowerEvent", "Lcom/stripe/hardware/status/ReaderPowerEvent;", "handleReaderRebootAttempt", FirebaseAnalytics.Param.SUCCESS, "", "Lcom/stripe/hardware/status/RebootCause;", "handleRequestReaderConfiguration", "options", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "handleSessionException", "handleSessionInitialized", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderStatusListener {
    void handleAccountTypeSelectionRequest();

    void handleApplicationSelectionRequest();

    void handleCancellation(CancellationType type);

    void handleDeviceBusy();

    void handleDeviceInfo(ReaderInfo info);

    void handleLowBattery(ReaderBatteryStatus batteryStatus);

    void handleReaderConnect(Reader reader);

    void handleReaderDisconnect(DisconnectCause cause);

    void handleReaderDiscovery(Set<? extends Reader> readers);

    void handleReaderDisplayMessage(ReaderDisplayMessage message);

    void handleReaderEvent(ReaderEvent event);

    void handleReaderException(ReaderException e);

    void handleReaderPowerEvent(ReaderPowerEvent event);

    void handleReaderRebootAttempt(boolean success, RebootCause cause);

    void handleRequestReaderConfiguration(Set<? extends ReaderConfiguration.ReaderType> options);

    void handleSessionException(ReaderException e);

    void handleSessionInitialized();

    static /* synthetic */ void handleCancellation$default(ReaderStatusListener readerStatusListener, CancellationType cancellationType, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleCancellation");
        }
        if ((i & 1) != 0) {
            cancellationType = CancellationType.CANCEL_WHILE_IDLE;
        }
        readerStatusListener.handleCancellation(cancellationType);
    }

    static /* synthetic */ void handleReaderDisconnect$default(ReaderStatusListener readerStatusListener, DisconnectCause disconnectCause, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleReaderDisconnect");
        }
        if ((i & 1) != 0) {
            disconnectCause = DisconnectCause.UNKNOWN;
        }
        readerStatusListener.handleReaderDisconnect(disconnectCause);
    }
}
