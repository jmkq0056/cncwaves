package com.stripe.core.locale;

import java.util.List;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: compiled from: LocaleManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0003H&J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005H&J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/locale/LocaleManager;", "", "getFirstSupportedISO6391Code", "", "isoCodes", "", "getPreferredLocaleFromISO6391Code", "Ljava/util/Locale;", "isoCode", "getSupportedLocales", "isLocaleUpdateNeeded", "", "currentLocale", "newLocale", "locale_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LocaleManager {
    String getFirstSupportedISO6391Code(List<String> isoCodes);

    Locale getPreferredLocaleFromISO6391Code(String isoCode);

    List<Locale> getSupportedLocales();

    boolean isLocaleUpdateNeeded(Locale currentLocale, Locale newLocale);
}
