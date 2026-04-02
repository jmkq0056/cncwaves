package com.stripe.offlinemode.forwarding;

import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineForwardingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0014\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;", "", "startForwarding", "", "stopForwarding", "reason", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineForwardingManager {
    void startForwarding();

    void stopForwarding(String reason);

    static /* synthetic */ void stopForwarding$default(OfflineForwardingManager offlineForwardingManager, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stopForwarding");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        offlineForwardingManager.stopForwarding(str);
    }
}
