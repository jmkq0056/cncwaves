package cn.huidu.lcd.render.model;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PlayList {
    private int mDuration;
    private final List<ProgramNode> mPrograms = new ArrayList();
    private long mTimeStamp;

    public void add(ProgramNode programNode) {
        this.mPrograms.add(programNode);
    }

    public void clear() {
        this.mPrograms.clear();
    }

    public ProgramNode get(int i4) {
        if (i4 < 0 || i4 >= this.mPrograms.size()) {
            return null;
        }
        return this.mPrograms.get(i4);
    }

    public int getDuration() {
        return this.mDuration;
    }

    public List<ProgramNode> getPrograms() {
        return this.mPrograms;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public int indexOf(ProgramNode programNode) {
        return this.mPrograms.indexOf(programNode);
    }

    public boolean isEmpty() {
        return this.mPrograms.isEmpty();
    }

    public void setDuration(int i4) {
        this.mDuration = i4;
    }

    public void setTimeStamp(long j4) {
        this.mTimeStamp = j4;
    }

    public int size() {
        return this.mPrograms.size();
    }
}
