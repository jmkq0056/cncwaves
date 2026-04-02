package cn.huidu.lcd.transmit.model.method;

import cn.huidu.lcd.transmit.model.playtask.FileInfo;

/* JADX INFO: loaded from: classes.dex */
public class UpgradeRequest {
    public FileInfo file;
    public boolean reportProgress;
    public String target;
    public FileInfo upgradeFile;

    public FileInfo getUpgradeFile() {
        FileInfo fileInfo = this.upgradeFile;
        return fileInfo != null ? fileInfo : this.file;
    }
}
