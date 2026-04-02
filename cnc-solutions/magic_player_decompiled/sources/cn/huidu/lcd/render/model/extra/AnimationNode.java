package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.ANIMATION)
public class AnimationNode {
    private int mDelay;
    private int mDuration;
    private int mRepeat;
    private int mType;

    public int getDelay() {
        return this.mDelay;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public int getRepeat() {
        return this.mRepeat;
    }

    public int getType() {
        return this.mType;
    }

    public void setDelay(int i4) {
        this.mDelay = i4;
    }

    public void setDuration(int i4) {
        this.mDuration = i4;
    }

    public void setRepeat(int i4) {
        this.mRepeat = i4;
    }

    public void setType(int i4) {
        this.mType = i4;
    }
}
