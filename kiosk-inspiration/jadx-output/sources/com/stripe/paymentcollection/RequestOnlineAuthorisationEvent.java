package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "authorizationData", "", "(Ljava/lang/String;)V", "getAuthorizationData$annotations", "()V", "getAuthorizationData", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RequestOnlineAuthorisationEvent extends HardwareListenerEvent {
    private final String authorizationData;

    public static /* synthetic */ RequestOnlineAuthorisationEvent copy$default(RequestOnlineAuthorisationEvent requestOnlineAuthorisationEvent, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = requestOnlineAuthorisationEvent.authorizationData;
        }
        return requestOnlineAuthorisationEvent.copy(str);
    }

    public static /* synthetic */ void getAuthorizationData$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAuthorizationData() {
        return this.authorizationData;
    }

    public final RequestOnlineAuthorisationEvent copy(String authorizationData) {
        Intrinsics.checkNotNullParameter(authorizationData, "authorizationData");
        return new RequestOnlineAuthorisationEvent(authorizationData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RequestOnlineAuthorisationEvent) && Intrinsics.areEqual(this.authorizationData, ((RequestOnlineAuthorisationEvent) other).authorizationData);
    }

    public int hashCode() {
        return this.authorizationData.hashCode();
    }

    public String toString() {
        return "RequestOnlineAuthorisationEvent(authorizationData=██)";
    }

    public final String getAuthorizationData() {
        return this.authorizationData;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestOnlineAuthorisationEvent(String authorizationData) {
        super(null);
        Intrinsics.checkNotNullParameter(authorizationData, "authorizationData");
        this.authorizationData = authorizationData;
    }
}
