package kotlinx.datetime.internal;

import kotlin.Metadata;

/* JADX INFO: compiled from: util.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000¨\u0006\u0005"}, d2 = {"asciiDigitToInt", "", "", "isAsciiDigit", "", "kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UtilKt {
    public static final int asciiDigitToInt(char c) {
        return c - '0';
    }

    public static final boolean isAsciiDigit(char c) {
        return '0' <= c && c < ':';
    }
}
