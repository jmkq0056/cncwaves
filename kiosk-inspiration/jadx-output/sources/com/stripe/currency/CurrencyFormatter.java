package com.stripe.currency;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CurrencyFormatter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bJ\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bJ*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\u000f"}, d2 = {"Lcom/stripe/currency/CurrencyFormatter;", "", "()V", "format", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "locale", "Ljava/util/Locale;", "", FirebaseAnalytics.Param.CURRENCY, "Lcom/stripe/currency/CurrencyCode;", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "decimals", "", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CurrencyFormatter {
    @Inject
    public CurrencyFormatter() {
    }

    public static /* synthetic */ String format$default(CurrencyFormatter currencyFormatter, long j, CurrencyCode currencyCode, Locale locale, int i, Object obj) {
        if ((i & 4) != 0) {
            locale = null;
        }
        return currencyFormatter.format(j, currencyCode, locale);
    }

    public final String format(long amount, CurrencyCode currency, Locale locale) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        return format(amount, currency.name(), currency.getMinorUnit(), locale);
    }

    public static /* synthetic */ String format$default(CurrencyFormatter currencyFormatter, Amount amount, Locale locale, int i, Object obj) {
        if ((i & 2) != 0) {
            locale = null;
        }
        return currencyFormatter.format(amount, locale);
    }

    public final String format(Amount amount, Locale locale) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return format(amount.getValue(), amount.getCurrency(), locale);
    }

    public static /* synthetic */ String format$default(CurrencyFormatter currencyFormatter, long j, String str, int i, Locale locale, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            locale = null;
        }
        return currencyFormatter.format(j, str, i, locale);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[Catch: IllegalArgumentException -> 0x004e, TryCatch #0 {IllegalArgumentException -> 0x004e, blocks: (B:10:0x0023, B:13:0x002d, B:12:0x0029), top: B:17:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String format(long r2, java.lang.String r4, int r5, java.util.Locale r6) {
        /*
            r1 = this;
            java.lang.String r0 = "currencyCode"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            if (r5 >= 0) goto L8
            r5 = 0
        L8:
            java.math.BigDecimal r2 = java.math.BigDecimal.valueOf(r2)
            java.lang.String r3 = "valueOf(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            java.math.BigDecimal r2 = r2.movePointLeft(r5)
            int r3 = r2.signum()
            r5 = -1
            if (r3 != r5) goto L1f
            java.lang.String r3 = "-"
            goto L21
        L1f:
            java.lang.String r3 = ""
        L21:
            if (r6 == 0) goto L29
            java.text.NumberFormat r5 = java.text.NumberFormat.getCurrencyInstance(r6)     // Catch: java.lang.IllegalArgumentException -> L4e
            if (r5 != 0) goto L2d
        L29:
            java.text.NumberFormat r5 = java.text.NumberFormat.getCurrencyInstance()     // Catch: java.lang.IllegalArgumentException -> L4e
        L2d:
            java.util.Currency r6 = java.util.Currency.getInstance(r4)     // Catch: java.lang.IllegalArgumentException -> L4e
            r5.setCurrency(r6)     // Catch: java.lang.IllegalArgumentException -> L4e
            java.math.BigDecimal r6 = r2.abs()     // Catch: java.lang.IllegalArgumentException -> L4e
            java.lang.String r5 = r5.format(r6)     // Catch: java.lang.IllegalArgumentException -> L4e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L4e
            r6.<init>()     // Catch: java.lang.IllegalArgumentException -> L4e
            java.lang.StringBuilder r6 = r6.append(r3)     // Catch: java.lang.IllegalArgumentException -> L4e
            java.lang.StringBuilder r5 = r6.append(r5)     // Catch: java.lang.IllegalArgumentException -> L4e
            java.lang.String r2 = r5.toString()     // Catch: java.lang.IllegalArgumentException -> L4e
            return r2
        L4e:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.StringBuilder r3 = r5.append(r3)
            java.util.Locale r5 = java.util.Locale.ROOT
            java.lang.String r4 = r4.toUpperCase(r5)
            java.lang.String r5 = "toUpperCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            java.lang.StringBuilder r3 = r3.append(r4)
            r4 = 32
            java.lang.StringBuilder r3 = r3.append(r4)
            java.math.BigDecimal r2 = r2.abs()
            java.lang.StringBuilder r2 = r3.append(r2)
            java.lang.String r2 = r2.toString()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.currency.CurrencyFormatter.format(long, java.lang.String, int, java.util.Locale):java.lang.String");
    }
}
