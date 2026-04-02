package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.IMAGE)
public class ImageNode extends WidgetNode {
    private EffectNode mEffect;
    private boolean mGif;
    private int mImageIndex;
    private String mImagePath;
    private boolean mKeepAspectRatio = false;

    public EffectNode getEffect() {
        return this.mEffect;
    }

    public int getImageIndex() {
        return this.mImageIndex;
    }

    public String getImagePath() {
        return this.mImagePath;
    }

    public boolean isGif() {
        return this.mGif;
    }

    public boolean isKeepAspectRatio() {
        return this.mKeepAspectRatio;
    }

    public void setEffect(EffectNode effectNode) {
        this.mEffect = effectNode;
    }

    public void setGif(boolean z3) {
        this.mGif = z3;
    }

    public void setImageIndex(int i4) {
        this.mImageIndex = i4;
    }

    public void setImagePath(String str) {
        this.mImagePath = str;
    }

    public void setKeepAspectRatio(boolean z3) {
        this.mKeepAspectRatio = z3;
    }
}
