package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CollectionCompletedModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;", "", "(Ljava/lang/String;I)V", "TRANSACTION_NOT_PROCESSED", "TRANSACTION_TIMED_OUT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionTimeoutResultDetails {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentCollectionTimeoutResultDetails[] $VALUES;
    public static final PaymentCollectionTimeoutResultDetails TRANSACTION_NOT_PROCESSED = new PaymentCollectionTimeoutResultDetails("TRANSACTION_NOT_PROCESSED", 0);
    public static final PaymentCollectionTimeoutResultDetails TRANSACTION_TIMED_OUT = new PaymentCollectionTimeoutResultDetails("TRANSACTION_TIMED_OUT", 1);

    private static final /* synthetic */ PaymentCollectionTimeoutResultDetails[] $values() {
        return new PaymentCollectionTimeoutResultDetails[]{TRANSACTION_NOT_PROCESSED, TRANSACTION_TIMED_OUT};
    }

    public static EnumEntries<PaymentCollectionTimeoutResultDetails> getEntries() {
        return $ENTRIES;
    }

    public static PaymentCollectionTimeoutResultDetails valueOf(String str) {
        return (PaymentCollectionTimeoutResultDetails) Enum.valueOf(PaymentCollectionTimeoutResultDetails.class, str);
    }

    public static PaymentCollectionTimeoutResultDetails[] values() {
        return (PaymentCollectionTimeoutResultDetails[]) $VALUES.clone();
    }

    private PaymentCollectionTimeoutResultDetails(String str, int i) {
    }

    static {
        PaymentCollectionTimeoutResultDetails[] paymentCollectionTimeoutResultDetailsArr$values = $values();
        $VALUES = paymentCollectionTimeoutResultDetailsArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentCollectionTimeoutResultDetailsArr$values);
    }
}
