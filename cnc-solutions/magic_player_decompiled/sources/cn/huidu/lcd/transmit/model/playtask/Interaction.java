package cn.huidu.lcd.transmit.model.playtask;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Interaction {
    public List<ChangeItem> changeItems;
    public String changeProgram;

    public static class ChangeItem {
        public String area;
        public String position;
        public String url;
    }
}
