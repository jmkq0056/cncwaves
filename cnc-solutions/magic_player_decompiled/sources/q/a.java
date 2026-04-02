package q;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioManager f3093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3095c;

    public a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.f3093a = audioManager;
        this.f3094b = 3;
        this.f3095c = audioManager.getStreamMaxVolume(3);
    }

    public int a(int i4) {
        if (cn.huidu.lcd.core.a.f337c == 103) {
            return (i4 < 0 || i4 > 100) ? this.f3095c : i4;
        }
        if (i4 == 0) {
            return 0;
        }
        return (i4 <= 0 || i4 >= 60) ? (i4 < 60 || i4 >= 100) ? this.f3095c : (i4 / 6) - 1 : i4 / 6;
    }

    public int b() {
        AudioManager audioManager = this.f3093a;
        if (audioManager != null) {
            return audioManager.getStreamVolume(this.f3094b);
        }
        return 0;
    }

    public int c(int i4) {
        if (cn.huidu.lcd.core.a.f337c == 103) {
            return (i4 < 0 || i4 > 100) ? this.f3095c : i4;
        }
        int[] iArr = {0, 6, 13, 20, 26, 33, 40, 46, 53, 60, 66, 73, 80, 86, 93, 100};
        if (i4 < 16) {
            return iArr[i4];
        }
        return 100;
    }

    public void d(int i4) {
        AudioManager audioManager = this.f3093a;
        if (audioManager != null) {
            audioManager.setStreamVolume(this.f3094b, i4, 0);
        }
    }
}
