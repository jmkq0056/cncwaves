package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CvmStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/emv/CvmStatus;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "FAILURE", "SUCCESS", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CvmStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CvmStatus[] $VALUES;
    public static final CvmStatus UNKNOWN = new CvmStatus("UNKNOWN", 0);
    public static final CvmStatus FAILURE = new CvmStatus("FAILURE", 1);
    public static final CvmStatus SUCCESS = new CvmStatus("SUCCESS", 2);

    private static final /* synthetic */ CvmStatus[] $values() {
        return new CvmStatus[]{UNKNOWN, FAILURE, SUCCESS};
    }

    public static EnumEntries<CvmStatus> getEntries() {
        return $ENTRIES;
    }

    public static CvmStatus valueOf(String str) {
        return (CvmStatus) Enum.valueOf(CvmStatus.class, str);
    }

    public static CvmStatus[] values() {
        return (CvmStatus[]) $VALUES.clone();
    }

    private CvmStatus(String str, int i) {
    }

    static {
        CvmStatus[] cvmStatusArr$values = $values();
        $VALUES = cvmStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cvmStatusArr$values);
    }
}
