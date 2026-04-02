package com.stripe.core.connectivity;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkConnectionEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;", "Lcom/stripe/core/connectivity/NetworkConnectionEvent;", "error", "Lcom/stripe/core/connectivity/NetworkConnectionError;", "autoAdvanceOnBoot", "", "onConsumed", "Lkotlin/Function0;", "", "(Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;)V", "getAutoAdvanceOnBoot", "()Z", "getError", "()Lcom/stripe/core/connectivity/NetworkConnectionError;", "getOnConsumed", "()Lkotlin/jvm/functions/Function0;", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class NetworkConnectionUserVisibleError implements NetworkConnectionEvent {
    private final boolean autoAdvanceOnBoot;
    private final NetworkConnectionError error;
    private final Function0<Unit> onConsumed;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NetworkConnectionUserVisibleError copy$default(NetworkConnectionUserVisibleError networkConnectionUserVisibleError, NetworkConnectionError networkConnectionError, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            networkConnectionError = networkConnectionUserVisibleError.error;
        }
        if ((i & 2) != 0) {
            z = networkConnectionUserVisibleError.autoAdvanceOnBoot;
        }
        if ((i & 4) != 0) {
            function0 = networkConnectionUserVisibleError.onConsumed;
        }
        return networkConnectionUserVisibleError.copy(networkConnectionError, z, function0);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final NetworkConnectionError getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getAutoAdvanceOnBoot() {
        return this.autoAdvanceOnBoot;
    }

    public final Function0<Unit> component3() {
        return this.onConsumed;
    }

    public final NetworkConnectionUserVisibleError copy(NetworkConnectionError error, boolean autoAdvanceOnBoot, Function0<Unit> onConsumed) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(onConsumed, "onConsumed");
        return new NetworkConnectionUserVisibleError(error, autoAdvanceOnBoot, onConsumed);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NetworkConnectionUserVisibleError)) {
            return false;
        }
        NetworkConnectionUserVisibleError networkConnectionUserVisibleError = (NetworkConnectionUserVisibleError) other;
        return this.error == networkConnectionUserVisibleError.error && this.autoAdvanceOnBoot == networkConnectionUserVisibleError.autoAdvanceOnBoot && Intrinsics.areEqual(this.onConsumed, networkConnectionUserVisibleError.onConsumed);
    }

    public int hashCode() {
        return (((this.error.hashCode() * 31) + Boolean.hashCode(this.autoAdvanceOnBoot)) * 31) + this.onConsumed.hashCode();
    }

    public String toString() {
        return "NetworkConnectionUserVisibleError(error=" + this.error + ", autoAdvanceOnBoot=" + this.autoAdvanceOnBoot + ", onConsumed=" + this.onConsumed + ')';
    }

    public NetworkConnectionUserVisibleError(NetworkConnectionError error, boolean z, Function0<Unit> onConsumed) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(onConsumed, "onConsumed");
        this.error = error;
        this.autoAdvanceOnBoot = z;
        this.onConsumed = onConsumed;
    }

    public final NetworkConnectionError getError() {
        return this.error;
    }

    public final boolean getAutoAdvanceOnBoot() {
        return this.autoAdvanceOnBoot;
    }

    @Override // com.stripe.core.connectivity.NetworkConnectionEvent
    public Function0<Unit> getOnConsumed() {
        return this.onConsumed;
    }
}
