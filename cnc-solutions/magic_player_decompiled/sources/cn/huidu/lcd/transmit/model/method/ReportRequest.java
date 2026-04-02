package cn.huidu.lcd.transmit.model.method;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ReportRequest {
    public static final String ACTION_REGISTER = "register";
    public static final String ACTION_REPORT = "report";
    public static final String ACTION_UNREGISTER = "unregister";
    public String action;
    public List<String> events;
}
