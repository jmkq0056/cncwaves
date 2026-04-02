package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import java.util.List;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.WEEK_RANGE)
public class WeekRange {
    public static final int FRI_FLAG = 16;
    public static final int MON_FLAG = 1;
    public static final int SAT_FLAG = 32;
    public static final int SUN_FLAG = 64;
    public static final int THUR_FLAG = 8;
    public static final int TUES_FLAG = 2;
    public static final int WED_FLAG = 4;
    private List<TimeRange> mTimeRanges;
    private int mWeekFlags;

    public WeekRange() {
    }

    public List<TimeRange> getTimeRanges() {
        return this.mTimeRanges;
    }

    public int getWeekFlags() {
        return this.mWeekFlags;
    }

    public void setTimeRanges(List<TimeRange> list) {
        this.mTimeRanges = list;
    }

    public void setWeekFlags(int i4) {
        this.mWeekFlags = i4;
    }

    public WeekRange(int i4) {
        this.mWeekFlags = i4;
    }
}
