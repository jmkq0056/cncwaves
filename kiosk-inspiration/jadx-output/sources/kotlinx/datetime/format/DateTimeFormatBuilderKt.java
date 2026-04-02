package kotlinx.datetime.format;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import kotlinx.datetime.format.DateTimeFormatBuilder;
import kotlinx.datetime.internal.ToKotlinCodeKt;
import kotlinx.datetime.internal.format.AlternativesParsingFormatStructure;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.ConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.ConstantFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.NonConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.OptionalFormatStructure;
import kotlinx.datetime.internal.format.SignedFormatStructure;

/* JADX INFO: compiled from: DateTimeFormatBuilder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001ah\u0010\u0002\u001a\u00020\u0003\"\b\b\u0000\u0010\u0004*\u00020\u0005*\u0002H\u000424\u0010\u0006\u001a\u001b\u0012\u0017\b\u0001\u0012\u0013\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\b\t0\u0007\"\u0013\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\b\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\b\t¢\u0006\u0002\u0010\u000b\u001a6\u0010\f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\r2\u001c\u0010\u000e\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00110\u00100\u000fH\u0000\u001a\u0012\u0010\u0012\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014\u001a<\u0010\u0015\u001a\u00020\u0003\"\b\b\u0000\u0010\u0004*\u00020\u0005*\u0002H\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00012\u0017\u0010\u0017\u001a\u0013\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\b\t¢\u0006\u0002\u0010\u0018\u001a*\u0010\u0019\u001a\u00020\u0003*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000fH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"CODE_INDENT", "", "alternativeParsing", "", "T", "Lkotlinx/datetime/format/DateTimeFormatBuilder;", "alternativeFormats", "", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "primaryFormat", "(Lkotlinx/datetime/format/DateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "builderString", "Lkotlinx/datetime/internal/format/FormatStructure;", "constants", "", "Lkotlin/Pair;", "Lkotlinx/datetime/internal/format/CachedFormatStructure;", "char", "value", "", "optional", "ifZero", "format", "(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "secondFractionInternal", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;", "minLength", "", "maxLength", "grouping", "kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DateTimeFormatBuilderKt {
    private static final String CODE_INDENT = "    ";

    public static final void secondFractionInternal(DateTimeFormatBuilder.WithTime withTime, int i, int i2, List<Integer> grouping) {
        Intrinsics.checkNotNullParameter(withTime, "<this>");
        Intrinsics.checkNotNullParameter(grouping, "grouping");
        if (withTime instanceof AbstractWithTimeBuilder) {
            ((AbstractWithTimeBuilder) withTime).addFormatStructureForTime(new BasicFormatStructure(new FractionalSecondDirective(i, i2, grouping)));
        }
    }

    public static final <T extends DateTimeFormatBuilder> void alternativeParsing(T t, Function1<? super T, Unit>[] alternativeFormats, Function1<? super T, Unit> primaryFormat) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(alternativeFormats, "alternativeFormats");
        Intrinsics.checkNotNullParameter(primaryFormat, "primaryFormat");
        if (t instanceof AbstractDateTimeFormatBuilder) {
            ((AbstractDateTimeFormatBuilder) t).appendAlternativeParsingImpl((Function1[]) Arrays.copyOf(alternativeFormats, alternativeFormats.length), (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(primaryFormat, 1));
            return;
        }
        throw new IllegalStateException("impossible");
    }

    public static /* synthetic */ void optional$default(DateTimeFormatBuilder dateTimeFormatBuilder, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        optional(dateTimeFormatBuilder, str, function1);
    }

    public static final <T extends DateTimeFormatBuilder> void optional(T t, String ifZero, Function1<? super T, Unit> format) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(ifZero, "ifZero");
        Intrinsics.checkNotNullParameter(format, "format");
        if (t instanceof AbstractDateTimeFormatBuilder) {
            ((AbstractDateTimeFormatBuilder) t).appendOptionalImpl(ifZero, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(format, 1));
            return;
        }
        throw new IllegalStateException("impossible");
    }

    /* JADX INFO: renamed from: char, reason: not valid java name */
    public static final void m2416char(DateTimeFormatBuilder dateTimeFormatBuilder, char c) {
        Intrinsics.checkNotNullParameter(dateTimeFormatBuilder, "<this>");
        dateTimeFormatBuilder.chars(String.valueOf(c));
    }

    public static final <T> String builderString(FormatStructure<? super T> formatStructure, List<? extends Pair<String, ? extends CachedFormatStructure<?>>> constants) {
        Intrinsics.checkNotNullParameter(formatStructure, "<this>");
        Intrinsics.checkNotNullParameter(constants, "constants");
        if (formatStructure instanceof BasicFormatStructure) {
            return ((BasicFormatStructure) formatStructure).getDirective().getBuilderRepresentation();
        }
        if (formatStructure instanceof ConstantFormatStructure) {
            ConstantFormatStructure constantFormatStructure = (ConstantFormatStructure) formatStructure;
            if (constantFormatStructure.getString().length() == 1) {
                return "char(" + ToKotlinCodeKt.toKotlinCode(constantFormatStructure.getString().charAt(0)) + ')';
            }
            return "chars(" + ToKotlinCodeKt.toKotlinCode(constantFormatStructure.getString()) + ')';
        }
        if (formatStructure instanceof SignedFormatStructure) {
            SignedFormatStructure signedFormatStructure = (SignedFormatStructure) formatStructure;
            if ((signedFormatStructure.getFormat() instanceof BasicFormatStructure) && (((BasicFormatStructure) signedFormatStructure.getFormat()).getDirective() instanceof UtcOffsetWholeHoursDirective)) {
                return ((BasicFormatStructure) signedFormatStructure.getFormat()).getDirective().getBuilderRepresentation();
            }
            StringBuilder sb = new StringBuilder();
            if (signedFormatStructure.getWithPlusSign()) {
                StringBuilder sbAppend = sb.append("withSharedSign(outputPlus = true) {");
                Intrinsics.checkNotNullExpressionValue(sbAppend, "append(...)");
                Intrinsics.checkNotNullExpressionValue(sbAppend.append('\n'), "append(...)");
            } else {
                StringBuilder sbAppend2 = sb.append("withSharedSign {");
                Intrinsics.checkNotNullExpressionValue(sbAppend2, "append(...)");
                Intrinsics.checkNotNullExpressionValue(sbAppend2.append('\n'), "append(...)");
            }
            StringBuilder sbAppend3 = sb.append(StringsKt.prependIndent(builderString(signedFormatStructure.getFormat(), constants), CODE_INDENT));
            Intrinsics.checkNotNullExpressionValue(sbAppend3, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend3.append('\n'), "append(...)");
            sb.append("}");
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        if (formatStructure instanceof OptionalFormatStructure) {
            StringBuilder sb2 = new StringBuilder();
            OptionalFormatStructure optionalFormatStructure = (OptionalFormatStructure) formatStructure;
            if (Intrinsics.areEqual(optionalFormatStructure.getOnZero(), "")) {
                StringBuilder sbAppend4 = sb2.append("optional {");
                Intrinsics.checkNotNullExpressionValue(sbAppend4, "append(...)");
                Intrinsics.checkNotNullExpressionValue(sbAppend4.append('\n'), "append(...)");
            } else {
                StringBuilder sbAppend5 = sb2.append("optional(" + ToKotlinCodeKt.toKotlinCode(optionalFormatStructure.getOnZero()) + ") {");
                Intrinsics.checkNotNullExpressionValue(sbAppend5, "append(...)");
                Intrinsics.checkNotNullExpressionValue(sbAppend5.append('\n'), "append(...)");
            }
            String strBuilderString = builderString(optionalFormatStructure.getFormat(), constants);
            if (strBuilderString.length() > 0) {
                StringBuilder sbAppend6 = sb2.append(StringsKt.prependIndent(strBuilderString, CODE_INDENT));
                Intrinsics.checkNotNullExpressionValue(sbAppend6, "append(...)");
                Intrinsics.checkNotNullExpressionValue(sbAppend6.append('\n'), "append(...)");
            }
            sb2.append("}");
            String string2 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            return string2;
        }
        if (formatStructure instanceof AlternativesParsingFormatStructure) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("alternativeParsing(");
            AlternativesParsingFormatStructure alternativesParsingFormatStructure = (AlternativesParsingFormatStructure) formatStructure;
            for (FormatStructure<T> formatStructure2 : alternativesParsingFormatStructure.getFormats()) {
                StringBuilder sbAppend7 = sb3.append("{");
                Intrinsics.checkNotNullExpressionValue(sbAppend7, "append(...)");
                Intrinsics.checkNotNullExpressionValue(sbAppend7.append('\n'), "append(...)");
                String strBuilderString2 = builderString(formatStructure2, constants);
                if (strBuilderString2.length() > 0) {
                    StringBuilder sbAppend8 = sb3.append(StringsKt.prependIndent(strBuilderString2, CODE_INDENT));
                    Intrinsics.checkNotNullExpressionValue(sbAppend8, "append(...)");
                    Intrinsics.checkNotNullExpressionValue(sbAppend8.append('\n'), "append(...)");
                }
                sb3.append("}, ");
            }
            if (sb3.charAt(sb3.length() - 2) == ',') {
                for (int i = 0; i < 2; i++) {
                    Intrinsics.checkNotNullExpressionValue(sb3.deleteCharAt(sb3.length() - 1), "deleteCharAt(...)");
                }
            }
            StringBuilder sbAppend9 = sb3.append(") {");
            Intrinsics.checkNotNullExpressionValue(sbAppend9, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend9.append('\n'), "append(...)");
            StringBuilder sbAppend10 = sb3.append(StringsKt.prependIndent(builderString(alternativesParsingFormatStructure.getMainFormat(), constants), CODE_INDENT));
            Intrinsics.checkNotNullExpressionValue(sbAppend10, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend10.append('\n'), "append(...)");
            sb3.append("}");
            String string3 = sb3.toString();
            Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
            return string3;
        }
        if (!(formatStructure instanceof ConcatenatedFormatStructure)) {
            throw new NoWhenBranchMatchedException();
        }
        StringBuilder sb4 = new StringBuilder();
        ConcatenatedFormatStructure concatenatedFormatStructure = (ConcatenatedFormatStructure) formatStructure;
        if (!concatenatedFormatStructure.getFormats().isEmpty()) {
            int size = 0;
            while (size < concatenatedFormatStructure.getFormats().size()) {
                Iterator<? extends Pair<String, ? extends CachedFormatStructure<?>>> it = constants.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Pair<String, ? extends CachedFormatStructure<?>> next = it.next();
                        List<NonConcatenatedFormatStructure<?>> formats = next.getSecond().getFormats();
                        if (concatenatedFormatStructure.getFormats().size() - size >= formats.size()) {
                            int size2 = formats.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                if (!Intrinsics.areEqual(concatenatedFormatStructure.getFormats().get(size + i2), formats.get(i2))) {
                                    break;
                                }
                            }
                            sb4.append(next.getFirst());
                            size += formats.size();
                            if (size < concatenatedFormatStructure.getFormats().size()) {
                                Intrinsics.checkNotNullExpressionValue(sb4.append('\n'), "append(...)");
                            }
                        }
                    } else {
                        if (size == concatenatedFormatStructure.getFormats().size() - 1) {
                            sb4.append(builderString((FormatStructure) CollectionsKt.last((List) concatenatedFormatStructure.getFormats()), constants));
                        } else {
                            StringBuilder sbAppend11 = sb4.append(builderString(concatenatedFormatStructure.getFormats().get(size), constants));
                            Intrinsics.checkNotNullExpressionValue(sbAppend11, "append(...)");
                            Intrinsics.checkNotNullExpressionValue(sbAppend11.append('\n'), "append(...)");
                        }
                        size++;
                    }
                }
            }
        }
        String string4 = sb4.toString();
        Intrinsics.checkNotNullExpressionValue(string4, "toString(...)");
        return string4;
    }
}
