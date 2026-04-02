package com.arcsoft.face;

/* JADX INFO: loaded from: classes.dex */
public class GenderInfo {
    public static final int FEMALE = 1;
    public static final int MALE = 0;
    public static final int UNKNOWN = -1;
    public int gender;

    public GenderInfo() {
        this.gender = -1;
    }

    public int getGender() {
        return this.gender;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public GenderInfo m10clone() {
        return new GenderInfo(this);
    }

    public GenderInfo(GenderInfo genderInfo) {
        if (genderInfo == null) {
            this.gender = -1;
        } else {
            this.gender = genderInfo.getGender();
        }
    }
}
