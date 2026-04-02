package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.VIDEO)
public class VideoNode extends WidgetNode {
    private int mHeight;
    private boolean mKeepAspectRatio = false;
    private String mVideoPath;
    private int mWidth;

    public int getHeight() {
        return this.mHeight;
    }

    public String getVideoPath() {
        return this.mVideoPath;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isKeepAspectRatio() {
        return this.mKeepAspectRatio;
    }

    public void setHeight(int i4) {
        this.mHeight = i4;
    }

    public void setKeepAspectRatio(boolean z3) {
        this.mKeepAspectRatio = z3;
    }

    public void setVideoPath(String str) {
        this.mVideoPath = str;
    }

    public void setWidth(int i4) {
        this.mWidth = i4;
    }
}
