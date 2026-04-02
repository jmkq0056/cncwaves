package b1;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface k {

    public interface a {
    }

    public interface b {
        List<j1.b> a();

        void b(j1.c cVar);

        void c(j1.c cVar);
    }

    public interface c {
        void a(@Nullable Surface surface);

        void b(p1.d dVar);

        void c(@Nullable Surface surface);

        void d(q1.a aVar);

        void e(@Nullable TextureView textureView);

        void f(@Nullable SurfaceView surfaceView);

        void g(p1.d dVar);

        void h(@Nullable SurfaceView surfaceView);

        void i(@Nullable p1.c cVar);

        void j(q1.a aVar);

        void k(p1.e eVar);

        void l(p1.e eVar);

        void m(@Nullable TextureView textureView);
    }

    @Nullable
    d a();

    void b(boolean z3);

    @Nullable
    c c();

    boolean d();

    long e();

    void f(int i4, long j4);

    boolean g();

    long getCurrentPosition();

    long getDuration();

    int getPlaybackState();

    int getRepeatMode();

    void h(boolean z3);

    @Nullable
    l1.e i();

    boolean isPlaying();

    void j(a aVar);

    void k(@Nullable i iVar);

    boolean l();

    void m(a aVar);

    h1.b n();

    l o();

    i p();

    void prepare();

    Looper q();

    boolean r();

    long s();

    void setRepeatMode(int i4);

    int t();

    l1.c u();

    @Nullable
    b v();
}
