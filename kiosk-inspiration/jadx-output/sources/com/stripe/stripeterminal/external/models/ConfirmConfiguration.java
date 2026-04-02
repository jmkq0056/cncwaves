package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfirmConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u001f\b\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;", "", "amountSurcharge", "", "returnUrl", "", "(Ljava/lang/Long;Ljava/lang/String;)V", "getAmountSurcharge", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getReturnUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;", "equals", "", "other", "hashCode", "", "toString", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ConfirmConfiguration {
    private final Long amountSurcharge;
    private final String returnUrl;

    public /* synthetic */ ConfirmConfiguration(Long l, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(l, str);
    }

    public static /* synthetic */ ConfirmConfiguration copy$default(ConfirmConfiguration confirmConfiguration, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            l = confirmConfiguration.amountSurcharge;
        }
        if ((i & 2) != 0) {
            str = confirmConfiguration.returnUrl;
        }
        return confirmConfiguration.copy(l, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getAmountSurcharge() {
        return this.amountSurcharge;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReturnUrl() {
        return this.returnUrl;
    }

    public final ConfirmConfiguration copy(Long amountSurcharge, String returnUrl) {
        return new ConfirmConfiguration(amountSurcharge, returnUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfirmConfiguration)) {
            return false;
        }
        ConfirmConfiguration confirmConfiguration = (ConfirmConfiguration) other;
        return Intrinsics.areEqual(this.amountSurcharge, confirmConfiguration.amountSurcharge) && Intrinsics.areEqual(this.returnUrl, confirmConfiguration.returnUrl);
    }

    public int hashCode() {
        Long l = this.amountSurcharge;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        String str = this.returnUrl;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ConfirmConfiguration(amountSurcharge=" + this.amountSurcharge + ", returnUrl=" + this.returnUrl + ')';
    }

    private ConfirmConfiguration(Long l, String str) {
        this.amountSurcharge = l;
        this.returnUrl = str;
    }

    /* synthetic */ ConfirmConfiguration(Long l, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str);
    }

    public final Long getAmountSurcharge() {
        return this.amountSurcharge;
    }

    public final String getReturnUrl() {
        return this.returnUrl;
    }

    /* JADX INFO: compiled from: ConfirmConfiguration.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0005\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\tR$\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;", "", "()V", "<set-?>", "", "amountSurcharge", "getAmountSurcharge", "()Ljava/lang/Long;", "Ljava/lang/Long;", "", "returnUrl", "getReturnUrl", "()Ljava/lang/String;", "value", "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;", "build", "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;", "setReturnUrl", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private Long amountSurcharge;
        private String returnUrl;

        public final Long getAmountSurcharge() {
            return this.amountSurcharge;
        }

        public final String getReturnUrl() {
            return this.returnUrl;
        }

        public final Builder amountSurcharge(Long value) {
            this.amountSurcharge = value;
            return this;
        }

        public final Builder setReturnUrl(String value) {
            this.returnUrl = value;
            return this;
        }

        public final ConfirmConfiguration build() {
            return new ConfirmConfiguration(this.amountSurcharge, this.returnUrl, null);
        }
    }
}
