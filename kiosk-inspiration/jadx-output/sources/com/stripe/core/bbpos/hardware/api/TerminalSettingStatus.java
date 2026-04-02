package com.stripe.core.bbpos.hardware.api;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TerminalSettingStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "", "(Ljava/lang/String;I)V", "SUCCESS", "TLV_INCORRECT", "TAG_NOT_FOUND", "LENGTH_INCORRECT", "BOOTLOADER_NOT_SUPPORT", "TAG_NOT_ALLOWED_TO_ACCESS", "TAG_NOT_WRITTEN_CORRECTLY", "INVALID_VALUE", "USER_DEFINED_DATA_NOT_ENABLED", "TAG_NOT_UPDATED", "UNKNOWN", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSettingStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TerminalSettingStatus[] $VALUES;
    public static final TerminalSettingStatus SUCCESS = new TerminalSettingStatus("SUCCESS", 0);
    public static final TerminalSettingStatus TLV_INCORRECT = new TerminalSettingStatus("TLV_INCORRECT", 1);
    public static final TerminalSettingStatus TAG_NOT_FOUND = new TerminalSettingStatus("TAG_NOT_FOUND", 2);
    public static final TerminalSettingStatus LENGTH_INCORRECT = new TerminalSettingStatus("LENGTH_INCORRECT", 3);
    public static final TerminalSettingStatus BOOTLOADER_NOT_SUPPORT = new TerminalSettingStatus("BOOTLOADER_NOT_SUPPORT", 4);
    public static final TerminalSettingStatus TAG_NOT_ALLOWED_TO_ACCESS = new TerminalSettingStatus("TAG_NOT_ALLOWED_TO_ACCESS", 5);
    public static final TerminalSettingStatus TAG_NOT_WRITTEN_CORRECTLY = new TerminalSettingStatus("TAG_NOT_WRITTEN_CORRECTLY", 6);
    public static final TerminalSettingStatus INVALID_VALUE = new TerminalSettingStatus("INVALID_VALUE", 7);
    public static final TerminalSettingStatus USER_DEFINED_DATA_NOT_ENABLED = new TerminalSettingStatus("USER_DEFINED_DATA_NOT_ENABLED", 8);
    public static final TerminalSettingStatus TAG_NOT_UPDATED = new TerminalSettingStatus("TAG_NOT_UPDATED", 9);
    public static final TerminalSettingStatus UNKNOWN = new TerminalSettingStatus("UNKNOWN", 10);

    private static final /* synthetic */ TerminalSettingStatus[] $values() {
        return new TerminalSettingStatus[]{SUCCESS, TLV_INCORRECT, TAG_NOT_FOUND, LENGTH_INCORRECT, BOOTLOADER_NOT_SUPPORT, TAG_NOT_ALLOWED_TO_ACCESS, TAG_NOT_WRITTEN_CORRECTLY, INVALID_VALUE, USER_DEFINED_DATA_NOT_ENABLED, TAG_NOT_UPDATED, UNKNOWN};
    }

    public static EnumEntries<TerminalSettingStatus> getEntries() {
        return $ENTRIES;
    }

    public static TerminalSettingStatus valueOf(String str) {
        return (TerminalSettingStatus) Enum.valueOf(TerminalSettingStatus.class, str);
    }

    public static TerminalSettingStatus[] values() {
        return (TerminalSettingStatus[]) $VALUES.clone();
    }

    private TerminalSettingStatus(String str, int i) {
    }

    static {
        TerminalSettingStatus[] terminalSettingStatusArr$values = $values();
        $VALUES = terminalSettingStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(terminalSettingStatusArr$values);
    }
}
