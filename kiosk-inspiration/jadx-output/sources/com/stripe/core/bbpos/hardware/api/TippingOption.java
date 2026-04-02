package com.stripe.core.bbpos.hardware.api;

import com.stripe.bbpos.sdk.FixedAmountTips;
import com.stripe.bbpos.sdk.PercentageTips;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TippingOption.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/TippingOption;", "", "FixedAmount", "None", "Percentage", "Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;", "Lcom/stripe/core/bbpos/hardware/api/TippingOption$None;", "Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TippingOption {

    /* JADX INFO: compiled from: TippingOption.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002¨\u0006\u0016"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;", "Lcom/stripe/core/bbpos/hardware/api/TippingOption;", "value", "Lcom/stripe/bbpos/sdk/FixedAmountTips;", "constructor-impl", "(Lcom/stripe/bbpos/sdk/FixedAmountTips;)Lcom/stripe/bbpos/sdk/FixedAmountTips;", "getValue", "()Lcom/stripe/bbpos/sdk/FixedAmountTips;", "equals", "", "other", "", "equals-impl", "(Lcom/stripe/bbpos/sdk/FixedAmountTips;Ljava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(Lcom/stripe/bbpos/sdk/FixedAmountTips;)I", "toString", "", "toString-impl", "(Lcom/stripe/bbpos/sdk/FixedAmountTips;)Ljava/lang/String;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @JvmInline
    public static final class FixedAmount implements TippingOption {
        private final FixedAmountTips value;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ FixedAmount m443boximpl(FixedAmountTips fixedAmountTips) {
            return new FixedAmount(fixedAmountTips);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static FixedAmountTips m444constructorimpl(FixedAmountTips value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m445equalsimpl(FixedAmountTips fixedAmountTips, Object obj) {
            return (obj instanceof FixedAmount) && Intrinsics.areEqual(fixedAmountTips, ((FixedAmount) obj).m449unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m446equalsimpl0(FixedAmountTips fixedAmountTips, FixedAmountTips fixedAmountTips2) {
            return Intrinsics.areEqual(fixedAmountTips, fixedAmountTips2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m447hashCodeimpl(FixedAmountTips fixedAmountTips) {
            return fixedAmountTips.hashCode();
        }

        public boolean equals(Object obj) {
            return m445equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m447hashCodeimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ FixedAmountTips m449unboximpl() {
            return this.value;
        }

        private /* synthetic */ FixedAmount(FixedAmountTips fixedAmountTips) {
            this.value = fixedAmountTips;
        }

        public final FixedAmountTips getValue() {
            return this.value;
        }

        public String toString() {
            return m448toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m448toStringimpl(FixedAmountTips fixedAmountTips) {
            return fixedAmountTips.toString();
        }
    }

    /* JADX INFO: compiled from: TippingOption.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002¨\u0006\u0016"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;", "Lcom/stripe/core/bbpos/hardware/api/TippingOption;", "value", "Lcom/stripe/bbpos/sdk/PercentageTips;", "constructor-impl", "(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/bbpos/sdk/PercentageTips;", "getValue", "()Lcom/stripe/bbpos/sdk/PercentageTips;", "equals", "", "other", "", "equals-impl", "(Lcom/stripe/bbpos/sdk/PercentageTips;Ljava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(Lcom/stripe/bbpos/sdk/PercentageTips;)I", "toString", "", "toString-impl", "(Lcom/stripe/bbpos/sdk/PercentageTips;)Ljava/lang/String;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @JvmInline
    public static final class Percentage implements TippingOption {
        private final PercentageTips value;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Percentage m450boximpl(PercentageTips percentageTips) {
            return new Percentage(percentageTips);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static PercentageTips m451constructorimpl(PercentageTips value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m452equalsimpl(PercentageTips percentageTips, Object obj) {
            return (obj instanceof Percentage) && Intrinsics.areEqual(percentageTips, ((Percentage) obj).m456unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m453equalsimpl0(PercentageTips percentageTips, PercentageTips percentageTips2) {
            return Intrinsics.areEqual(percentageTips, percentageTips2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m454hashCodeimpl(PercentageTips percentageTips) {
            return percentageTips.hashCode();
        }

        public boolean equals(Object obj) {
            return m452equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m454hashCodeimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ PercentageTips m456unboximpl() {
            return this.value;
        }

        private /* synthetic */ Percentage(PercentageTips percentageTips) {
            this.value = percentageTips;
        }

        public final PercentageTips getValue() {
            return this.value;
        }

        public String toString() {
            return m455toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m455toStringimpl(PercentageTips percentageTips) {
            return percentageTips.toString();
        }
    }

    /* JADX INFO: compiled from: TippingOption.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/TippingOption$None;", "Lcom/stripe/core/bbpos/hardware/api/TippingOption;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class None implements TippingOption {
        public static final None INSTANCE = new None();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof None)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1959218121;
        }

        public String toString() {
            return "None";
        }

        private None() {
        }
    }
}
