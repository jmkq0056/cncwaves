package cn.huidu.lcd.core.entity.model;

/* JADX INFO: loaded from: classes.dex */
public class MediaEffect {
    private int mScaleType = 0;
    private int mEffectType = 0;
    private int mEffectTime = 2;
    private int mDisplayTime = 5;
    private boolean mClearScreen = false;
    private boolean mShowClock = false;

    public int getDisplayTime() {
        return this.mDisplayTime;
    }

    public int getEffectTime() {
        return this.mEffectTime;
    }

    public int getEffectType() {
        return this.mEffectType;
    }

    public int getScaleType() {
        return this.mScaleType;
    }

    public boolean isClearScreen() {
        return this.mClearScreen;
    }

    public boolean isShowClock() {
        return this.mShowClock;
    }

    public void setClearScreen(boolean z3) {
        this.mClearScreen = z3;
    }

    public void setDisplayTime(int i4) {
        this.mDisplayTime = i4;
    }

    public void setEffectTime(int i4) {
        this.mEffectTime = i4;
    }

    public void setEffectType(int i4) {
        this.mEffectType = i4;
    }

    public void setScaleType(int i4) {
        this.mScaleType = i4;
    }

    public void setShowClock(boolean z3) {
        this.mShowClock = z3;
    }
}
