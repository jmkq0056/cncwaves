package cn.huidu.lcd.render.model;

/* JADX INFO: loaded from: classes.dex */
public class PlayIndex {
    public int delay;
    public int duration;
    public int index;
    public int position;

    public PlayIndex() {
        this(0);
    }

    public PlayIndex(int i4) {
        this(i4, 0);
    }

    public PlayIndex(int i4, int i5) {
        this(i4, i5, 0);
    }

    public PlayIndex(int i4, int i5, int i6) {
        this.index = i4;
        this.position = i5;
        this.delay = i6;
    }
}
