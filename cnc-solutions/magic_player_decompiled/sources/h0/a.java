package h0;

import android.media.MediaPlayer;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class a implements MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MediaPlayer f1793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f1795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1796d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1797e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1798f = 0;

    public final boolean a() {
        int i4;
        return (this.f1793a == null || (i4 = this.f1796d) == -1 || i4 == 0 || i4 == 1) ? false : true;
    }

    public final void b() {
        MediaPlayer mediaPlayer = this.f1793a;
        if (mediaPlayer != null) {
            try {
                if (mediaPlayer.isPlaying()) {
                    this.f1793a.stop();
                }
                this.f1793a.reset();
                this.f1793a.release();
                this.f1793a = null;
                this.f1796d = 0;
                this.f1797e = 0;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void c(int i4) {
        if (!a()) {
            this.f1798f = i4;
            return;
        }
        int duration = this.f1793a.getDuration();
        if (i4 > duration && duration > 0) {
            i4 %= duration;
        }
        this.f1793a.seekTo(i4);
        this.f1798f = 0;
    }

    public void d() {
        if (a()) {
            this.f1793a.start();
            this.f1796d = 3;
        }
        this.f1797e = 3;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i4, int i5) {
        a.b.a("onError: ", i4, ", ", i5, "BGMPlayer");
        this.f1796d = -1;
        this.f1797e = -1;
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        StringBuilder sbA = android.support.v4.media.f.a("onPrepared: duration = ");
        sbA.append(mediaPlayer.getDuration());
        Log.d("BGMPlayer", sbA.toString());
        this.f1796d = 2;
        int i4 = this.f1798f;
        if (i4 != 0) {
            c(i4);
        }
        if (this.f1797e == 3) {
            d();
        }
    }
}
