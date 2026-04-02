package p3;

import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class c extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f3027b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(d dVar, d dVar2) {
        super(dVar2);
        this.f3027b = dVar;
    }

    @Override // p3.j
    public void a() {
        boolean zReset;
        GifInfoHandle gifInfoHandle = this.f3027b.f3034g;
        synchronized (gifInfoHandle) {
            zReset = GifInfoHandle.reset(gifInfoHandle.f3060a);
        }
        if (zReset) {
            this.f3027b.start();
        }
    }
}
