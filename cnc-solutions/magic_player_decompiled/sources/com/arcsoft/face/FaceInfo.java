package com.arcsoft.face;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class FaceInfo {
    public int faceId;
    public int orient;
    public Rect rect;

    public FaceInfo(Rect rect, int i4) {
        this.faceId = -1;
        this.rect = new Rect(rect);
        this.orient = i4;
    }

    public int getFaceId() {
        return this.faceId;
    }

    public int getOrient() {
        return this.orient;
    }

    public Rect getRect() {
        return this.rect;
    }

    public void setFaceId(int i4) {
        this.faceId = i4;
    }

    public void setOrient(int i4) {
        this.orient = i4;
    }

    public void setRect(Rect rect) {
        this.rect = rect;
    }

    public String toString() {
        return this.rect.toString() + "," + this.orient;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public FaceInfo m9clone() {
        return new FaceInfo(this);
    }

    public FaceInfo(FaceInfo faceInfo) {
        this.faceId = -1;
        if (faceInfo == null) {
            this.rect = new Rect();
            this.orient = 0;
            this.faceId = 0;
        } else {
            this.rect = new Rect(faceInfo.rect);
            this.orient = faceInfo.orient;
            this.faceId = faceInfo.faceId;
        }
    }

    public FaceInfo() {
        this.faceId = -1;
        this.rect = new Rect();
        this.orient = 0;
    }
}
