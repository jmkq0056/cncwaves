package cn.huidu.lcd.render.model;

import cn.huidu.lcd.render.model.extra.FontStyleNode;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.TIMER)
public class TimerNode extends WidgetNode {
    private FontStyleNode mFontStyle;
    private String mFormat;
    private long mTargetTime;
    private FontStyleNode mTimeFontStyle;
    private int mTimeMode;

    public FontStyleNode getFontStyle() {
        return this.mFontStyle;
    }

    public String getFormat() {
        return this.mFormat;
    }

    public long getTargetTime() {
        return this.mTargetTime;
    }

    public FontStyleNode getTimeFontStyle() {
        return this.mTimeFontStyle;
    }

    public int getTimeMode() {
        return this.mTimeMode;
    }

    public void setFontStyle(FontStyleNode fontStyleNode) {
        this.mFontStyle = fontStyleNode;
    }

    public void setFormat(String str) {
        this.mFormat = str;
    }

    public void setTargetTime(long j4) {
        this.mTargetTime = j4;
    }

    public void setTimeFontStyle(FontStyleNode fontStyleNode) {
        this.mTimeFontStyle = fontStyleNode;
    }

    public void setTimeMode(int i4) {
        this.mTimeMode = i4;
    }
}
