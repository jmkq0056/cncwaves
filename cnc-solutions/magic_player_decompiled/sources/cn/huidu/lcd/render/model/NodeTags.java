package cn.huidu.lcd.render.model;

import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes.dex */
public class NodeTags {
    public static final String ANIMATION = "Animation";
    public static final String AREA = "Area";
    public static final String BUTTON = "Button";
    public static final String CLOCK = "Clock";
    public static final String CONTENT_CHANGE = "ContentChange";
    public static final String DATE_RANGE = "DateRange";
    public static final String EFFECT = "Effect";
    public static final String E_WATCH = "EWatch";
    public static final String FONT_STYLE = "FontStyle";
    public static final String HDMI_IN = "HdmiIn";
    public static final String HTML = "Html";
    public static final String IMAGE = "Image";
    public static final String INTERACTION = "Interaction";
    public static final String LIVE_STREAM = "LiveStream";
    public static final String OFFICE = "Office";
    public static final String PLAY_TASK = "PlayTask";
    public static final String PROGRAM = "Program";
    public static final String QR_CODE = "QrCode";
    public static final String SCREEN = "Screen";
    public static final String TEXT = "Text";
    public static final String TIMER = "Timer";
    public static final String TIME_RANGE = "TimeRange";
    public static final String VIDEO = "Video";
    public static final String WEATHER = "Weather";
    public static final String WEEK_RANGE = "WeekRange";

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Class getClassByTag(String str) {
        if (str == null) {
            return null;
        }
        byte b4 = -1;
        switch (str.hashCode()) {
            case -2137965827:
                if (str.equals(HDMI_IN)) {
                    b4 = 0;
                }
                break;
            case -1935922468:
                if (str.equals(OFFICE)) {
                    b4 = 1;
                }
                break;
            case -1868618802:
                if (str.equals(QR_CODE)) {
                    b4 = 2;
                }
                break;
            case -1823822708:
                if (str.equals(SCREEN)) {
                    b4 = 3;
                }
                break;
            case -1430689876:
                if (str.equals(LIVE_STREAM)) {
                    b4 = 4;
                }
                break;
            case -1406873644:
                if (str.equals(WEATHER)) {
                    b4 = 5;
                }
                break;
            case -1172489372:
                if (str.equals(ANIMATION)) {
                    b4 = 6;
                }
                break;
            case -782993934:
                if (str.equals(INTERACTION)) {
                    b4 = 7;
                }
                break;
            case -113925751:
                if (str.equals(WEEK_RANGE)) {
                    b4 = 8;
                }
                break;
            case 2049197:
                if (str.equals(AREA)) {
                    b4 = 9;
                }
                break;
            case 2259915:
                if (str.equals(HTML)) {
                    b4 = 10;
                }
                break;
            case 2603341:
                if (str.equals(TEXT)) {
                    b4 = Flags.CD;
                }
                break;
            case 2975081:
                if (str.equals(CONTENT_CHANGE)) {
                    b4 = 12;
                }
                break;
            case 65203182:
                if (str.equals(CLOCK)) {
                    b4 = 13;
                }
                break;
            case 70760763:
                if (str.equals(IMAGE)) {
                    b4 = 14;
                }
                break;
            case 80811813:
                if (str.equals(TIMER)) {
                    b4 = 15;
                }
                break;
            case 82650203:
                if (str.equals(VIDEO)) {
                    b4 = 16;
                }
                break;
            case 453024386:
                if (str.equals(FONT_STYLE)) {
                    b4 = 17;
                }
                break;
            case 1355265636:
                if (str.equals(PROGRAM)) {
                    b4 = 18;
                }
                break;
            case 1742542351:
                if (str.equals(DATE_RANGE)) {
                    b4 = 19;
                }
                break;
            case 1943396089:
                if (str.equals(PLAY_TASK)) {
                    b4 = 20;
                }
                break;
            case 2001146706:
                if (str.equals(BUTTON)) {
                    b4 = 21;
                }
                break;
            case 2028064336:
                if (str.equals(TIME_RANGE)) {
                    b4 = 22;
                }
                break;
            case 2058762122:
                if (str.equals(E_WATCH)) {
                    b4 = 23;
                }
                break;
            case 2072749489:
                if (str.equals(EFFECT)) {
                    b4 = 24;
                }
                break;
        }
        switch (b4) {
        }
        return null;
    }
}
