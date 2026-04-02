package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PaymentStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "", "(Ljava/lang/String;I)V", "NOT_READY", "READY", "WAITING_FOR_INPUT", "PROCESSING", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentStatus[] $VALUES;
    public static final PaymentStatus NOT_READY = new PaymentStatus("NOT_READY", 0);
    public static final PaymentStatus READY = new PaymentStatus("READY", 1);
    public static final PaymentStatus WAITING_FOR_INPUT = new PaymentStatus("WAITING_FOR_INPUT", 2);
    public static final PaymentStatus PROCESSING = new PaymentStatus("PROCESSING", 3);

    private static final /* synthetic */ PaymentStatus[] $values() {
        return new PaymentStatus[]{NOT_READY, READY, WAITING_FOR_INPUT, PROCESSING};
    }

    public static EnumEntries<PaymentStatus> getEntries() {
        return $ENTRIES;
    }

    public static PaymentStatus valueOf(String str) {
        return (PaymentStatus) Enum.valueOf(PaymentStatus.class, str);
    }

    public static PaymentStatus[] values() {
        return (PaymentStatus[]) $VALUES.clone();
    }

    private PaymentStatus(String str, int i) {
    }

    static {
        PaymentStatus[] paymentStatusArr$values = $values();
        $VALUES = paymentStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentStatusArr$values);
    }
}
