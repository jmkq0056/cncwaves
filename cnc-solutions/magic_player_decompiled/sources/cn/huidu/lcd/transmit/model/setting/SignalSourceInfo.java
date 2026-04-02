package cn.huidu.lcd.transmit.model.setting;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SignalSourceInfo {
    public HdmiDisplay hdmi;
    public String mode;
    public List<SignalSwitch> schedule;
    public int source;

    public static class HdmiDisplay {
        public int noSignalShow;
        public int rotation;
    }

    public static class SignalSwitch {
        public int source;
        public String time;
    }
}
