package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;

/* JADX INFO: compiled from: CardPresentRoutingOptionParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;", "", "requestedPriority", "Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "(Lcom/stripe/stripeterminal/external/models/RoutingPriority;)V", "getRequestedPriority", "()Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CardPresentRoutingOptionParameters {
    private final RoutingPriority requestedPriority;

    public static /* synthetic */ CardPresentRoutingOptionParameters copy$default(CardPresentRoutingOptionParameters cardPresentRoutingOptionParameters, RoutingPriority routingPriority, int i, Object obj) {
        if ((i & 1) != 0) {
            routingPriority = cardPresentRoutingOptionParameters.requestedPriority;
        }
        return cardPresentRoutingOptionParameters.copy(routingPriority);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final RoutingPriority getRequestedPriority() {
        return this.requestedPriority;
    }

    public final CardPresentRoutingOptionParameters copy(RoutingPriority requestedPriority) {
        return new CardPresentRoutingOptionParameters(requestedPriority);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CardPresentRoutingOptionParameters) && this.requestedPriority == ((CardPresentRoutingOptionParameters) other).requestedPriority;
    }

    public int hashCode() {
        RoutingPriority routingPriority = this.requestedPriority;
        if (routingPriority == null) {
            return 0;
        }
        return routingPriority.hashCode();
    }

    public String toString() {
        return "CardPresentRoutingOptionParameters(requestedPriority=" + this.requestedPriority + ')';
    }

    public CardPresentRoutingOptionParameters(RoutingPriority routingPriority) {
        this.requestedPriority = routingPriority;
    }

    public final RoutingPriority getRequestedPriority() {
        return this.requestedPriority;
    }
}
