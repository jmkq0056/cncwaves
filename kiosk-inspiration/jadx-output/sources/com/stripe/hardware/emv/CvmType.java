package com.stripe.hardware.emv;

import androidx.core.app.NotificationCompat;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CvmType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0014"}, d2 = {"Lcom/stripe/hardware/emv/CvmType;", "", "code", "", NotificationCompat.CATEGORY_STATUS, "", "(Ljava/lang/String;IILjava/lang/String;)V", "getCode", "()I", "toString", "FAILURE", "OFFLINE_PLAINTEXT_PIN", "ONLINE_ENCIPHERED_PIN", "OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE", "OFFLINE_ENCIPHERED_PIN", "OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE", "SIGNATURE", "APPROVAL", "NONE", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CvmType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CvmType[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final Map<Integer, CvmType> codeMap;
    private static final Map<String, CvmType> statusMap;
    private final int code;
    private final String status;
    public static final CvmType FAILURE = new CvmType("FAILURE", 0, 0, "failure");
    public static final CvmType OFFLINE_PLAINTEXT_PIN = new CvmType("OFFLINE_PLAINTEXT_PIN", 1, 1, "offline_pin");
    public static final CvmType ONLINE_ENCIPHERED_PIN = new CvmType("ONLINE_ENCIPHERED_PIN", 2, 2, "online_pin");
    public static final CvmType OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE = new CvmType("OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE", 3, 3, "offline_pin_and_signature");
    public static final CvmType OFFLINE_ENCIPHERED_PIN = new CvmType("OFFLINE_ENCIPHERED_PIN", 4, 4, "offline_pin");
    public static final CvmType OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE = new CvmType("OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE", 5, 5, "offline_pin_and_signature");
    public static final CvmType SIGNATURE = new CvmType("SIGNATURE", 6, 30, "signature");
    public static final CvmType APPROVAL = new CvmType("APPROVAL", 7, 31, "approval");
    public static final CvmType NONE = new CvmType("NONE", 8, -1, "none");

    private static final /* synthetic */ CvmType[] $values() {
        return new CvmType[]{FAILURE, OFFLINE_PLAINTEXT_PIN, ONLINE_ENCIPHERED_PIN, OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE, OFFLINE_ENCIPHERED_PIN, OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE, SIGNATURE, APPROVAL, NONE};
    }

    public static EnumEntries<CvmType> getEntries() {
        return $ENTRIES;
    }

    public static CvmType valueOf(String str) {
        return (CvmType) Enum.valueOf(CvmType.class, str);
    }

    public static CvmType[] values() {
        return (CvmType[]) $VALUES.clone();
    }

    private CvmType(String str, int i, int i2, String str2) {
        this.code = i2;
        this.status = str2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        CvmType[] cvmTypeArr$values = $values();
        $VALUES = cvmTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cvmTypeArr$values);
        INSTANCE = new Companion(null);
        EnumEntries<CvmType> entries = getEntries();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(entries, 10)), 16));
        for (CvmType cvmType : entries) {
            linkedHashMap.put(Integer.valueOf(cvmType.code), cvmType);
        }
        codeMap = linkedHashMap;
        EnumEntries<CvmType> entries2 = getEntries();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(entries2, 10)), 16));
        for (CvmType cvmType2 : entries2) {
            linkedHashMap2.put(cvmType2.status, cvmType2);
        }
        statusMap = linkedHashMap2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.status;
    }

    /* JADX INFO: compiled from: CvmType.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/emv/CvmType$Companion;", "", "()V", "codeMap", "", "", "Lcom/stripe/hardware/emv/CvmType;", "statusMap", "", "fromCode", "code", "fromStatus", NotificationCompat.CATEGORY_STATUS, "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CvmType fromCode(int code) {
            CvmType cvmType = (CvmType) CvmType.codeMap.get(Integer.valueOf(code));
            return cvmType == null ? CvmType.NONE : cvmType;
        }

        public final CvmType fromStatus(String status) {
            Intrinsics.checkNotNullParameter(status, "status");
            CvmType cvmType = (CvmType) CvmType.statusMap.get(status);
            return cvmType == null ? CvmType.NONE : cvmType;
        }
    }
}
