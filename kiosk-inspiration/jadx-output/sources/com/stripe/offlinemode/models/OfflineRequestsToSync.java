package com.stripe.offlinemode.models;

import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineRequestsToSync.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J)\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0007HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineRequestsToSync;", "", "requests", "", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "softDeletedPaymentIds", "", "", "(Ljava/util/List;Ljava/util/Set;)V", "getRequests", "()Ljava/util/List;", "getSoftDeletedPaymentIds", "()Ljava/util/Set;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineRequestsToSync {
    private final List<OfflineApiRequest> requests;
    private final Set<String> softDeletedPaymentIds;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineRequestsToSync copy$default(OfflineRequestsToSync offlineRequestsToSync, List list, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            list = offlineRequestsToSync.requests;
        }
        if ((i & 2) != 0) {
            set = offlineRequestsToSync.softDeletedPaymentIds;
        }
        return offlineRequestsToSync.copy(list, set);
    }

    public final List<OfflineApiRequest> component1() {
        return this.requests;
    }

    public final Set<String> component2() {
        return this.softDeletedPaymentIds;
    }

    public final OfflineRequestsToSync copy(List<OfflineApiRequest> requests, Set<String> softDeletedPaymentIds) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(softDeletedPaymentIds, "softDeletedPaymentIds");
        return new OfflineRequestsToSync(requests, softDeletedPaymentIds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineRequestsToSync)) {
            return false;
        }
        OfflineRequestsToSync offlineRequestsToSync = (OfflineRequestsToSync) other;
        return Intrinsics.areEqual(this.requests, offlineRequestsToSync.requests) && Intrinsics.areEqual(this.softDeletedPaymentIds, offlineRequestsToSync.softDeletedPaymentIds);
    }

    public int hashCode() {
        return (this.requests.hashCode() * 31) + this.softDeletedPaymentIds.hashCode();
    }

    public String toString() {
        return "OfflineRequestsToSync(requests=" + this.requests + ", softDeletedPaymentIds=" + this.softDeletedPaymentIds + ')';
    }

    public OfflineRequestsToSync(List<OfflineApiRequest> requests, Set<String> softDeletedPaymentIds) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(softDeletedPaymentIds, "softDeletedPaymentIds");
        this.requests = requests;
        this.softDeletedPaymentIds = softDeletedPaymentIds;
    }

    public final List<OfflineApiRequest> getRequests() {
        return this.requests;
    }

    public final Set<String> getSoftDeletedPaymentIds() {
        return this.softDeletedPaymentIds;
    }
}
