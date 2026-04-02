package kotlinx.datetime;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.time.DateTimeException;
import java.time.temporal.ChronoUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.datetime.internal.MathJvmKt;
import kotlinx.datetime.internal.MathKt;

/* JADX INFO: compiled from: LocalDate.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\b\u001a\u001a\u0010\n\u001a\u00020\b*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r\u001a\u0012\u0010\u000e\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\b\u001a\u0012\u0010\u000f\u001a\u00020\u0010*\u00020\b2\u0006\u0010\t\u001a\u00020\b\u001a\u001a\u0010\u0011\u001a\u00020\b*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r\u001a\u001a\u0010\u0011\u001a\u00020\b*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0010H\u0086\u0002\u001a\u0014\u0010\u0011\u001a\u00020\b*\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0007\u001a\u001a\u0010\u0013\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r\u001a\u0012\u0010\u0014\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"maxEpochDay", "", "minEpochDay", "ofEpochDayChecked", "Ljava/time/LocalDate;", "epochDay", "daysUntil", "", "Lkotlinx/datetime/LocalDate;", "other", "minus", "value", "unit", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "monthsUntil", "periodUntil", "Lkotlinx/datetime/DatePeriod;", "plus", TypedValues.CycleType.S_WAVE_PERIOD, "until", "yearsUntil", "kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LocalDateJvmKt {
    private static final long minEpochDay = java.time.LocalDate.MIN.toEpochDay();
    private static final long maxEpochDay = java.time.LocalDate.MAX.toEpochDay();

    @Deprecated(message = "Use the plus overload with an explicit number of units", replaceWith = @ReplaceWith(expression = "this.plus(1, unit)", imports = {}))
    public static final LocalDate plus(LocalDate localDate, DateTimeUnit.DateBased unit) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        return plus(localDate, 1L, unit);
    }

    public static final LocalDate plus(LocalDate localDate, int i, DateTimeUnit.DateBased unit) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        return plus(localDate, i, unit);
    }

    public static final LocalDate minus(LocalDate localDate, int i, DateTimeUnit.DateBased unit) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        return plus(localDate, -i, unit);
    }

    public static final LocalDate plus(LocalDate localDate, long j, DateTimeUnit.DateBased unit) throws Exception {
        java.time.LocalDate localDatePlusMonths;
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        try {
            if (unit instanceof DateTimeUnit.DayBased) {
                localDatePlusMonths = ofEpochDayChecked(MathJvmKt.safeAdd(localDate.getValue().toEpochDay(), MathJvmKt.safeMultiply(j, ((DateTimeUnit.DayBased) unit).getDays())));
            } else if (unit instanceof DateTimeUnit.MonthBased) {
                localDatePlusMonths = localDate.getValue().plusMonths(MathJvmKt.safeMultiply(j, ((DateTimeUnit.MonthBased) unit).getMonths()));
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return new LocalDate(localDatePlusMonths);
        } catch (Exception e) {
            if ((e instanceof DateTimeException) || (e instanceof ArithmeticException)) {
                throw new DateTimeArithmeticException("The result of adding " + j + " of " + unit + " to " + localDate + " is out of LocalDate range.", e);
            }
            throw e;
        }
    }

    private static final java.time.LocalDate ofEpochDayChecked(long j) {
        long j2 = minEpochDay;
        if (j > maxEpochDay || j2 > j) {
            throw new DateTimeException("The resulting day " + j + " is out of supported LocalDate range.");
        }
        java.time.LocalDate localDateOfEpochDay = java.time.LocalDate.ofEpochDay(j);
        Intrinsics.checkNotNullExpressionValue(localDateOfEpochDay, "ofEpochDay(...)");
        return localDateOfEpochDay;
    }

    public static final LocalDate plus(LocalDate localDate, DatePeriod period) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(period, "period");
        try {
            java.time.LocalDate value = localDate.getValue();
            if (period.getTotalMonths() != 0) {
                value = value.plusMonths(period.getTotalMonths());
            }
            if (period.getDays() != 0) {
                value = value.plusDays(period.getDays());
            }
            return new LocalDate(value);
        } catch (DateTimeException unused) {
            throw new DateTimeArithmeticException("The result of adding " + localDate.getValue() + " to " + localDate + " is out of LocalDate range.");
        }
    }

    public static final DatePeriod periodUntil(LocalDate localDate, LocalDate other) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        java.time.LocalDate value = localDate.getValue();
        java.time.LocalDate value2 = other.getValue();
        long jUntil = value.until(value2, ChronoUnit.MONTHS);
        java.time.LocalDate localDatePlusMonths = value.plusMonths(jUntil);
        Intrinsics.checkNotNullExpressionValue(localDatePlusMonths, "plusMonths(...)");
        long jUntil2 = localDatePlusMonths.until(value2, ChronoUnit.DAYS);
        if (jUntil > 2147483647L || jUntil < -2147483648L) {
            throw new DateTimeArithmeticException("The number of months between " + localDate + " and " + other + " does not fit in an Int");
        }
        return new DatePeriod((int) jUntil, (int) jUntil2);
    }

    public static final int until(LocalDate localDate, LocalDate other, DateTimeUnit.DateBased unit) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit instanceof DateTimeUnit.MonthBased) {
            return MathKt.clampToInt(localDate.getValue().until(other.getValue(), ChronoUnit.MONTHS) / ((long) ((DateTimeUnit.MonthBased) unit).getMonths()));
        }
        if (unit instanceof DateTimeUnit.DayBased) {
            return MathKt.clampToInt(localDate.getValue().until(other.getValue(), ChronoUnit.DAYS) / ((long) ((DateTimeUnit.DayBased) unit).getDays()));
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final int daysUntil(LocalDate localDate, LocalDate other) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return MathKt.clampToInt(localDate.getValue().until(other.getValue(), ChronoUnit.DAYS));
    }

    public static final int monthsUntil(LocalDate localDate, LocalDate other) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return MathKt.clampToInt(localDate.getValue().until(other.getValue(), ChronoUnit.MONTHS));
    }

    public static final int yearsUntil(LocalDate localDate, LocalDate other) {
        Intrinsics.checkNotNullParameter(localDate, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return MathKt.clampToInt(localDate.getValue().until(other.getValue(), ChronoUnit.YEARS));
    }
}
