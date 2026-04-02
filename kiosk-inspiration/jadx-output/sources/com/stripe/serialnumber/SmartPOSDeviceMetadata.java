package com.stripe.serialnumber;

import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SmartPOSDeviceMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;", "", "apiDeviceType", "", "serialPrefixes", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V", "getApiDeviceType", "()Ljava/lang/String;", "getSerialPrefixes", "()Ljava/util/Set;", "WisePosE", "WisePosEDevKit", "S700", "S700DevKit", "S710", "S710DevKit", "Etna", "UnknownDevice", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SmartPOSDeviceMetadata {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SmartPOSDeviceMetadata[] $VALUES;
    private final String apiDeviceType;
    private final Set<String> serialPrefixes;
    public static final SmartPOSDeviceMetadata WisePosE = new SmartPOSDeviceMetadata("WisePosE", 0, "bbpos_wisepos_e", SetsKt.setOf("WSC51"));
    public static final SmartPOSDeviceMetadata WisePosEDevKit = new SmartPOSDeviceMetadata("WisePosEDevKit", 1, "bbpos_wisepos_e_devkit", SetsKt.setOf("WSCD0"));
    public static final SmartPOSDeviceMetadata S700 = new SmartPOSDeviceMetadata("S700", 2, "stripe_s700", SetsKt.setOf((Object[]) new String[]{"STR70", "STRS7", "WTH16"}));
    public static final SmartPOSDeviceMetadata S700DevKit = new SmartPOSDeviceMetadata("S700DevKit", 3, "stripe_s700_devkit", SetsKt.setOf("SDR70"));
    public static final SmartPOSDeviceMetadata S710 = new SmartPOSDeviceMetadata("S710", 4, "stripe_s710", SetsKt.setOf((Object[]) new String[]{"STR71", "WTH13"}));
    public static final SmartPOSDeviceMetadata S710DevKit = new SmartPOSDeviceMetadata("S710DevKit", 5, "stripe_s710_devkit", SetsKt.setOf("SDR71"));
    public static final SmartPOSDeviceMetadata Etna = new SmartPOSDeviceMetadata("Etna", 6, "bbpos_shopify_etna", SetsKt.setOf("WTH11"));
    public static final SmartPOSDeviceMetadata UnknownDevice = new SmartPOSDeviceMetadata("UnknownDevice", 7, "", SetsKt.emptySet());

    private static final /* synthetic */ SmartPOSDeviceMetadata[] $values() {
        return new SmartPOSDeviceMetadata[]{WisePosE, WisePosEDevKit, S700, S700DevKit, S710, S710DevKit, Etna, UnknownDevice};
    }

    public static EnumEntries<SmartPOSDeviceMetadata> getEntries() {
        return $ENTRIES;
    }

    public static SmartPOSDeviceMetadata valueOf(String str) {
        return (SmartPOSDeviceMetadata) Enum.valueOf(SmartPOSDeviceMetadata.class, str);
    }

    public static SmartPOSDeviceMetadata[] values() {
        return (SmartPOSDeviceMetadata[]) $VALUES.clone();
    }

    private SmartPOSDeviceMetadata(String str, int i, String str2, Set set) {
        this.apiDeviceType = str2;
        this.serialPrefixes = set;
    }

    public final String getApiDeviceType() {
        return this.apiDeviceType;
    }

    public final Set<String> getSerialPrefixes() {
        return this.serialPrefixes;
    }

    static {
        SmartPOSDeviceMetadata[] smartPOSDeviceMetadataArr$values = $values();
        $VALUES = smartPOSDeviceMetadataArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(smartPOSDeviceMetadataArr$values);
    }
}
