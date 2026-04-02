package cn.huidu.lcd.setting.ui.view;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$array;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.SystemModeSettingMainActivity;
import cn.huidu.lcd.setting.ui.base.BaseFragment;
import h.a;
import java.util.ArrayList;
import l.c;
import n.k;
import o.b;

/* JADX INFO: loaded from: classes.dex */
public class StandAloneModeFragment extends BaseFragment implements View.OnClickListener, View.OnFocusChangeListener {
    public static final /* synthetic */ int I = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public boolean F;
    public int G;
    public boolean H;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SystemModeSettingMainActivity f1014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f1015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f1016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LinearLayout f1017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f1018g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f1019h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f1020i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LinearLayout f1021j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f1022k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f1023l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f1024m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1025n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1026o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1027p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f1028q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public TextView f1029r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f1030s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f1031t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList<String> f1032u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ArrayList<String> f1033v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ArrayList<String> f1034w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ArrayList<String> f1035x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ArrayList<String> f1036y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ArrayList<String> f1037z;

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public void b() {
        SystemModeSettingMainActivity systemModeSettingMainActivity = (SystemModeSettingMainActivity) this.f831a;
        this.f1014c = systemModeSettingMainActivity;
        this.f1032u = a.K(systemModeSettingMainActivity.getResources(), R$array.ext_program_loading_mode);
        int i4 = cn.huidu.lcd.core.a.f337c;
        if (i4 == 103) {
            this.f1033v = a.K(this.f1014c.getResources(), R$array.storage_location_no_sd_card);
        } else {
            this.f1033v = a.K(this.f1014c.getResources(), R$array.storage_location);
        }
        this.f1035x = a.K(this.f1014c.getResources(), R$array.padding_mode);
        this.f1036y = a.K(this.f1014c.getResources(), R$array.effects_name);
        this.f1034w = a.H(this.f1014c);
        this.f1037z = a.H(this.f1014c);
        k kVar = this.f1014c.f677n;
        this.A = !kVar.f2664d ? 1 : 0;
        int i5 = kVar.f2665e;
        if (i4 == 103) {
            i5 = (i5 == 1 || i5 == 2) ? 1 : i5 == 3 ? 2 : 0;
        }
        this.B = i5;
        this.F = kVar.f2668h;
        this.D = kVar.f2666f;
        this.H = kVar.f2671k;
        int i6 = kVar.f2667g;
        if (i6 == 100) {
            this.E = 0;
        } else {
            this.E = i6 + 1;
        }
        if (this.E >= this.f1036y.size()) {
            this.E = 0;
        }
        k kVar2 = this.f1014c.f677n;
        this.C = kVar2.f2670j;
        this.G = kVar2.f2669i;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public void c(@Nullable Bundle bundle, @NonNull View view) {
        this.f1014c.f820c = (ViewGroup) a(R$id.item_center_view);
        this.f1014c.f821d = 20;
        LinearLayout linearLayout = (LinearLayout) a(R$id.system_mode_view);
        this.f1015d = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f1015d.setOnFocusChangeListener(this);
        this.f1015d.setScaleX(0.98f);
        this.f1015d.setBackgroundResource(R$drawable.bg_radius_434343);
        this.f1014c.s(this.f1015d, false);
        LinearLayout linearLayout2 = (LinearLayout) a(R$id.loading_mode_set);
        this.f1016e = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f1016e.setOnFocusChangeListener(this);
        this.f1016e.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        LinearLayout linearLayout3 = (LinearLayout) a(R$id.storage_location_set);
        this.f1017f = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f1017f.setOnFocusChangeListener(this);
        LinearLayout linearLayout4 = this.f1017f;
        Resources resources = getResources();
        int i4 = R$color.no_focus_bg_color;
        linearLayout4.setBackgroundColor(resources.getColor(i4));
        LinearLayout linearLayout5 = (LinearLayout) a(R$id.play_time_set);
        this.f1022k = linearLayout5;
        linearLayout5.setOnClickListener(this);
        this.f1022k.setOnFocusChangeListener(this);
        this.f1022k.setBackgroundColor(getResources().getColor(i4));
        LinearLayout linearLayout6 = (LinearLayout) a(R$id.padding_type_set);
        this.f1019h = linearLayout6;
        linearLayout6.setOnClickListener(this);
        this.f1019h.setOnFocusChangeListener(this);
        this.f1019h.setBackgroundColor(getResources().getColor(i4));
        LinearLayout linearLayout7 = (LinearLayout) a(R$id.special_effect_set);
        this.f1020i = linearLayout7;
        linearLayout7.setOnClickListener(this);
        this.f1020i.setOnFocusChangeListener(this);
        this.f1020i.setBackgroundColor(getResources().getColor(i4));
        LinearLayout linearLayout8 = (LinearLayout) a(R$id.clear_screen_set);
        this.f1018g = linearLayout8;
        linearLayout8.setOnClickListener(this);
        this.f1018g.setOnFocusChangeListener(this);
        this.f1018g.setBackgroundColor(getResources().getColor(i4));
        LinearLayout linearLayout9 = (LinearLayout) a(R$id.effect_time_set);
        this.f1021j = linearLayout9;
        linearLayout9.setOnClickListener(this);
        this.f1021j.setOnFocusChangeListener(this);
        this.f1021j.setBackgroundColor(getResources().getColor(i4));
        LinearLayout linearLayout10 = (LinearLayout) a(R$id.show_clock_set);
        this.f1023l = linearLayout10;
        linearLayout10.setOnClickListener(this);
        this.f1023l.setOnFocusChangeListener(this);
        this.f1023l.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        Button button = (Button) a(R$id.set_query_btn);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        Button button2 = (Button) a(R$id.set_cancel_btn);
        button2.setOnClickListener(this);
        button2.setOnFocusChangeListener(this);
        TextView textView = (TextView) a(R$id.tv_loading_mode);
        this.f1024m = textView;
        textView.setText(this.f1032u.get(this.A));
        TextView textView2 = (TextView) a(R$id.location_text);
        this.f1025n = textView2;
        textView2.setText(this.f1033v.get(this.B));
        TextView textView3 = (TextView) a(R$id.effect_time_text);
        this.f1026o = textView3;
        textView3.setText(String.valueOf(this.C));
        TextView textView4 = (TextView) a(R$id.padding_type_text);
        this.f1027p = textView4;
        textView4.setText(this.f1035x.get(this.D));
        TextView textView5 = (TextView) a(R$id.special_effect_text);
        this.f1028q = textView5;
        textView5.setText(this.f1036y.get(this.E));
        TextView textView6 = (TextView) a(R$id.clear_screen_text);
        this.f1029r = textView6;
        textView6.setText(getString(this.F ? R$string.open : R$string.close));
        TextView textView7 = (TextView) a(R$id.play_time_text);
        this.f1030s = textView7;
        textView7.setText(String.valueOf(this.G));
        TextView textView8 = (TextView) a(R$id.show_clock_text);
        this.f1031t = textView8;
        textView8.setText(getString(this.H ? R$string.open : R$string.close));
        h(this.A == 0);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public Object d() {
        Point pointB = w0.a.b(requireContext());
        if (w0.a.d(requireContext())) {
            int i4 = pointB.y;
            return i4 < 360 ? Integer.valueOf(R$layout.stand_alone_mode_fragment_layout_barscreen) : (i4 < 360 || i4 >= 800) ? Integer.valueOf(R$layout.stand_alone_mode_fragment_layout) : Integer.valueOf(R$layout.stand_alone_mode_fragment_layout_barscreen);
        }
        int i5 = pointB.x;
        return i5 < 360 ? Integer.valueOf(R$layout.stand_alone_mode_fragment_layout_barscreen) : (i5 < 360 || i5 >= 800) ? Integer.valueOf(R$layout.stand_alone_mode_fragment_layout) : Integer.valueOf(R$layout.stand_alone_mode_fragment_layout_barscreen);
    }

    public final void e() {
        boolean z3 = !this.F;
        this.F = z3;
        this.f1029r.setText(getString(z3 ? R$string.open : R$string.close));
        this.f1014c.f677n.f2668h = this.F;
    }

    public final int f(int i4) {
        if (cn.huidu.lcd.core.a.f337c != 103) {
            return i4;
        }
        if (i4 == 1) {
            return 1;
        }
        return i4 == 2 ? 3 : 0;
    }

    public final void g() {
        int i4;
        this.f1014c.m();
        int i5 = 0;
        try {
            i4 = Integer.parseInt(this.f1026o.getText().toString());
        } catch (Exception unused) {
            i4 = 0;
        }
        if (i4 > 60) {
            i4 = 60;
        }
        try {
            i5 = Integer.parseInt(this.f1030s.getText().toString());
        } catch (Exception unused2) {
        }
        if (i5 < 1) {
            i5 = 1;
        } else if (i5 > 86400) {
            i5 = 86400;
        }
        if (i5 < i4) {
            i5 = i4;
        }
        this.f1030s.setText(String.valueOf(i5));
        this.f1026o.setText(String.valueOf(i4));
    }

    public final void h(boolean z3) {
        if (z3) {
            this.f1017f.setVisibility(8);
            this.f1016e.setNextFocusDownId(R$id.play_time_set);
            this.f1022k.setNextFocusUpId(R$id.loading_mode_set);
        } else {
            this.f1017f.setVisibility(0);
            LinearLayout linearLayout = this.f1016e;
            int i4 = R$id.storage_location_set;
            linearLayout.setNextFocusDownId(i4);
            this.f1022k.setNextFocusUpId(i4);
        }
    }

    public final void i(boolean z3) {
        this.H = z3;
        this.f1031t.setText(getString(z3 ? R$string.open : R$string.close));
        this.f1014c.f677n.f2671k = this.H;
    }

    public final void j(int i4, String str, ArrayList<String> arrayList, int i5) {
        Intent intent = new Intent(this.f1014c, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i5);
        bundle.putStringArrayList("List", arrayList);
        intent.putExtras(bundle);
        startActivityForResult(intent, i4);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i4, int i5, Intent intent) {
        Bundle extras;
        super.onActivityResult(i4, i5, intent);
        if (i5 == 0 || (extras = intent.getExtras()) == null) {
            return;
        }
        int i6 = extras.getInt("switch");
        if (i4 == 1) {
            if (this.B != i6) {
                this.B = i6;
                this.f1025n.setText(this.f1033v.get(i6));
                this.f1014c.f677n.f2665e = f(this.B);
                return;
            }
            return;
        }
        if (i4 == 2) {
            if ((!this.F ? 1 : 0) != i6) {
                e();
                return;
            }
            return;
        }
        if (i4 == 3) {
            if (this.D != i6) {
                this.D = i6;
                this.f1027p.setText(this.f1035x.get(i6));
                this.f1014c.f677n.f2666f = this.D;
                return;
            }
            return;
        }
        if (i4 == 4) {
            b bVar = (b) extras.getSerializable("ser_info");
            if (bVar != null) {
                this.E = bVar.f2809b;
                this.f1028q.setText(bVar.f2808a);
                int i7 = this.E;
                this.f1014c.f677n.f2667g = i7 == 0 ? 100 : i7 - 1;
                return;
            }
            return;
        }
        if (i4 != 5) {
            if (i4 != 6 || (!this.H ? 1 : 0) == i6) {
                return;
            }
            i(i6 == 0);
            return;
        }
        if (this.A != i6) {
            this.A = i6;
            this.f1024m.setText(this.f1032u.get(i6));
            k kVar = this.f1014c.f677n;
            int i8 = this.A;
            kVar.f2664d = i8 == 0;
            h(i8 == 0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.set_query_btn) {
            int i4 = Integer.parseInt(this.f1030s.getText().toString());
            int i5 = Integer.parseInt(this.f1026o.getText().toString());
            k kVar = this.f1014c.f677n;
            int i6 = kVar.f2663c;
            if (i6 == 1) {
                p0.a.j().g();
            } else if (i6 == 2 && !c.a().H) {
                p0.a.j().g();
            }
            kVar.f2663c = 0;
            kVar.f2669i = i4;
            kVar.f2670j = i5;
            l.b.c().d(kVar);
            this.f1014c.finish();
            return;
        }
        if (id == R$id.set_cancel_btn) {
            this.f1014c.finish();
            return;
        }
        if (id == R$id.system_mode_view) {
            this.f1014c.x();
            return;
        }
        if (id == R$id.loading_mode_set) {
            j(5, getString(R$string.ext_program_loading_mode), this.f1032u, this.A);
            return;
        }
        if (id == R$id.storage_location_set) {
            j(1, getString(R$string.storage_location), this.f1033v, this.B);
            return;
        }
        if (id == R$id.clear_screen_set) {
            j(2, getString(R$string.clear_screen_now), this.f1034w, 1 ^ (this.F ? 1 : 0));
            return;
        }
        if (id == R$id.padding_type_set) {
            j(3, getString(R$string.fill_style), this.f1035x, this.D);
            return;
        }
        if (id == R$id.special_effect_set) {
            b bVar = new b();
            bVar.f2809b = this.E;
            bVar.f2808a = this.f1028q.getText().toString();
            Intent intent = new Intent(this.f1014c, (Class<?>) CommonSelectTypeMainActivity.class);
            Bundle bundle = new Bundle();
            bundle.putInt("list_type", 1);
            bundle.putSerializable("ser_info", bVar);
            intent.putExtras(bundle);
            startActivityForResult(intent, 4);
            return;
        }
        if (id == R$id.play_time_set) {
            this.f1014c.t(this.f1022k, this.f1030s);
        } else if (id == R$id.effect_time_set) {
            this.f1014c.t(this.f1021j, this.f1026o);
        } else if (id == R$id.show_clock_set) {
            j(6, getString(R$string.show_clock), this.f1037z, 1 ^ (this.H ? 1 : 0));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        int id = view.getId();
        if (id == R$id.set_query_btn || id == R$id.set_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (!z3 || (textView = this.f1014c.f822e) == null) {
                return;
            }
            textView.setTextColor(Color.parseColor("#999999"));
            g();
            return;
        }
        this.f1014c.r(view, z3);
        this.f1014c.s(view, z3);
        if (id == R$id.storage_location_set) {
            this.f1014c.j(view, z3);
        } else if (id == R$id.show_clock_set) {
            this.f1014c.n(view, z3);
        }
        if (id == R$id.play_time_set || id == R$id.effect_time_set) {
            if (z3 || (textView2 = this.f1014c.f822e) == null) {
                return;
            }
            textView2.setTextColor(-1);
            return;
        }
        if (!z3) {
            if (id != R$id.system_mode_view || (textView3 = this.f1014c.f822e) == null) {
                return;
            }
            textView3.setTextColor(-1);
            return;
        }
        g();
        TextView textView4 = this.f1030s;
        Resources resources = getResources();
        int i4 = R$color.no_focus_right_text_color;
        textView4.setTextColor(resources.getColor(i4));
        this.f1026o.setTextColor(getResources().getColor(i4));
    }
}
