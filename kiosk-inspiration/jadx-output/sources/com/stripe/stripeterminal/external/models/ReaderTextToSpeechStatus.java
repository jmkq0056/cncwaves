package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReaderTextToSpeechStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;", "", "(Ljava/lang/String;I)V", "OFF", "HEADPHONES", "SPEAKERS", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderTextToSpeechStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderTextToSpeechStatus[] $VALUES;
    public static final ReaderTextToSpeechStatus OFF = new ReaderTextToSpeechStatus("OFF", 0);
    public static final ReaderTextToSpeechStatus HEADPHONES = new ReaderTextToSpeechStatus("HEADPHONES", 1);
    public static final ReaderTextToSpeechStatus SPEAKERS = new ReaderTextToSpeechStatus("SPEAKERS", 2);

    private static final /* synthetic */ ReaderTextToSpeechStatus[] $values() {
        return new ReaderTextToSpeechStatus[]{OFF, HEADPHONES, SPEAKERS};
    }

    public static EnumEntries<ReaderTextToSpeechStatus> getEntries() {
        return $ENTRIES;
    }

    public static ReaderTextToSpeechStatus valueOf(String str) {
        return (ReaderTextToSpeechStatus) Enum.valueOf(ReaderTextToSpeechStatus.class, str);
    }

    public static ReaderTextToSpeechStatus[] values() {
        return (ReaderTextToSpeechStatus[]) $VALUES.clone();
    }

    private ReaderTextToSpeechStatus(String str, int i) {
    }

    static {
        ReaderTextToSpeechStatus[] readerTextToSpeechStatusArr$values = $values();
        $VALUES = readerTextToSpeechStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readerTextToSpeechStatusArr$values);
    }
}
