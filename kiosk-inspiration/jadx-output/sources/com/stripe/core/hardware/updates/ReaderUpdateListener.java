package com.stripe.core.hardware.updates;

import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderUpdateListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateListener;", "", "handleConfigUpdateComplete", "", "handleFirmwareUpdateComplete", "handleKeyUpdateComplete", "handleReaderUpdateException", "e", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "handleTargetReaderVersion", "version", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "handleUpdateProgress", "progress", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderUpdateListener {
    void handleConfigUpdateComplete();

    void handleFirmwareUpdateComplete();

    void handleKeyUpdateComplete();

    void handleReaderUpdateException(ReaderUpdateException e);

    void handleTargetReaderVersion(ReaderVersion version);

    void handleUpdateProgress(float progress);
}
