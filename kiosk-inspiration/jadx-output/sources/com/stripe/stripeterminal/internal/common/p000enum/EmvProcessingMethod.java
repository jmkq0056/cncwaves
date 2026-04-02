package com.stripe.stripeterminal.internal.common.p000enum;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: EmvProcessingMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;", "", FirebaseAnalytics.Param.METHOD, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getMethod", "()Ljava/lang/String;", "QUICK_CHIP", "TRADITIONAL", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmvProcessingMethod {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EmvProcessingMethod[] $VALUES;
    public static final EmvProcessingMethod QUICK_CHIP = new EmvProcessingMethod("QUICK_CHIP", 0, "quick_chip");
    public static final EmvProcessingMethod TRADITIONAL = new EmvProcessingMethod("TRADITIONAL", 1, "traditional");
    private final String method;

    private static final /* synthetic */ EmvProcessingMethod[] $values() {
        return new EmvProcessingMethod[]{QUICK_CHIP, TRADITIONAL};
    }

    public static EnumEntries<EmvProcessingMethod> getEntries() {
        return $ENTRIES;
    }

    public static EmvProcessingMethod valueOf(String str) {
        return (EmvProcessingMethod) Enum.valueOf(EmvProcessingMethod.class, str);
    }

    public static EmvProcessingMethod[] values() {
        return (EmvProcessingMethod[]) $VALUES.clone();
    }

    private EmvProcessingMethod(String str, int i, String str2) {
        this.method = str2;
    }

    public final String getMethod() {
        return this.method;
    }

    static {
        EmvProcessingMethod[] emvProcessingMethodArr$values = $values();
        $VALUES = emvProcessingMethodArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(emvProcessingMethodArr$values);
    }
}
