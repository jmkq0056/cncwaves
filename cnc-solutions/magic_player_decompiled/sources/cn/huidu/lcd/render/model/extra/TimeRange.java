package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.TIME_RANGE)
public class TimeRange {
    private int mEndTime;
    private int mStartTime;

    public TimeRange() {
    }

    public int getEndTime() {
        return this.mEndTime;
    }

    public int getStartTime() {
        return this.mStartTime;
    }

    public void setEndTime(int i4) {
        this.mEndTime = i4;
    }

    public void setStartTime(int i4) {
        this.mStartTime = i4;
    }

    public TimeRange(int i4, int i5) {
        this.mStartTime = i4;
        this.mEndTime = i5;
    }
}
