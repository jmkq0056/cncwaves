package cn.huidu.lcd.render.model.extra;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TagControl {
    private boolean mEnable;
    private List<String> mHideTags;
    private List<String> mShowTags;

    public List<String> getHideTags() {
        return this.mHideTags;
    }

    public List<String> getShowTags() {
        return this.mShowTags;
    }

    public boolean isEnable() {
        return this.mEnable;
    }

    public void setEnable(boolean z3) {
        this.mEnable = z3;
    }

    public void setHideTags(List<String> list) {
        this.mHideTags = list;
    }

    public void setShowTags(List<String> list) {
        this.mShowTags = list;
    }
}
