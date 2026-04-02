package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
class DateStrings {
    private DateStrings() {
    }

    public static Pair<String, String> getDateRangeString(@Nullable Long l4, @Nullable Long l5) {
        return getDateRangeString(l4, l5, null);
    }

    public static String getDateString(long j4) {
        return getDateString(j4, null);
    }

    public static String getMonthDay(long j4) {
        return getMonthDay(j4, Locale.getDefault());
    }

    public static String getMonthDayOfWeekDay(long j4) {
        return getMonthDayOfWeekDay(j4, Locale.getDefault());
    }

    public static String getYearMonth(Context context, long j4) {
        return DateUtils.formatDateTime(context, j4 - ((long) TimeZone.getDefault().getOffset(j4)), 36);
    }

    public static String getYearMonthDay(long j4) {
        return getYearMonthDay(j4, Locale.getDefault());
    }

    public static String getYearMonthDayOfWeekDay(long j4) {
        return getYearMonthDayOfWeekDay(j4, Locale.getDefault());
    }

    public static Pair<String, String> getDateRangeString(@Nullable Long l4, @Nullable Long l5, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l4 == null && l5 == null) {
            return Pair.create(null, null);
        }
        if (l4 == null) {
            return Pair.create(null, getDateString(l5.longValue(), simpleDateFormat));
        }
        if (l5 == null) {
            return Pair.create(getDateString(l4.longValue(), simpleDateFormat), null);
        }
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(l4.longValue());
        Calendar utcCalendar2 = UtcDates.getUtcCalendar();
        utcCalendar2.setTimeInMillis(l5.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l4.longValue())), simpleDateFormat.format(new Date(l5.longValue())));
        }
        return utcCalendar.get(1) == utcCalendar2.get(1) ? utcCalendar.get(1) == todayCalendar.get(1) ? Pair.create(getMonthDay(l4.longValue(), Locale.getDefault()), getMonthDay(l5.longValue(), Locale.getDefault())) : Pair.create(getMonthDay(l4.longValue(), Locale.getDefault()), getYearMonthDay(l5.longValue(), Locale.getDefault())) : Pair.create(getYearMonthDay(l4.longValue(), Locale.getDefault()), getYearMonthDay(l5.longValue(), Locale.getDefault()));
    }

    public static String getDateString(long j4, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(j4);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j4)) : todayCalendar.get(1) == utcCalendar.get(1) ? getMonthDay(j4) : getYearMonthDay(j4);
    }

    public static String getMonthDay(long j4, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getAbbrMonthDayFormat(locale).format(new Date(j4)) : UtcDates.getMediumNoYear(locale).format(new Date(j4));
    }

    public static String getMonthDayOfWeekDay(long j4, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getAbbrMonthWeekdayDayFormat(locale).format(new Date(j4)) : UtcDates.getFullFormat(locale).format(new Date(j4));
    }

    public static String getYearMonthDay(long j4, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getYearAbbrMonthDayFormat(locale).format(new Date(j4)) : UtcDates.getMediumFormat(locale).format(new Date(j4));
    }

    public static String getYearMonthDayOfWeekDay(long j4, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getYearAbbrMonthWeekdayDayFormat(locale).format(new Date(j4)) : UtcDates.getFullFormat(locale).format(new Date(j4));
    }
}
