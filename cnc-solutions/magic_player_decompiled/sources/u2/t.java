package u2;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public static s f3617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f3618b;

    public static void a(s sVar) {
        if (sVar.f3615f != null || sVar.f3616g != null) {
            throw new IllegalArgumentException();
        }
        if (sVar.f3613d) {
            return;
        }
        synchronized (t.class) {
            long j4 = f3618b + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            if (j4 > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                return;
            }
            f3618b = j4;
            sVar.f3615f = f3617a;
            sVar.f3612c = 0;
            sVar.f3611b = 0;
            f3617a = sVar;
        }
    }

    public static s b() {
        synchronized (t.class) {
            s sVar = f3617a;
            if (sVar == null) {
                return new s();
            }
            f3617a = sVar.f3615f;
            sVar.f3615f = null;
            f3618b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return sVar;
        }
    }
}
