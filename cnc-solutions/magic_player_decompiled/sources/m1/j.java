package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import com.google.android.exoplayer2.ui.R$dimen;
import com.google.android.exoplayer2.ui.R$id;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StyledPlayerControlView f2505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2507c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2508d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2509e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2510f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2511g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2512h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final View f2513i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final View f2514j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnimatorSet f2515k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AnimatorSet f2516l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AnimatorSet f2517m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AnimatorSet f2518n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AnimatorSet f2519o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ValueAnimator f2520p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ValueAnimator f2521q;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2530z;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Runnable f2522r = new m1.i(this, 0);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Runnable f2523s = new m1.i(this, 1);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Runnable f2524t = new m1.i(this, 2);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Runnable f2525u = new m1.i(this, 3);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Runnable f2526v = new m1.i(this, 4);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final View.OnLayoutChangeListener f2527w = new m1.d(this);
    public boolean B = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2529y = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<View> f2528x = new ArrayList();

    public class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2531a;

        public a(ViewGroup viewGroup) {
            this.f2531a = viewGroup;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewGroup viewGroup = this.f2531a;
            if (viewGroup != null) {
                viewGroup.setVisibility(4);
            }
            ViewGroup viewGroup2 = j.this.f2508d;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j jVar = j.this;
            View view = jVar.f2513i;
            if (!(view instanceof DefaultTimeBar) || jVar.f2530z) {
                return;
            }
            ((DefaultTimeBar) view).c(250L);
        }
    }

    public class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2533a;

        public b(ViewGroup viewGroup) {
            this.f2533a = viewGroup;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ViewGroup viewGroup = this.f2533a;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
            j jVar = j.this;
            ViewGroup viewGroup2 = jVar.f2508d;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(jVar.f2530z ? 0 : 4);
            }
            j jVar2 = j.this;
            View view = jVar2.f2513i;
            if (!(view instanceof DefaultTimeBar) || jVar2.f2530z) {
                return;
            }
            ((DefaultTimeBar) view).f(250L);
        }
    }

    public class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ StyledPlayerControlView f2535a;

        public c(StyledPlayerControlView styledPlayerControlView) {
            this.f2535a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.k(1);
            j jVar = j.this;
            if (jVar.A) {
                this.f2535a.post(jVar.f2522r);
                j.this.A = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.k(3);
        }
    }

    public class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ StyledPlayerControlView f2537a;

        public d(StyledPlayerControlView styledPlayerControlView) {
            this.f2537a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.k(2);
            j jVar = j.this;
            if (jVar.A) {
                this.f2537a.post(jVar.f2522r);
                j.this.A = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.k(3);
        }
    }

    public class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ StyledPlayerControlView f2539a;

        public e(StyledPlayerControlView styledPlayerControlView) {
            this.f2539a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.k(2);
            j jVar = j.this;
            if (jVar.A) {
                this.f2539a.post(jVar.f2522r);
                j.this.A = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.k(3);
        }
    }

    public class f extends AnimatorListenerAdapter {
        public f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.k(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.k(4);
        }
    }

    public class g extends AnimatorListenerAdapter {
        public g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.k(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.k(4);
        }
    }

    public class h extends AnimatorListenerAdapter {
        public h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewGroup viewGroup = j.this.f2509e;
            if (viewGroup != null) {
                viewGroup.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ViewGroup viewGroup = j.this.f2511g;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
                j.this.f2511g.setTranslationX(r3.getWidth());
                ViewGroup viewGroup2 = j.this.f2511g;
                viewGroup2.scrollTo(viewGroup2.getWidth(), 0);
            }
        }
    }

    public class i extends AnimatorListenerAdapter {
        public i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewGroup viewGroup = j.this.f2511g;
            if (viewGroup != null) {
                viewGroup.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ViewGroup viewGroup = j.this.f2509e;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
        }
    }

    public j(StyledPlayerControlView styledPlayerControlView) {
        this.f2505a = styledPlayerControlView;
        final int i4 = 0;
        final int i5 = 1;
        final ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_center_view);
        this.f2506b = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_embedded_transport_controls);
        this.f2508d = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_minimal_controls);
        ViewGroup viewGroup2 = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_bottom_bar);
        this.f2507c = viewGroup2;
        this.f2512h = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_time);
        View viewFindViewById = styledPlayerControlView.findViewById(R$id.exo_progress);
        this.f2513i = viewFindViewById;
        this.f2509e = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_basic_controls);
        this.f2510f = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls);
        this.f2511g = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = styledPlayerControlView.findViewById(R$id.exo_overflow_show);
        this.f2514j = viewFindViewById2;
        View viewFindViewById3 = styledPlayerControlView.findViewById(R$id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: m1.h

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ j f2502b;

                {
                    this.f2502b = this;
                }

                /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i4) {
                    }
                    j.a(this.f2502b, view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener(this) { // from class: m1.h

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ j f2502b;

                {
                    this.f2502b = this;
                }

                /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i5) {
                    }
                    j.a(this.f2502b, view);
                }
            });
        }
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(R$dimen.exo_bottom_bar_height) - resources.getDimension(R$dimen.exo_styled_progress_bar_height);
        float dimension2 = (resources.getDimension(R$dimen.exo_styled_progress_layout_height) + resources.getDimension(R$dimen.exo_styled_progress_margin_bottom)) - dimension;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: m1.g

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j f2499b;

            {
                this.f2499b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i4) {
                    case 0:
                        j jVar = this.f2499b;
                        ViewGroup viewGroup3 = viewGroup;
                        Objects.requireNonNull(jVar);
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = jVar.f2508d;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                        }
                        break;
                    default:
                        j jVar2 = this.f2499b;
                        ViewGroup viewGroup5 = viewGroup;
                        Objects.requireNonNull(jVar2);
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = jVar2.f2508d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        break;
                }
            }
        });
        valueAnimatorOfFloat.addListener(new a(viewGroup));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: m1.g

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j f2499b;

            {
                this.f2499b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i5) {
                    case 0:
                        j jVar = this.f2499b;
                        ViewGroup viewGroup3 = viewGroup;
                        Objects.requireNonNull(jVar);
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = jVar.f2508d;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                        }
                        break;
                    default:
                        j jVar2 = this.f2499b;
                        ViewGroup viewGroup5 = viewGroup;
                        Objects.requireNonNull(jVar2);
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = jVar2.f2508d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        break;
                }
            }
        });
        valueAnimatorOfFloat2.addListener(new b(viewGroup));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f2515k = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(valueAnimatorOfFloat).with(f(0.0f, dimension, viewFindViewById)).with(f(0.0f, dimension, viewGroup2));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f2516l = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        float f4 = dimension2 + dimension;
        animatorSet2.play(f(dimension, f4, viewFindViewById)).with(f(dimension, f4, viewGroup2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f2517m = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(valueAnimatorOfFloat).with(f(0.0f, f4, viewFindViewById)).with(f(0.0f, f4, viewGroup2));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f2518n = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(valueAnimatorOfFloat2).with(f(dimension, 0.0f, viewFindViewById)).with(f(dimension, 0.0f, viewGroup2));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f2519o = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(valueAnimatorOfFloat2).with(f(f4, 0.0f, viewFindViewById)).with(f(f4, 0.0f, viewGroup2));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2520p = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new m1.f(this, 0));
        valueAnimatorOfFloat3.addListener(new h());
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f2521q = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new m1.f(this, 1));
        valueAnimatorOfFloat4.addListener(new i());
    }

    public static void a(j jVar, View view) {
        jVar.i();
        if (view.getId() == R$id.exo_overflow_show) {
            jVar.f2520p.start();
        } else if (view.getId() == R$id.exo_overflow_hide) {
            jVar.f2521q.start();
        }
    }

    public static int c(@Nullable View view) {
        if (view != null) {
            return view.getHeight();
        }
        return 0;
    }

    public static int e(@Nullable View view) {
        if (view != null) {
            return view.getWidth();
        }
        return 0;
    }

    public static ObjectAnimator f(float f4, float f5, View view) {
        return ObjectAnimator.ofFloat(view, Key.TRANSLATION_Y, f4, f5);
    }

    public final void b(float f4) {
        if (this.f2511g != null) {
            this.f2511g.setTranslationX((int) ((1.0f - f4) * r0.getWidth()));
        }
        ViewGroup viewGroup = this.f2512h;
        if (viewGroup != null) {
            viewGroup.setAlpha(1.0f - f4);
        }
        ViewGroup viewGroup2 = this.f2509e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f4);
        }
    }

    public boolean d(@Nullable View view) {
        return view != null && this.f2528x.contains(view);
    }

    public final void g(Runnable runnable, long j4) {
        if (j4 >= 0) {
            this.f2505a.postDelayed(runnable, j4);
        }
    }

    public void h() {
        this.f2505a.removeCallbacks(this.f2526v);
        this.f2505a.removeCallbacks(this.f2523s);
        this.f2505a.removeCallbacks(this.f2525u);
        this.f2505a.removeCallbacks(this.f2524t);
    }

    public void i() {
        if (this.f2529y == 3) {
            return;
        }
        h();
        int showTimeoutMs = this.f2505a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.B) {
                g(this.f2526v, showTimeoutMs);
            } else if (this.f2529y == 1) {
                g(this.f2524t, 2000L);
            } else {
                g(this.f2525u, showTimeoutMs);
            }
        }
    }

    public void j(@Nullable View view, boolean z3) {
        if (view == null) {
            return;
        }
        if (!z3) {
            view.setVisibility(8);
            this.f2528x.remove(view);
            return;
        }
        if (this.f2530z && l(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f2528x.add(view);
    }

    public final void k(int i4) {
        int i5 = this.f2529y;
        this.f2529y = i4;
        if (i4 == 2) {
            this.f2505a.setVisibility(8);
        } else if (i5 == 2) {
            this.f2505a.setVisibility(0);
        }
        if (i5 != i4) {
            StyledPlayerControlView styledPlayerControlView = this.f2505a;
            Iterator<StyledPlayerControlView.n> it = styledPlayerControlView.f1205b.iterator();
            while (it.hasNext()) {
                it.next().a(styledPlayerControlView.getVisibility());
            }
        }
    }

    public final boolean l(View view) {
        int id = view.getId();
        return id == R$id.exo_bottom_bar || id == R$id.exo_prev || id == R$id.exo_next || id == R$id.exo_rew || id == R$id.exo_rew_with_amount || id == R$id.exo_ffwd || id == R$id.exo_ffwd_with_amount;
    }

    public final void m() {
        if (!this.B) {
            k(0);
            i();
            return;
        }
        int i4 = this.f2529y;
        if (i4 == 1) {
            this.f2518n.start();
        } else if (i4 == 2) {
            this.f2519o.start();
        } else if (i4 == 3) {
            this.A = true;
        } else if (i4 == 4) {
            return;
        }
        i();
    }
}
