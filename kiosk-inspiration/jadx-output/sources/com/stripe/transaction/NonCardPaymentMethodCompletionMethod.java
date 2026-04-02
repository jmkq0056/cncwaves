package com.stripe.transaction;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: NonCardPaymentMethodCompletionMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;", "", "(Ljava/lang/String;I)V", "NOT_APPLICABLE", "POLLING", "IOT_MESSAGE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NonCardPaymentMethodCompletionMethod {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NonCardPaymentMethodCompletionMethod[] $VALUES;
    public static final NonCardPaymentMethodCompletionMethod NOT_APPLICABLE = new NonCardPaymentMethodCompletionMethod("NOT_APPLICABLE", 0);
    public static final NonCardPaymentMethodCompletionMethod POLLING = new NonCardPaymentMethodCompletionMethod("POLLING", 1);
    public static final NonCardPaymentMethodCompletionMethod IOT_MESSAGE = new NonCardPaymentMethodCompletionMethod("IOT_MESSAGE", 2);

    private static final /* synthetic */ NonCardPaymentMethodCompletionMethod[] $values() {
        return new NonCardPaymentMethodCompletionMethod[]{NOT_APPLICABLE, POLLING, IOT_MESSAGE};
    }

    public static EnumEntries<NonCardPaymentMethodCompletionMethod> getEntries() {
        return $ENTRIES;
    }

    public static NonCardPaymentMethodCompletionMethod valueOf(String str) {
        return (NonCardPaymentMethodCompletionMethod) Enum.valueOf(NonCardPaymentMethodCompletionMethod.class, str);
    }

    public static NonCardPaymentMethodCompletionMethod[] values() {
        return (NonCardPaymentMethodCompletionMethod[]) $VALUES.clone();
    }

    private NonCardPaymentMethodCompletionMethod(String str, int i) {
    }

    static {
        NonCardPaymentMethodCompletionMethod[] nonCardPaymentMethodCompletionMethodArr$values = $values();
        $VALUES = nonCardPaymentMethodCompletionMethodArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(nonCardPaymentMethodCompletionMethodArr$values);
    }
}
