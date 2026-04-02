package cn.huidu.lcd.transmit.model.playtask;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PlayControl {
    public DateRange byDate;
    public TimeRange byTime;
    public List<String> byWeek;
    public List<DateRange> dateRanges;
    public Integer duration;
    public Boolean onlyFaceDetect;
    public Integer playCountPerDay;
    public List<TimeRange> timeRanges;
    public List<WeekRange> weekRanges;

    public static class DateRange {
        public String endDate;
        public String startDate;
        public List<TimeRange> timeRanges;
    }

    public static class TimeRange {
        public String endTime;
        public String startTime;
    }

    public static class WeekRange {
        public List<String> daysOfWeek;
        public List<TimeRange> timeRanges;
    }
}
