package pl.droidsonroids.gif;

import android.content.res.AssetManager;
import android.content.res.Resources;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RawRes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    public static final class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AssetManager f3088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f3089b;

        public b(@NonNull AssetManager assetManager, @NonNull String str) {
            super(null);
            this.f3088a = assetManager;
            this.f3089b = str;
        }

        @Override // pl.droidsonroids.gif.c
        public GifInfoHandle a() {
            return new GifInfoHandle(this.f3088a.openFd(this.f3089b));
        }
    }

    /* JADX INFO: renamed from: pl.droidsonroids.gif.c$c, reason: collision with other inner class name */
    public static class C0039c extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f3090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3091b;

        public C0039c(@NonNull Resources resources, @DrawableRes @RawRes int i4) {
            super(null);
            this.f3090a = resources;
            this.f3091b = i4;
        }

        @Override // pl.droidsonroids.gif.c
        public GifInfoHandle a() {
            return new GifInfoHandle(this.f3090a.openRawResourceFd(this.f3091b));
        }
    }

    public c(a aVar) {
    }

    public abstract GifInfoHandle a();
}
