package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b1.k;
import com.google.android.exoplayer2.ui.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import l1.b;

/* JADX INFO: loaded from: classes.dex */
public class StyledPlayerControlView extends FrameLayout {

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final /* synthetic */ int f1202w0 = 0;
    public final float A;
    public final String B;
    public final String C;
    public final Drawable D;
    public final Drawable E;
    public final String F;
    public final String G;
    public final Drawable H;
    public final Drawable I;
    public final String J;
    public final String K;

    @Nullable
    public b1.k L;
    public b1.b M;

    @Nullable
    public e N;

    @Nullable
    public b1.j O;

    @Nullable
    public d P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public int U;
    public int V;
    public int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f1203a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public long f1204a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList<n> f1205b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public long f1206b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final View f1207c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public m1.j f1208c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final View f1209d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Resources f1210d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final View f1211e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f1212e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final View f1213f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public RecyclerView f1214f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final View f1215g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public g f1216g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final TextView f1217h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public i f1218h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final TextView f1219i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public PopupWindow f1220i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final ImageView f1221j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public List<String> f1222j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final ImageView f1223k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public List<Integer> f1224k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    public final View f1225l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f1226l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    public final TextView f1227m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f1228m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    public final com.google.android.exoplayer2.ui.c f1229n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f1230n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final StringBuilder f1231o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f1232o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Formatter f1233p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @Nullable
    public l1.a f1234p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f1235q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public l f1236q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Drawable f1237r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public l f1238r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Drawable f1239s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public m1.l f1240s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Drawable f1241t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    @Nullable
    public ImageView f1242t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f1243u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    @Nullable
    public ImageView f1244u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f1245v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    @Nullable
    public View f1246v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final String f1247w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Drawable f1248x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Drawable f1249y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f1250z;

    public final class b extends l {
        public b(a aVar) {
            super();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void b(m mVar) {
            mVar.f1274a.setText(R$string.exo_track_selection_auto);
            l1.a aVar = StyledPlayerControlView.this.f1234p0;
            Objects.requireNonNull(aVar);
            aVar.a();
            if (this.f1270a.size() <= 0) {
                mVar.f1275b.setVisibility(0);
                mVar.itemView.setOnClickListener(new w.a(this));
            } else {
                this.f1270a.get(0).intValue();
                Objects.requireNonNull(this.f1272c);
                throw null;
            }
        }
    }

    public final class c implements k.a, c.a, View.OnClickListener, PopupWindow.OnDismissListener {
        public c(a aVar) {
        }

        @Override // com.google.android.exoplayer2.ui.c.a
        public void a(com.google.android.exoplayer2.ui.c cVar, long j4) {
            StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
            TextView textView = styledPlayerControlView.f1227m;
            if (textView != null) {
                textView.setText(o1.e.e(styledPlayerControlView.f1231o, styledPlayerControlView.f1233p, j4));
            }
        }

        @Override // com.google.android.exoplayer2.ui.c.a
        public void b(com.google.android.exoplayer2.ui.c cVar, long j4) {
            StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
            styledPlayerControlView.T = true;
            TextView textView = styledPlayerControlView.f1227m;
            if (textView != null) {
                textView.setText(o1.e.e(styledPlayerControlView.f1231o, styledPlayerControlView.f1233p, j4));
            }
            StyledPlayerControlView.this.f1208c0.h();
        }

        @Override // com.google.android.exoplayer2.ui.c.a
        public void c(com.google.android.exoplayer2.ui.c cVar, long j4, boolean z3) {
            b1.k kVar;
            StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
            styledPlayerControlView.T = false;
            if (!z3 && (kVar = styledPlayerControlView.L) != null) {
                kVar.o();
                int iT = kVar.t();
                Objects.requireNonNull((b1.c) styledPlayerControlView.M);
                kVar.f(iT, j4);
            }
            StyledPlayerControlView.this.f1208c0.i();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
            b1.k kVar = styledPlayerControlView.L;
            if (kVar == null) {
                return;
            }
            styledPlayerControlView.f1208c0.i();
            StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
            if (styledPlayerControlView2.f1209d == view) {
                Objects.requireNonNull((b1.c) styledPlayerControlView2.M);
                kVar.o();
                throw null;
            }
            if (styledPlayerControlView2.f1207c == view) {
                Objects.requireNonNull((b1.c) styledPlayerControlView2.M);
                kVar.o();
                throw null;
            }
            if (styledPlayerControlView2.f1213f == view) {
                if (kVar.getPlaybackState() != 4) {
                    ((b1.c) StyledPlayerControlView.this.M).a(kVar);
                    return;
                }
                return;
            }
            if (styledPlayerControlView2.f1215g == view) {
                ((b1.c) styledPlayerControlView2.M).b(kVar);
                return;
            }
            if (styledPlayerControlView2.f1211e == view) {
                styledPlayerControlView2.d(kVar);
                return;
            }
            if (styledPlayerControlView2.f1221j == view) {
                b1.b bVar = styledPlayerControlView2.M;
                int iE = o1.c.e(kVar.getRepeatMode(), StyledPlayerControlView.this.W);
                Objects.requireNonNull((b1.c) bVar);
                kVar.setRepeatMode(iE);
                return;
            }
            if (styledPlayerControlView2.f1223k == view) {
                b1.b bVar2 = styledPlayerControlView2.M;
                boolean z3 = !kVar.r();
                Objects.requireNonNull((b1.c) bVar2);
                kVar.h(z3);
                return;
            }
            if (styledPlayerControlView2.f1246v0 == view) {
                styledPlayerControlView2.f1208c0.h();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.e(styledPlayerControlView3.f1216g0);
            } else if (styledPlayerControlView2.f1242t0 == view) {
                styledPlayerControlView2.f1208c0.h();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.e(styledPlayerControlView4.f1236q0);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
            if (styledPlayerControlView.f1230n0) {
                styledPlayerControlView.f1208c0.i();
            }
        }
    }

    public interface d {
        void a(boolean z3);
    }

    public interface e {
        void a(long j4, long j5);
    }

    public final class f extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1253a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f1254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageView f1255c;

        public f(View view) {
            super(view);
            this.f1253a = (TextView) view.findViewById(R$id.exo_main_text);
            this.f1254b = (TextView) view.findViewById(R$id.exo_sub_text);
            this.f1255c = (ImageView) view.findViewById(R$id.exo_icon);
            view.setOnClickListener(new w.a(this));
        }
    }

    public class g extends RecyclerView.Adapter<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f1257a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String[] f1258b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Drawable[] f1259c;

        public g(String[] strArr, Drawable[] drawableArr) {
            this.f1257a = strArr;
            this.f1258b = new String[strArr.length];
            this.f1259c = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f1257a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i4) {
            return i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i4) {
            f fVar = (f) viewHolder;
            fVar.f1253a.setText(this.f1257a[i4]);
            String[] strArr = this.f1258b;
            if (strArr[i4] == null) {
                fVar.f1254b.setVisibility(8);
            } else {
                fVar.f1254b.setText(strArr[i4]);
            }
            Drawable[] drawableArr = this.f1259c;
            if (drawableArr[i4] == null) {
                fVar.f1255c.setVisibility(8);
            } else {
                fVar.f1255c.setImageDrawable(drawableArr[i4]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
            return StyledPlayerControlView.this.new f(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_settings_list_item, (ViewGroup) null));
        }
    }

    public final class h extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f1262b;

        public h(View view) {
            super(view);
            this.f1261a = (TextView) view.findViewById(R$id.exo_text);
            this.f1262b = view.findViewById(R$id.exo_check);
            view.setOnClickListener(new m1.e(this));
        }
    }

    public class i extends RecyclerView.Adapter<h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public List<String> f1264a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1265b;

        public i(a aVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<String> list = this.f1264a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i4) {
            h hVar = (h) viewHolder;
            List<String> list = this.f1264a;
            if (list != null) {
                hVar.f1261a.setText(list.get(i4));
            }
            hVar.f1262b.setVisibility(i4 == this.f1265b ? 0 : 4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
            return StyledPlayerControlView.this.new h(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, (ViewGroup) null));
        }
    }

    public final class j extends l {
        public j(a aVar) {
            super();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(m mVar, int i4) {
            super.onBindViewHolder(mVar, i4);
            if (i4 > 0) {
                mVar.f1275b.setVisibility(this.f1271b.get(i4 + (-1)).f1269b ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void b(m mVar) {
            boolean z3;
            mVar.f1274a.setText(R$string.exo_track_selection_none);
            int i4 = 0;
            while (true) {
                if (i4 >= this.f1271b.size()) {
                    z3 = true;
                    break;
                } else {
                    if (this.f1271b.get(i4).f1269b) {
                        z3 = false;
                        break;
                    }
                    i4++;
                }
            }
            mVar.f1275b.setVisibility(z3 ? 0 : 4);
            mVar.itemView.setOnClickListener(new m1.e(this));
        }
    }

    public static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1268a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f1269b;
    }

    public abstract class l extends RecyclerView.Adapter<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<Integer> f1270a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<k> f1271b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public b.a f1272c = null;

        public l() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a */
        public void onBindViewHolder(m mVar, int i4) {
            if (StyledPlayerControlView.this.f1234p0 == null || this.f1272c == null) {
                return;
            }
            if (i4 == 0) {
                b(mVar);
                return;
            }
            k kVar = this.f1271b.get(i4 - 1);
            b.a aVar = this.f1272c;
            int i5 = kVar.f1268a;
            Objects.requireNonNull(aVar);
            throw null;
        }

        public abstract void b(m mVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f1271b.isEmpty()) {
                return 0;
            }
            return this.f1271b.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
            return new m(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, (ViewGroup) null));
        }
    }

    public static class m extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1274a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f1275b;

        public m(View view) {
            super(view);
            this.f1274a = (TextView) view.findViewById(R$id.exo_text);
            this.f1275b = view.findViewById(R$id.exo_check);
        }
    }

    public interface n {
        void a(int i4);
    }

    static {
        b1.e.a("goog.exo.ui");
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    public static void a(StyledPlayerControlView styledPlayerControlView, int i4) {
        if (styledPlayerControlView.f1212e0 == 0 && i4 != styledPlayerControlView.f1228m0) {
            styledPlayerControlView.setPlaybackSpeed(styledPlayerControlView.f1224k0.get(i4).intValue() / 100.0f);
        }
        styledPlayerControlView.f1220i0.dismiss();
    }

    private void setPlaybackSpeed(float f4) {
        b1.k kVar = this.L;
        if (kVar == null) {
            return;
        }
        kVar.k(new b1.i(f4));
    }

    public boolean b(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        b1.k kVar = this.L;
        if (kVar != null) {
            if (keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88) {
                if (keyEvent.getAction() == 0) {
                    if (keyCode == 90) {
                        if (kVar.getPlaybackState() != 4) {
                            ((b1.c) this.M).a(kVar);
                        }
                    } else if (keyCode == 89) {
                        ((b1.c) this.M).b(kVar);
                    } else if (keyEvent.getRepeatCount() == 0) {
                        if (keyCode == 79 || keyCode == 85) {
                            d(kVar);
                        } else {
                            if (keyCode == 87) {
                                Objects.requireNonNull((b1.c) this.M);
                                kVar.o();
                                throw null;
                            }
                            if (keyCode == 88) {
                                Objects.requireNonNull((b1.c) this.M);
                                kVar.o();
                                throw null;
                            }
                            if (keyCode == 126) {
                                c(kVar);
                            } else if (keyCode == 127) {
                                Objects.requireNonNull((b1.c) this.M);
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

    public final void c(b1.k kVar) {
        int playbackState = kVar.getPlaybackState();
        if (playbackState == 1) {
            b1.j jVar = this.O;
            if (jVar != null) {
                jVar.a();
            } else {
                Objects.requireNonNull((b1.c) this.M);
                kVar.prepare();
            }
        } else if (playbackState == 4) {
            int iT = kVar.t();
            Objects.requireNonNull((b1.c) this.M);
            kVar.f(iT, -9223372036854775807L);
        }
        Objects.requireNonNull((b1.c) this.M);
        kVar.b(true);
    }

    public final void d(b1.k kVar) {
        int playbackState = kVar.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !kVar.g()) {
            c(kVar);
        } else {
            Objects.requireNonNull((b1.c) this.M);
            kVar.b(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return b(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public final void e(RecyclerView.Adapter<?> adapter) {
        this.f1214f0.setAdapter(adapter);
        n();
        this.f1230n0 = false;
        this.f1220i0.dismiss();
        this.f1230n0 = true;
        this.f1220i0.showAsDropDown(this, (getWidth() - this.f1220i0.getWidth()) - this.f1232o0, (-this.f1220i0.getHeight()) - this.f1232o0);
    }

    public void f() {
        m1.j jVar = this.f1208c0;
        int i4 = jVar.f2529y;
        if (i4 == 3 || i4 == 2) {
            return;
        }
        jVar.h();
        if (!jVar.B) {
            jVar.k(2);
        } else if (jVar.f2529y == 1) {
            jVar.f2516l.start();
        } else {
            jVar.f2517m.start();
        }
    }

    public boolean g() {
        m1.j jVar = this.f1208c0;
        return jVar.f2529y == 0 && jVar.f2505a.h();
    }

    @Nullable
    public b1.k getPlayer() {
        return this.L;
    }

    public int getRepeatToggleModes() {
        return this.W;
    }

    public boolean getShowShuffleButton() {
        return this.f1208c0.d(this.f1223k);
    }

    public boolean getShowSubtitleButton() {
        return this.f1208c0.d(this.f1242t0);
    }

    public int getShowTimeoutMs() {
        return this.U;
    }

    public boolean getShowVrButton() {
        return this.f1208c0.d(this.f1225l);
    }

    public boolean h() {
        return getVisibility() == 0;
    }

    public void i() {
        if (h() && this.R && this.f1211e != null) {
            b1.k kVar = this.L;
            if ((kVar == null || kVar.getPlaybackState() == 4 || this.L.getPlaybackState() == 1 || !this.L.g()) ? false : true) {
                ((ImageView) this.f1211e).setImageDrawable(this.f1210d0.getDrawable(R$drawable.exo_styled_controls_pause));
                this.f1211e.setContentDescription(this.f1210d0.getString(R$string.exo_controls_pause_description));
            } else {
                ((ImageView) this.f1211e).setImageDrawable(this.f1210d0.getDrawable(R$drawable.exo_styled_controls_play));
                this.f1211e.setContentDescription(this.f1210d0.getString(R$string.exo_controls_play_description));
            }
        }
        k();
        m();
        o();
        l lVar = this.f1236q0;
        Objects.requireNonNull(lVar);
        lVar.f1271b = Collections.emptyList();
        lVar.f1272c = null;
        l lVar2 = this.f1238r0;
        Objects.requireNonNull(lVar2);
        lVar2.f1271b = Collections.emptyList();
        lVar2.f1272c = null;
        j(this.f1236q0.getItemCount() > 0, this.f1242t0);
        p();
    }

    public final void j(boolean z3, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z3);
        view.setAlpha(z3 ? this.f1250z : this.A);
    }

    public final void k() {
        if (h() && this.R) {
            b1.k kVar = this.L;
            if (kVar != null) {
                kVar.o();
                throw null;
            }
            j(false, this.f1207c);
            j(false, this.f1215g);
            j(false, this.f1213f);
            j(false, this.f1209d);
            com.google.android.exoplayer2.ui.c cVar = this.f1229n;
            if (cVar != null) {
                cVar.setEnabled(false);
            }
        }
    }

    public final void l() {
        long jS;
        if (h() && this.R) {
            b1.k kVar = this.L;
            long jE = 0;
            if (kVar != null) {
                jE = kVar.e() + 0;
                jS = 0 + kVar.s();
            } else {
                jS = 0;
            }
            TextView textView = this.f1227m;
            if (textView != null && !this.T) {
                textView.setText(o1.e.e(this.f1231o, this.f1233p, jE));
            }
            com.google.android.exoplayer2.ui.c cVar = this.f1229n;
            if (cVar != null) {
                cVar.setPosition(jE);
                this.f1229n.setBufferedPosition(jS);
            }
            e eVar = this.N;
            if (eVar != null) {
                eVar.a(jE, jS);
            }
            removeCallbacks(this.f1235q);
            int playbackState = kVar == null ? 1 : kVar.getPlaybackState();
            if (kVar == null || !kVar.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f1235q, 1000L);
                return;
            }
            com.google.android.exoplayer2.ui.c cVar2 = this.f1229n;
            long jMin = Math.min(cVar2 != null ? cVar2.getPreferredUpdateDelay() : 1000L, 1000 - (jE % 1000));
            float f4 = kVar.p().f226a;
            postDelayed(this.f1235q, o1.e.c(f4 > 0.0f ? (long) (jMin / f4) : 1000L, this.V, 1000L));
        }
    }

    public final void m() {
        ImageView imageView;
        if (h() && this.R && (imageView = this.f1221j) != null) {
            if (this.W == 0) {
                j(false, imageView);
                return;
            }
            b1.k kVar = this.L;
            if (kVar == null) {
                j(false, imageView);
                this.f1221j.setImageDrawable(this.f1237r);
                this.f1221j.setContentDescription(this.f1243u);
                return;
            }
            j(true, imageView);
            int repeatMode = kVar.getRepeatMode();
            if (repeatMode == 0) {
                this.f1221j.setImageDrawable(this.f1237r);
                this.f1221j.setContentDescription(this.f1243u);
            } else if (repeatMode == 1) {
                this.f1221j.setImageDrawable(this.f1239s);
                this.f1221j.setContentDescription(this.f1245v);
            } else {
                if (repeatMode != 2) {
                    return;
                }
                this.f1221j.setImageDrawable(this.f1241t);
                this.f1221j.setContentDescription(this.f1247w);
            }
        }
    }

    public final void n() {
        this.f1214f0.measure(0, 0);
        this.f1220i0.setWidth(Math.min(this.f1214f0.getMeasuredWidth(), getWidth() - (this.f1232o0 * 2)));
        this.f1220i0.setHeight(Math.min(getHeight() - (this.f1232o0 * 2), this.f1214f0.getMeasuredHeight()));
    }

    public final void o() {
        ImageView imageView;
        if (h() && this.R && (imageView = this.f1223k) != null) {
            b1.k kVar = this.L;
            if (!this.f1208c0.d(imageView)) {
                j(false, this.f1223k);
                return;
            }
            if (kVar == null) {
                j(false, this.f1223k);
                this.f1223k.setImageDrawable(this.f1249y);
                this.f1223k.setContentDescription(this.C);
            } else {
                j(true, this.f1223k);
                this.f1223k.setImageDrawable(kVar.r() ? this.f1248x : this.f1249y);
                this.f1223k.setContentDescription(kVar.r() ? this.B : this.C);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1.j jVar = this.f1208c0;
        jVar.f2505a.addOnLayoutChangeListener(jVar.f2527w);
        this.R = true;
        if (g()) {
            this.f1208c0.i();
        }
        i();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1.j jVar = this.f1208c0;
        jVar.f2505a.removeOnLayoutChangeListener(jVar.f2527w);
        this.R = false;
        removeCallbacks(this.f1235q);
        this.f1208c0.h();
    }

    public final void p() {
        b1.k kVar = this.L;
        if (kVar == null) {
            return;
        }
        if (this.S) {
            kVar.o();
            throw null;
        }
        kVar.o();
        throw null;
    }

    public void setAnimationEnabled(boolean z3) {
        this.f1208c0.B = z3;
    }

    public void setControlDispatcher(b1.b bVar) {
        if (this.M != bVar) {
            this.M = bVar;
            k();
        }
    }

    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        ImageView imageView = this.f1244u0;
        if (imageView == null) {
            return;
        }
        this.P = dVar;
        if (dVar == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable b1.j jVar) {
        this.O = jVar;
    }

    public void setPlayer(@Nullable b1.k kVar) {
        o1.a.b(Looper.myLooper() == Looper.getMainLooper());
        o1.a.a(kVar == null || kVar.q() == Looper.getMainLooper());
        b1.k kVar2 = this.L;
        if (kVar2 == kVar) {
            return;
        }
        if (kVar2 != null) {
            kVar2.m(this.f1203a);
        }
        this.L = kVar;
        if (kVar != null) {
            kVar.j(this.f1203a);
        }
        if (kVar == null || !(kVar.i() instanceof l1.a)) {
            this.f1234p0 = null;
        } else {
            this.f1234p0 = (l1.a) kVar.i();
        }
        i();
        b1.k kVar3 = this.L;
        if (kVar3 == null) {
            return;
        }
        float f4 = kVar3.p().f226a;
        int iRound = Math.round(100.0f * f4);
        int iIndexOf = this.f1224k0.indexOf(Integer.valueOf(iRound));
        if (iIndexOf == -1) {
            int i4 = this.f1226l0;
            if (i4 != -1) {
                this.f1224k0.remove(i4);
                this.f1222j0.remove(this.f1226l0);
                this.f1226l0 = -1;
            }
            iIndexOf = (-Collections.binarySearch(this.f1224k0, Integer.valueOf(iRound))) - 1;
            String string = this.f1210d0.getString(R$string.exo_controls_custom_playback_speed, Float.valueOf(f4));
            this.f1224k0.add(iIndexOf, Integer.valueOf(iRound));
            this.f1222j0.add(iIndexOf, string);
            this.f1226l0 = iIndexOf;
        }
        this.f1228m0 = iIndexOf;
        this.f1216g0.f1258b[0] = this.f1222j0.get(iIndexOf);
    }

    public void setProgressUpdateListener(@Nullable e eVar) {
        this.N = eVar;
    }

    public void setRepeatToggleModes(int i4) {
        this.W = i4;
        b1.k kVar = this.L;
        if (kVar != null) {
            int repeatMode = kVar.getRepeatMode();
            if (i4 == 0 && repeatMode != 0) {
                b1.b bVar = this.M;
                b1.k kVar2 = this.L;
                Objects.requireNonNull((b1.c) bVar);
                kVar2.setRepeatMode(0);
            } else if (i4 == 1 && repeatMode == 2) {
                b1.b bVar2 = this.M;
                b1.k kVar3 = this.L;
                Objects.requireNonNull((b1.c) bVar2);
                kVar3.setRepeatMode(1);
            } else if (i4 == 2 && repeatMode == 1) {
                b1.b bVar3 = this.M;
                b1.k kVar4 = this.L;
                Objects.requireNonNull((b1.c) bVar3);
                kVar4.setRepeatMode(2);
            }
        }
        this.f1208c0.j(this.f1221j, i4 != 0);
        m();
    }

    public void setShowFastForwardButton(boolean z3) {
        this.f1208c0.j(this.f1213f, z3);
        k();
    }

    public void setShowMultiWindowTimeBar(boolean z3) {
        this.S = z3;
        p();
    }

    public void setShowNextButton(boolean z3) {
        this.f1208c0.j(this.f1209d, z3);
        k();
    }

    public void setShowPreviousButton(boolean z3) {
        this.f1208c0.j(this.f1207c, z3);
        k();
    }

    public void setShowRewindButton(boolean z3) {
        this.f1208c0.j(this.f1215g, z3);
        k();
    }

    public void setShowShuffleButton(boolean z3) {
        this.f1208c0.j(this.f1223k, z3);
        o();
    }

    public void setShowSubtitleButton(boolean z3) {
        this.f1208c0.j(this.f1242t0, z3);
    }

    public void setShowTimeoutMs(int i4) {
        this.U = i4;
        if (g()) {
            this.f1208c0.i();
        }
    }

    public void setShowVrButton(boolean z3) {
        this.f1208c0.j(this.f1225l, z3);
    }

    public void setTimeBarMinUpdateInterval(int i4) {
        this.V = o1.e.b(i4, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f1225l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            j(onClickListener != null, this.f1225l);
        }
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, attributeSet);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        c cVar;
        boolean z11;
        boolean z12;
        super(context, attributeSet, i4);
        int resourceId = R$layout.exo_styled_player_control_view;
        this.f1204a0 = 5000L;
        this.f1206b0 = 15000L;
        this.U = 5000;
        this.W = 0;
        this.V = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.StyledPlayerControlView, 0, 0);
            try {
                this.f1204a0 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_rewind_increment, (int) this.f1204a0);
                this.f1206b0 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_fastforward_increment, (int) this.f1206b0);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerControlView_controller_layout_id, resourceId);
                this.U = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_show_timeout, this.U);
                this.W = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_repeat_toggle_modes, this.W);
                boolean z13 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_rewind_button, true);
                boolean z14 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_fastforward_button, true);
                boolean z15 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_previous_button, true);
                boolean z16 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_next_button, true);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_shuffle_button, false);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_subtitle_button, false);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_time_bar_min_update_interval, this.V));
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_animation_enabled, true);
                typedArrayObtainStyledAttributes.recycle();
                z9 = z17;
                z10 = z18;
                z5 = z13;
                z6 = z14;
                z7 = z15;
                z3 = z20;
                z8 = z16;
                z4 = z19;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z3 = true;
            z4 = false;
            z5 = true;
            z6 = true;
            z7 = true;
            z8 = true;
            z9 = false;
            z10 = false;
        }
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        c cVar2 = new c(null);
        this.f1203a = cVar2;
        this.f1205b = new CopyOnWriteArrayList<>();
        i1.a aVar = i1.a.f1920e;
        StringBuilder sb = new StringBuilder();
        this.f1231o = sb;
        this.f1233p = new Formatter(sb, Locale.getDefault());
        boolean z21 = z5;
        this.M = new b1.c(this.f1206b0, this.f1204a0);
        this.f1235q = new d.d(this);
        this.f1227m = (TextView) findViewById(R$id.exo_position);
        ImageView imageView = (ImageView) findViewById(R$id.exo_subtitle);
        this.f1242t0 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar2);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_fullscreen);
        this.f1244u0 = imageView2;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
            this.f1244u0.setOnClickListener(new w.a(this));
        }
        View viewFindViewById = findViewById(R$id.exo_settings);
        this.f1246v0 = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(cVar2);
        }
        int i5 = R$id.exo_progress;
        com.google.android.exoplayer2.ui.c cVar3 = (com.google.android.exoplayer2.ui.c) findViewById(i5);
        View viewFindViewById2 = findViewById(R$id.exo_progress_placeholder);
        if (cVar3 != null) {
            this.f1229n = cVar3;
            cVar = cVar2;
            z11 = z3;
            z12 = z4;
        } else if (viewFindViewById2 != null) {
            cVar = cVar2;
            z11 = z3;
            z12 = z4;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R$style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(i5);
            defaultTimeBar.setLayoutParams(viewFindViewById2.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById2);
            viewGroup.removeView(viewFindViewById2);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f1229n = defaultTimeBar;
        } else {
            cVar = cVar2;
            z11 = z3;
            z12 = z4;
            this.f1229n = null;
        }
        com.google.android.exoplayer2.ui.c cVar4 = this.f1229n;
        c cVar5 = cVar;
        if (cVar4 != null) {
            cVar4.a(cVar5);
        }
        View viewFindViewById3 = findViewById(R$id.exo_play_pause);
        this.f1211e = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar5);
        }
        View viewFindViewById4 = findViewById(R$id.exo_prev);
        this.f1207c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(cVar5);
        }
        View viewFindViewById5 = findViewById(R$id.exo_next);
        this.f1209d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(cVar5);
        }
        Typeface font = ResourcesCompat.getFont(context, R$font.roboto_medium_numbers);
        View viewFindViewById6 = findViewById(R$id.exo_rew);
        TextView textView = viewFindViewById6 == null ? (TextView) findViewById(R$id.exo_rew_with_amount) : null;
        this.f1219i = textView;
        if (textView != null) {
            textView.setTypeface(font);
        }
        viewFindViewById6 = viewFindViewById6 == null ? textView : viewFindViewById6;
        this.f1215g = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(cVar5);
        }
        View viewFindViewById7 = findViewById(R$id.exo_ffwd);
        TextView textView2 = viewFindViewById7 == null ? (TextView) findViewById(R$id.exo_ffwd_with_amount) : null;
        this.f1217h = textView2;
        if (textView2 != null) {
            textView2.setTypeface(font);
        }
        viewFindViewById7 = viewFindViewById7 == null ? textView2 : viewFindViewById7;
        this.f1213f = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(cVar5);
        }
        ImageView imageView3 = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f1221j = imageView3;
        if (imageView3 != null) {
            imageView3.setOnClickListener(cVar5);
        }
        ImageView imageView4 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f1223k = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(cVar5);
        }
        this.f1210d0 = context.getResources();
        this.f1250z = r2.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.A = this.f1210d0.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View viewFindViewById8 = findViewById(R$id.exo_vr);
        this.f1225l = viewFindViewById8;
        if (viewFindViewById8 != null) {
            j(false, viewFindViewById8);
        }
        m1.j jVar = new m1.j(this);
        this.f1208c0 = jVar;
        jVar.B = z11;
        this.f1216g0 = new g(new String[]{this.f1210d0.getString(R$string.exo_controls_playback_speed), this.f1210d0.getString(R$string.exo_track_selection_title_audio)}, new Drawable[]{this.f1210d0.getDrawable(R$drawable.exo_styled_controls_speed), this.f1210d0.getDrawable(R$drawable.exo_styled_controls_audiotrack)});
        this.f1222j0 = new ArrayList(Arrays.asList(this.f1210d0.getStringArray(R$array.exo_playback_speeds)));
        this.f1224k0 = new ArrayList();
        for (int i6 : this.f1210d0.getIntArray(R$array.exo_speed_multiplied_by_100)) {
            this.f1224k0.add(Integer.valueOf(i6));
        }
        this.f1228m0 = this.f1224k0.indexOf(100);
        this.f1226l0 = -1;
        this.f1232o0 = this.f1210d0.getDimensionPixelSize(R$dimen.exo_settings_offset);
        i iVar = new i(null);
        this.f1218h0 = iVar;
        iVar.f1265b = -1;
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R$layout.exo_styled_settings_list, (ViewGroup) null);
        this.f1214f0 = recyclerView;
        recyclerView.setAdapter(this.f1216g0);
        this.f1214f0.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) this.f1214f0, -2, -2, true);
        this.f1220i0 = popupWindow;
        popupWindow.setOnDismissListener(this.f1203a);
        this.f1230n0 = true;
        this.f1240s0 = new m1.a(getResources());
        this.D = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_subtitle_on);
        this.E = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_subtitle_off);
        this.F = this.f1210d0.getString(R$string.exo_controls_cc_enabled_description);
        this.G = this.f1210d0.getString(R$string.exo_controls_cc_disabled_description);
        this.f1236q0 = new j(null);
        this.f1238r0 = new b(null);
        this.H = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_fullscreen_exit);
        this.I = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_fullscreen_enter);
        this.f1237r = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_repeat_off);
        this.f1239s = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_repeat_one);
        this.f1241t = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_repeat_all);
        this.f1248x = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_shuffle_on);
        this.f1249y = this.f1210d0.getDrawable(R$drawable.exo_styled_controls_shuffle_off);
        this.J = this.f1210d0.getString(R$string.exo_controls_fullscreen_exit_description);
        this.K = this.f1210d0.getString(R$string.exo_controls_fullscreen_enter_description);
        this.f1243u = this.f1210d0.getString(R$string.exo_controls_repeat_off_description);
        this.f1245v = this.f1210d0.getString(R$string.exo_controls_repeat_one_description);
        this.f1247w = this.f1210d0.getString(R$string.exo_controls_repeat_all_description);
        this.B = this.f1210d0.getString(R$string.exo_controls_shuffle_on_description);
        this.C = this.f1210d0.getString(R$string.exo_controls_shuffle_off_description);
        this.f1208c0.j((ViewGroup) findViewById(R$id.exo_bottom_bar), true);
        this.f1208c0.j(this.f1213f, z6);
        this.f1208c0.j(this.f1215g, z21);
        this.f1208c0.j(this.f1207c, z7);
        this.f1208c0.j(this.f1209d, z8);
        this.f1208c0.j(this.f1223k, z9);
        this.f1208c0.j(this.f1242t0, z10);
        this.f1208c0.j(this.f1225l, z12);
        this.f1208c0.j(this.f1221j, this.W != 0);
        addOnLayoutChangeListener(new m1.d(this));
    }
}
