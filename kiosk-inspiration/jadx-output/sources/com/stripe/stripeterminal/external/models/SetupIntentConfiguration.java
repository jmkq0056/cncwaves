package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SetupIntentConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;", "", "enableCustomerCancellation", "", "moto", "(ZZ)V", "getEnableCustomerCancellation", "()Z", "getMoto", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SetupIntentConfiguration {
    private final boolean enableCustomerCancellation;
    private final boolean moto;

    public /* synthetic */ SetupIntentConfiguration(boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2);
    }

    public static /* synthetic */ SetupIntentConfiguration copy$default(SetupIntentConfiguration setupIntentConfiguration, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = setupIntentConfiguration.enableCustomerCancellation;
        }
        if ((i & 2) != 0) {
            z2 = setupIntentConfiguration.moto;
        }
        return setupIntentConfiguration.copy(z, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getMoto() {
        return this.moto;
    }

    public final SetupIntentConfiguration copy(boolean enableCustomerCancellation, boolean moto) {
        return new SetupIntentConfiguration(enableCustomerCancellation, moto);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupIntentConfiguration)) {
            return false;
        }
        SetupIntentConfiguration setupIntentConfiguration = (SetupIntentConfiguration) other;
        return this.enableCustomerCancellation == setupIntentConfiguration.enableCustomerCancellation && this.moto == setupIntentConfiguration.moto;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.enableCustomerCancellation) * 31) + Boolean.hashCode(this.moto);
    }

    public String toString() {
        return "SetupIntentConfiguration(enableCustomerCancellation=" + this.enableCustomerCancellation + ", moto=" + this.moto + ')';
    }

    private SetupIntentConfiguration(boolean z, boolean z2) {
        this.enableCustomerCancellation = z;
        this.moto = z2;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final boolean getMoto() {
        return this.moto;
    }

    /* JADX INFO: compiled from: SetupIntentConfiguration.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004H\u0007R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R&\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;", "", "()V", "<set-?>", "", "enableCustomerCancellation", "getEnableCustomerCancellation", "()Z", "moto", "getMoto$annotations", "getMoto", "build", "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;", "setEnableCustomerCancellation", "value", "setMoto", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private boolean enableCustomerCancellation;
        private boolean moto;

        public static /* synthetic */ void getMoto$annotations() {
        }

        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final boolean getMoto() {
            return this.moto;
        }

        public final Builder setEnableCustomerCancellation(boolean value) {
            this.enableCustomerCancellation = value;
            return this;
        }

        public final Builder setMoto(boolean value) {
            this.moto = value;
            return this;
        }

        public final SetupIntentConfiguration build() {
            return new SetupIntentConfiguration(this.enableCustomerCancellation, this.moto, null);
        }
    }
}
