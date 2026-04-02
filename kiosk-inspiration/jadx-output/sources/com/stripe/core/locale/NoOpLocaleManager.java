package com.stripe.core.locale;

import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NoOpLocaleManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016¨\u0006\u000f"}, d2 = {"Lcom/stripe/core/locale/NoOpLocaleManager;", "Lcom/stripe/core/locale/LocaleManager;", "()V", "getFirstSupportedISO6391Code", "", "isoCodes", "", "getPreferredLocaleFromISO6391Code", "Ljava/util/Locale;", "isoCode", "getSupportedLocales", "isLocaleUpdateNeeded", "", "currentLocale", "newLocale", "locale_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NoOpLocaleManager implements LocaleManager {
    @Override // com.stripe.core.locale.LocaleManager
    public String getFirstSupportedISO6391Code(List<String> isoCodes) {
        Intrinsics.checkNotNullParameter(isoCodes, "isoCodes");
        return null;
    }

    @Override // com.stripe.core.locale.LocaleManager
    public Locale getPreferredLocaleFromISO6391Code(String isoCode) {
        Intrinsics.checkNotNullParameter(isoCode, "isoCode");
        return null;
    }

    @Override // com.stripe.core.locale.LocaleManager
    public boolean isLocaleUpdateNeeded(Locale currentLocale, Locale newLocale) {
        Intrinsics.checkNotNullParameter(currentLocale, "currentLocale");
        Intrinsics.checkNotNullParameter(newLocale, "newLocale");
        return false;
    }

    @Override // com.stripe.core.locale.LocaleManager
    public List<Locale> getSupportedLocales() {
        return CollectionsKt.emptyList();
    }
}
