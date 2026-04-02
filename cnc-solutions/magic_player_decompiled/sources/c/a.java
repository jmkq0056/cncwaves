package c;

import android.media.AudioTrack;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class a extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioTrack f306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f307b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedList<b.b> f308c = new LinkedList<>();

    public a() {
        AudioTrack audioTrack = new AudioTrack(3, 44100, 12, 2, AudioTrack.getMinBufferSize(44100, 12, 2), 1);
        this.f306a = audioTrack;
        audioTrack.play();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        b.b bVarRemoveFirst;
        while (!this.f307b) {
            synchronized (this.f308c) {
                bVarRemoveFirst = !this.f308c.isEmpty() ? this.f308c.removeFirst() : null;
            }
            if (bVarRemoveFirst == null) {
                try {
                    Thread.sleep(5L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            } else {
                AudioTrack audioTrack = this.f306a;
                if (audioTrack != null) {
                    audioTrack.write(bVarRemoveFirst.f151a, 0, 960);
                }
            }
        }
    }
}
