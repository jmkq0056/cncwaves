package com.stripe.strings;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: StringsExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0005\u001a\n\u0010\u0007\u001a\u00020\u0003*\u00020\u0005\u001a\n\u0010\b\u001a\u00020\u0005*\u00020\u0005\u001a\n\u0010\t\u001a\u00020\u0005*\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"WhiteSpacePattern", "Lkotlin/text/Regex;", "containsWhiteSpace", "", TypedValues.Custom.S_STRING, "", "escape", "isSurroundedInDoubleQuotes", "removeSurroundingDoubleQuotes", "surroundInDoubleQuotes", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class StringsExtKt {
    private static final Regex WhiteSpacePattern = new Regex("\\s");

    public static final boolean isSurroundedInDoubleQuotes(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.length() >= 2 && StringsKt.startsWith$default(str, "\"", false, 2, (Object) null) && StringsKt.endsWith$default(str, "\"", false, 2, (Object) null);
    }

    public static final String surroundInDoubleQuotes(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return "\"" + str + '\"';
    }

    public static final String removeSurroundingDoubleQuotes(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.removeSurrounding(str, (CharSequence) "\"");
    }

    public static final String escape(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return containsWhiteSpace(str) ? "\"" + str + '\"' : str;
    }

    private static final boolean containsWhiteSpace(String str) {
        return WhiteSpacePattern.containsMatchIn(str);
    }
}
