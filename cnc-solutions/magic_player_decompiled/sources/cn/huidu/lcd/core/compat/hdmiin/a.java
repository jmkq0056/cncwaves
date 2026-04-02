package cn.huidu.lcd.core.compat.hdmiin;

import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Build;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import d.d;
import w0.c;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Thread f342a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f345d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f343b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f344c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f346e = "";

    public a() {
        int i4 = cn.huidu.lcd.core.a.f337c;
        if (i4 == 101) {
            if (cn.huidu.lcd.core.a.f335a.startsWith("V1.1")) {
                this.f345d = "bypass";
                return;
            } else {
                this.f345d = "";
                return;
            }
        }
        if (i4 == 104 || i4 == 105 || i4 == 106) {
            this.f345d = "";
        } else {
            this.f345d = "bypass";
        }
    }

    public final void a() {
        Log.d("AudioStream", "HDMI IN audio thread start.");
        SystemProperties.set("media.audio.hdmiin", "1");
        int minBufferSize = AudioTrack.getMinBufferSize(44100, 12, 2);
        if (minBufferSize < 8192) {
            minBufferSize = 8192;
        }
        AudioTrack audioTrack = new AudioTrack(3, 44100, 12, 2, minBufferSize, 1);
        int minBufferSize2 = AudioRecord.getMinBufferSize(44100, 12, 2);
        Log.i("AudioStream", "out min: " + minBufferSize + ", in min: " + minBufferSize2);
        AudioRecord audioRecord = new AudioRecord(5, 44100, 12, 2, minBufferSize2);
        audioRecord.startRecording();
        audioTrack.play();
        byte[] bArr = new byte[minBufferSize2];
        while (this.f343b) {
            int i4 = audioRecord.read(bArr, 0, minBufferSize2);
            if (i4 > 0) {
                audioTrack.write(bArr, 0, i4);
            }
        }
        try {
            audioRecord.release();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                audioTrack.setVolume(0.0f);
                audioTrack.pause();
                SystemClock.sleep(50L);
            }
            audioTrack.release();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        SystemProperties.set("media.audio.hdmiin", "0");
        Log.d("AudioStream", "HDMI IN audio thread finish.");
    }

    public final void b(boolean z3) {
        ((AudioManager) c.a("audio")).setParameters("HDMIin_enable=" + z3);
    }

    public synchronized void c() {
        String str = this.f345d;
        Log.d("AudioStream", "start: " + str);
        if (this.f344c) {
            Log.w("AudioStream", "already startup");
            return;
        }
        this.f344c = true;
        this.f346e = str;
        SystemProperties.set("media.audio.device_policy", str);
        if ("bypass".equals(str)) {
            e();
            b(true);
        } else {
            b(false);
            this.f343b = true;
            Thread thread = this.f342a;
            if (thread == null || !thread.isAlive()) {
                Thread thread2 = new Thread(new d(this));
                this.f342a = thread2;
                thread2.setName("HdmiInAudio");
                this.f342a.start();
            }
        }
    }

    public synchronized void d() {
        Log.d("AudioStream", "stop: " + this.f346e);
        b(false);
        e();
        this.f344c = false;
        this.f346e = "";
        SystemProperties.set("media.audio.device_policy", "");
    }

    public final void e() {
        this.f343b = false;
        try {
            Thread thread = this.f342a;
            if (thread == null || !thread.isAlive()) {
                return;
            }
            this.f342a.join(300L);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
