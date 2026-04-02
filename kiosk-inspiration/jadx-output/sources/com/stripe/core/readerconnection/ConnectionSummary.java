package com.stripe.core.readerconnection;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: ConnectionSummary.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\n0\t¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0017\u0010\u0017\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\n0\tHÆ\u0003JC\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\n0\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001f\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/stripe/core/readerconnection/ConnectionSummary;", "", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/core/readerconnection/ConnectionState;", "device", "Lcom/stripe/core/hardware/Reader;", "readerClasses", "", "Lkotlin/reflect/KClass;", "(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)V", "getConnectionType", "()Lcom/stripe/core/hardware/ConnectionType;", "getDevice", "()Lcom/stripe/core/hardware/Reader;", "getReaderClasses", "()Ljava/util/List;", "getState", "()Lcom/stripe/core/readerconnection/ConnectionState;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "readerconnection_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ConnectionSummary {
    private final ConnectionType connectionType;
    private final Reader device;
    private final List<KClass<? extends Reader>> readerClasses;
    private final ConnectionState state;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConnectionSummary copy$default(ConnectionSummary connectionSummary, ConnectionType connectionType, ConnectionState connectionState, Reader reader, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            connectionType = connectionSummary.connectionType;
        }
        if ((i & 2) != 0) {
            connectionState = connectionSummary.state;
        }
        if ((i & 4) != 0) {
            reader = connectionSummary.device;
        }
        if ((i & 8) != 0) {
            list = connectionSummary.readerClasses;
        }
        return connectionSummary.copy(connectionType, connectionState, reader, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ConnectionType getConnectionType() {
        return this.connectionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ConnectionState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Reader getDevice() {
        return this.device;
    }

    public final List<KClass<? extends Reader>> component4() {
        return this.readerClasses;
    }

    public final ConnectionSummary copy(ConnectionType connectionType, ConnectionState state, Reader device, List<? extends KClass<? extends Reader>> readerClasses) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        return new ConnectionSummary(connectionType, state, device, readerClasses);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConnectionSummary)) {
            return false;
        }
        ConnectionSummary connectionSummary = (ConnectionSummary) other;
        return this.connectionType == connectionSummary.connectionType && this.state == connectionSummary.state && Intrinsics.areEqual(this.device, connectionSummary.device) && Intrinsics.areEqual(this.readerClasses, connectionSummary.readerClasses);
    }

    public int hashCode() {
        ConnectionType connectionType = this.connectionType;
        int iHashCode = (((connectionType == null ? 0 : connectionType.hashCode()) * 31) + this.state.hashCode()) * 31;
        Reader reader = this.device;
        return ((iHashCode + (reader != null ? reader.hashCode() : 0)) * 31) + this.readerClasses.hashCode();
    }

    public String toString() {
        return "ConnectionSummary(connectionType=" + this.connectionType + ", state=" + this.state + ", device=" + this.device + ", readerClasses=" + this.readerClasses + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ConnectionSummary(ConnectionType connectionType, ConnectionState state, Reader reader, List<? extends KClass<? extends Reader>> readerClasses) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        this.connectionType = connectionType;
        this.state = state;
        this.device = reader;
        this.readerClasses = readerClasses;
    }

    public final ConnectionType getConnectionType() {
        return this.connectionType;
    }

    public final ConnectionState getState() {
        return this.state;
    }

    public final Reader getDevice() {
        return this.device;
    }

    public /* synthetic */ ConnectionSummary(ConnectionType connectionType, ConnectionState connectionState, Reader reader, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : connectionType, connectionState, (i & 4) != 0 ? null : reader, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<KClass<? extends Reader>> getReaderClasses() {
        return this.readerClasses;
    }
}
