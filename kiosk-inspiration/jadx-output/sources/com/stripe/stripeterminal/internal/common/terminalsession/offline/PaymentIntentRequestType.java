package com.stripe.stripeterminal.internal.common.terminalsession.offline;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: OfflineData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;", "", "(Ljava/lang/String;I)V", "CREATE_PAYMENT_INTENT", "PROCESS_PAYMENT_INTENT", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentIntentRequestType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentIntentRequestType[] $VALUES;
    public static final PaymentIntentRequestType CREATE_PAYMENT_INTENT = new PaymentIntentRequestType("CREATE_PAYMENT_INTENT", 0);
    public static final PaymentIntentRequestType PROCESS_PAYMENT_INTENT = new PaymentIntentRequestType("PROCESS_PAYMENT_INTENT", 1);

    private static final /* synthetic */ PaymentIntentRequestType[] $values() {
        return new PaymentIntentRequestType[]{CREATE_PAYMENT_INTENT, PROCESS_PAYMENT_INTENT};
    }

    public static EnumEntries<PaymentIntentRequestType> getEntries() {
        return $ENTRIES;
    }

    public static PaymentIntentRequestType valueOf(String str) {
        return (PaymentIntentRequestType) Enum.valueOf(PaymentIntentRequestType.class, str);
    }

    public static PaymentIntentRequestType[] values() {
        return (PaymentIntentRequestType[]) $VALUES.clone();
    }

    private PaymentIntentRequestType(String str, int i) {
    }

    static {
        PaymentIntentRequestType[] paymentIntentRequestTypeArr$values = $values();
        $VALUES = paymentIntentRequestTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentIntentRequestTypeArr$values);
    }
}
