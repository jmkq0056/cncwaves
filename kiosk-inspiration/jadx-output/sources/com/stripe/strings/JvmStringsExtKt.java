package com.stripe.strings;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: JvmStringsExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0005"}, d2 = {"capitalized", "", "locale", "Ljava/util/Locale;", "titleCase", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class JvmStringsExtKt {
    public static final String titleCase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return CollectionsKt.joinToString$default(StringsKt.split$default((CharSequence) str, new char[]{TokenParser.SP}, false, 0, 6, (Object) null), " ", null, null, 0, null, new Function1<String, CharSequence>() { // from class: com.stripe.strings.JvmStringsExtKt.titleCase.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(String word) {
                Intrinsics.checkNotNullParameter(word, "word");
                return JvmStringsExtKt.capitalized$default(word, null, 1, null);
            }
        }, 30, null);
    }

    public static /* synthetic */ String capitalized$default(String str, Locale locale, int i, Object obj) {
        if ((i & 1) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        }
        return capitalized(str, locale);
    }

    public static final String capitalized(String str, Locale locale) {
        String strValueOf;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        if (Character.isLowerCase(cCharAt)) {
            strValueOf = CharsKt.titlecase(cCharAt, locale);
        } else {
            strValueOf = String.valueOf(cCharAt);
        }
        StringBuilder sbAppend = sb.append((Object) strValueOf);
        String strSubstring = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return sbAppend.append(strSubstring).toString();
    }
}
