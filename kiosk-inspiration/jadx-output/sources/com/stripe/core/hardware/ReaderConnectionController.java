package com.stripe.core.hardware;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderConnectionController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/ReaderConnectionController;", "", "connect", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "disconnect", "reboot", "setDebugLogEnabled", "enabled", "", "startSession", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderConnectionController {
    void connect(Reader reader);

    void disconnect(Reader reader);

    void reboot(Reader reader);

    void setDebugLogEnabled(boolean enabled);

    void startSession(Reader reader);
}
