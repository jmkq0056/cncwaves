package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CustomerAcceptanceType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;", "", "stringValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getStringValue$public_release", "()Ljava/lang/String;", "ONLINE", "OFFLINE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomerAcceptanceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CustomerAcceptanceType[] $VALUES;
    private final String stringValue;
    public static final CustomerAcceptanceType ONLINE = new CustomerAcceptanceType("ONLINE", 0, "online");
    public static final CustomerAcceptanceType OFFLINE = new CustomerAcceptanceType("OFFLINE", 1, "offline");

    private static final /* synthetic */ CustomerAcceptanceType[] $values() {
        return new CustomerAcceptanceType[]{ONLINE, OFFLINE};
    }

    public static EnumEntries<CustomerAcceptanceType> getEntries() {
        return $ENTRIES;
    }

    public static CustomerAcceptanceType valueOf(String str) {
        return (CustomerAcceptanceType) Enum.valueOf(CustomerAcceptanceType.class, str);
    }

    public static CustomerAcceptanceType[] values() {
        return (CustomerAcceptanceType[]) $VALUES.clone();
    }

    private CustomerAcceptanceType(String str, int i, String str2) {
        this.stringValue = str2;
    }

    /* JADX INFO: renamed from: getStringValue$public_release, reason: from getter */
    public final String getStringValue() {
        return this.stringValue;
    }

    static {
        CustomerAcceptanceType[] customerAcceptanceTypeArr$values = $values();
        $VALUES = customerAcceptanceTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(customerAcceptanceTypeArr$values);
    }
}
