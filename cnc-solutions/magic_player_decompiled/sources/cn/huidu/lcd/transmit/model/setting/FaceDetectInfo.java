package cn.huidu.lcd.transmit.model.setting;

/* JADX INFO: loaded from: classes.dex */
public class FaceDetectInfo {
    public int cameraCount;
    public boolean countVisitors;
    public boolean enable;
    public PreviewInfo preview;
    public int reportInterval;
    public boolean reportVisitors;

    public static class PreviewInfo {
        public String alignment;
        public int height;
        public boolean showFaceInfo;
        public boolean showFaceRect;
        public boolean showVisitors;
        public int width;
    }
}
