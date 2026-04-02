package com.stripe.hardware.emv;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApplicationPreferredName.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/hardware/emv/ApplicationPreferredName;", "", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getId", "()Ljava/lang/String;", "INTERAC", "MASTERCARD", "VISA", "UNION_PAY_CREDIT", "AMEX", "JCB", "DISCOVER", "EFTPOS_SAVING", "VISA_US_COMMON_DEBIT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationPreferredName {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApplicationPreferredName[] $VALUES;
    private final String id;
    public static final ApplicationPreferredName INTERAC = new ApplicationPreferredName("INTERAC", 0, "Interac");
    public static final ApplicationPreferredName MASTERCARD = new ApplicationPreferredName("MASTERCARD", 1, "MasterCard Credit");
    public static final ApplicationPreferredName VISA = new ApplicationPreferredName("VISA", 2, "VISA Debit/Credit (Classic)");
    public static final ApplicationPreferredName UNION_PAY_CREDIT = new ApplicationPreferredName("UNION_PAY_CREDIT", 3, "UnionPay Credit");
    public static final ApplicationPreferredName AMEX = new ApplicationPreferredName("AMEX", 4, "American Express");
    public static final ApplicationPreferredName JCB = new ApplicationPreferredName("JCB", 5, "JCB J Smart Credit");
    public static final ApplicationPreferredName DISCOVER = new ApplicationPreferredName("DISCOVER", 6, "Discover");
    public static final ApplicationPreferredName EFTPOS_SAVING = new ApplicationPreferredName("EFTPOS_SAVING", 7, "eftpos SAVINGS");
    public static final ApplicationPreferredName VISA_US_COMMON_DEBIT = new ApplicationPreferredName("VISA_US_COMMON_DEBIT", 8, "VISA US Common Debit");

    private static final /* synthetic */ ApplicationPreferredName[] $values() {
        return new ApplicationPreferredName[]{INTERAC, MASTERCARD, VISA, UNION_PAY_CREDIT, AMEX, JCB, DISCOVER, EFTPOS_SAVING, VISA_US_COMMON_DEBIT};
    }

    public static EnumEntries<ApplicationPreferredName> getEntries() {
        return $ENTRIES;
    }

    public static ApplicationPreferredName valueOf(String str) {
        return (ApplicationPreferredName) Enum.valueOf(ApplicationPreferredName.class, str);
    }

    public static ApplicationPreferredName[] values() {
        return (ApplicationPreferredName[]) $VALUES.clone();
    }

    private ApplicationPreferredName(String str, int i, String str2) {
        this.id = str2;
    }

    public final String getId() {
        return this.id;
    }

    static {
        ApplicationPreferredName[] applicationPreferredNameArr$values = $values();
        $VALUES = applicationPreferredNameArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(applicationPreferredNameArr$values);
    }
}
