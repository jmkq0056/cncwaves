package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001+BK\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u0010\"\u001a\u00020\rHÆ\u0003J]\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\rHÆ\u0001J\u0013\u0010$\u001a\u00020\u00032\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\u0006\u0010(\u001a\u00020)J\t\u0010*\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012¨\u0006,"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CollectConfiguration;", "", "skipTipping", "", "moto", "updatePaymentIntent", "tippingConfiguration", "Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "enableCustomerCancellation", "requestDynamicCurrencyConversion", "surchargeNotice", "", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V", "getAllowRedisplay", "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "getEnableCustomerCancellation", "()Z", "getMoto", "getRequestDynamicCurrencyConversion", "getSkipTipping", "getSurchargeNotice", "()Ljava/lang/String;", "getTippingConfiguration", "()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "getUpdatePaymentIntent", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "", "toBuilder", "Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;", "toString", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CollectConfiguration {
    private final AllowRedisplay allowRedisplay;
    private final boolean enableCustomerCancellation;
    private final boolean moto;
    private final boolean requestDynamicCurrencyConversion;
    private final boolean skipTipping;
    private final String surchargeNotice;
    private final TippingConfiguration tippingConfiguration;
    private final boolean updatePaymentIntent;

    public /* synthetic */ CollectConfiguration(boolean z, boolean z2, boolean z3, TippingConfiguration tippingConfiguration, boolean z4, boolean z5, String str, AllowRedisplay allowRedisplay, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, z3, tippingConfiguration, z4, z5, str, allowRedisplay);
    }

    public static /* synthetic */ CollectConfiguration copy$default(CollectConfiguration collectConfiguration, boolean z, boolean z2, boolean z3, TippingConfiguration tippingConfiguration, boolean z4, boolean z5, String str, AllowRedisplay allowRedisplay, int i, Object obj) {
        if ((i & 1) != 0) {
            z = collectConfiguration.skipTipping;
        }
        if ((i & 2) != 0) {
            z2 = collectConfiguration.moto;
        }
        if ((i & 4) != 0) {
            z3 = collectConfiguration.updatePaymentIntent;
        }
        if ((i & 8) != 0) {
            tippingConfiguration = collectConfiguration.tippingConfiguration;
        }
        if ((i & 16) != 0) {
            z4 = collectConfiguration.enableCustomerCancellation;
        }
        if ((i & 32) != 0) {
            z5 = collectConfiguration.requestDynamicCurrencyConversion;
        }
        if ((i & 64) != 0) {
            str = collectConfiguration.surchargeNotice;
        }
        if ((i & 128) != 0) {
            allowRedisplay = collectConfiguration.allowRedisplay;
        }
        String str2 = str;
        AllowRedisplay allowRedisplay2 = allowRedisplay;
        boolean z6 = z4;
        boolean z7 = z5;
        return collectConfiguration.copy(z, z2, z3, tippingConfiguration, z6, z7, str2, allowRedisplay2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSkipTipping() {
        return this.skipTipping;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getMoto() {
        return this.moto;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getUpdatePaymentIntent() {
        return this.updatePaymentIntent;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TippingConfiguration getTippingConfiguration() {
        return this.tippingConfiguration;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getRequestDynamicCurrencyConversion() {
        return this.requestDynamicCurrencyConversion;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getSurchargeNotice() {
        return this.surchargeNotice;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final AllowRedisplay getAllowRedisplay() {
        return this.allowRedisplay;
    }

    public final CollectConfiguration copy(boolean skipTipping, boolean moto, boolean updatePaymentIntent, TippingConfiguration tippingConfiguration, boolean enableCustomerCancellation, boolean requestDynamicCurrencyConversion, String surchargeNotice, AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(allowRedisplay, "allowRedisplay");
        return new CollectConfiguration(skipTipping, moto, updatePaymentIntent, tippingConfiguration, enableCustomerCancellation, requestDynamicCurrencyConversion, surchargeNotice, allowRedisplay);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CollectConfiguration)) {
            return false;
        }
        CollectConfiguration collectConfiguration = (CollectConfiguration) other;
        return this.skipTipping == collectConfiguration.skipTipping && this.moto == collectConfiguration.moto && this.updatePaymentIntent == collectConfiguration.updatePaymentIntent && Intrinsics.areEqual(this.tippingConfiguration, collectConfiguration.tippingConfiguration) && this.enableCustomerCancellation == collectConfiguration.enableCustomerCancellation && this.requestDynamicCurrencyConversion == collectConfiguration.requestDynamicCurrencyConversion && Intrinsics.areEqual(this.surchargeNotice, collectConfiguration.surchargeNotice) && this.allowRedisplay == collectConfiguration.allowRedisplay;
    }

    public int hashCode() {
        int iHashCode = ((((Boolean.hashCode(this.skipTipping) * 31) + Boolean.hashCode(this.moto)) * 31) + Boolean.hashCode(this.updatePaymentIntent)) * 31;
        TippingConfiguration tippingConfiguration = this.tippingConfiguration;
        int iHashCode2 = (((((iHashCode + (tippingConfiguration == null ? 0 : tippingConfiguration.hashCode())) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31) + Boolean.hashCode(this.requestDynamicCurrencyConversion)) * 31;
        String str = this.surchargeNotice;
        return ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.allowRedisplay.hashCode();
    }

    public String toString() {
        return "CollectConfiguration(skipTipping=" + this.skipTipping + ", moto=" + this.moto + ", updatePaymentIntent=" + this.updatePaymentIntent + ", tippingConfiguration=" + this.tippingConfiguration + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ", requestDynamicCurrencyConversion=" + this.requestDynamicCurrencyConversion + ", surchargeNotice=" + this.surchargeNotice + ", allowRedisplay=" + this.allowRedisplay + ')';
    }

    private CollectConfiguration(boolean z, boolean z2, boolean z3, TippingConfiguration tippingConfiguration, boolean z4, boolean z5, String str, AllowRedisplay allowRedisplay) {
        this.skipTipping = z;
        this.moto = z2;
        this.updatePaymentIntent = z3;
        this.tippingConfiguration = tippingConfiguration;
        this.enableCustomerCancellation = z4;
        this.requestDynamicCurrencyConversion = z5;
        this.surchargeNotice = str;
        this.allowRedisplay = allowRedisplay;
    }

    public final boolean getSkipTipping() {
        return this.skipTipping;
    }

    public final boolean getMoto() {
        return this.moto;
    }

    public final boolean getUpdatePaymentIntent() {
        return this.updatePaymentIntent;
    }

    public final TippingConfiguration getTippingConfiguration() {
        return this.tippingConfiguration;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final boolean getRequestDynamicCurrencyConversion() {
        return this.requestDynamicCurrencyConversion;
    }

    public final String getSurchargeNotice() {
        return this.surchargeNotice;
    }

    public final AllowRedisplay getAllowRedisplay() {
        return this.allowRedisplay;
    }

    /* JADX INFO: compiled from: CollectConfiguration.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\bH\u0007J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\bJ\u0010\u0010$\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u0010\u0010%\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\bJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\bR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR&\u0010\f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b8\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000bR\u001e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000bR\"\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0003\u001a\u0004\u0018\u00010\u0013@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0003\u001a\u0004\u0018\u00010\u0017@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u000b¨\u0006&"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;", "", "()V", "<set-?>", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "allowRedisplay", "getAllowRedisplay", "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "", "enableCustomerCancellation", "getEnableCustomerCancellation", "()Z", "moto", "getMoto$annotations", "getMoto", "requestDynamicCurrencyConversion", "getRequestDynamicCurrencyConversion", "skipTipping", "getSkipTipping", "", "surchargeNotice", "getSurchargeNotice", "()Ljava/lang/String;", "Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "tippingConfiguration", "getTippingConfiguration", "()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;", "updatePaymentIntent", "getUpdatePaymentIntent", "build", "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;", "setAllowRedisplay", "setEnableCustomerCancellation", "setMoto", "value", "setRequestDynamicCurrencyConversion", "setSurchargeNotice", "setTippingConfiguration", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private AllowRedisplay allowRedisplay = AllowRedisplay.UNSPECIFIED;
        private boolean enableCustomerCancellation;
        private boolean moto;
        private boolean requestDynamicCurrencyConversion;
        private boolean skipTipping;
        private String surchargeNotice;
        private TippingConfiguration tippingConfiguration;
        private boolean updatePaymentIntent;

        public static /* synthetic */ void getMoto$annotations() {
        }

        public final boolean getSkipTipping() {
            return this.skipTipping;
        }

        public final boolean getMoto() {
            return this.moto;
        }

        public final boolean getUpdatePaymentIntent() {
            return this.updatePaymentIntent;
        }

        public final TippingConfiguration getTippingConfiguration() {
            return this.tippingConfiguration;
        }

        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final boolean getRequestDynamicCurrencyConversion() {
            return this.requestDynamicCurrencyConversion;
        }

        public final String getSurchargeNotice() {
            return this.surchargeNotice;
        }

        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        public final Builder skipTipping(boolean value) {
            this.skipTipping = value;
            return this;
        }

        public final Builder setMoto(boolean value) {
            this.moto = value;
            return this;
        }

        public final Builder updatePaymentIntent(boolean value) {
            this.updatePaymentIntent = value;
            return this;
        }

        public final Builder setTippingConfiguration(TippingConfiguration tippingConfiguration) {
            this.tippingConfiguration = tippingConfiguration;
            return this;
        }

        public final Builder setEnableCustomerCancellation(boolean enableCustomerCancellation) {
            this.enableCustomerCancellation = enableCustomerCancellation;
            return this;
        }

        public final Builder setRequestDynamicCurrencyConversion(boolean requestDynamicCurrencyConversion) {
            this.requestDynamicCurrencyConversion = requestDynamicCurrencyConversion;
            return this;
        }

        public final Builder setSurchargeNotice(String surchargeNotice) {
            this.surchargeNotice = surchargeNotice;
            return this;
        }

        public final Builder setAllowRedisplay(AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(allowRedisplay, "allowRedisplay");
            this.allowRedisplay = allowRedisplay;
            return this;
        }

        public final CollectConfiguration build() {
            return new CollectConfiguration(this.skipTipping, this.moto, this.updatePaymentIntent, this.tippingConfiguration, this.enableCustomerCancellation, this.requestDynamicCurrencyConversion, this.surchargeNotice, this.allowRedisplay, null);
        }
    }

    public final Builder toBuilder() {
        return new Builder().skipTipping(this.skipTipping).setMoto(this.moto).updatePaymentIntent(this.updatePaymentIntent).setTippingConfiguration(this.tippingConfiguration).setEnableCustomerCancellation(this.enableCustomerCancellation).setRequestDynamicCurrencyConversion(this.requestDynamicCurrencyConversion).setSurchargeNotice(this.surchargeNotice);
    }
}
