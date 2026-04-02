package com.stripe.stripeterminal.external.callable;

import com.stripe.stripeterminal.external.models.DisconnectReason;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderDisconnectListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/ReaderDisconnectListener;", "", "onDisconnect", "", "reason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderDisconnectListener {
    default void onDisconnect(DisconnectReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
    }
}
