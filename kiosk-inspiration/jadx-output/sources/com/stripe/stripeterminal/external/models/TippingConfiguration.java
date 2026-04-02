package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TippingConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u0013\b\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "", "eligibleAmount", "", "(Ljava/lang/Long;)V", "getEligibleAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "copy", "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "equals", "", "other", "hashCode", "", "toString", "", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TippingConfiguration {
    private final Long eligibleAmount;

    public /* synthetic */ TippingConfiguration(Long l, DefaultConstructorMarker defaultConstructorMarker) {
        this(l);
    }

    public static /* synthetic */ TippingConfiguration copy$default(TippingConfiguration tippingConfiguration, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            l = tippingConfiguration.eligibleAmount;
        }
        return tippingConfiguration.copy(l);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getEligibleAmount() {
        return this.eligibleAmount;
    }

    public final TippingConfiguration copy(Long eligibleAmount) {
        return new TippingConfiguration(eligibleAmount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TippingConfiguration) && Intrinsics.areEqual(this.eligibleAmount, ((TippingConfiguration) other).eligibleAmount);
    }

    public int hashCode() {
        Long l = this.eligibleAmount;
        if (l == null) {
            return 0;
        }
        return l.hashCode();
    }

    public String toString() {
        return "TippingConfiguration(eligibleAmount=" + this.eligibleAmount + ')';
    }

    private TippingConfiguration(Long l) {
        this.eligibleAmount = l;
    }

    /* synthetic */ TippingConfiguration(Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l);
    }

    public final Long getEligibleAmount() {
        return this.eligibleAmount;
    }

    /* JADX INFO: compiled from: TippingConfiguration.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\fR$\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;", "", "()V", "<set-?>", "", "eligibleAmount", "getEligibleAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "build", "Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "setEligibleAmount", "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private Long eligibleAmount;

        public final Long getEligibleAmount() {
            return this.eligibleAmount;
        }

        public final Builder setEligibleAmount(Long eligibleAmount) {
            this.eligibleAmount = eligibleAmount;
            return this;
        }

        public final TippingConfiguration build() {
            return new TippingConfiguration(this.eligibleAmount, null);
        }
    }
}
