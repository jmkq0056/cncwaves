package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ContactCardSlotState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "", "(Ljava/lang/String;I)V", "EMPTY", "CARD_INSERTED_INCORRECTLY", "CARD_INSERTED_CORRECTLY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ContactCardSlotState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ContactCardSlotState[] $VALUES;
    public static final ContactCardSlotState EMPTY = new ContactCardSlotState("EMPTY", 0);
    public static final ContactCardSlotState CARD_INSERTED_INCORRECTLY = new ContactCardSlotState("CARD_INSERTED_INCORRECTLY", 1);
    public static final ContactCardSlotState CARD_INSERTED_CORRECTLY = new ContactCardSlotState("CARD_INSERTED_CORRECTLY", 2);

    private static final /* synthetic */ ContactCardSlotState[] $values() {
        return new ContactCardSlotState[]{EMPTY, CARD_INSERTED_INCORRECTLY, CARD_INSERTED_CORRECTLY};
    }

    public static EnumEntries<ContactCardSlotState> getEntries() {
        return $ENTRIES;
    }

    public static ContactCardSlotState valueOf(String str) {
        return (ContactCardSlotState) Enum.valueOf(ContactCardSlotState.class, str);
    }

    public static ContactCardSlotState[] values() {
        return (ContactCardSlotState[]) $VALUES.clone();
    }

    private ContactCardSlotState(String str, int i) {
    }

    static {
        ContactCardSlotState[] contactCardSlotStateArr$values = $values();
        $VALUES = contactCardSlotStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(contactCardSlotStateArr$values);
    }
}
