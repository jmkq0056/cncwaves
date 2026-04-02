package cn.huidu.lcd.render.model;

import java.util.List;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.CLOCK)
public class ClockNode extends WidgetNode {
    private String[] mCustomWeek;
    private int mDateColor;
    private String mDateFormat;
    private String mFixedText;
    private int mFixedTextColor;
    private String mFontName;
    private int mLunarColor;
    private boolean mMultiLine;
    private List<String> mShowItems;
    private int mTimeAdjust;
    private int mTimeColor;
    private String mTimeFormat;
    private String mTimeZone;
    private int mWeekColor;
    private int mWeekFormat;
    private int mTextSize = 36;
    private int mSpacing = 5;
    private int mTextColor = -1;

    public String[] getCustomWeek() {
        return this.mCustomWeek;
    }

    public int getDateColor() {
        return this.mDateColor;
    }

    public String getDateFormat() {
        return this.mDateFormat;
    }

    public String getFixedText() {
        return this.mFixedText;
    }

    public int getFixedTextColor() {
        return this.mFixedTextColor;
    }

    public String getFontName() {
        return this.mFontName;
    }

    public int getLunarColor() {
        return this.mLunarColor;
    }

    public List<String> getShowItems() {
        return this.mShowItems;
    }

    public int getSpacing() {
        return this.mSpacing;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public int getTimeAdjust() {
        return this.mTimeAdjust;
    }

    public int getTimeColor() {
        return this.mTimeColor;
    }

    public String getTimeFormat() {
        return this.mTimeFormat;
    }

    public String getTimeZone() {
        return this.mTimeZone;
    }

    public int getWeekColor() {
        return this.mWeekColor;
    }

    public int getWeekFormat() {
        return this.mWeekFormat;
    }

    public boolean isMultiLine() {
        return this.mMultiLine;
    }

    public void setCustomWeek(String[] strArr) {
        this.mCustomWeek = strArr;
    }

    public void setDateColor(int i4) {
        this.mDateColor = i4;
    }

    public void setDateFormat(String str) {
        this.mDateFormat = str;
    }

    public void setFixedText(String str) {
        this.mFixedText = str;
    }

    public void setFixedTextColor(int i4) {
        this.mFixedTextColor = i4;
    }

    public void setFontName(String str) {
        this.mFontName = str;
    }

    public void setLunarColor(int i4) {
        this.mLunarColor = i4;
    }

    public void setMultiLine(boolean z3) {
        this.mMultiLine = z3;
    }

    public void setShowItems(List<String> list) {
        this.mShowItems = list;
    }

    public void setSpacing(int i4) {
        this.mSpacing = i4;
    }

    public void setTextColor(int i4) {
        this.mTextColor = i4;
    }

    public void setTextSize(int i4) {
        this.mTextSize = i4;
    }

    public void setTimeAdjust(int i4) {
        this.mTimeAdjust = i4;
    }

    public void setTimeColor(int i4) {
        this.mTimeColor = i4;
    }

    public void setTimeFormat(String str) {
        this.mTimeFormat = str;
    }

    public void setTimeZone(String str) {
        this.mTimeZone = str;
    }

    public void setWeekColor(int i4) {
        this.mWeekColor = i4;
    }

    public void setWeekFormat(int i4) {
        this.mWeekFormat = i4;
    }
}
