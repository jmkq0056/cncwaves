package com.stripe.core.hardware.reactive.emv;

import com.stripe.currency.CountryCode;
import com.stripe.proto.model.config.VectorRegionalConfiguration;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: VectorRegionalConfigurationExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toCountryCode", "", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "hardware-reactive_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class VectorRegionalConfigurationExtKt {
    public static final String toCountryCode(VectorRegionalConfiguration vectorRegionalConfiguration) {
        Object objM817constructorimpl;
        String string;
        Intrinsics.checkNotNullParameter(vectorRegionalConfiguration, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            CountryCode.Companion companion2 = CountryCode.INSTANCE;
            String upperCase = vectorRegionalConfiguration.region.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            CountryCode byAlpha2Code = companion2.getByAlpha2Code(upperCase);
            objM817constructorimpl = Result.m817constructorimpl((byAlpha2Code == null || (string = Integer.valueOf(byAlpha2Code.getNumeric()).toString()) == null) ? null : StringsKt.padStart(string, 4, '0'));
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m823isFailureimpl(objM817constructorimpl) ? null : objM817constructorimpl);
    }
}
