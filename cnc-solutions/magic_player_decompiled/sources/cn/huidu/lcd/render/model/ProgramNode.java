package cn.huidu.lcd.render.model;

import cn.huidu.lcd.render.model.extra.DateRange;
import cn.huidu.lcd.render.model.extra.TimeRange;
import cn.huidu.lcd.render.model.extra.WeekRange;
import java.util.List;
import z0.a;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.PROGRAM)
public class ProgramNode extends Node<AreaNode> {
    private boolean mBGMLoop = true;
    private int mBackgroundColor;
    private String mBackgroundImage;
    private String mBackgroundMusic;

    @a(ignore = true)
    private int mCurrentPlayCount;
    private List<DateRange> mDateRanges;
    private int mDuration;
    private String mExtraData;
    private int mFixedDuration;
    private int mMaxAreaDuration;

    @a(ignore = true)
    private float mMaxFreeTime;
    private String mName;
    private boolean mOnlyFaceDetect;
    private int mPlayCountPerDay;

    @a(ignore = true)
    private boolean mPriorityNow;
    private long mResFileSize;
    private List<ScreenNode> mSubScreens;

    @a(ignore = true)
    private int mTagHitCount;
    private List<String> mTags;
    private List<TimeRange> mTimeRanges;

    @a(ignore = true)
    private List<TimeRange> mTimeRangesToday;
    private long mUpdateTime;
    private String mUuid;

    @a(ignore = true)
    private boolean mValidNow;
    private int mVersion;
    private List<WeekRange> mWeekRanges;

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public String getBackgroundImage() {
        return this.mBackgroundImage;
    }

    public String getBackgroundMusic() {
        return this.mBackgroundMusic;
    }

    public int getCurrentPlayCount() {
        return this.mCurrentPlayCount;
    }

    public List<DateRange> getDateRanges() {
        return this.mDateRanges;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public String getExtraData() {
        return this.mExtraData;
    }

    public int getFixedDuration() {
        return this.mFixedDuration;
    }

    public int getMaxAreaDuration() {
        return this.mMaxAreaDuration;
    }

    public float getMaxFreeTime() {
        return this.mMaxFreeTime;
    }

    public String getName() {
        return this.mName;
    }

    public int getPlayCountPerDay() {
        return this.mPlayCountPerDay;
    }

    public long getResFileSize() {
        return this.mResFileSize;
    }

    public List<ScreenNode> getSubScreens() {
        return this.mSubScreens;
    }

    public int getTagHitCount() {
        return this.mTagHitCount;
    }

    public List<String> getTags() {
        return this.mTags;
    }

    public List<TimeRange> getTimeRanges() {
        return this.mTimeRanges;
    }

    public List<TimeRange> getTimeRangesToday() {
        return this.mTimeRangesToday;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public String getUuid() {
        return this.mUuid;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public List<WeekRange> getWeekRanges() {
        return this.mWeekRanges;
    }

    public boolean isBGMLoop() {
        return this.mBGMLoop;
    }

    public boolean isFixedDuration() {
        int i4 = this.mDuration;
        return i4 != this.mMaxAreaDuration || i4 == this.mFixedDuration;
    }

    public boolean isInteractive() {
        for (int i4 = 0; i4 < childCount(); i4++) {
            AreaNode child = getChild(i4);
            if (child.isMotion() || child.isButtonArea()) {
                return true;
            }
        }
        return false;
    }

    public boolean isOnlyFaceDetect() {
        return this.mOnlyFaceDetect;
    }

    public boolean isPriorityNow() {
        return this.mPriorityNow;
    }

    public boolean isValidNow() {
        return this.mValidNow;
    }

    public void setBGMLoop(boolean z3) {
        this.mBGMLoop = z3;
    }

    public void setBackgroundColor(int i4) {
        this.mBackgroundColor = i4;
    }

    public void setBackgroundImage(String str) {
        this.mBackgroundImage = str;
    }

    public void setBackgroundMusic(String str) {
        this.mBackgroundMusic = str;
    }

    public void setCurrentPlayCount(int i4) {
        this.mCurrentPlayCount = i4;
    }

    public void setDateRanges(List<DateRange> list) {
        this.mDateRanges = list;
    }

    public void setDuration(int i4) {
        this.mDuration = i4;
    }

    public void setExtraData(String str) {
        this.mExtraData = str;
    }

    public void setFixedDuration(int i4) {
        this.mFixedDuration = i4;
    }

    public void setMaxAreaDuration(int i4) {
        this.mMaxAreaDuration = i4;
    }

    public void setMaxFreeTime(float f4) {
        this.mMaxFreeTime = f4;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setOnlyFaceDetect(boolean z3) {
        this.mOnlyFaceDetect = z3;
    }

    public void setPlayCountPerDay(int i4) {
        this.mPlayCountPerDay = i4;
    }

    public void setPriorityNow(boolean z3) {
        this.mPriorityNow = z3;
    }

    public void setResFileSize(long j4) {
        this.mResFileSize = j4;
    }

    public void setSubScreens(List<ScreenNode> list) {
        this.mSubScreens = list;
    }

    public void setTagHitCount(int i4) {
        this.mTagHitCount = i4;
    }

    public void setTags(List<String> list) {
        this.mTags = list;
    }

    public void setTimeRanges(List<TimeRange> list) {
        this.mTimeRanges = list;
    }

    public void setTimeRangesToday(List<TimeRange> list) {
        this.mTimeRangesToday = list;
    }

    public void setUpdateTime(long j4) {
        this.mUpdateTime = j4;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }

    public void setValidNow(boolean z3) {
        this.mValidNow = z3;
    }

    public void setVersion(int i4) {
        this.mVersion = i4;
    }

    public void setWeekRanges(List<WeekRange> list) {
        this.mWeekRanges = list;
    }
}
