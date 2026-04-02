package org.seamless.util;

import android.support.v4.media.session.PlaybackStateCompat;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class Text {
    public static final String ISO8601_PATTERN = "yyyy-MM-dd'T'HH:mm:ssz";

    public static String displayFilesize(long j4) {
        if (j4 >= 1073741824) {
            return new BigDecimal(((j4 / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + " GiB";
        }
        if (j4 >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return new BigDecimal((j4 / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + " MiB";
        }
        if (j4 >= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            return new BigDecimal(j4 / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + " KiB";
        }
        return new BigDecimal(j4) + " bytes";
    }

    public static Calendar fromISO8601String(TimeZone timeZone, String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ISO8601_PATTERN);
        simpleDateFormat.setTimeZone(timeZone);
        try {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(simpleDateFormat.parse(str));
            return gregorianCalendar;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String ltrim(String str) {
        return str.replaceAll("(?s)^\\s+", "");
    }

    public static String rtrim(String str) {
        return str.replaceAll("(?s)\\s+$", "");
    }

    public static String toISO8601String(TimeZone timeZone, Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return toISO8601String(timeZone, gregorianCalendar);
    }

    public static String toISO8601String(TimeZone timeZone, long j4) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j4);
        return toISO8601String(timeZone, gregorianCalendar);
    }

    public static String toISO8601String(TimeZone timeZone, Calendar calendar) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ISO8601_PATTERN);
        simpleDateFormat.setTimeZone(timeZone);
        try {
            return simpleDateFormat.format(calendar.getTime());
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }
}
