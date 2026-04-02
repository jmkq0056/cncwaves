package cn.huidu.lcd.transmit.model.report;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ScreenInfo {
    public List<DisplayInfo> displays;
    public int height;
    public int rotation;
    public boolean screenOn;
    public int width;

    public boolean changed(ScreenInfo screenInfo) {
        return (screenInfo != null && this.screenOn == screenInfo.screenOn && this.width == screenInfo.width && this.height == screenInfo.height && this.rotation == screenInfo.rotation) ? false : true;
    }
}
