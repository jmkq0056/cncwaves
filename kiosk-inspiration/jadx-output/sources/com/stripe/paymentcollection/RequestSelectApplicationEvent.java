package com.stripe.paymentcollection;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "applications", "", "", "(Ljava/util/List;)V", "getApplications", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RequestSelectApplicationEvent extends HardwareListenerEvent {
    private final List<String> applications;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestSelectApplicationEvent copy$default(RequestSelectApplicationEvent requestSelectApplicationEvent, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = requestSelectApplicationEvent.applications;
        }
        return requestSelectApplicationEvent.copy(list);
    }

    public final List<String> component1() {
        return this.applications;
    }

    public final RequestSelectApplicationEvent copy(List<String> applications) {
        Intrinsics.checkNotNullParameter(applications, "applications");
        return new RequestSelectApplicationEvent(applications);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RequestSelectApplicationEvent) && Intrinsics.areEqual(this.applications, ((RequestSelectApplicationEvent) other).applications);
    }

    public int hashCode() {
        return this.applications.hashCode();
    }

    public String toString() {
        return "RequestSelectApplicationEvent(applications=" + this.applications + ')';
    }

    public final List<String> getApplications() {
        return this.applications;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestSelectApplicationEvent(List<String> applications) {
        super(null);
        Intrinsics.checkNotNullParameter(applications, "applications");
        this.applications = applications;
    }
}
