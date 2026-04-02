package cn.huidu.lcd.render.model;

import java.util.List;
import z0.a;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.OFFICE)
public class OfficeNode extends WidgetNode {
    private boolean mAutoPlay;
    private int mDuration;
    private int mEffect;
    private int mEndType;

    @a(name = "FileList")
    private List<String> mFileList;
    private int mInterval;

    @Override // cn.huidu.lcd.render.model.WidgetNode
    public int getDuration() {
        return this.mDuration;
    }

    public int getEffect() {
        return this.mEffect;
    }

    public int getEndType() {
        return this.mEndType;
    }

    public List<String> getFileList() {
        return this.mFileList;
    }

    public int getInterval() {
        return this.mInterval;
    }

    public boolean isAutoPlay() {
        return this.mAutoPlay;
    }

    public void setAutoPlay(boolean z3) {
        this.mAutoPlay = z3;
    }

    @Override // cn.huidu.lcd.render.model.WidgetNode
    public void setDuration(int i4) {
        this.mDuration = i4;
    }

    public void setEffect(int i4) {
        this.mEffect = i4;
    }

    public void setEndType(int i4) {
        this.mEndType = i4;
    }

    public void setFileList(List<String> list) {
        this.mFileList = list;
    }

    public void setInterval(int i4) {
        this.mInterval = i4;
    }
}
