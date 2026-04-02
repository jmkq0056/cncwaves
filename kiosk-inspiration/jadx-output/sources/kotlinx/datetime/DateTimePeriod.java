package kotlinx.datetime;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import io.ktor.util.date.GMTDateParser;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.datetime.internal.DateCalculationsKt;
import kotlinx.datetime.serializers.DateTimePeriodIso8601Serializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: DateTimePeriod.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000  2\u00020\u0001:\u0001 B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\u0013\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0006R\u0012\u0010\u0011\u001a\u00020\u0004X \u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0006R\u0012\u0010\u0013\u001a\u00020\u0014X \u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0006\u0082\u0001\u0002!\"¨\u0006#"}, d2 = {"Lkotlinx/datetime/DateTimePeriod;", "", "()V", "days", "", "getDays", "()I", "hours", "getHours", "minutes", "getMinutes", "months", "getMonths", "nanoseconds", "getNanoseconds", "seconds", "getSeconds", "totalMonths", "getTotalMonths$kotlinx_datetime", "totalNanoseconds", "", "getTotalNanoseconds$kotlinx_datetime", "()J", "years", "getYears", "allNonpositive", "", "equals", "other", "hashCode", "toString", "", "Companion", "Lkotlinx/datetime/DatePeriod;", "Lkotlinx/datetime/DateTimePeriodImpl;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = DateTimePeriodIso8601Serializer.class)
public abstract class DateTimePeriod {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ DateTimePeriod(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract int getDays();

    public abstract int getTotalMonths$kotlinx_datetime();

    public abstract long getTotalNanoseconds$kotlinx_datetime();

    private DateTimePeriod() {
    }

    public final int getYears() {
        return getTotalMonths$kotlinx_datetime() / 12;
    }

    public final int getMonths() {
        return getTotalMonths$kotlinx_datetime() % 12;
    }

    public int getHours() {
        return (int) (getTotalNanoseconds$kotlinx_datetime() / DateCalculationsKt.NANOS_PER_HOUR);
    }

    public int getMinutes() {
        return (int) ((getTotalNanoseconds$kotlinx_datetime() % DateCalculationsKt.NANOS_PER_HOUR) / DateCalculationsKt.NANOS_PER_MINUTE);
    }

    public int getSeconds() {
        return (int) ((getTotalNanoseconds$kotlinx_datetime() % DateCalculationsKt.NANOS_PER_MINUTE) / ((long) 1000000000));
    }

    public int getNanoseconds() {
        return (int) (getTotalNanoseconds$kotlinx_datetime() % ((long) 1000000000));
    }

    private final boolean allNonpositive() {
        if (getTotalMonths$kotlinx_datetime() > 0 || getDays() > 0 || getTotalNanoseconds$kotlinx_datetime() > 0) {
            return false;
        }
        return ((getTotalMonths$kotlinx_datetime() | getDays()) == 0 && getTotalNanoseconds$kotlinx_datetime() == 0) ? false : true;
    }

    public String toString() {
        int i;
        String strValueOf;
        StringBuilder sb = new StringBuilder();
        if (allNonpositive()) {
            sb.append('-');
            i = -1;
        } else {
            i = 1;
        }
        sb.append('P');
        if (getYears() != 0) {
            sb.append(getYears() * i).append(GMTDateParser.YEAR);
        }
        if (getMonths() != 0) {
            sb.append(getMonths() * i).append(GMTDateParser.MONTH);
        }
        if (getDays() != 0) {
            sb.append(getDays() * i).append('D');
        }
        String str = "";
        String str2 = "T";
        if (getHours() != 0) {
            sb.append("T").append(getHours() * i).append('H');
            str2 = "";
        }
        if (getMinutes() != 0) {
            sb.append(str2).append(getMinutes() * i).append(GMTDateParser.MONTH);
        } else {
            str = str2;
        }
        if ((getSeconds() | getNanoseconds()) != 0) {
            sb.append(str);
            if (getSeconds() != 0) {
                strValueOf = Integer.valueOf(getSeconds() * i);
            } else {
                strValueOf = getNanoseconds() * i < 0 ? "-0" : TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            sb.append(strValueOf);
            if (getNanoseconds() != 0) {
                sb.append('.').append(StringsKt.padStart(String.valueOf(Math.abs(getNanoseconds())), 9, '0'));
            }
            sb.append('S');
        }
        if (sb.length() == 1) {
            sb.append("0D");
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DateTimePeriod)) {
            return false;
        }
        DateTimePeriod dateTimePeriod = (DateTimePeriod) other;
        return getTotalMonths$kotlinx_datetime() == dateTimePeriod.getTotalMonths$kotlinx_datetime() && getDays() == dateTimePeriod.getDays() && getTotalNanoseconds$kotlinx_datetime() == dateTimePeriod.getTotalNanoseconds$kotlinx_datetime();
    }

    public int hashCode() {
        return (((getTotalMonths$kotlinx_datetime() * 31) + getDays()) * 31) + Long.hashCode(getTotalNanoseconds$kotlinx_datetime());
    }

    /* JADX INFO: compiled from: DateTimePeriod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bHÆ\u0001¨\u0006\t"}, d2 = {"Lkotlinx/datetime/DateTimePeriod$Companion;", "", "()V", "parse", "Lkotlinx/datetime/DateTimePeriod;", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "", "serializer", "Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<DateTimePeriod> serializer() {
            return DateTimePeriodIso8601Serializer.INSTANCE;
        }

        private static final Void parse$parseException(String str, int i) {
            throw new DateTimeFormatException("Parse error at char " + i + ": " + str);
        }

        /* JADX WARN: Removed duplicated region for block: B:195:0x0321 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:220:0x0190 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x019c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlinx.datetime.DateTimePeriod parse(java.lang.String r23) {
            /*
                Method dump skipped, instruction units count: 810
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.datetime.DateTimePeriod.Companion.parse(java.lang.String):kotlinx.datetime.DateTimePeriod");
        }

        private static final int parse$toIntThrowing(long j, int i, char c) {
            if (j >= -2147483648L && j <= 2147483647L) {
                return (int) j;
            }
            parse$parseException("Value " + j + " does not fit into an Int, which is required for component '" + c + '\'', i);
            throw new KotlinNothingValueException();
        }
    }
}
