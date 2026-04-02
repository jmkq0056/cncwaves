package com.stripe.jvmcore.reboot;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RebootTimeSettingApproach.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "", "Lcom/stripe/jvmcore/reboot/FieldsWithPriority;", "order", "", "(Ljava/lang/String;II)V", "getOrder", "()I", "REBOOT_TIME_BY_DEVICE", "REBOOT_TIME_BY_SERVER_DEFAULT", "REBOOT_TIME_BY_DEFAULT", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RebootTimeSettingApproach implements FieldsWithPriority {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RebootTimeSettingApproach[] $VALUES;
    private final int order;
    public static final RebootTimeSettingApproach REBOOT_TIME_BY_DEVICE = new RebootTimeSettingApproach("REBOOT_TIME_BY_DEVICE", 0, 0);
    public static final RebootTimeSettingApproach REBOOT_TIME_BY_SERVER_DEFAULT = new RebootTimeSettingApproach("REBOOT_TIME_BY_SERVER_DEFAULT", 1, 1);
    public static final RebootTimeSettingApproach REBOOT_TIME_BY_DEFAULT = new RebootTimeSettingApproach("REBOOT_TIME_BY_DEFAULT", 2, 2);

    private static final /* synthetic */ RebootTimeSettingApproach[] $values() {
        return new RebootTimeSettingApproach[]{REBOOT_TIME_BY_DEVICE, REBOOT_TIME_BY_SERVER_DEFAULT, REBOOT_TIME_BY_DEFAULT};
    }

    public static EnumEntries<RebootTimeSettingApproach> getEntries() {
        return $ENTRIES;
    }

    public static RebootTimeSettingApproach valueOf(String str) {
        return (RebootTimeSettingApproach) Enum.valueOf(RebootTimeSettingApproach.class, str);
    }

    public static RebootTimeSettingApproach[] values() {
        return (RebootTimeSettingApproach[]) $VALUES.clone();
    }

    private RebootTimeSettingApproach(String str, int i, int i2) {
        this.order = i2;
    }

    @Override // com.stripe.jvmcore.reboot.FieldsWithPriority
    public int getOrder() {
        return this.order;
    }

    static {
        RebootTimeSettingApproach[] rebootTimeSettingApproachArr$values = $values();
        $VALUES = rebootTimeSettingApproachArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(rebootTimeSettingApproachArr$values);
    }
}
