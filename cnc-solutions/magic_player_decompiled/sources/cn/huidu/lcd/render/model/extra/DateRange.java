package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import java.util.List;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.DATE_RANGE)
public class DateRange {
    private long mEndDate;
    private long mStartDate;
    private List<TimeRange> mTimeRanges;

    public DateRange() {
    }

    public long getEndDate() {
        return this.mEndDate;
    }

    public long getStartDate() {
        return this.mStartDate;
    }

    public List<TimeRange> getTimeRanges() {
        return this.mTimeRanges;
    }

    public void setEndDate(long j4) {
        this.mEndDate = j4;
    }

    public void setStartDate(long j4) {
        this.mStartDate = j4;
    }

    public void setTimeRanges(List<TimeRange> list) {
        this.mTimeRanges = list;
    }

    public DateRange(long j4, long j5) {
        this.mStartDate = j4;
        this.mEndDate = j5;
    }
}
