package com.stripe.offlinemode.models;

import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineForwardingRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001e\u001a\u00020\u000bHÆ\u0003JE\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bHÆ\u0001J\u0013\u0010 \u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "", "offlineReader", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "offlineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "offlineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "offlineApiRequest", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "hasMoreRelatedRequests", "", "hasMore", "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)V", "getHasMore", "()Z", "getHasMoreRelatedRequests", "getOfflineApiRequest", "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "getOfflineConnection", "()Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "getOfflineLocation", "()Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "getOfflineReader", "()Lcom/stripe/proto/model/offline_mode/OfflineReader;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineForwardingRequest {
    private final boolean hasMore;
    private final boolean hasMoreRelatedRequests;
    private final OfflineApiRequest offlineApiRequest;
    private final OfflineConnection offlineConnection;
    private final OfflineLocation offlineLocation;
    private final OfflineReader offlineReader;

    public static /* synthetic */ OfflineForwardingRequest copy$default(OfflineForwardingRequest offlineForwardingRequest, OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, OfflineApiRequest offlineApiRequest, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            offlineReader = offlineForwardingRequest.offlineReader;
        }
        if ((i & 2) != 0) {
            offlineConnection = offlineForwardingRequest.offlineConnection;
        }
        if ((i & 4) != 0) {
            offlineLocation = offlineForwardingRequest.offlineLocation;
        }
        if ((i & 8) != 0) {
            offlineApiRequest = offlineForwardingRequest.offlineApiRequest;
        }
        if ((i & 16) != 0) {
            z = offlineForwardingRequest.hasMoreRelatedRequests;
        }
        if ((i & 32) != 0) {
            z2 = offlineForwardingRequest.hasMore;
        }
        boolean z3 = z;
        boolean z4 = z2;
        return offlineForwardingRequest.copy(offlineReader, offlineConnection, offlineLocation, offlineApiRequest, z3, z4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final OfflineReader getOfflineReader() {
        return this.offlineReader;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final OfflineConnection getOfflineConnection() {
        return this.offlineConnection;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OfflineLocation getOfflineLocation() {
        return this.offlineLocation;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final OfflineApiRequest getOfflineApiRequest() {
        return this.offlineApiRequest;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getHasMoreRelatedRequests() {
        return this.hasMoreRelatedRequests;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final OfflineForwardingRequest copy(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, OfflineApiRequest offlineApiRequest, boolean hasMoreRelatedRequests, boolean hasMore) {
        Intrinsics.checkNotNullParameter(offlineReader, "offlineReader");
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        Intrinsics.checkNotNullParameter(offlineLocation, "offlineLocation");
        Intrinsics.checkNotNullParameter(offlineApiRequest, "offlineApiRequest");
        return new OfflineForwardingRequest(offlineReader, offlineConnection, offlineLocation, offlineApiRequest, hasMoreRelatedRequests, hasMore);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineForwardingRequest)) {
            return false;
        }
        OfflineForwardingRequest offlineForwardingRequest = (OfflineForwardingRequest) other;
        return Intrinsics.areEqual(this.offlineReader, offlineForwardingRequest.offlineReader) && Intrinsics.areEqual(this.offlineConnection, offlineForwardingRequest.offlineConnection) && Intrinsics.areEqual(this.offlineLocation, offlineForwardingRequest.offlineLocation) && Intrinsics.areEqual(this.offlineApiRequest, offlineForwardingRequest.offlineApiRequest) && this.hasMoreRelatedRequests == offlineForwardingRequest.hasMoreRelatedRequests && this.hasMore == offlineForwardingRequest.hasMore;
    }

    public int hashCode() {
        return (((((((((this.offlineReader.hashCode() * 31) + this.offlineConnection.hashCode()) * 31) + this.offlineLocation.hashCode()) * 31) + this.offlineApiRequest.hashCode()) * 31) + Boolean.hashCode(this.hasMoreRelatedRequests)) * 31) + Boolean.hashCode(this.hasMore);
    }

    public String toString() {
        return "OfflineForwardingRequest(offlineReader=" + this.offlineReader + ", offlineConnection=" + this.offlineConnection + ", offlineLocation=" + this.offlineLocation + ", offlineApiRequest=" + this.offlineApiRequest + ", hasMoreRelatedRequests=" + this.hasMoreRelatedRequests + ", hasMore=" + this.hasMore + ')';
    }

    public OfflineForwardingRequest(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, OfflineApiRequest offlineApiRequest, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(offlineReader, "offlineReader");
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        Intrinsics.checkNotNullParameter(offlineLocation, "offlineLocation");
        Intrinsics.checkNotNullParameter(offlineApiRequest, "offlineApiRequest");
        this.offlineReader = offlineReader;
        this.offlineConnection = offlineConnection;
        this.offlineLocation = offlineLocation;
        this.offlineApiRequest = offlineApiRequest;
        this.hasMoreRelatedRequests = z;
        this.hasMore = z2;
    }

    public final OfflineReader getOfflineReader() {
        return this.offlineReader;
    }

    public final OfflineConnection getOfflineConnection() {
        return this.offlineConnection;
    }

    public final OfflineLocation getOfflineLocation() {
        return this.offlineLocation;
    }

    public final OfflineApiRequest getOfflineApiRequest() {
        return this.offlineApiRequest;
    }

    public final boolean getHasMoreRelatedRequests() {
        return this.hasMoreRelatedRequests;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }
}
