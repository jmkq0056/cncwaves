package org.fourthline.cling.support.model.dlna.types;

import androidx.viewpager2.adapter.a;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.types.InvalidValueException;

/* JADX INFO: loaded from: classes2.dex */
public class NormalPlayTime {
    public static final Pattern pattern = Pattern.compile("^(\\d+):(\\d{1,2}):(\\d{1,2})(\\.(\\d{1,3}))?|(\\d+)(\\.(\\d{1,3}))?$", 2);
    private long milliseconds;

    /* JADX INFO: renamed from: org.fourthline.cling.support.model.dlna.types.NormalPlayTime$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format;

        static {
            int[] iArr = new int[Format.values().length];
            $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format = iArr;
            try {
                iArr[Format.TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum Format {
        SECONDS,
        TIME
    }

    public NormalPlayTime(long j4) {
        if (j4 < 0) {
            throw new InvalidValueException(a.a("Invalid parameter milliseconds: ", j4));
        }
        this.milliseconds = j4;
    }

    public static NormalPlayTime valueOf(String str) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            try {
                if (matcher.group(1) != null) {
                    return new NormalPlayTime(Long.parseLong(matcher.group(1)), Long.parseLong(matcher.group(2)), Long.parseLong(matcher.group(3)), Long.parseLong(matcher.group(5)) * ((long) ((int) Math.pow(10.0d, 3 - matcher.group(5).length()))));
                }
                return new NormalPlayTime((Long.parseLong(matcher.group(8)) * ((long) ((int) Math.pow(10.0d, 3 - matcher.group(8).length())))) + (Long.parseLong(matcher.group(6)) * 1000));
            } catch (NumberFormatException unused) {
            }
        }
        throw new InvalidValueException(androidx.appcompat.view.a.a("Can't parse NormalPlayTime: ", str));
    }

    public long getMilliseconds() {
        return this.milliseconds;
    }

    public String getString() {
        return getString(Format.SECONDS);
    }

    public void setMilliseconds(long j4) {
        if (j4 < 0) {
            throw new InvalidValueException(a.a("Invalid parameter milliseconds: ", j4));
        }
        this.milliseconds = j4;
    }

    public String getString(Format format) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long seconds = timeUnit.toSeconds(this.milliseconds);
        long j4 = this.milliseconds % 1000;
        if (AnonymousClass1.$SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format[format.ordinal()] != 1) {
            return String.format(Locale.ROOT, "%d.%03d", Long.valueOf(seconds), Long.valueOf(j4));
        }
        long seconds2 = timeUnit.toSeconds(this.milliseconds) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(this.milliseconds));
        return String.format(Locale.ROOT, "%d:%02d:%02d.%03d", Long.valueOf(timeUnit.toHours(this.milliseconds)), Long.valueOf(timeUnit.toMinutes(this.milliseconds) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(this.milliseconds))), Long.valueOf(seconds2), Long.valueOf(j4));
    }

    public NormalPlayTime(long j4, long j5, long j6, long j7) {
        if (j4 < 0) {
            throw new InvalidValueException(a.a("Invalid parameter hours: ", j4));
        }
        if (j5 < 0 || j5 > 59) {
            throw new InvalidValueException(a.a("Invalid parameter minutes: ", j4));
        }
        if (j6 < 0 || j6 > 59) {
            throw new InvalidValueException(a.a("Invalid parameter seconds: ", j4));
        }
        if (j7 >= 0 && j7 <= 999) {
            this.milliseconds = (((j5 * 60) + (j4 * 60 * 60) + j6) * 1000) + j7;
            return;
        }
        throw new InvalidValueException(a.a("Invalid parameter milliseconds: ", j7));
    }
}
