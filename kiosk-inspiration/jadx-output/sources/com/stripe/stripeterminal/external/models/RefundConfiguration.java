package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: RefundConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", "", "enableCustomerCancellation", "", "(Z)V", "getEnableCustomerCancellation", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toBuilder", "Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;", "toString", "", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RefundConfiguration {
    private final boolean enableCustomerCancellation;

    public /* synthetic */ RefundConfiguration(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    public static /* synthetic */ RefundConfiguration copy$default(RefundConfiguration refundConfiguration, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = refundConfiguration.enableCustomerCancellation;
        }
        return refundConfiguration.copy(z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final RefundConfiguration copy(boolean enableCustomerCancellation) {
        return new RefundConfiguration(enableCustomerCancellation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RefundConfiguration) && this.enableCustomerCancellation == ((RefundConfiguration) other).enableCustomerCancellation;
    }

    public int hashCode() {
        return Boolean.hashCode(this.enableCustomerCancellation);
    }

    public String toString() {
        return "RefundConfiguration(enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
    }

    private RefundConfiguration(boolean z) {
        this.enableCustomerCancellation = z;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: compiled from: RefundConfiguration.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;", "", "()V", "<set-?>", "", "enableCustomerCancellation", "getEnableCustomerCancellation", "()Z", "build", "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", "setEnableCustomerCancellation", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private boolean enableCustomerCancellation;

        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final Builder setEnableCustomerCancellation(boolean value) {
            this.enableCustomerCancellation = value;
            return this;
        }

        public final RefundConfiguration build() {
            return new RefundConfiguration(this.enableCustomerCancellation, null);
        }
    }

    public final Builder toBuilder() {
        return new Builder().setEnableCustomerCancellation(this.enableCustomerCancellation);
    }
}
