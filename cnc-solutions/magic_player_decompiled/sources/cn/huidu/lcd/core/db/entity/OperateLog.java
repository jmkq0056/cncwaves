package cn.huidu.lcd.core.db.entity;

/* JADX INFO: loaded from: classes.dex */
public class OperateLog {
    private long date;
    private Long id;
    private String log;
    private String operate;

    public OperateLog(Long l4, String str, String str2, long j4) {
        this.id = l4;
        this.operate = str;
        this.log = str2;
        this.date = j4;
    }

    public long getDate() {
        return this.date;
    }

    public Long getId() {
        return this.id;
    }

    public String getLog() {
        return this.log;
    }

    public String getOperate() {
        return this.operate;
    }

    public void setDate(long j4) {
        this.date = j4;
    }

    public void setId(Long l4) {
        this.id = l4;
    }

    public void setLog(String str) {
        this.log = str;
    }

    public void setOperate(String str) {
        this.operate = str;
    }

    public OperateLog() {
    }
}
