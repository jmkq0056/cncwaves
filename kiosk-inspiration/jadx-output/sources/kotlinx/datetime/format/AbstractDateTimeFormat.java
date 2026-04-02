package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.datetime.internal.format.parser.ParseException;
import kotlinx.datetime.internal.format.parser.Parser;

/* JADX INFO: compiled from: DateTimeFormat.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u000e\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0010J+\u0010\u0011\u001a\u0002H\u0012\"\f\b\u0002\u0010\u0012*\u00060\u0013j\u0002`\u00142\u0006\u0010\u0015\u001a\u0002H\u00122\u0006\u0010\u000f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0018J\u0015\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0002\u0010\u001cJ\u0017\u0010\u001d\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0002\u0010\u001cJ\u0015\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00028\u0001H&¢\u0006\u0002\u0010 J\u0017\u0010!\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001f\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010 R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00028\u0001X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0001\u0005\"#$%&¨\u0006'"}, d2 = {"Lkotlinx/datetime/format/AbstractDateTimeFormat;", "T", "U", "Lkotlinx/datetime/internal/format/parser/Copyable;", "Lkotlinx/datetime/format/DateTimeFormat;", "()V", "actualFormat", "Lkotlinx/datetime/internal/format/CachedFormatStructure;", "getActualFormat", "()Lkotlinx/datetime/internal/format/CachedFormatStructure;", "emptyIntermediate", "getEmptyIntermediate", "()Lkotlinx/datetime/internal/format/parser/Copyable;", "format", "", "value", "(Ljava/lang/Object;)Ljava/lang/String;", "formatTo", "A", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "appendable", "(Ljava/lang/Appendable;Ljava/lang/Object;)Ljava/lang/Appendable;", "intermediateFromValue", "(Ljava/lang/Object;)Lkotlinx/datetime/internal/format/parser/Copyable;", "parse", "input", "", "(Ljava/lang/CharSequence;)Ljava/lang/Object;", "parseOrNull", "valueFromIntermediate", "intermediate", "(Lkotlinx/datetime/internal/format/parser/Copyable;)Ljava/lang/Object;", "valueFromIntermediateOrNull", "Lkotlinx/datetime/format/DateTimeComponentsFormat;", "Lkotlinx/datetime/format/LocalDateFormat;", "Lkotlinx/datetime/format/LocalDateTimeFormat;", "Lkotlinx/datetime/format/LocalTimeFormat;", "Lkotlinx/datetime/format/UtcOffsetFormat;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AbstractDateTimeFormat<T, U extends Copyable<U>> implements DateTimeFormat<T> {
    public /* synthetic */ AbstractDateTimeFormat(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract CachedFormatStructure<U> getActualFormat();

    public abstract U getEmptyIntermediate();

    public abstract U intermediateFromValue(T value);

    public abstract T valueFromIntermediate(U intermediate);

    private AbstractDateTimeFormat() {
    }

    public T valueFromIntermediateOrNull(U intermediate) {
        Intrinsics.checkNotNullParameter(intermediate, "intermediate");
        try {
            return valueFromIntermediate(intermediate);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // kotlinx.datetime.format.DateTimeFormat
    public String format(T value) {
        StringBuilder sb = new StringBuilder();
        FormatterStructure.DefaultImpls.format$default(getActualFormat().formatter(), intermediateFromValue(value), sb, false, 4, null);
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // kotlinx.datetime.format.DateTimeFormat
    public <A extends Appendable> A formatTo(A appendable, T value) {
        Intrinsics.checkNotNullParameter(appendable, "appendable");
        FormatterStructure.DefaultImpls.format$default(getActualFormat().formatter(), intermediateFromValue(value), appendable, false, 4, null);
        return appendable;
    }

    @Override // kotlinx.datetime.format.DateTimeFormat
    public T parse(CharSequence input) {
        CharSequence charSequence;
        String str;
        Intrinsics.checkNotNullParameter(input, "input");
        try {
            charSequence = input;
        } catch (ParseException e) {
            e = e;
            charSequence = input;
        }
        try {
            try {
                return valueFromIntermediate(Parser.m2440matchimpl$default(Parser.m2435constructorimpl(getActualFormat().parser()), charSequence, getEmptyIntermediate(), 0, 4, null));
            } catch (IllegalArgumentException e2) {
                String message = e2.getMessage();
                if (message == null) {
                    str = "The value parsed from '" + ((Object) charSequence) + "' is invalid";
                } else {
                    str = message + " (when parsing '" + ((Object) charSequence) + "')";
                }
                throw new DateTimeFormatException(str, e2);
            }
        } catch (ParseException e3) {
            e = e3;
            throw new DateTimeFormatException("Failed to parse value from '" + ((Object) charSequence) + '\'', e);
        }
    }

    @Override // kotlinx.datetime.format.DateTimeFormat
    public T parseOrNull(CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Copyable copyableM2442matchOrNullimpl$default = Parser.m2442matchOrNullimpl$default(Parser.m2435constructorimpl(getActualFormat().parser()), input, getEmptyIntermediate(), 0, 4, null);
        if (copyableM2442matchOrNullimpl$default != null) {
            return valueFromIntermediateOrNull(copyableM2442matchOrNullimpl$default);
        }
        return null;
    }
}
