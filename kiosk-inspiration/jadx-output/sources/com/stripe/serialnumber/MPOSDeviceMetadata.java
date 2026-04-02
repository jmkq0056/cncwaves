package com.stripe.serialnumber;

import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: MPOSDeviceMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/stripe/serialnumber/MPOSDeviceMetadata;", "", "apiDeviceType", "", "serialPrefixes", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V", "getApiDeviceType", "()Ljava/lang/String;", "getSerialPrefixes", "()Ljava/util/Set;", "Chipper1X", "Chipper2X", "StripeM2", "Wisecube", "WisePad3", "WisePad3S", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MPOSDeviceMetadata {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MPOSDeviceMetadata[] $VALUES;
    private final String apiDeviceType;
    private final Set<String> serialPrefixes;
    public static final MPOSDeviceMetadata Chipper1X = new MPOSDeviceMetadata("Chipper1X", 0, "bbpos_chipper1x", SetsKt.setOf((Object[]) new String[]{"Shopi", "CHB1"}));
    public static final MPOSDeviceMetadata Chipper2X = new MPOSDeviceMetadata("Chipper2X", 1, "bbpos_chipper2x", SetsKt.setOf((Object[]) new String[]{"CHB20", "BBPOS"}));
    public static final MPOSDeviceMetadata StripeM2 = new MPOSDeviceMetadata("StripeM2", 2, "stripe_m2", SetsKt.setOf((Object[]) new String[]{"CHB30", "CHB31", "STRM2", "Stripe M2"}));
    public static final MPOSDeviceMetadata Wisecube = new MPOSDeviceMetadata("Wisecube", 3, "bbpos_wisecube", SetsKt.setOf((Object[]) new String[]{"Tap &", "CHB6", "WISEPAD 2"}));
    public static final MPOSDeviceMetadata WisePad3 = new MPOSDeviceMetadata("WisePad3", 4, "bbpos_wisepad3", SetsKt.setOf((Object[]) new String[]{"WPC30", "WPC32", "WISEPAD 3"}));
    public static final MPOSDeviceMetadata WisePad3S = new MPOSDeviceMetadata("WisePad3S", 5, "bbpos_wisepad3s", SetsKt.setOf((Object[]) new String[]{"WPS32", "WPS33"}));

    private static final /* synthetic */ MPOSDeviceMetadata[] $values() {
        return new MPOSDeviceMetadata[]{Chipper1X, Chipper2X, StripeM2, Wisecube, WisePad3, WisePad3S};
    }

    public static EnumEntries<MPOSDeviceMetadata> getEntries() {
        return $ENTRIES;
    }

    public static MPOSDeviceMetadata valueOf(String str) {
        return (MPOSDeviceMetadata) Enum.valueOf(MPOSDeviceMetadata.class, str);
    }

    public static MPOSDeviceMetadata[] values() {
        return (MPOSDeviceMetadata[]) $VALUES.clone();
    }

    private MPOSDeviceMetadata(String str, int i, String str2, Set set) {
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
        MPOSDeviceMetadata[] mPOSDeviceMetadataArr$values = $values();
        $VALUES = mPOSDeviceMetadataArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(mPOSDeviceMetadataArr$values);
    }
}
