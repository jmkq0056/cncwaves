package com.stripe.device;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RomType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/device/RomType;", "", "displayName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "USER", "USER_DEBUG", "ENG", "UNKNOWN", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RomType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RomType[] $VALUES;
    private final String displayName;
    public static final RomType USER = new RomType("USER", 0, "user");
    public static final RomType USER_DEBUG = new RomType("USER_DEBUG", 1, "userdebug");
    public static final RomType ENG = new RomType("ENG", 2, "eng");
    public static final RomType UNKNOWN = new RomType("UNKNOWN", 3, "unknown");

    private static final /* synthetic */ RomType[] $values() {
        return new RomType[]{USER, USER_DEBUG, ENG, UNKNOWN};
    }

    public static EnumEntries<RomType> getEntries() {
        return $ENTRIES;
    }

    public static RomType valueOf(String str) {
        return (RomType) Enum.valueOf(RomType.class, str);
    }

    public static RomType[] values() {
        return (RomType[]) $VALUES.clone();
    }

    private RomType(String str, int i, String str2) {
        this.displayName = str2;
    }

    static {
        RomType[] romTypeArr$values = $values();
        $VALUES = romTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(romTypeArr$values);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.displayName;
    }
}
