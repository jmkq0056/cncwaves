package cn.huidu.lcd.transmit.model.setting;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MachineOnOffInfo {
    public List<MachineOnOffItem> ploys;

    public static class MachineOnOffItem {
        public String dateOff;
        public String dateOn;
        public String timeOff;
        public String timeOn;
        public boolean isDate = false;
        public boolean isWeek = false;
        public boolean playOnMonday = false;
        public boolean playOnTuesday = false;
        public boolean playOnWednesday = false;
        public boolean playOnThursday = false;
        public boolean playOnFriday = false;
        public boolean playOnSaturday = false;
        public boolean playOnSunday = false;
    }
}
