package com.arcsoft.face;

/* JADX INFO: loaded from: classes.dex */
public class AgeInfo {
    public static final int UNKNOWN_AGE = 0;
    public int age;

    public AgeInfo() {
        this.age = 0;
    }

    public int getAge() {
        return this.age;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AgeInfo m6clone() {
        return new AgeInfo(this);
    }

    public AgeInfo(AgeInfo ageInfo) {
        if (ageInfo == null) {
            this.age = 0;
        } else {
            this.age = ageInfo.getAge();
        }
    }
}
