package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AudioAlertType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/status/AudioAlertType;", "", "(Ljava/lang/String;I)V", "SUCCESS", "ALERT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AudioAlertType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AudioAlertType[] $VALUES;
    public static final AudioAlertType SUCCESS = new AudioAlertType("SUCCESS", 0);
    public static final AudioAlertType ALERT = new AudioAlertType("ALERT", 1);

    private static final /* synthetic */ AudioAlertType[] $values() {
        return new AudioAlertType[]{SUCCESS, ALERT};
    }

    public static EnumEntries<AudioAlertType> getEntries() {
        return $ENTRIES;
    }

    public static AudioAlertType valueOf(String str) {
        return (AudioAlertType) Enum.valueOf(AudioAlertType.class, str);
    }

    public static AudioAlertType[] values() {
        return (AudioAlertType[]) $VALUES.clone();
    }

    private AudioAlertType(String str, int i) {
    }

    static {
        AudioAlertType[] audioAlertTypeArr$values = $values();
        $VALUES = audioAlertTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(audioAlertTypeArr$values);
    }
}
