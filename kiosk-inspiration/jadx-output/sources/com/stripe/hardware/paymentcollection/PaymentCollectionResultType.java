package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CollectionCompletedModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;", "", "(Ljava/lang/String;I)V", "SUCCESS", "CANCELLED", "DEVICE_FAILURE", "DEVICE_DECLINED", "ONLINE_CONFIRMATION_DECLINED", "ONLINE_CONFIRMATION_UNKNOWN_FAILURE", "SCA_NEEDED", "TIMEOUT", "NOT_FINISHED", "COLLECT_PAYMENT_METHOD_API_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionResultType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentCollectionResultType[] $VALUES;
    public static final PaymentCollectionResultType SUCCESS = new PaymentCollectionResultType("SUCCESS", 0);
    public static final PaymentCollectionResultType CANCELLED = new PaymentCollectionResultType("CANCELLED", 1);
    public static final PaymentCollectionResultType DEVICE_FAILURE = new PaymentCollectionResultType("DEVICE_FAILURE", 2);
    public static final PaymentCollectionResultType DEVICE_DECLINED = new PaymentCollectionResultType("DEVICE_DECLINED", 3);
    public static final PaymentCollectionResultType ONLINE_CONFIRMATION_DECLINED = new PaymentCollectionResultType("ONLINE_CONFIRMATION_DECLINED", 4);
    public static final PaymentCollectionResultType ONLINE_CONFIRMATION_UNKNOWN_FAILURE = new PaymentCollectionResultType("ONLINE_CONFIRMATION_UNKNOWN_FAILURE", 5);
    public static final PaymentCollectionResultType SCA_NEEDED = new PaymentCollectionResultType("SCA_NEEDED", 6);
    public static final PaymentCollectionResultType TIMEOUT = new PaymentCollectionResultType("TIMEOUT", 7);
    public static final PaymentCollectionResultType NOT_FINISHED = new PaymentCollectionResultType("NOT_FINISHED", 8);
    public static final PaymentCollectionResultType COLLECT_PAYMENT_METHOD_API_ERROR = new PaymentCollectionResultType("COLLECT_PAYMENT_METHOD_API_ERROR", 9);

    private static final /* synthetic */ PaymentCollectionResultType[] $values() {
        return new PaymentCollectionResultType[]{SUCCESS, CANCELLED, DEVICE_FAILURE, DEVICE_DECLINED, ONLINE_CONFIRMATION_DECLINED, ONLINE_CONFIRMATION_UNKNOWN_FAILURE, SCA_NEEDED, TIMEOUT, NOT_FINISHED, COLLECT_PAYMENT_METHOD_API_ERROR};
    }

    public static EnumEntries<PaymentCollectionResultType> getEntries() {
        return $ENTRIES;
    }

    public static PaymentCollectionResultType valueOf(String str) {
        return (PaymentCollectionResultType) Enum.valueOf(PaymentCollectionResultType.class, str);
    }

    public static PaymentCollectionResultType[] values() {
        return (PaymentCollectionResultType[]) $VALUES.clone();
    }

    private PaymentCollectionResultType(String str, int i) {
    }

    static {
        PaymentCollectionResultType[] paymentCollectionResultTypeArr$values = $values();
        $VALUES = paymentCollectionResultTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentCollectionResultTypeArr$values);
    }
}
