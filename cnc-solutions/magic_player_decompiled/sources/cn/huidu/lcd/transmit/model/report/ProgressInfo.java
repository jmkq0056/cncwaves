package cn.huidu.lcd.transmit.model.report;

/* JADX INFO: loaded from: classes.dex */
public class ProgressInfo {
    public int progress;
    public int state;
    public String taskType;

    public ProgressInfo() {
    }

    public ProgressInfo(String str) {
        this.taskType = str;
    }
}
