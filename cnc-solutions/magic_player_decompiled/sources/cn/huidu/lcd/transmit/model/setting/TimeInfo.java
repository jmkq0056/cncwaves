package cn.huidu.lcd.transmit.model.setting;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TimeInfo {
    public boolean auto;
    public String dateTime;
    public NtpTimeInfo lastUpdate;
    public NtpInfo ntp;
    public boolean rfEnable;
    public RFInfo rfInfo;
    public String sync;
    public Integer syncInterDevice;
    public TimeZone timeZone;

    public static class NtpInfo {
        public int correctInterval;
        public List<String> ntpHost;
    }

    public static class NtpTimeInfo {
        public int certainty;
        public String refHost;
        public long time;
    }

    public static class RFInfo {
        public int certainty;
        public int channel;
        public int groupNo;
        public int syncInterDevice;
    }

    public static class TimeZone {
        public String rawOffset;
        public String timeZoneId;
        public String timeZoneOffset;
    }
}
