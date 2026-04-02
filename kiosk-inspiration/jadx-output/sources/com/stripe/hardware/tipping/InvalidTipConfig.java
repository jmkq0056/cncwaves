package com.stripe.hardware.tipping;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TipConfigValidationResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/stripe/hardware/tipping/InvalidTipConfig;", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "reason", "Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;", "(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V", "getReason", "()Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Reason", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class InvalidTipConfig extends TipConfigValidationResult {
    private final Reason reason;

    public static /* synthetic */ InvalidTipConfig copy$default(InvalidTipConfig invalidTipConfig, Reason reason, int i, Object obj) {
        if ((i & 1) != 0) {
            reason = invalidTipConfig.reason;
        }
        return invalidTipConfig.copy(reason);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Reason getReason() {
        return this.reason;
    }

    public final InvalidTipConfig copy(Reason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        return new InvalidTipConfig(reason);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof InvalidTipConfig) && this.reason == ((InvalidTipConfig) other).reason;
    }

    public int hashCode() {
        return this.reason.hashCode();
    }

    public String toString() {
        return "InvalidTipConfig(reason=" + this.reason + ')';
    }

    public final Reason getReason() {
        return this.reason;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TipConfigValidationResult.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;", "", "(Ljava/lang/String;I)V", "THREE_TIP_OPTIONS_EXPECTED", "TIP_OUT_OF_BOUNDS", "NULL_TIP_CONFIG", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Reason {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Reason[] $VALUES;
        public static final Reason THREE_TIP_OPTIONS_EXPECTED = new Reason("THREE_TIP_OPTIONS_EXPECTED", 0);
        public static final Reason TIP_OUT_OF_BOUNDS = new Reason("TIP_OUT_OF_BOUNDS", 1);
        public static final Reason NULL_TIP_CONFIG = new Reason("NULL_TIP_CONFIG", 2);

        private static final /* synthetic */ Reason[] $values() {
            return new Reason[]{THREE_TIP_OPTIONS_EXPECTED, TIP_OUT_OF_BOUNDS, NULL_TIP_CONFIG};
        }

        public static EnumEntries<Reason> getEntries() {
            return $ENTRIES;
        }

        public static Reason valueOf(String str) {
            return (Reason) Enum.valueOf(Reason.class, str);
        }

        public static Reason[] values() {
            return (Reason[]) $VALUES.clone();
        }

        private Reason(String str, int i) {
        }

        static {
            Reason[] reasonArr$values = $values();
            $VALUES = reasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(reasonArr$values);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidTipConfig(Reason reason) {
        super(null);
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.reason = reason;
    }
}
