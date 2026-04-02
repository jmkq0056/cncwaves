package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.PLAY_TASK)
public class PlayTaskNode extends Node<ProgramNode> {
    private String mExtraData;
    private int mHeight;
    private String mHomeUuid;
    private String mMediaPath;
    private String mName;
    private int mStorageType;
    private String mUuid;
    private String mVersion;
    private int mWidth;
    private long mTimeStamp = 0;
    private int mTaskType = 0;

    public String getExtraData() {
        return this.mExtraData;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getHomeUuid() {
        return this.mHomeUuid;
    }

    public String getMediaPath() {
        return this.mMediaPath;
    }

    public String getName() {
        return this.mName;
    }

    public int getStorageType() {
        return this.mStorageType;
    }

    public int getTaskType() {
        return this.mTaskType;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public String getUuid() {
        return this.mUuid;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isInteractive() {
        ProgramNode child;
        String str = this.mHomeUuid;
        if (str == null || str.length() == 0) {
            child = null;
        } else {
            for (int i4 = 0; i4 < childCount(); i4++) {
                child = getChild(i4);
                if (this.mHomeUuid.equals(child.getUuid())) {
                    break;
                }
            }
            child = null;
        }
        if (child == null) {
            child = getChild(0);
        }
        return child != null && child.isInteractive();
    }

    public boolean isUseBalanceMode() {
        for (int i4 = 0; i4 < childCount(); i4++) {
            if (getChild(i4).getPlayCountPerDay() > 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isUsingExtStorage(String str) {
        String str2;
        return this.mTaskType == 2 && (str2 = this.mMediaPath) != null && str2.equals(str);
    }

    public void setExtraData(String str) {
        this.mExtraData = str;
    }

    public void setHeight(int i4) {
        this.mHeight = i4;
    }

    public void setHomeUuid(String str) {
        this.mHomeUuid = str;
    }

    public void setMediaPath(String str) {
        this.mMediaPath = str;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setStorageType(int i4) {
        this.mStorageType = i4;
    }

    public void setTaskType(int i4) {
        this.mTaskType = i4;
    }

    public void setTimeStamp(long j4) {
        this.mTimeStamp = j4;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public void setWidth(int i4) {
        this.mWidth = i4;
    }
}
