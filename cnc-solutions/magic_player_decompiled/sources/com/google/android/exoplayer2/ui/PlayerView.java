package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import b1.j;
import b1.k;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import p1.e;
import s1.f;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends FrameLayout {
    public static final /* synthetic */ int A = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final AspectRatioFrameLayout f1176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final View f1177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final View f1178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final ImageView f1179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final SubtitleView f1180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final View f1181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final TextView f1182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final PlayerControlView f1183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final FrameLayout f1184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final FrameLayout f1185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    public k f1186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1187m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    public PlayerControlView.d f1188n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1189o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    public Drawable f1190p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1191q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1192r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    public o1.b<? super b1.d> f1194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    public CharSequence f1195u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1196v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1197w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1198x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1199y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1200z;

    public final class a implements k.a, j1.c, e, View.OnLayoutChangeListener, n1.d, PlayerControlView.d {
        public a() {
            i1.a aVar = i1.a.f1920e;
        }

        @Override // com.google.android.exoplayer2.ui.PlayerControlView.d
        public void a(int i4) {
            PlayerView playerView = PlayerView.this;
            int i5 = PlayerView.A;
            playerView.h();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            TextureView textureView = (TextureView) view;
            PlayerView playerView = PlayerView.this;
            int i12 = PlayerView.A;
            Objects.requireNonNull(playerView);
            Matrix matrix = new Matrix();
            float width = textureView.getWidth();
            float height = textureView.getHeight();
            if (width != 0.0f) {
                int i13 = (height > 0.0f ? 1 : (height == 0.0f ? 0 : -1));
            }
            textureView.setTransform(matrix);
        }

        @Override // n1.d
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            PlayerView playerView = PlayerView.this;
            int i4 = PlayerView.A;
            return playerView.f();
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    public final void a() {
        View view = this.f1177c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final void b() {
        ImageView imageView = this.f1179e;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f1179e.setVisibility(4);
        }
    }

    public final void c(boolean z3) {
        k kVar = this.f1186l;
        if (!((kVar != null && kVar.d() && this.f1186l.g()) && this.f1198x) && k()) {
            boolean z4 = this.f1183i.e() && this.f1183i.getShowTimeoutMs() <= 0;
            boolean zD = d();
            if (z3 || z4 || zD) {
                e(zD);
            }
        }
    }

    public final boolean d() {
        k kVar = this.f1186l;
        if (kVar == null) {
            return true;
        }
        int playbackState = kVar.getPlaybackState();
        return this.f1197w && (playbackState == 1 || playbackState == 4 || !this.f1186l.g());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        k kVar = this.f1186l;
        if (kVar != null && kVar.d()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z3 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        if (z3 && k() && !this.f1183i.e()) {
            c(true);
        } else {
            if (!(k() && this.f1183i.a(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                if (!z3 || !k()) {
                    return false;
                }
                c(true);
                return false;
            }
            c(true);
        }
        return true;
    }

    public final void e(boolean z3) {
        if (k()) {
            this.f1183i.setShowTimeoutMs(z3 ? 0 : this.f1196v);
            PlayerControlView playerControlView = this.f1183i;
            if (!playerControlView.e()) {
                playerControlView.setVisibility(0);
                Iterator<PlayerControlView.d> it = playerControlView.f1149b.iterator();
                while (it.hasNext()) {
                    it.next().a(playerControlView.getVisibility());
                }
                playerControlView.h();
                playerControlView.f();
            }
            playerControlView.d();
        }
    }

    public final boolean f() {
        if (!k() || this.f1186l == null) {
            return false;
        }
        if (!this.f1183i.e()) {
            c(true);
        } else if (this.f1199y) {
            this.f1183i.c();
        }
        return true;
    }

    public final void g() {
        int i4;
        if (this.f1181g != null) {
            k kVar = this.f1186l;
            boolean z3 = true;
            if (kVar == null || kVar.getPlaybackState() != 2 || ((i4 = this.f1191q) != 2 && (i4 != 1 || !this.f1186l.g()))) {
                z3 = false;
            }
            this.f1181g.setVisibility(z3 ? 0 : 8);
        }
    }

    public List<i1.b> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f1185k;
        if (frameLayout != null) {
            arrayList.add(new i1.b(frameLayout, 3, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f1183i;
        if (playerControlView != null) {
            arrayList.add(new i1.b(playerControlView, 0));
        }
        return f.j(arrayList);
    }

    @Deprecated
    public View[] getAdOverlayViews() {
        return new View[0];
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f1184j;
        if (frameLayout != null) {
            return frameLayout;
        }
        throw new IllegalStateException("exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f1197w;
    }

    public boolean getControllerHideOnTouch() {
        return this.f1199y;
    }

    public int getControllerShowTimeoutMs() {
        return this.f1196v;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f1190p;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f1185k;
    }

    @Nullable
    public k getPlayer() {
        return this.f1186l;
    }

    public int getResizeMode() {
        o1.a.c(this.f1176b);
        return this.f1176b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f1180f;
    }

    public boolean getUseArtwork() {
        return this.f1189o;
    }

    public boolean getUseController() {
        return this.f1187m;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f1178d;
    }

    public final void h() {
        PlayerControlView playerControlView = this.f1183i;
        if (playerControlView == null || !this.f1187m) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() == 0) {
            setContentDescription(this.f1199y ? getResources().getString(R$string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R$string.exo_controls_show));
        }
    }

    public final void i() {
        TextView textView = this.f1182h;
        if (textView != null) {
            CharSequence charSequence = this.f1195u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f1182h.setVisibility(0);
            } else {
                k kVar = this.f1186l;
                if (kVar != null) {
                    kVar.a();
                }
                this.f1182h.setVisibility(8);
            }
        }
    }

    public final void j(boolean z3) {
        k kVar = this.f1186l;
        if (kVar != null) {
            if (!(kVar.n().f1858a == 0)) {
                if (z3 && !this.f1192r) {
                    a();
                }
                kVar.u();
                Objects.requireNonNull(null);
                throw null;
            }
        }
        if (this.f1192r) {
            return;
        }
        b();
        a();
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    public final boolean k() {
        if (!this.f1187m) {
            return false;
        }
        o1.a.c(this.f1183i);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!k() || this.f1186l == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1200z = true;
            return true;
        }
        if (action != 1 || !this.f1200z) {
            return false;
        }
        this.f1200z = false;
        performClick();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!k() || this.f1186l == null) {
            return false;
        }
        c(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return f();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        o1.a.c(this.f1176b);
        this.f1176b.setAspectRatioListener(bVar);
    }

    public void setControlDispatcher(b1.b bVar) {
        o1.a.c(this.f1183i);
        this.f1183i.setControlDispatcher(bVar);
    }

    public void setControllerAutoShow(boolean z3) {
        this.f1197w = z3;
    }

    public void setControllerHideDuringAds(boolean z3) {
        this.f1198x = z3;
    }

    public void setControllerHideOnTouch(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1199y = z3;
        h();
    }

    public void setControllerShowTimeoutMs(int i4) {
        o1.a.c(this.f1183i);
        this.f1196v = i4;
        if (this.f1183i.e()) {
            e(d());
        }
    }

    public void setControllerVisibilityListener(@Nullable PlayerControlView.d dVar) {
        o1.a.c(this.f1183i);
        PlayerControlView.d dVar2 = this.f1188n;
        if (dVar2 == dVar) {
            return;
        }
        if (dVar2 != null) {
            this.f1183i.f1149b.remove(dVar2);
        }
        this.f1188n = dVar;
        if (dVar != null) {
            PlayerControlView playerControlView = this.f1183i;
            Objects.requireNonNull(playerControlView);
            playerControlView.f1149b.add(dVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        o1.a.b(this.f1182h != null);
        this.f1195u = charSequence;
        i();
    }

    @Deprecated
    public void setDefaultArtwork(@Nullable Bitmap bitmap) {
        setDefaultArtwork(bitmap == null ? null : new BitmapDrawable(getResources(), bitmap));
    }

    public void setErrorMessageProvider(@Nullable o1.b<? super b1.d> bVar) {
        if (this.f1194t != bVar) {
            this.f1194t = bVar;
            i();
        }
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i4) {
        o1.a.c(this.f1183i);
        this.f1183i.setFastForwardIncrementMs(i4);
    }

    public void setKeepContentOnPlayerReset(boolean z3) {
        if (this.f1192r != z3) {
            this.f1192r = z3;
            j(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable j jVar) {
        o1.a.c(this.f1183i);
        this.f1183i.setPlaybackPreparer(jVar);
    }

    public void setPlayer(@Nullable k kVar) {
        o1.a.b(Looper.myLooper() == Looper.getMainLooper());
        o1.a.a(kVar == null || kVar.q() == Looper.getMainLooper());
        k kVar2 = this.f1186l;
        if (kVar2 == kVar) {
            return;
        }
        if (kVar2 != null) {
            kVar2.m(this.f1175a);
            k.c cVarC = kVar2.c();
            if (cVarC != null) {
                cVarC.k(this.f1175a);
                View view = this.f1178d;
                if (view instanceof TextureView) {
                    cVarC.e((TextureView) view);
                } else if (view instanceof SphericalGLSurfaceView) {
                    ((SphericalGLSurfaceView) view).setVideoComponent(null);
                } else if (view instanceof VideoDecoderGLSurfaceView) {
                    cVarC.i(null);
                } else if (view instanceof SurfaceView) {
                    cVarC.h((SurfaceView) view);
                }
            }
            k.b bVarV = kVar2.v();
            if (bVarV != null) {
                bVarV.b(this.f1175a);
            }
        }
        SubtitleView subtitleView = this.f1180f;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f1186l = kVar;
        if (k()) {
            this.f1183i.setPlayer(kVar);
        }
        g();
        i();
        j(true);
        if (kVar == null) {
            PlayerControlView playerControlView = this.f1183i;
            if (playerControlView != null) {
                playerControlView.c();
                return;
            }
            return;
        }
        k.c cVarC2 = kVar.c();
        if (cVarC2 != null) {
            View view2 = this.f1178d;
            if (view2 instanceof TextureView) {
                cVarC2.m((TextureView) view2);
            } else if (view2 instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view2).setVideoComponent(cVarC2);
            } else if (view2 instanceof VideoDecoderGLSurfaceView) {
                cVarC2.i(((VideoDecoderGLSurfaceView) view2).getVideoDecoderOutputBufferRenderer());
            } else if (view2 instanceof SurfaceView) {
                cVarC2.f((SurfaceView) view2);
            }
            cVarC2.l(this.f1175a);
        }
        k.b bVarV2 = kVar.v();
        if (bVarV2 != null) {
            bVarV2.c(this.f1175a);
            SubtitleView subtitleView2 = this.f1180f;
            if (subtitleView2 != null) {
                subtitleView2.setCues(bVarV2.a());
            }
        }
        kVar.j(this.f1175a);
        c(false);
    }

    public void setRepeatToggleModes(int i4) {
        o1.a.c(this.f1183i);
        this.f1183i.setRepeatToggleModes(i4);
    }

    public void setResizeMode(int i4) {
        o1.a.c(this.f1176b);
        this.f1176b.setResizeMode(i4);
    }

    @Deprecated
    public void setRewindIncrementMs(int i4) {
        o1.a.c(this.f1183i);
        this.f1183i.setRewindIncrementMs(i4);
    }

    @Deprecated
    public void setShowBuffering(boolean z3) {
        setShowBuffering(z3 ? 1 : 0);
    }

    public void setShowFastForwardButton(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1183i.setShowFastForwardButton(z3);
    }

    public void setShowMultiWindowTimeBar(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1183i.setShowMultiWindowTimeBar(z3);
    }

    public void setShowNextButton(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1183i.setShowNextButton(z3);
    }

    public void setShowPreviousButton(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1183i.setShowPreviousButton(z3);
    }

    public void setShowRewindButton(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1183i.setShowRewindButton(z3);
    }

    public void setShowShuffleButton(boolean z3) {
        o1.a.c(this.f1183i);
        this.f1183i.setShowShuffleButton(z3);
    }

    public void setShutterBackgroundColor(int i4) {
        View view = this.f1177c;
        if (view != null) {
            view.setBackgroundColor(i4);
        }
    }

    public void setUseArtwork(boolean z3) {
        o1.a.b((z3 && this.f1179e == null) ? false : true);
        if (this.f1189o != z3) {
            this.f1189o = z3;
            j(false);
        }
    }

    public void setUseController(boolean z3) {
        o1.a.b((z3 && this.f1183i == null) ? false : true);
        if (this.f1187m == z3) {
            return;
        }
        this.f1187m = z3;
        if (k()) {
            this.f1183i.setPlayer(this.f1186l);
        } else {
            PlayerControlView playerControlView = this.f1183i;
            if (playerControlView != null) {
                playerControlView.c();
                this.f1183i.setPlayer(null);
            }
        }
        h();
    }

    public void setUseSensorRotation(boolean z3) {
        if (this.f1193s != z3) {
            this.f1193s = z3;
            View view = this.f1178d;
            if (view instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view).setUseSensorRotation(z3);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        super.setVisibility(i4);
        View view = this.f1178d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i4);
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setShowBuffering(int i4) {
        if (this.f1191q != i4) {
            this.f1191q = i4;
            g();
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        boolean z3;
        int integer;
        boolean z4;
        int i5;
        int i6;
        boolean z5;
        int i7;
        boolean z6;
        boolean z7;
        int i8;
        int i9;
        boolean z8;
        super(context, attributeSet, i4);
        a aVar = new a();
        this.f1175a = aVar;
        if (isInEditMode()) {
            this.f1176b = null;
            this.f1177c = null;
            this.f1178d = null;
            this.f1179e = null;
            this.f1180f = null;
            this.f1181g = null;
            this.f1182h = null;
            this.f1183i = null;
            this.f1184j = null;
            this.f1185k = null;
            ImageView imageView = new ImageView(context);
            if (o1.e.f2847a >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo, null));
                imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(resources2.getDrawable(R$drawable.exo_edit_mode_logo));
                imageView.setBackgroundColor(resources2.getColor(R$color.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        int i10 = R$layout.exo_player_view;
        this.f1193s = true;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PlayerView, 0, 0);
            try {
                int i11 = R$styleable.PlayerView_shutter_background_color;
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i11);
                int color = typedArrayObtainStyledAttributes.getColor(i11, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerView_player_layout_id, i10);
                boolean z9 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerView_default_artwork, 0);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_controller, true);
                int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_surface_type, 1);
                int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_resize_mode, 0);
                int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_show_timeout, 5000);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_on_touch, true);
                boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_auto_show, true);
                integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.PlayerView_show_buffering, 0);
                this.f1192r = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_keep_content_on_player_reset, this.f1192r);
                boolean z13 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_during_ads, true);
                this.f1193s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_sensor_rotation, this.f1193s);
                typedArrayObtainStyledAttributes.recycle();
                i6 = i12;
                i10 = resourceId;
                z3 = z12;
                i9 = i14;
                z8 = z10;
                z4 = z13;
                i8 = resourceId2;
                z7 = z9;
                z6 = zHasValue;
                i7 = color;
                z5 = z11;
                i5 = i13;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z3 = true;
            integer = 0;
            z4 = true;
            i5 = 0;
            i6 = 1;
            z5 = true;
            i7 = 0;
            z6 = false;
            z7 = true;
            i8 = 0;
            i9 = 5000;
            z8 = true;
        }
        LayoutInflater.from(context).inflate(i10, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R$id.exo_content_frame);
        this.f1176b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i5);
        }
        View viewFindViewById = findViewById(R$id.exo_shutter);
        this.f1177c = viewFindViewById;
        if (viewFindViewById != null && z6) {
            viewFindViewById.setBackgroundColor(i7);
        }
        if (aspectRatioFrameLayout != null && i6 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i6 == 2) {
                this.f1178d = new TextureView(context);
            } else if (i6 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(aVar);
                sphericalGLSurfaceView.setUseSensorRotation(this.f1193s);
                this.f1178d = sphericalGLSurfaceView;
            } else if (i6 != 4) {
                this.f1178d = new SurfaceView(context);
            } else {
                this.f1178d = new VideoDecoderGLSurfaceView(context);
            }
            this.f1178d.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.f1178d, 0);
        } else {
            this.f1178d = null;
        }
        this.f1184j = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f1185k = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f1179e = imageView2;
        this.f1189o = z7 && imageView2 != null;
        if (i8 != 0) {
            this.f1190p = ContextCompat.getDrawable(getContext(), i8);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f1180f = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View viewFindViewById2 = findViewById(R$id.exo_buffering);
        this.f1181g = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f1191q = integer;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f1182h = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i15 = R$id.exo_controller;
        PlayerControlView playerControlView = (PlayerControlView) findViewById(i15);
        View viewFindViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f1183i = playerControlView;
        } else if (viewFindViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f1183i = playerControlView2;
            playerControlView2.setId(i15);
            playerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(playerControlView2, iIndexOfChild);
        } else {
            this.f1183i = null;
        }
        PlayerControlView playerControlView3 = this.f1183i;
        this.f1196v = playerControlView3 != null ? i9 : 0;
        this.f1199y = z5;
        this.f1197w = z3;
        this.f1198x = z4;
        this.f1187m = z8 && playerControlView3 != null;
        if (playerControlView3 != null) {
            playerControlView3.c();
        }
        h();
        PlayerControlView playerControlView4 = this.f1183i;
        if (playerControlView4 != null) {
            playerControlView4.f1149b.add(aVar);
        }
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f1190p != drawable) {
            this.f1190p = drawable;
            j(false);
        }
    }
}
