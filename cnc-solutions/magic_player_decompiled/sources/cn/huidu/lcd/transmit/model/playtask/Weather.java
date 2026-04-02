package cn.huidu.lcd.transmit.model.playtask;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Weather {
    public String cityCode;
    public String cityName;
    public int duration;
    public FontStyle fontStyle;
    public String language;
    public boolean multiLine;
    public List<String> show;
    public int spacing;
    public LocalStrings strings;
    public int style;
    public int tmpUnit;

    public static class LocalStrings {
        public String airQuality;
        public String humidity;
        public String temperatureRange;
        public String unknown;
        public String waitingData;
    }
}
