package cn.huidu.lcd.render.player.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.view.View;
import f0.k;
import h0.h;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DrawableView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g0.a f495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f498d;

    public interface a {
    }

    public DrawableView(Context context) {
        super(context);
        setBackgroundColor(0);
        setDrawingCacheBackgroundColor(0);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        g0.a aVar = this.f495a;
        if (aVar != null) {
            aVar.f(canvas);
        }
        if (this.f496b != null) {
            this.f497c++;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j4 = jElapsedRealtime - this.f498d;
            if (j4 > 993) {
                a aVar2 = this.f496b;
                int i4 = this.f497c;
                Objects.requireNonNull((k) aVar2);
                h.b("TextWidget", "Has draw " + i4 + " frame in " + j4 + "ms.");
                this.f498d = jElapsedRealtime;
                this.f497c = 0;
            }
        }
    }

    public void setOnDrawListener(g0.a aVar) {
        this.f495a = aVar;
    }

    public void setOnFpsListener(a aVar) {
        this.f496b = aVar;
    }
}
