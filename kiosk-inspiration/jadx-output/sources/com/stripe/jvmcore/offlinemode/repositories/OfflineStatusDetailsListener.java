package com.stripe.jvmcore.offlinemode.repositories;

import com.stripe.proto.api.sdk.NetworkStatus;
import com.stripe.proto.api.sdk.OfflineStats;
import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineStatusDetailsListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;", "", "clear", "", "saveStats", "stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "networkStatus", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "updateStats", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineStatusDetailsListener {
    void clear();

    void saveStats(OfflineStats stats, NetworkStatus networkStatus);

    void updateStats(OfflineStats stats);
}
