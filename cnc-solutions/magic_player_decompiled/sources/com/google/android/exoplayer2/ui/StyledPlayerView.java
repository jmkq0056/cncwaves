package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
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
import b1.k;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import m1.j;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import p1.e;
import s1.f;

/* JADX INFO: loaded from: classes.dex */
public class StyledPlayerView extends FrameLayout {
    public static final /* synthetic */ int A = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final AspectRatioFrameLayout f1277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final View f1278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final View f1279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final ImageView f1280e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final SubtitleView f1281f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final View f1282g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final TextView f1283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final StyledPlayerControlView f1284i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final FrameLayout f1285j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final FrameLayout f1286k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    public k f1287l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1288m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    public StyledPlayerControlView.n f1289n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1290o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    public Drawable f1291p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1292q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1293r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1294s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    public o1.b<? super b1.d> f1295t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    public CharSequence f1296u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1297v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1298w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1299x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1300y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1301z;

    public final class a implements k.a, j1.c, e, View.OnLayoutChangeListener, n1.d, StyledPlayerControlView.n {
        public a() {
            i1.a aVar = i1.a.f1920e;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.n
        public void a(int i4) {
            StyledPlayerView styledPlayerView = StyledPlayerView.this;
            int i5 = StyledPlayerView.A;
            styledPlayerView.h();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            TextureView textureView = (TextureView) view;
            StyledPlayerView styledPlayerView = StyledPlayerView.this;
            int i12 = StyledPlayerView.A;
            Objects.requireNonNull(styledPlayerView);
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
            StyledPlayerView styledPlayerView = StyledPlayerView.this;
            int i4 = StyledPlayerView.A;
            return styledPlayerView.f();
        }
    }

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    public final void a() {
        View view = this.f1278c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final void b() {
        ImageView imageView = this.f1280e;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f1280e.setVisibility(4);
        }
    }

    public final void c(boolean z3) {
        k kVar = this.f1287l;
        if (!((kVar != null && kVar.d() && this.f1287l.g()) && this.f1299x) && k()) {
            boolean z4 = this.f1284i.g() && this.f1284i.getShowTimeoutMs() <= 0;
            boolean zD = d();
            if (z3 || z4 || zD) {
                e(zD);
            }
        }
    }

    public final boolean d() {
        k kVar = this.f1287l;
        if (kVar == null) {
            return true;
        }
        kVar.getPlaybackState();
        if (!this.f1298w) {
            return false;
        }
        this.f1287l.o();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        k kVar = this.f1287l;
        if (kVar != null && kVar.d()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z3 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        if (z3 && k() && !this.f1284i.g()) {
            c(true);
        } else {
            if (!(k() && this.f1284i.b(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
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
            this.f1284i.setShowTimeoutMs(z3 ? 0 : this.f1297v);
            j jVar = this.f1284i.f1208c0;
            if (!jVar.f2505a.h()) {
                jVar.f2505a.setVisibility(0);
                jVar.f2505a.i();
                View view = jVar.f2505a.f1211e;
                if (view != null) {
                    view.requestFocus();
                }
            }
            jVar.m();
        }
    }

    public final boolean f() {
        if (k() && this.f1287l != null) {
            if (!this.f1284i.g()) {
                c(true);
                return true;
            }
            if (this.f1300y) {
                this.f1284i.f();
                return true;
            }
        }
        return false;
    }

    public final void g() {
        int i4;
        if (this.f1282g != null) {
            k kVar = this.f1287l;
            boolean z3 = true;
            if (kVar == null || kVar.getPlaybackState() != 2 || ((i4 = this.f1292q) != 2 && (i4 != 1 || !this.f1287l.g()))) {
                z3 = false;
            }
            this.f1282g.setVisibility(z3 ? 0 : 8);
        }
    }

    public List<i1.b> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f1286k;
        if (frameLayout != null) {
            arrayList.add(new i1.b(frameLayout, 3, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f1284i;
        if (styledPlayerControlView != null) {
            arrayList.add(new i1.b(styledPlayerControlView, 0));
        }
        return f.j(arrayList);
    }

    @Deprecated
    public View[] getAdOverlayViews() {
        return new View[0];
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f1285j;
        if (frameLayout != null) {
            return frameLayout;
        }
        throw new IllegalStateException("exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f1298w;
    }

    public boolean getControllerHideOnTouch() {
        return this.f1300y;
    }

    public int getControllerShowTimeoutMs() {
        return this.f1297v;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f1291p;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f1286k;
    }

    @Nullable
    public k getPlayer() {
        return this.f1287l;
    }

    public int getResizeMode() {
        o1.a.c(this.f1277b);
        return this.f1277b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f1281f;
    }

    public boolean getUseArtwork() {
        return this.f1290o;
    }

    public boolean getUseController() {
        return this.f1288m;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f1279d;
    }

    public final void h() {
        StyledPlayerControlView styledPlayerControlView = this.f1284i;
        if (styledPlayerControlView == null || !this.f1288m) {
            setContentDescription(null);
        } else if (styledPlayerControlView.g()) {
            setContentDescription(this.f1300y ? getResources().getString(R$string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R$string.exo_controls_show));
        }
    }

    public final void i() {
        TextView textView = this.f1283h;
        if (textView != null) {
            CharSequence charSequence = this.f1296u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f1283h.setVisibility(0);
            } else {
                k kVar = this.f1287l;
                if (kVar != null) {
                    kVar.a();
                }
                this.f1283h.setVisibility(8);
            }
        }
    }

    public final void j(boolean z3) {
        k kVar = this.f1287l;
        if (kVar != null) {
            if (!(kVar.n().f1858a == 0)) {
                if (z3 && !this.f1293r) {
                    a();
                }
                kVar.u();
                Objects.requireNonNull(null);
                throw null;
            }
        }
        if (this.f1293r) {
            return;
        }
        b();
        a();
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    public final boolean k() {
        if (!this.f1288m) {
            return false;
        }
        o1.a.c(this.f1284i);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!k() || this.f1287l == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1301z = true;
            return true;
        }
        if (action != 1 || !this.f1301z) {
            return false;
        }
        this.f1301z = false;
        return performClick();
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!k() || this.f1287l == null) {
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
        o1.a.c(this.f1277b);
        this.f1277b.setAspectRatioListener(bVar);
    }

    public void setControlDispatcher(b1.b bVar) {
        o1.a.c(this.f1284i);
        this.f1284i.setControlDispatcher(bVar);
    }

    public void setControllerAutoShow(boolean z3) {
        this.f1298w = z3;
    }

    public void setControllerHideDuringAds(boolean z3) {
        this.f1299x = z3;
    }

    public void setControllerHideOnTouch(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1300y = z3;
        h();
    }

    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.d dVar) {
        o1.a.c(this.f1284i);
        this.f1284i.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i4) {
        o1.a.c(this.f1284i);
        this.f1297v = i4;
        if (this.f1284i.g()) {
            e(d());
        }
    }

    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.n nVar) {
        o1.a.c(this.f1284i);
        StyledPlayerControlView.n nVar2 = this.f1289n;
        if (nVar2 == nVar) {
            return;
        }
        if (nVar2 != null) {
            this.f1284i.f1205b.remove(nVar2);
        }
        this.f1289n = nVar;
        if (nVar != null) {
            StyledPlayerControlView styledPlayerControlView = this.f1284i;
            Objects.requireNonNull(styledPlayerControlView);
            styledPlayerControlView.f1205b.add(nVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        o1.a.b(this.f1283h != null);
        this.f1296u = charSequence;
        i();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f1291p != drawable) {
            this.f1291p = drawable;
            j(false);
        }
    }

    public void setErrorMessageProvider(@Nullable o1.b<? super b1.d> bVar) {
        if (this.f1295t != bVar) {
            this.f1295t = bVar;
            i();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z3) {
        if (this.f1293r != z3) {
            this.f1293r = z3;
            j(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable b1.j jVar) {
        o1.a.c(this.f1284i);
        this.f1284i.setPlaybackPreparer(jVar);
    }

    public void setPlayer(@Nullable k kVar) {
        o1.a.b(Looper.myLooper() == Looper.getMainLooper());
        o1.a.a(kVar == null || kVar.q() == Looper.getMainLooper());
        k kVar2 = this.f1287l;
        if (kVar2 == kVar) {
            return;
        }
        if (kVar2 != null) {
            kVar2.m(this.f1276a);
            k.c cVarC = kVar2.c();
            if (cVarC != null) {
                cVarC.k(this.f1276a);
                View view = this.f1279d;
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
                bVarV.b(this.f1276a);
            }
        }
        SubtitleView subtitleView = this.f1281f;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f1287l = kVar;
        if (k()) {
            this.f1284i.setPlayer(kVar);
        }
        g();
        i();
        j(true);
        if (kVar == null) {
            StyledPlayerControlView styledPlayerControlView = this.f1284i;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.f();
                return;
            }
            return;
        }
        k.c cVarC2 = kVar.c();
        if (cVarC2 != null) {
            View view2 = this.f1279d;
            if (view2 instanceof TextureView) {
                cVarC2.m((TextureView) view2);
            } else if (view2 instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view2).setVideoComponent(cVarC2);
            } else if (view2 instanceof VideoDecoderGLSurfaceView) {
                cVarC2.i(((VideoDecoderGLSurfaceView) view2).getVideoDecoderOutputBufferRenderer());
            } else if (view2 instanceof SurfaceView) {
                cVarC2.f((SurfaceView) view2);
            }
            cVarC2.l(this.f1276a);
        }
        k.b bVarV2 = kVar.v();
        if (bVarV2 != null) {
            bVarV2.c(this.f1276a);
            SubtitleView subtitleView2 = this.f1281f;
            if (subtitleView2 != null) {
                subtitleView2.setCues(bVarV2.a());
            }
        }
        kVar.j(this.f1276a);
        c(false);
    }

    public void setRepeatToggleModes(int i4) {
        o1.a.c(this.f1284i);
        this.f1284i.setRepeatToggleModes(i4);
    }

    public void setResizeMode(int i4) {
        o1.a.c(this.f1277b);
        this.f1277b.setResizeMode(i4);
    }

    public void setShowBuffering(int i4) {
        if (this.f1292q != i4) {
            this.f1292q = i4;
            g();
        }
    }

    public void setShowFastForwardButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowFastForwardButton(z3);
    }

    public void setShowMultiWindowTimeBar(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowMultiWindowTimeBar(z3);
    }

    public void setShowNextButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowNextButton(z3);
    }

    public void setShowPreviousButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowPreviousButton(z3);
    }

    public void setShowRewindButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowRewindButton(z3);
    }

    public void setShowShuffleButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowShuffleButton(z3);
    }

    public void setShowSubtitleButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowSubtitleButton(z3);
    }

    public void setShowVrButton(boolean z3) {
        o1.a.c(this.f1284i);
        this.f1284i.setShowVrButton(z3);
    }

    public void setShutterBackgroundColor(int i4) {
        View view = this.f1278c;
        if (view != null) {
            view.setBackgroundColor(i4);
        }
    }

    public void setUseArtwork(boolean z3) {
        o1.a.b((z3 && this.f1280e == null) ? false : true);
        if (this.f1290o != z3) {
            this.f1290o = z3;
            j(false);
        }
    }

    public void setUseController(boolean z3) {
        o1.a.b((z3 && this.f1284i == null) ? false : true);
        if (this.f1288m == z3) {
            return;
        }
        this.f1288m = z3;
        if (k()) {
            this.f1284i.setPlayer(this.f1287l);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f1284i;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.f();
                this.f1284i.setPlayer(null);
            }
        }
        h();
    }

    public void setUseSensorRotation(boolean z3) {
        if (this.f1294s != z3) {
            this.f1294s = z3;
            View view = this.f1279d;
            if (view instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view).setUseSensorRotation(z3);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        super.setVisibility(i4);
        View view = this.f1279d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i4);
        }
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i4) {
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
        this.f1276a = aVar;
        if (isInEditMode()) {
            this.f1277b = null;
            this.f1278c = null;
            this.f1279d = null;
            this.f1280e = null;
            this.f1281f = null;
            this.f1282g = null;
            this.f1283h = null;
            this.f1284i = null;
            this.f1285j = null;
            this.f1286k = null;
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
        int i10 = R$layout.exo_styled_player_view;
        this.f1294s = true;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.StyledPlayerView, 0, 0);
            try {
                int i11 = R$styleable.StyledPlayerView_shutter_background_color;
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i11);
                int color = typedArrayObtainStyledAttributes.getColor(i11, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_player_layout_id, i10);
                boolean z9 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_default_artwork, 0);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_controller, true);
                int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_surface_type, 1);
                int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_resize_mode, 0);
                int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_show_timeout, 5000);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_on_touch, true);
                boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_auto_show, true);
                integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.StyledPlayerView_show_buffering, 0);
                this.f1293r = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_keep_content_on_player_reset, this.f1293r);
                boolean z13 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_during_ads, true);
                this.f1294s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_sensor_rotation, this.f1294s);
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
        this.f1277b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i5);
        }
        View viewFindViewById = findViewById(R$id.exo_shutter);
        this.f1278c = viewFindViewById;
        if (viewFindViewById != null && z6) {
            viewFindViewById.setBackgroundColor(i7);
        }
        if (aspectRatioFrameLayout != null && i6 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i6 == 2) {
                this.f1279d = new TextureView(context);
            } else if (i6 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(aVar);
                sphericalGLSurfaceView.setUseSensorRotation(this.f1294s);
                this.f1279d = sphericalGLSurfaceView;
            } else if (i6 != 4) {
                this.f1279d = new SurfaceView(context);
            } else {
                this.f1279d = new VideoDecoderGLSurfaceView(context);
            }
            this.f1279d.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.f1279d, 0);
        } else {
            this.f1279d = null;
        }
        this.f1285j = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f1286k = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f1280e = imageView2;
        this.f1290o = z7 && imageView2 != null;
        if (i8 != 0) {
            this.f1291p = ContextCompat.getDrawable(getContext(), i8);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f1281f = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View viewFindViewById2 = findViewById(R$id.exo_buffering);
        this.f1282g = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f1292q = integer;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f1283h = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i15 = R$id.exo_controller;
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(i15);
        View viewFindViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.f1284i = styledPlayerControlView;
        } else if (viewFindViewById3 != null) {
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f1284i = styledPlayerControlView2;
            styledPlayerControlView2.setId(i15);
            styledPlayerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(styledPlayerControlView2, iIndexOfChild);
        } else {
            this.f1284i = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f1284i;
        this.f1297v = styledPlayerControlView3 != null ? i9 : 0;
        this.f1300y = z5;
        this.f1298w = z3;
        this.f1299x = z4;
        this.f1288m = z8 && styledPlayerControlView3 != null;
        if (styledPlayerControlView3 != null) {
            j jVar = styledPlayerControlView3.f1208c0;
            int i16 = jVar.f2529y;
            if (i16 != 3 && i16 != 2) {
                jVar.h();
                jVar.k(2);
            }
            StyledPlayerControlView styledPlayerControlView4 = this.f1284i;
            Objects.requireNonNull(styledPlayerControlView4);
            styledPlayerControlView4.f1205b.add(aVar);
        }
        h();
    }
}
