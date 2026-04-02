package cn.huidu.lcd.core.db.entity;

/* JADX INFO: loaded from: classes.dex */
public class VisitorStats {
    private int child;
    private int duration;
    private int female;
    private Long id;
    private int male;
    private int middle;
    private int old;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private int f349t1;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private int f350t2;
    private int t3;
    private int t4;
    private long time;
    private int young;

    public VisitorStats(Long l4, long j4, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
        this.id = l4;
        this.time = j4;
        this.duration = i4;
        this.male = i5;
        this.female = i6;
        this.child = i7;
        this.young = i8;
        this.middle = i9;
        this.old = i10;
        this.f349t1 = i11;
        this.f350t2 = i12;
        this.t3 = i13;
        this.t4 = i14;
    }

    public int getChild() {
        return this.child;
    }

    public int getDuration() {
        return this.duration;
    }

    public int getFemale() {
        return this.female;
    }

    public Long getId() {
        return this.id;
    }

    public int getMale() {
        return this.male;
    }

    public int getMiddle() {
        return this.middle;
    }

    public int getOld() {
        return this.old;
    }

    public int getT1() {
        return this.f349t1;
    }

    public int getT2() {
        return this.f350t2;
    }

    public int getT3() {
        return this.t3;
    }

    public int getT4() {
        return this.t4;
    }

    public long getTime() {
        return this.time;
    }

    public int getYoung() {
        return this.young;
    }

    public void setChild(int i4) {
        this.child = i4;
    }

    public void setDuration(int i4) {
        this.duration = i4;
    }

    public void setFemale(int i4) {
        this.female = i4;
    }

    public void setId(Long l4) {
        this.id = l4;
    }

    public void setMale(int i4) {
        this.male = i4;
    }

    public void setMiddle(int i4) {
        this.middle = i4;
    }

    public void setOld(int i4) {
        this.old = i4;
    }

    public void setT1(int i4) {
        this.f349t1 = i4;
    }

    public void setT2(int i4) {
        this.f350t2 = i4;
    }

    public void setT3(int i4) {
        this.t3 = i4;
    }

    public void setT4(int i4) {
        this.t4 = i4;
    }

    public void setTime(long j4) {
        this.time = j4;
    }

    public void setYoung(int i4) {
        this.young = i4;
    }

    public VisitorStats() {
    }
}
