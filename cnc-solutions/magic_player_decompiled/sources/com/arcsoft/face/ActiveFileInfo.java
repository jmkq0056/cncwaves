package com.arcsoft.face;

/* JADX INFO: loaded from: classes.dex */
public class ActiveFileInfo {
    private String appId;
    private String endTime;
    private String fileVersion;
    private String platform;
    private String sdkKey;
    private String sdkType;
    private String sdkVersion;
    private String startTime;

    public String getAppId() {
        return this.appId;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public String getFileVersion() {
        return this.fileVersion;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getSdkKey() {
        return this.sdkKey;
    }

    public String getSdkType() {
        return this.sdkType;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public String toString() {
        return this.appId + ',' + this.sdkKey + ',' + this.platform + ',' + this.sdkType + ',' + this.sdkVersion + ',' + this.fileVersion + ',' + this.startTime + ',' + this.endTime;
    }
}
