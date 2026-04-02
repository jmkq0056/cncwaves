package com.stripe.currency;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AmountExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", "Lcom/stripe/currency/Amount;", "getCurrencyCode", "(Lcom/stripe/currency/Amount;)Ljava/lang/String;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class AmountExtensionsKt {
    public static final String getCurrencyCode(Amount amount) {
        Intrinsics.checkNotNullParameter(amount, "<this>");
        String strName = amount.getCurrency().name();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = strName.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
