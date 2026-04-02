package com.stripe.cots.contactless.util;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.datetime.LocalDateTime;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: FakedContactlessOutcomeType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;", "", "contactlessSuccess", "", "simulatedDate", "Lkotlinx/datetime/LocalDateTime;", "(Ljava/lang/String;IZLkotlinx/datetime/LocalDateTime;)V", "getContactlessSuccess", "()Z", "getSimulatedDate", "()Lkotlinx/datetime/LocalDateTime;", "VISA", "MASTERCARD", "MASTERCARD_INVALID_CDA", "AMEX_DECLINE", "NO_CARD", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FakedContactlessOutcomeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FakedContactlessOutcomeType[] $VALUES;
    private final boolean contactlessSuccess;
    private final LocalDateTime simulatedDate;
    public static final FakedContactlessOutcomeType VISA = new FakedContactlessOutcomeType("VISA", 0, true, null, 2, null);
    public static final FakedContactlessOutcomeType MASTERCARD = new FakedContactlessOutcomeType("MASTERCARD", 1, true, TlvSequence.MASTERCARD.getSimulatedDate());
    public static final FakedContactlessOutcomeType MASTERCARD_INVALID_CDA = new FakedContactlessOutcomeType("MASTERCARD_INVALID_CDA", 2, false, null, 2, null);
    public static final FakedContactlessOutcomeType AMEX_DECLINE = new FakedContactlessOutcomeType("AMEX_DECLINE", 3, false, null, 2, null);
    public static final FakedContactlessOutcomeType NO_CARD = new FakedContactlessOutcomeType("NO_CARD", 4, false, null, 2, null);

    private static final /* synthetic */ FakedContactlessOutcomeType[] $values() {
        return new FakedContactlessOutcomeType[]{VISA, MASTERCARD, MASTERCARD_INVALID_CDA, AMEX_DECLINE, NO_CARD};
    }

    public static EnumEntries<FakedContactlessOutcomeType> getEntries() {
        return $ENTRIES;
    }

    public static FakedContactlessOutcomeType valueOf(String str) {
        return (FakedContactlessOutcomeType) Enum.valueOf(FakedContactlessOutcomeType.class, str);
    }

    public static FakedContactlessOutcomeType[] values() {
        return (FakedContactlessOutcomeType[]) $VALUES.clone();
    }

    private FakedContactlessOutcomeType(String str, int i, boolean z, LocalDateTime localDateTime) {
        this.contactlessSuccess = z;
        this.simulatedDate = localDateTime;
    }

    /* synthetic */ FakedContactlessOutcomeType(String str, int i, boolean z, LocalDateTime localDateTime, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, z, (i2 & 2) != 0 ? null : localDateTime);
    }

    public final boolean getContactlessSuccess() {
        return this.contactlessSuccess;
    }

    public final LocalDateTime getSimulatedDate() {
        return this.simulatedDate;
    }

    static {
        FakedContactlessOutcomeType[] fakedContactlessOutcomeTypeArr$values = $values();
        $VALUES = fakedContactlessOutcomeTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(fakedContactlessOutcomeTypeArr$values);
    }
}
