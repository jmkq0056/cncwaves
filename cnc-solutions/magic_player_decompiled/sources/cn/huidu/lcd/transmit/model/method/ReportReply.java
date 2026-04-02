package cn.huidu.lcd.transmit.model.method;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ReportReply {
    public List<ReportItem> events;

    public static class ReportItem {
        public Object data;
        public String event;
    }
}
