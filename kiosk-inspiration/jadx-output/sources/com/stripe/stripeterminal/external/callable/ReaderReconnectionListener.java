package com.stripe.stripeterminal.external.callable;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderReconnectionListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/ReaderReconnectionListener;", "", "onReaderReconnectFailed", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "onReaderReconnectStarted", "cancelReconnect", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "reason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "onReaderReconnectSucceeded", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderReconnectionListener {
    default void onReaderReconnectFailed(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
    }

    default void onReaderReconnectStarted(Reader reader, Cancelable cancelReconnect, DisconnectReason reason) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(cancelReconnect, "cancelReconnect");
        Intrinsics.checkNotNullParameter(reason, "reason");
    }

    default void onReaderReconnectSucceeded(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
    }
}
