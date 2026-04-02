package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.readerconnection.ConnectionSummary;
import com.stripe.core.readerupdate.UpdateSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStateMachine.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", "", "connectionSummary", "Lcom/stripe/core/readerconnection/ConnectionSummary;", "updateSummary", "Lcom/stripe/core/readerupdate/UpdateSummary;", "(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)V", "getConnectionSummary", "()Lcom/stripe/core/readerconnection/ConnectionSummary;", "getUpdateSummary", "()Lcom/stripe/core/readerupdate/UpdateSummary;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ConnectAndUpdateApplicationData {
    private final ConnectionSummary connectionSummary;
    private final UpdateSummary updateSummary;

    /* JADX WARN: Multi-variable type inference failed */
    public ConnectAndUpdateApplicationData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ConnectAndUpdateApplicationData copy$default(ConnectAndUpdateApplicationData connectAndUpdateApplicationData, ConnectionSummary connectionSummary, UpdateSummary updateSummary, int i, Object obj) {
        if ((i & 1) != 0) {
            connectionSummary = connectAndUpdateApplicationData.connectionSummary;
        }
        if ((i & 2) != 0) {
            updateSummary = connectAndUpdateApplicationData.updateSummary;
        }
        return connectAndUpdateApplicationData.copy(connectionSummary, updateSummary);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ConnectionSummary getConnectionSummary() {
        return this.connectionSummary;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UpdateSummary getUpdateSummary() {
        return this.updateSummary;
    }

    public final ConnectAndUpdateApplicationData copy(ConnectionSummary connectionSummary, UpdateSummary updateSummary) {
        return new ConnectAndUpdateApplicationData(connectionSummary, updateSummary);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConnectAndUpdateApplicationData)) {
            return false;
        }
        ConnectAndUpdateApplicationData connectAndUpdateApplicationData = (ConnectAndUpdateApplicationData) other;
        return Intrinsics.areEqual(this.connectionSummary, connectAndUpdateApplicationData.connectionSummary) && Intrinsics.areEqual(this.updateSummary, connectAndUpdateApplicationData.updateSummary);
    }

    public int hashCode() {
        ConnectionSummary connectionSummary = this.connectionSummary;
        int iHashCode = (connectionSummary == null ? 0 : connectionSummary.hashCode()) * 31;
        UpdateSummary updateSummary = this.updateSummary;
        return iHashCode + (updateSummary != null ? updateSummary.hashCode() : 0);
    }

    public String toString() {
        return "ConnectAndUpdateApplicationData(connectionSummary=" + this.connectionSummary + ", updateSummary=" + this.updateSummary + ')';
    }

    public ConnectAndUpdateApplicationData(ConnectionSummary connectionSummary, UpdateSummary updateSummary) {
        this.connectionSummary = connectionSummary;
        this.updateSummary = updateSummary;
    }

    public /* synthetic */ ConnectAndUpdateApplicationData(ConnectionSummary connectionSummary, UpdateSummary updateSummary, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : connectionSummary, (i & 2) != 0 ? null : updateSummary);
    }

    public final ConnectionSummary getConnectionSummary() {
        return this.connectionSummary;
    }

    public final UpdateSummary getUpdateSummary() {
        return this.updateSummary;
    }
}
