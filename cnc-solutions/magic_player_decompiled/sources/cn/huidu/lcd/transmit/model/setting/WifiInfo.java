package cn.huidu.lcd.transmit.model.setting;

/* JADX INFO: loaded from: classes.dex */
public class WifiInfo {
    public ApInfo ap;
    public String mode;
    public StationInfo station;

    public static class ApInfo {
        public boolean enable;
        public Boolean enableRandomPwd;
        public String icon;
        public String password;
        public Integer pwdResetMinutes;
        public String ssid;
    }

    public static class StationInfo {
        public Boolean dhcp;
        public String dns;
        public boolean enable;
        public String gateway;
        public String ip;
        public String mac;
        public String mask;
        public String password;
        public String ssid;
    }
}
