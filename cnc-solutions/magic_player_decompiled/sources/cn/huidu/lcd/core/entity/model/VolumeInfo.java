package cn.huidu.lcd.core.entity.model;

/* JADX INFO: loaded from: classes.dex */
public class VolumeInfo {
    public static final int EXTERNAL_SD = 3;
    public static final int INTERNAL_DATA = 1;
    public static final int INTERNAL_SD = 2;
    public static final int UNKNOWN_STORAGE = 0;
    public static final int USB_STORAGE = 4;
    private boolean mounted;
    private String path;
    private int type;

    public String getPath() {
        return this.path;
    }

    public int getType() {
        return this.type;
    }

    public boolean isMounted() {
        return this.mounted;
    }

    public void setMounted(boolean z3) {
        this.mounted = z3;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setType(int i4) {
        this.type = i4;
    }
}
