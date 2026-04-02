package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import b1.j;
import b1.k;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.c;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public class PlayerControlView extends FrameLayout {
    public static final /* synthetic */ int T = 0;
    public final float A;
    public final String B;
    public final String C;

    @Nullable
    public k D;
    public b1.b E;

    @Nullable
    public c F;

    @Nullable
    public j G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public int L;
    public int M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public long S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f1148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList<d> f1149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final View f1150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final View f1151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final View f1152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final View f1153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final View f1154g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final View f1155h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final ImageView f1156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final ImageView f1157j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final View f1158k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    public final TextView f1159l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    public final com.google.android.exoplayer2.ui.c f1160m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final StringBuilder f1161n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Formatter f1162o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Runnable f1163p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f1164q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Drawable f1165r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Drawable f1166s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Drawable f1167t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f1168u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f1169v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final String f1170w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Drawable f1171x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Drawable f1172y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f1173z;

    public final class b implements k.a, c.a, View.OnClickListener {
        public b(a aVar) {
        }

        @Override // com.google.android.exoplayer2.ui.c.a
        public void a(com.google.android.exoplayer2.ui.c cVar, long j4) {
            PlayerControlView playerControlView = PlayerControlView.this;
            TextView textView = playerControlView.f1159l;
            if (textView != null) {
                textView.setText(e.e(playerControlView.f1161n, playerControlView.f1162o, j4));
            }
        }

        @Override // com.google.android.exoplayer2.ui.c.a
        public void b(com.google.android.exoplayer2.ui.c cVar, long j4) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.J = true;
            TextView textView = playerControlView.f1159l;
            if (textView != null) {
                textView.setText(e.e(playerControlView.f1161n, playerControlView.f1162o, j4));
            }
        }

        @Override // com.google.android.exoplayer2.ui.c.a
        public void c(com.google.android.exoplayer2.ui.c cVar, long j4, boolean z3) {
            k kVar;
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.J = false;
            if (z3 || (kVar = playerControlView.D) == null) {
                return;
            }
            kVar.o();
            int iT = kVar.t();
            Objects.requireNonNull((b1.c) playerControlView.E);
            kVar.f(iT, j4);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerControlView playerControlView = PlayerControlView.this;
            k kVar = playerControlView.D;
            if (kVar == null) {
                return;
            }
            if (playerControlView.f1151d == view) {
                Objects.requireNonNull((b1.c) playerControlView.E);
                kVar.o();
                throw null;
            }
            if (playerControlView.f1150c == view) {
                Objects.requireNonNull((b1.c) playerControlView.E);
                kVar.o();
                throw null;
            }
            if (playerControlView.f1154g == view) {
                if (kVar.getPlaybackState() != 4) {
                    ((b1.c) PlayerControlView.this.E).a(kVar);
                    return;
                }
                return;
            }
            if (playerControlView.f1155h == view) {
                ((b1.c) playerControlView.E).b(kVar);
                return;
            }
            if (playerControlView.f1152e == view) {
                playerControlView.b(kVar);
                return;
            }
            if (playerControlView.f1153f == view) {
                Objects.requireNonNull((b1.c) playerControlView.E);
                kVar.b(false);
                return;
            }
            if (playerControlView.f1156i == view) {
                b1.b bVar = playerControlView.E;
                int iE = o1.c.e(kVar.getRepeatMode(), PlayerControlView.this.M);
                Objects.requireNonNull((b1.c) bVar);
                kVar.setRepeatMode(iE);
                return;
            }
            if (playerControlView.f1157j == view) {
                b1.b bVar2 = playerControlView.E;
                boolean z3 = !kVar.r();
                Objects.requireNonNull((b1.c) bVar2);
                kVar.h(z3);
            }
        }
    }

    public interface c {
        void a(long j4, long j5);
    }

    public interface d {
        void a(int i4);
    }

    static {
        b1.e.a("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        k kVar = this.D;
        if (kVar != null) {
            if (keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88) {
                if (keyEvent.getAction() == 0) {
                    if (keyCode == 90) {
                        if (kVar.getPlaybackState() != 4) {
                            ((b1.c) this.E).a(kVar);
                        }
                    } else if (keyCode == 89) {
                        ((b1.c) this.E).b(kVar);
                    } else if (keyEvent.getRepeatCount() == 0) {
                        if (keyCode == 79 || keyCode == 85) {
                            int playbackState = kVar.getPlaybackState();
                            if (playbackState == 1 || playbackState == 4 || !kVar.g()) {
                                b(kVar);
                            } else {
                                Objects.requireNonNull((b1.c) this.E);
                                kVar.b(false);
                            }
                        } else {
                            if (keyCode == 87) {
                                Objects.requireNonNull((b1.c) this.E);
                                kVar.o();
                                throw null;
                            }
                            if (keyCode == 88) {
                                Objects.requireNonNull((b1.c) this.E);
                                kVar.o();
                                throw null;
                            }
                            if (keyCode == 126) {
                                b(kVar);
                            } else if (keyCode == 127) {
                                Objects.requireNonNull((b1.c) this.E);
                                kVar.b(false);
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void b(k kVar) {
        int playbackState = kVar.getPlaybackState();
        if (playbackState == 1) {
            j jVar = this.G;
            if (jVar != null) {
                jVar.a();
            } else {
                Objects.requireNonNull((b1.c) this.E);
                kVar.prepare();
            }
        } else if (playbackState == 4) {
            int iT = kVar.t();
            Objects.requireNonNull((b1.c) this.E);
            kVar.f(iT, -9223372036854775807L);
        }
        Objects.requireNonNull((b1.c) this.E);
        kVar.b(true);
    }

    public void c() {
        if (e()) {
            setVisibility(8);
            Iterator<d> it = this.f1149b.iterator();
            while (it.hasNext()) {
                it.next().a(getVisibility());
            }
            removeCallbacks(this.f1163p);
            removeCallbacks(this.f1164q);
            this.S = -9223372036854775807L;
        }
    }

    public final void d() {
        removeCallbacks(this.f1164q);
        if (this.K <= 0) {
            this.S = -9223372036854775807L;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i4 = this.K;
        this.S = jUptimeMillis + ((long) i4);
        if (this.H) {
            postDelayed(this.f1164q, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f1164q);
        } else if (motionEvent.getAction() == 1) {
            d();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean e() {
        return getVisibility() == 0;
    }

    public final void f() {
        View view;
        View view2;
        boolean zG = g();
        if (!zG && (view2 = this.f1152e) != null) {
            view2.requestFocus();
        } else {
            if (!zG || (view = this.f1153f) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    public final boolean g() {
        k kVar = this.D;
        return (kVar == null || kVar.getPlaybackState() == 4 || this.D.getPlaybackState() == 1 || !this.D.g()) ? false : true;
    }

    @Nullable
    public k getPlayer() {
        return this.D;
    }

    public int getRepeatToggleModes() {
        return this.M;
    }

    public boolean getShowShuffleButton() {
        return this.R;
    }

    public int getShowTimeoutMs() {
        return this.K;
    }

    public boolean getShowVrButton() {
        View view = this.f1158k;
        return view != null && view.getVisibility() == 0;
    }

    public final void h() {
        boolean z3;
        if (e() && this.H) {
            boolean zG = g();
            View view = this.f1152e;
            if (view != null) {
                z3 = (zG && view.isFocused()) | false;
                this.f1152e.setVisibility(zG ? 8 : 0);
            } else {
                z3 = false;
            }
            View view2 = this.f1153f;
            if (view2 != null) {
                z3 |= !zG && view2.isFocused();
                this.f1153f.setVisibility(zG ? 0 : 8);
            }
            if (z3) {
                f();
            }
        }
        j();
        l();
        m();
        n();
    }

    public final void i(boolean z3, boolean z4, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z4);
        view.setAlpha(z4 ? this.f1173z : this.A);
        view.setVisibility(z3 ? 0 : 8);
    }

    public final void j() {
        if (e() && this.H) {
            k kVar = this.D;
            if (kVar != null) {
                kVar.o();
                throw null;
            }
            i(this.P, false, this.f1150c);
            i(this.N, false, this.f1155h);
            i(this.O, false, this.f1154g);
            i(this.Q, false, this.f1151d);
            com.google.android.exoplayer2.ui.c cVar = this.f1160m;
            if (cVar != null) {
                cVar.setEnabled(false);
            }
        }
    }

    public final void k() {
        long jS;
        if (e() && this.H) {
            k kVar = this.D;
            long jE = 0;
            if (kVar != null) {
                jE = kVar.e() + 0;
                jS = 0 + kVar.s();
            } else {
                jS = 0;
            }
            TextView textView = this.f1159l;
            if (textView != null && !this.J) {
                textView.setText(e.e(this.f1161n, this.f1162o, jE));
            }
            com.google.android.exoplayer2.ui.c cVar = this.f1160m;
            if (cVar != null) {
                cVar.setPosition(jE);
                this.f1160m.setBufferedPosition(jS);
            }
            c cVar2 = this.F;
            if (cVar2 != null) {
                cVar2.a(jE, jS);
            }
            removeCallbacks(this.f1163p);
            int playbackState = kVar == null ? 1 : kVar.getPlaybackState();
            if (kVar == null || !kVar.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f1163p, 1000L);
                return;
            }
            com.google.android.exoplayer2.ui.c cVar3 = this.f1160m;
            long jMin = Math.min(cVar3 != null ? cVar3.getPreferredUpdateDelay() : 1000L, 1000 - (jE % 1000));
            float f4 = kVar.p().f226a;
            postDelayed(this.f1163p, e.c(f4 > 0.0f ? (long) (jMin / f4) : 1000L, this.L, 1000L));
        }
    }

    public final void l() {
        ImageView imageView;
        if (e() && this.H && (imageView = this.f1156i) != null) {
            if (this.M == 0) {
                i(false, false, imageView);
                return;
            }
            k kVar = this.D;
            if (kVar == null) {
                i(true, false, imageView);
                this.f1156i.setImageDrawable(this.f1165r);
                this.f1156i.setContentDescription(this.f1168u);
                return;
            }
            i(true, true, imageView);
            int repeatMode = kVar.getRepeatMode();
            if (repeatMode == 0) {
                this.f1156i.setImageDrawable(this.f1165r);
                this.f1156i.setContentDescription(this.f1168u);
            } else if (repeatMode == 1) {
                this.f1156i.setImageDrawable(this.f1166s);
                this.f1156i.setContentDescription(this.f1169v);
            } else if (repeatMode == 2) {
                this.f1156i.setImageDrawable(this.f1167t);
                this.f1156i.setContentDescription(this.f1170w);
            }
            this.f1156i.setVisibility(0);
        }
    }

    public final void m() {
        ImageView imageView;
        if (e() && this.H && (imageView = this.f1157j) != null) {
            k kVar = this.D;
            if (!this.R) {
                i(false, false, imageView);
                return;
            }
            if (kVar == null) {
                i(true, false, imageView);
                this.f1157j.setImageDrawable(this.f1172y);
                this.f1157j.setContentDescription(this.C);
            } else {
                i(true, true, imageView);
                this.f1157j.setImageDrawable(kVar.r() ? this.f1171x : this.f1172y);
                this.f1157j.setContentDescription(kVar.r() ? this.B : this.C);
            }
        }
    }

    public final void n() {
        k kVar = this.D;
        if (kVar == null) {
            return;
        }
        if (this.I) {
            kVar.o();
            throw null;
        }
        kVar.o();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j4 = this.S;
        if (j4 != -9223372036854775807L) {
            long jUptimeMillis = j4 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                c();
            } else {
                postDelayed(this.f1164q, jUptimeMillis);
            }
        } else if (e()) {
            d();
        }
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f1163p);
        removeCallbacks(this.f1164q);
    }

    public void setControlDispatcher(b1.b bVar) {
        if (this.E != bVar) {
            this.E = bVar;
            j();
        }
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i4) {
        b1.b bVar = this.E;
        if (bVar instanceof b1.c) {
            ((b1.c) bVar).f179b = i4;
            j();
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable j jVar) {
        this.G = jVar;
    }

    public void setPlayer(@Nullable k kVar) {
        boolean z3 = true;
        o1.a.b(Looper.myLooper() == Looper.getMainLooper());
        if (kVar != null && kVar.q() != Looper.getMainLooper()) {
            z3 = false;
        }
        o1.a.a(z3);
        k kVar2 = this.D;
        if (kVar2 == kVar) {
            return;
        }
        if (kVar2 != null) {
            kVar2.m(this.f1148a);
        }
        this.D = kVar;
        if (kVar != null) {
            kVar.j(this.f1148a);
        }
        h();
    }

    public void setProgressUpdateListener(@Nullable c cVar) {
        this.F = cVar;
    }

    public void setRepeatToggleModes(int i4) {
        this.M = i4;
        k kVar = this.D;
        if (kVar != null) {
            int repeatMode = kVar.getRepeatMode();
            if (i4 == 0 && repeatMode != 0) {
                b1.b bVar = this.E;
                k kVar2 = this.D;
                Objects.requireNonNull((b1.c) bVar);
                kVar2.setRepeatMode(0);
            } else if (i4 == 1 && repeatMode == 2) {
                b1.b bVar2 = this.E;
                k kVar3 = this.D;
                Objects.requireNonNull((b1.c) bVar2);
                kVar3.setRepeatMode(1);
            } else if (i4 == 2 && repeatMode == 1) {
                b1.b bVar3 = this.E;
                k kVar4 = this.D;
                Objects.requireNonNull((b1.c) bVar3);
                kVar4.setRepeatMode(2);
            }
        }
        l();
    }

    @Deprecated
    public void setRewindIncrementMs(int i4) {
        b1.b bVar = this.E;
        if (bVar instanceof b1.c) {
            ((b1.c) bVar).f178a = i4;
            j();
        }
    }

    public void setShowFastForwardButton(boolean z3) {
        this.O = z3;
        j();
    }

    public void setShowMultiWindowTimeBar(boolean z3) {
        this.I = z3;
        n();
    }

    public void setShowNextButton(boolean z3) {
        this.Q = z3;
        j();
    }

    public void setShowPreviousButton(boolean z3) {
        this.P = z3;
        j();
    }

    public void setShowRewindButton(boolean z3) {
        this.N = z3;
        j();
    }

    public void setShowShuffleButton(boolean z3) {
        this.R = z3;
        m();
    }

    public void setShowTimeoutMs(int i4) {
        this.K = i4;
        if (e()) {
            d();
        }
    }

    public void setShowVrButton(boolean z3) {
        View view = this.f1158k;
        if (view != null) {
            view.setVisibility(z3 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i4) {
        this.L = e.b(i4, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f1158k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            i(getShowVrButton(), onClickListener != null, this.f1158k);
        }
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i4);
        int resourceId = R$layout.exo_player_control_view;
        int i5 = 5000;
        this.K = 5000;
        final int i6 = 0;
        this.M = 0;
        this.L = 200;
        this.S = -9223372036854775807L;
        final int i7 = 1;
        this.N = true;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.R = false;
        int i8 = 15000;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.PlayerControlView, 0, 0);
            try {
                i5 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_rewind_increment, 5000);
                i8 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_fastforward_increment, 15000);
                this.K = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_show_timeout, this.K);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_controller_layout_id, resourceId);
                this.M = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_repeat_toggle_modes, this.M);
                this.N = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_rewind_button, this.N);
                this.O = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_fastforward_button, this.O);
                this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_previous_button, this.P);
                this.Q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_next_button, this.Q);
                this.R = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_shuffle_button, this.R);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_time_bar_min_update_interval, this.L));
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.f1149b = new CopyOnWriteArrayList<>();
        i1.a aVar = i1.a.f1920e;
        StringBuilder sb = new StringBuilder();
        this.f1161n = sb;
        this.f1162o = new Formatter(sb, Locale.getDefault());
        b bVar = new b(null);
        this.f1148a = bVar;
        this.E = new b1.c(i8, i5);
        this.f1163p = new Runnable(this) { // from class: m1.c

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayerControlView f2491b;

            {
                this.f2491b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i6) {
                    case 0:
                        PlayerControlView playerControlView = this.f2491b;
                        int i9 = PlayerControlView.T;
                        playerControlView.k();
                        break;
                    default:
                        this.f2491b.c();
                        break;
                }
            }
        };
        this.f1164q = new Runnable(this) { // from class: m1.c

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayerControlView f2491b;

            {
                this.f2491b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i7) {
                    case 0:
                        PlayerControlView playerControlView = this.f2491b;
                        int i9 = PlayerControlView.T;
                        playerControlView.k();
                        break;
                    default:
                        this.f2491b.c();
                        break;
                }
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        int i9 = R$id.exo_progress;
        com.google.android.exoplayer2.ui.c cVar = (com.google.android.exoplayer2.ui.c) findViewById(i9);
        View viewFindViewById = findViewById(R$id.exo_progress_placeholder);
        if (cVar != null) {
            this.f1160m = cVar;
        } else if (viewFindViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, 0);
            defaultTimeBar.setId(i9);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f1160m = defaultTimeBar;
        } else {
            this.f1160m = null;
        }
        this.f1159l = (TextView) findViewById(R$id.exo_position);
        com.google.android.exoplayer2.ui.c cVar2 = this.f1160m;
        if (cVar2 != null) {
            cVar2.a(bVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_play);
        this.f1152e = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(bVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_pause);
        this.f1153f = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(bVar);
        }
        View viewFindViewById4 = findViewById(R$id.exo_prev);
        this.f1150c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(bVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_next);
        this.f1151d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(bVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_rew);
        this.f1155h = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(bVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_ffwd);
        this.f1154g = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f1156i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f1157j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View viewFindViewById8 = findViewById(R$id.exo_vr);
        this.f1158k = viewFindViewById8;
        setShowVrButton(false);
        i(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.f1173z = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.A = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f1165r = resources.getDrawable(R$drawable.exo_controls_repeat_off);
        this.f1166s = resources.getDrawable(R$drawable.exo_controls_repeat_one);
        this.f1167t = resources.getDrawable(R$drawable.exo_controls_repeat_all);
        this.f1171x = resources.getDrawable(R$drawable.exo_controls_shuffle_on);
        this.f1172y = resources.getDrawable(R$drawable.exo_controls_shuffle_off);
        this.f1168u = resources.getString(R$string.exo_controls_repeat_off_description);
        this.f1169v = resources.getString(R$string.exo_controls_repeat_one_description);
        this.f1170w = resources.getString(R$string.exo_controls_repeat_all_description);
        this.B = resources.getString(R$string.exo_controls_shuffle_on_description);
        this.C = resources.getString(R$string.exo_controls_shuffle_off_description);
    }
}
