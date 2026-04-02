package com.stripe.hardware.magstripe;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MagStripeReadResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/stripe/hardware/magstripe/MagStripeReadFailure;", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "failureType", "Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;", "(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)V", "getFailureType", "()Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "FailureType", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MagStripeReadFailure extends MagStripeReadResult {
    private final FailureType failureType;

    public static /* synthetic */ MagStripeReadFailure copy$default(MagStripeReadFailure magStripeReadFailure, FailureType failureType, int i, Object obj) {
        if ((i & 1) != 0) {
            failureType = magStripeReadFailure.failureType;
        }
        return magStripeReadFailure.copy(failureType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final FailureType getFailureType() {
        return this.failureType;
    }

    public final MagStripeReadFailure copy(FailureType failureType) {
        Intrinsics.checkNotNullParameter(failureType, "failureType");
        return new MagStripeReadFailure(failureType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MagStripeReadFailure) && this.failureType == ((MagStripeReadFailure) other).failureType;
    }

    public int hashCode() {
        return this.failureType.hashCode();
    }

    public String toString() {
        return "MagStripeReadFailure(failureType=" + this.failureType + ')';
    }

    public final FailureType getFailureType() {
        return this.failureType;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: MagStripeReadResult.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;", "", "(Ljava/lang/String;I)V", "BAD_SWIPE", "MSR_FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class FailureType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FailureType[] $VALUES;
        public static final FailureType BAD_SWIPE = new FailureType("BAD_SWIPE", 0);
        public static final FailureType MSR_FAILURE = new FailureType("MSR_FAILURE", 1);

        private static final /* synthetic */ FailureType[] $values() {
            return new FailureType[]{BAD_SWIPE, MSR_FAILURE};
        }

        public static EnumEntries<FailureType> getEntries() {
            return $ENTRIES;
        }

        public static FailureType valueOf(String str) {
            return (FailureType) Enum.valueOf(FailureType.class, str);
        }

        public static FailureType[] values() {
            return (FailureType[]) $VALUES.clone();
        }

        private FailureType(String str, int i) {
        }

        static {
            FailureType[] failureTypeArr$values = $values();
            $VALUES = failureTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(failureTypeArr$values);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagStripeReadFailure(FailureType failureType) {
        super(null);
        Intrinsics.checkNotNullParameter(failureType, "failureType");
        this.failureType = failureType;
    }
}
