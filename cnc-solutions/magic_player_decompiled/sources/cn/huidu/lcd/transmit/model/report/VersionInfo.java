package cn.huidu.lcd.transmit.model.report;

/* JADX INFO: loaded from: classes.dex */
public class VersionInfo {
    public AppVersion app;
    public SystemVersion system;

    public static class AppVersion {
        public String player;
        public String service;
    }

    public static class SystemVersion {
        public long buildTime;
        public String buildVersion;
        public String kernel;
        public int sdk;
        public String version;
    }
}
