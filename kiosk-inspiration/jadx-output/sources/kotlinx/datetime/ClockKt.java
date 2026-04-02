package kotlinx.datetime;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.ComparableTimeMark;
import kotlin.time.TimeSource;

/* JADX INFO: compiled from: Clock.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u0012\u0010\u0007\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, d2 = {"asTimeSource", "Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlinx/datetime/Clock;", "todayAt", "Lkotlinx/datetime/LocalDate;", RemoteConfigConstants.RequestFieldKey.TIME_ZONE, "Lkotlinx/datetime/TimeZone;", "todayIn", "kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ClockKt {
    public static final LocalDate todayIn(Clock clock, TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(clock, "<this>");
        Intrinsics.checkNotNullParameter(timeZone, "timeZone");
        return TimeZoneKt.toLocalDateTime(clock.now(), timeZone).getDate();
    }

    public static final TimeSource.WithComparableMarks asTimeSource(final Clock clock) {
        Intrinsics.checkNotNullParameter(clock, "<this>");
        return new TimeSource.WithComparableMarks() { // from class: kotlinx.datetime.ClockKt.asTimeSource.1
            @Override // kotlin.time.TimeSource
            public ComparableTimeMark markNow() {
                return new InstantTimeMark(clock.now(), clock);
            }
        };
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use Clock.todayIn instead", replaceWith = @ReplaceWith(expression = "this.todayIn(timeZone)", imports = {}))
    public static final LocalDate todayAt(Clock clock, TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(clock, "<this>");
        Intrinsics.checkNotNullParameter(timeZone, "timeZone");
        return todayIn(clock, timeZone);
    }
}
