package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.E_WATCH)
public class EWatchNode extends WidgetNode {
    private int mTextSize = 0;
    private int mTextColor = -1;
    private int mStrokeColor = -12303292;
    private int mBaseColor = 0;
    private int mStyle = 0;
    private int mAlignment = 257;
    private int mPadding = 10;

    public int getAlignment() {
        return this.mAlignment;
    }

    public int getBaseColor() {
        return this.mBaseColor;
    }

    public int getPadding() {
        return this.mPadding;
    }

    public int getStrokeColor() {
        return this.mStrokeColor;
    }

    public int getStyle() {
        return this.mStyle;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public void setAlignment(int i4) {
        this.mAlignment = i4;
    }

    public void setBaseColor(int i4) {
        this.mBaseColor = i4;
    }

    public void setPadding(int i4) {
        this.mPadding = i4;
    }

    public void setStrokeColor(int i4) {
        this.mStrokeColor = i4;
    }

    public void setStyle(int i4) {
        this.mStyle = i4;
    }

    public void setTextColor(int i4) {
        this.mTextColor = i4;
    }

    public void setTextSize(int i4) {
        this.mTextSize = i4;
    }
}
