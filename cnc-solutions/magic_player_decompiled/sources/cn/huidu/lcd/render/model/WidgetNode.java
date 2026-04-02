package cn.huidu.lcd.render.model;

import android.graphics.RectF;
import cn.huidu.lcd.render.model.Node;

/* JADX INFO: loaded from: classes.dex */
public class WidgetNode<Child extends Node> extends Node<Child> {
    private int mDuration;
    private String mExtraData;
    private String mName;
    private RectF mScaleRect;
    private String mUuid;

    public int getDuration() {
        return this.mDuration;
    }

    public String getExtraData() {
        return this.mExtraData;
    }

    public String getName() {
        return this.mName;
    }

    public RectF getScaleRect() {
        return this.mScaleRect;
    }

    public String getUuid() {
        return this.mUuid;
    }

    public void setDuration(int i4) {
        this.mDuration = i4;
    }

    public void setExtraData(String str) {
        this.mExtraData = str;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setScaleRect(RectF rectF) {
        this.mScaleRect = rectF;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }
}
