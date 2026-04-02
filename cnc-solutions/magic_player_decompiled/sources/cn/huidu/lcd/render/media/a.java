package cn.huidu.lcd.render.media;

import android.media.MediaPlayer;
import android.support.v4.media.f;
import android.util.Log;
import android.view.Surface;
import cn.huidu.lcd.render.media.b;

/* JADX INFO: loaded from: classes.dex */
public class a implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnSeekCompleteListener, b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f467a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f470d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f472f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC0009a f473g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaPlayer f471e = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f468b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f469c = 0;

    /* JADX INFO: renamed from: cn.huidu.lcd.render.media.a$a, reason: collision with other inner class name */
    public interface InterfaceC0009a {
        void g(a aVar);

        void h(a aVar);

        void i(a aVar);

        void l(a aVar);
    }

    public final boolean a() {
        int i4;
        return (this.f471e == null || (i4 = this.f468b) == -1 || i4 == 0 || i4 == 1) ? false : true;
    }

    public boolean b() {
        return a() && this.f471e.isPlaying();
    }

    public final void c() {
        Surface surface;
        int i4 = this.f468b;
        if (i4 == 1 || i4 == 2) {
            Log.d("SimpleMediaPlayer", "openVideo: already prepared.");
            return;
        }
        e(false);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f471e = mediaPlayer;
            mediaPlayer.setOnPreparedListener(this);
            this.f471e.setOnCompletionListener(this);
            this.f471e.setOnErrorListener(this);
            this.f471e.setOnInfoListener(this);
            this.f471e.setOnSeekCompleteListener(this);
            this.f471e.setDataSource(this.f467a);
            int i5 = cn.huidu.lcd.core.a.f337c;
            if (i5 != 39 && i5 != 101 && (surface = this.f470d.f475b) != null) {
                this.f471e.setSurface(surface);
            }
            this.f471e.prepareAsync();
            Log.d("SimpleMediaPlayer", "prepareAsync: " + this.f467a);
            this.f468b = 1;
        } catch (Exception e4) {
            StringBuilder sbA = f.a("Unable to open content: ");
            sbA.append(this.f467a);
            Log.w("SimpleMediaPlayer", sbA.toString(), e4);
            this.f468b = -1;
            this.f469c = -1;
            onError(this.f471e, 1, 0);
        }
    }

    public void d() {
        if (a() && this.f471e.isPlaying()) {
            this.f471e.pause();
            this.f468b = 4;
        }
        this.f469c = 4;
    }

    public final void e(boolean z3) {
        MediaPlayer mediaPlayer = this.f471e;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.reset();
                this.f471e.release();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f471e = null;
        }
        this.f468b = 0;
        if (z3) {
            this.f469c = 0;
        }
    }

    public void f(int i4) {
        if (!a()) {
            this.f472f = i4;
            return;
        }
        try {
            this.f471e.seekTo(i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f472f = 0;
    }

    public void g(String str) {
        String str2 = this.f467a;
        if (str2 != null && !str2.equals(str)) {
            e(true);
        }
        this.f467a = str;
        this.f472f = 0;
        c();
    }

    public void h() {
        if (a()) {
            this.f471e.start();
            this.f468b = 3;
        }
        this.f469c = 3;
    }

    public void i() {
        MediaPlayer mediaPlayer = this.f471e;
        if (mediaPlayer != null) {
            if (mediaPlayer.isPlaying()) {
                this.f471e.stop();
            }
            int i4 = cn.huidu.lcd.core.a.f337c;
            if (i4 == 39 || i4 == 101) {
                this.f471e.setSurface(null);
            }
            this.f471e.reset();
            this.f471e.release();
            this.f471e = null;
        }
        this.f468b = 0;
        this.f469c = 0;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f468b = 5;
        this.f469c = 5;
        InterfaceC0009a interfaceC0009a = this.f473g;
        if (interfaceC0009a != null) {
            interfaceC0009a.i(this);
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i4, int i5) {
        a.b.a("Error: ", i4, ",", i5, "SimpleMediaPlayer");
        this.f468b = -1;
        this.f469c = -1;
        InterfaceC0009a interfaceC0009a = this.f473g;
        if (interfaceC0009a == null) {
            return true;
        }
        interfaceC0009a.g(this);
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i4, int i5) {
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Surface surface;
        this.f468b = 2;
        int i4 = this.f472f;
        if (i4 != 0) {
            f(i4);
        }
        if (this.f469c == 3) {
            h();
        }
        this.f470d.c(mediaPlayer.getVideoWidth(), mediaPlayer.getVideoHeight());
        int i5 = cn.huidu.lcd.core.a.f337c;
        if ((i5 == 39 || i5 == 101) && (surface = this.f470d.f475b) != null) {
            this.f471e.setSurface(surface);
        }
        InterfaceC0009a interfaceC0009a = this.f473g;
        if (interfaceC0009a != null) {
            interfaceC0009a.h(this);
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        InterfaceC0009a interfaceC0009a = this.f473g;
        if (interfaceC0009a != null) {
            interfaceC0009a.l(this);
        }
    }
}
