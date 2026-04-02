package com.stripe.currency;

import kotlin.Metadata;

/* JADX INFO: compiled from: Amount.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"QUICK_EMV_AMOUNT", "Lcom/stripe/currency/Amount;", "getQUICK_EMV_AMOUNT", "()Lcom/stripe/currency/Amount;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class AmountKt {
    private static final Amount QUICK_EMV_AMOUNT = new Amount(5001, CurrencyCode.USD);

    public static final Amount getQUICK_EMV_AMOUNT() {
        return QUICK_EMV_AMOUNT;
    }
}
