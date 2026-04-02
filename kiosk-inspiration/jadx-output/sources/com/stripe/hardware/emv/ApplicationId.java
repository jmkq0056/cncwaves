package com.stripe.hardware.emv;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApplicationId.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/stripe/hardware/emv/ApplicationId;", "", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getId", "()Ljava/lang/String;", "VISA_CREDIT", "VISA_ELECTRON", "VISA_US_COMMON_DEBIT", "MASTERCARD_CREDIT", "AMEX_CREDIT", "INTERAC", "EFTPOS_SAVING", "EFTPOS_CHECKING", "GIROCARD", "JCB", "DISCOVER", "DISCOVER_ZIP", "UNION_PAY", "UNION_PAY_QUASI", "MAESTRO_DEBIT", "MAESTRO_US", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationId {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApplicationId[] $VALUES;
    private final String id;
    public static final ApplicationId VISA_CREDIT = new ApplicationId("VISA_CREDIT", 0, "A0000000031010");
    public static final ApplicationId VISA_ELECTRON = new ApplicationId("VISA_ELECTRON", 1, "A0000000032010");
    public static final ApplicationId VISA_US_COMMON_DEBIT = new ApplicationId("VISA_US_COMMON_DEBIT", 2, "A0000000980840");
    public static final ApplicationId MASTERCARD_CREDIT = new ApplicationId("MASTERCARD_CREDIT", 3, "A0000000041010");
    public static final ApplicationId AMEX_CREDIT = new ApplicationId("AMEX_CREDIT", 4, "A00000002501");
    public static final ApplicationId INTERAC = new ApplicationId("INTERAC", 5, "A0000002771010");
    public static final ApplicationId EFTPOS_SAVING = new ApplicationId("EFTPOS_SAVING", 6, "A00000038410");
    public static final ApplicationId EFTPOS_CHECKING = new ApplicationId("EFTPOS_CHECKING", 7, "A00000038420");
    public static final ApplicationId GIROCARD = new ApplicationId("GIROCARD", 8, "A0000003591010028001");
    public static final ApplicationId JCB = new ApplicationId("JCB", 9, "A0000000651010");
    public static final ApplicationId DISCOVER = new ApplicationId("DISCOVER", 10, "A0000001523010");
    public static final ApplicationId DISCOVER_ZIP = new ApplicationId("DISCOVER_ZIP", 11, "A0000003241010");
    public static final ApplicationId UNION_PAY = new ApplicationId("UNION_PAY", 12, "A000000333010102");
    public static final ApplicationId UNION_PAY_QUASI = new ApplicationId("UNION_PAY_QUASI", 13, "A000000333010103");
    public static final ApplicationId MAESTRO_DEBIT = new ApplicationId("MAESTRO_DEBIT", 14, "A0000000043060");
    public static final ApplicationId MAESTRO_US = new ApplicationId("MAESTRO_US", 15, "A0000000042203");

    private static final /* synthetic */ ApplicationId[] $values() {
        return new ApplicationId[]{VISA_CREDIT, VISA_ELECTRON, VISA_US_COMMON_DEBIT, MASTERCARD_CREDIT, AMEX_CREDIT, INTERAC, EFTPOS_SAVING, EFTPOS_CHECKING, GIROCARD, JCB, DISCOVER, DISCOVER_ZIP, UNION_PAY, UNION_PAY_QUASI, MAESTRO_DEBIT, MAESTRO_US};
    }

    public static EnumEntries<ApplicationId> getEntries() {
        return $ENTRIES;
    }

    public static ApplicationId valueOf(String str) {
        return (ApplicationId) Enum.valueOf(ApplicationId.class, str);
    }

    public static ApplicationId[] values() {
        return (ApplicationId[]) $VALUES.clone();
    }

    private ApplicationId(String str, int i, String str2) {
        this.id = str2;
    }

    public final String getId() {
        return this.id;
    }

    static {
        ApplicationId[] applicationIdArr$values = $values();
        $VALUES = applicationIdArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(applicationIdArr$values);
    }
}
