package p3;

import android.graphics.Bitmap;
import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class i extends j {
    public i(d dVar) {
        super(dVar);
    }

    @Override // p3.j
    public void a() {
        long jRenderFrame;
        int currentFrameIndex;
        int currentLoop;
        int loopCount;
        d dVar = this.f3053a;
        GifInfoHandle gifInfoHandle = dVar.f3034g;
        Bitmap bitmap = dVar.f3033f;
        synchronized (gifInfoHandle) {
            jRenderFrame = GifInfoHandle.renderFrame(gifInfoHandle.f3060a, bitmap);
        }
        if (jRenderFrame >= 0) {
            this.f3053a.f3030c = SystemClock.uptimeMillis() + jRenderFrame;
            if (this.f3053a.isVisible() && this.f3053a.f3029b) {
                d dVar2 = this.f3053a;
                if (!dVar2.f3039l) {
                    dVar2.f3028a.remove(this);
                    d dVar3 = this.f3053a;
                    dVar3.f3043p = dVar3.f3028a.schedule(this, jRenderFrame, TimeUnit.MILLISECONDS);
                }
            }
            if (!this.f3053a.f3035h.isEmpty()) {
                GifInfoHandle gifInfoHandle2 = this.f3053a.f3034g;
                synchronized (gifInfoHandle2) {
                    currentFrameIndex = GifInfoHandle.getCurrentFrameIndex(gifInfoHandle2.f3060a);
                }
                if (currentFrameIndex == this.f3053a.f3034g.b() - 1) {
                    d dVar4 = this.f3053a;
                    g gVar = dVar4.f3040m;
                    GifInfoHandle gifInfoHandle3 = dVar4.f3034g;
                    synchronized (gifInfoHandle3) {
                        currentLoop = GifInfoHandle.getCurrentLoop(gifInfoHandle3.f3060a);
                    }
                    if (currentLoop != 0) {
                        GifInfoHandle gifInfoHandle4 = dVar4.f3034g;
                        synchronized (gifInfoHandle4) {
                            loopCount = GifInfoHandle.getLoopCount(gifInfoHandle4.f3060a);
                        }
                        if (currentLoop >= loopCount) {
                            currentLoop--;
                        }
                    }
                    gVar.sendEmptyMessageAtTime(currentLoop, this.f3053a.f3030c);
                }
            }
        } else {
            d dVar5 = this.f3053a;
            dVar5.f3030c = Long.MIN_VALUE;
            dVar5.f3029b = false;
        }
        if (!this.f3053a.isVisible() || this.f3053a.f3040m.hasMessages(-1)) {
            return;
        }
        this.f3053a.f3040m.sendEmptyMessageAtTime(-1, 0L);
    }
}
