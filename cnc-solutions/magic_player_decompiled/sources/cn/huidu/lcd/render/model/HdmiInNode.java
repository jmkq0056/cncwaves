package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.HDMI_IN)
public class HdmiInNode extends WidgetNode {
    private boolean mEnableAudio;
    private int mHdmiSource;
    private boolean mHideNoSignal;
    private int mRotation;

    public int getHdmiSource() {
        return this.mHdmiSource;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public boolean isEnableAudio() {
        return this.mEnableAudio;
    }

    public boolean isHideNoSignal() {
        return this.mHideNoSignal;
    }

    public void setEnableAudio(boolean z3) {
        this.mEnableAudio = z3;
    }

    public void setHdmiSource(int i4) {
        this.mHdmiSource = i4;
    }

    public void setHideNoSignal(boolean z3) {
        this.mHideNoSignal = z3;
    }

    public void setRotation(int i4) {
        this.mRotation = i4;
    }
}
