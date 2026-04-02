package com.stripe.core.connectivity;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SignalStrength.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/connectivity/SignalStrength;", "", FirebaseAnalytics.Param.LEVEL, "", "(Ljava/lang/String;II)V", "getLevel", "()I", "None", "Low", "Medium", "High", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignalStrength {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SignalStrength[] $VALUES;
    private final int level;
    public static final SignalStrength None = new SignalStrength("None", 0, 0);
    public static final SignalStrength Low = new SignalStrength("Low", 1, 1);
    public static final SignalStrength Medium = new SignalStrength("Medium", 2, 2);
    public static final SignalStrength High = new SignalStrength("High", 3, 3);

    private static final /* synthetic */ SignalStrength[] $values() {
        return new SignalStrength[]{None, Low, Medium, High};
    }

    public static EnumEntries<SignalStrength> getEntries() {
        return $ENTRIES;
    }

    public static SignalStrength valueOf(String str) {
        return (SignalStrength) Enum.valueOf(SignalStrength.class, str);
    }

    public static SignalStrength[] values() {
        return (SignalStrength[]) $VALUES.clone();
    }

    private SignalStrength(String str, int i, int i2) {
        this.level = i2;
    }

    public final int getLevel() {
        return this.level;
    }

    static {
        SignalStrength[] signalStrengthArr$values = $values();
        $VALUES = signalStrengthArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(signalStrengthArr$values);
    }
}
