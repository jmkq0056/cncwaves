package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.SCREEN)
public class ScreenNode extends Node<AreaNode> {
    private int mDisplayId;
    private int mHeight;
    private int mWidth;

    public int getDisplayId() {
        return this.mDisplayId;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setDisplayId(int i4) {
        this.mDisplayId = i4;
    }

    public void setHeight(int i4) {
        this.mHeight = i4;
    }

    public void setWidth(int i4) {
        this.mWidth = i4;
    }
}
