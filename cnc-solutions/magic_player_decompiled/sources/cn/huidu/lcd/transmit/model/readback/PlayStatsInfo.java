package cn.huidu.lcd.transmit.model.readback;

/* JADX INFO: loaded from: classes.dex */
public class PlayStatsInfo {
    public int duration;
    public Double lat;
    public Double lng;
    public long time;
    public String uuid;
    public int ver;
    public VisitorInfo visitors;

    public static class VisitorInfo {
        public String byAge;
        public String byGender;
        public String byStayTime;
    }
}
