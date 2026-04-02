package kotlinx.datetime.internal;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import kotlin.Metadata;

/* JADX INFO: compiled from: mathJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\u0006"}, d2 = {"safeAdd", "", "a", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, "", "safeMultiply", "kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class MathJvmKt {
    public static final long safeMultiply(long j, long j2) {
        return Math.multiplyExact(j, j2);
    }

    public static final int safeMultiply(int i, int i2) {
        return Math.multiplyExact(i, i2);
    }

    public static final int safeAdd(int i, int i2) {
        return Math.addExact(i, i2);
    }

    public static final long safeAdd(long j, long j2) {
        return Math.addExact(j, j2);
    }
}
