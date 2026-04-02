package cn.huidu.lcd.render.model;

import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.EFFECT)
public class EffectNode {
    private float mMoveSpeed;
    private int mSpeed;
    private int mEffectType = 0;
    private int mEnterTime = PathInterpolatorCompat.MAX_NUM_POINTS;
    private int mDisplayTime = 5000;
    private boolean mEndToEnd = false;
    private boolean mClearScreen = false;

    public int getDisplayTime() {
        return this.mDisplayTime;
    }

    public int getEffectType() {
        return this.mEffectType;
    }

    public int getEnterTime() {
        return this.mEnterTime;
    }

    public int getSpeed() {
        int i4 = this.mSpeed;
        if (i4 != 0) {
            return i4;
        }
        float f4 = this.mMoveSpeed;
        if (f4 != 0.0f) {
            return (int) ((f4 * 1000.0f) / 32.0f);
        }
        return 5;
    }

    public boolean isClearScreen() {
        return this.mClearScreen;
    }

    public boolean isContinuousEffect() {
        int i4 = this.mEffectType;
        return i4 == 101 || i4 == 102 || i4 == 103 || i4 == 104;
    }

    public boolean isEndToEnd() {
        return this.mEndToEnd;
    }

    public void setClearScreen(boolean z3) {
        this.mClearScreen = z3;
    }

    public void setDisplayTime(int i4) {
        this.mDisplayTime = i4;
    }

    public void setEffectType(int i4) {
        this.mEffectType = i4;
    }

    public void setEndToEnd(boolean z3) {
        this.mEndToEnd = z3;
    }

    public void setEnterTime(int i4) {
        this.mEnterTime = i4;
    }

    public void setSpeed(int i4) {
        this.mSpeed = i4;
    }
}
