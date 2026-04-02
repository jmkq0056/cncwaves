package cn.huidu.lcd.setting.ui.view;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.media.f;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import i0.d;
import i0.e;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SwitchTimeItemModifyActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {
    public TextView A;
    public LinearLayout B;
    public TextView C;
    public LinearLayout D;
    public TextView E;
    public LinearLayout F;
    public TextView G;
    public LinearLayout H;
    public LinearLayout I;
    public TextView J;
    public TextView K;
    public TextView L;
    public LinearLayout M;
    public TextView N;
    public TextView O;
    public TextView P;
    public TextView Q;
    public TextView R;
    public TextView S;
    public TextView T;
    public TextView U;
    public TextView V;
    public TextView W;
    public TextView X;
    public List<TextView> Y = new ArrayList();
    public ArrayList<String> Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f1038a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f1039b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1040c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f1041d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f1042e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f1043f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f1044g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f1045h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f1046i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f1047j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1048k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f1049k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f1050l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public String f1051l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f1052m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f1053n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f1054o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1055p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public LinearLayout f1056q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LinearLayout f1057r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f1058s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LinearLayout f1059t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f1060u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public LinearLayout f1061v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f1062w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public LinearLayout f1063x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public TextView f1064y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public LinearLayout f1065z;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f1066a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1067b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f1068c;

        public a(TextView textView, int i4, View view) {
            this.f1066a = textView;
            this.f1067b = i4;
            this.f1068c = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                SwitchTimeItemModifyActivity.x(SwitchTimeItemModifyActivity.this, this.f1067b, ((Object) this.f1066a.getText()) + aVar.f540c);
                return;
            }
            if (i4 == 67) {
                String string = this.f1066a.getText().toString();
                if (string.length() == 1) {
                    this.f1066a.setText("0");
                    return;
                } else {
                    this.f1066a.setText(string.substring(0, string.length() - 1));
                    return;
                }
            }
            if (i4 != 4) {
                if (i4 == 500) {
                    this.f1066a.setText("0");
                    return;
                }
                return;
            }
            SwitchTimeItemModifyActivity.x(SwitchTimeItemModifyActivity.this, this.f1067b, this.f1066a.getText().toString());
            int i5 = this.f1067b;
            if (i5 == R$id.start_second_text || i5 == R$id.end_second_text) {
                SwitchTimeItemModifyActivity switchTimeItemModifyActivity = SwitchTimeItemModifyActivity.this;
                switchTimeItemModifyActivity.f822e = null;
                switchTimeItemModifyActivity.f823f.b(switchTimeItemModifyActivity.f818a);
                SwitchTimeItemModifyActivity.this.f819b.scrollTo(0, 0);
                this.f1068c.requestFocus();
                this.f1068c.setFocusable(true);
                return;
            }
            SwitchTimeItemModifyActivity switchTimeItemModifyActivity2 = SwitchTimeItemModifyActivity.this;
            Objects.requireNonNull(switchTimeItemModifyActivity2);
            if (i5 == R$id.start_hour_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.f1050l, switchTimeItemModifyActivity2.T);
                return;
            }
            if (i5 == R$id.start_minute_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.f1050l, switchTimeItemModifyActivity2.U);
                return;
            }
            if (i5 == R$id.end_hour_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.f1052m, switchTimeItemModifyActivity2.W);
                return;
            }
            if (i5 == R$id.end_minute_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.f1052m, switchTimeItemModifyActivity2.X);
                return;
            }
            if (i5 == R$id.start_yy_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.I, switchTimeItemModifyActivity2.K);
                return;
            }
            if (i5 == R$id.start_mm_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.I, switchTimeItemModifyActivity2.L);
            } else if (i5 == R$id.end_yy_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.M, switchTimeItemModifyActivity2.O);
            } else if (i5 == R$id.end_mm_text) {
                switchTimeItemModifyActivity2.t(switchTimeItemModifyActivity2.M, switchTimeItemModifyActivity2.P);
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f1066a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            SwitchTimeItemModifyActivity.x(SwitchTimeItemModifyActivity.this, this.f1067b, this.f1066a.getText().toString());
            SwitchTimeItemModifyActivity switchTimeItemModifyActivity = SwitchTimeItemModifyActivity.this;
            switchTimeItemModifyActivity.f823f.b(switchTimeItemModifyActivity.f818a);
            SwitchTimeItemModifyActivity.this.f819b.scrollTo(0, 0);
            this.f1068c.requestFocus();
            this.f1068c.setFocusable(true);
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f1066a.getText().toString();
            if (string.length() == 1) {
                this.f1066a.setText("0");
            } else {
                this.f1066a.setText(string.substring(0, string.length() - 1));
            }
        }
    }

    public static void x(SwitchTimeItemModifyActivity switchTimeItemModifyActivity, int i4, String str) {
        Objects.requireNonNull(switchTimeItemModifyActivity);
        if (i4 == R$id.start_hour_text || i4 == R$id.end_hour_text) {
            switchTimeItemModifyActivity.f822e.setText(h.a.w(str));
            return;
        }
        if (i4 == R$id.start_minute_text || i4 == R$id.start_second_text || i4 == R$id.end_minute_text || i4 == R$id.end_second_text) {
            switchTimeItemModifyActivity.f822e.setText(h.a.D(str));
            return;
        }
        if (i4 == R$id.start_yy_text || i4 == R$id.end_yy_text) {
            switchTimeItemModifyActivity.f822e.setText(h.a.U(str));
            return;
        }
        if (i4 == R$id.start_mm_text || i4 == R$id.end_mm_text) {
            switchTimeItemModifyActivity.f822e.setText(h.a.E(str));
            return;
        }
        if (i4 == R$id.start_dd_text) {
            switchTimeItemModifyActivity.f822e.setText(h.a.C(h.a.c(switchTimeItemModifyActivity.J.getText().toString(), switchTimeItemModifyActivity.K.getText().toString()), str));
        } else if (i4 == R$id.end_dd_text) {
            switchTimeItemModifyActivity.f822e.setText(h.a.C(h.a.c(switchTimeItemModifyActivity.N.getText().toString(), switchTimeItemModifyActivity.O.getText().toString()), str));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        textView.setTextColor(-1);
        this.f822e = textView;
        if (this.f823f == null) {
            this.f823f = new d();
        }
        int id = textView.getId();
        d dVar = this.f823f;
        dVar.f1889d = id == R$id.start_second_text || id == R$id.end_second_text;
        dVar.a(this, this.f824g);
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, id, view));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        Bundle extras;
        boolean z3;
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1 || (extras = intent.getExtras()) == null) {
            return;
        }
        int i6 = extras.getInt("switch");
        if (i4 == 0) {
            z3 = i6 == 0;
            this.f1039b0 = z3;
            this.f1055p.setText(getString(z3 ? R$string.open : R$string.close));
            this.f1056q.setVisibility(this.f1039b0 ? 0 : 8);
            return;
        }
        if (i4 == 1) {
            z3 = i6 == 0;
            this.f1040c0 = z3;
            this.f1058s.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 2) {
            z3 = i6 == 0;
            this.f1041d0 = z3;
            this.f1060u.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 3) {
            z3 = i6 == 0;
            this.f1042e0 = z3;
            this.f1062w.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 4) {
            z3 = i6 == 0;
            this.f1043f0 = z3;
            this.f1064y.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 5) {
            z3 = i6 == 0;
            this.f1044g0 = z3;
            this.A.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 6) {
            z3 = i6 == 0;
            this.f1045h0 = z3;
            this.C.setText(getString(z3 ? R$string.open : R$string.close));
        } else if (i4 == 7) {
            z3 = i6 == 0;
            this.f1046i0 = z3;
            this.E.setText(getString(z3 ? R$string.open : R$string.close));
        } else if (i4 == 8) {
            z3 = i6 == 0;
            this.f1047j0 = z3;
            this.G.setText(getString(z3 ? R$string.open : R$string.close));
            this.H.setVisibility(this.f1047j0 ? 0 : 8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        boolean zEquals = false;
        if (id != R$id.set_query_btn) {
            if (id == R$id.set_cancel_btn) {
                setResult(0);
                finish();
                return;
            }
            if (id == R$id.set_delete_btn) {
                setResult(2);
                finish();
                return;
            }
            if (id == R$id.start_time_set) {
                t(this.f1050l, this.S);
                y(this.S);
                return;
            }
            if (id == R$id.end_time_set) {
                t(this.f1052m, this.V);
                y(this.V);
                return;
            }
            if (id == R$id.start_date_set) {
                t(this.I, this.J);
                y(this.J);
                return;
            }
            if (id == R$id.end_date_set) {
                t(this.M, this.N);
                y(this.N);
                return;
            }
            if (id == R$id.ll_specify_week) {
                z(this.Z, getString(R$string.specify_week), !this.f1039b0 ? 1 : 0, 0);
                return;
            }
            if (id == R$id.ll_monday_week) {
                z(this.Z, getString(R$string.week_monday), !this.f1040c0 ? 1 : 0, 1);
                return;
            }
            if (id == R$id.ll_tuesday_week) {
                z(this.Z, getString(R$string.week_tuesday), !this.f1041d0 ? 1 : 0, 2);
                return;
            }
            if (id == R$id.ll_wednesday_week) {
                z(this.Z, getString(R$string.week_wednesday), !this.f1042e0 ? 1 : 0, 3);
                return;
            }
            if (id == R$id.ll_thursday_week) {
                z(this.Z, getString(R$string.week_thursday), !this.f1043f0 ? 1 : 0, 4);
                return;
            }
            if (id == R$id.ll_friday_week) {
                z(this.Z, getString(R$string.week_friday), !this.f1044g0 ? 1 : 0, 5);
                return;
            }
            if (id == R$id.ll_saturday_week) {
                z(this.Z, getString(R$string.week_saturday), !this.f1045h0 ? 1 : 0, 6);
                return;
            } else if (id == R$id.ll_sunday_week) {
                z(this.Z, getString(R$string.week_sunday), !this.f1046i0 ? 1 : 0, 7);
                return;
            } else {
                if (id == R$id.ll_specify_date) {
                    z(this.Z, getString(R$string.specify_date), !this.f1047j0 ? 1 : 0, 8);
                    return;
                }
                return;
            }
        }
        String str = ((Object) this.S.getText()) + ":" + ((Object) this.T.getText()) + ":" + ((Object) this.U.getText());
        String str2 = ((Object) this.V.getText()) + ":" + ((Object) this.W.getText()) + ":" + ((Object) this.X.getText());
        this.f1049k0 = ((Object) this.J.getText()) + "-" + ((Object) this.K.getText()) + "-" + ((Object) this.L.getText());
        this.f1051l0 = ((Object) this.N.getText()) + "-" + ((Object) this.O.getText()) + "-" + ((Object) this.P.getText());
        int iC = h.a.c(this.J.getText().toString(), this.K.getText().toString());
        int iC2 = h.a.c(this.N.getText().toString(), this.O.getText().toString());
        int i4 = Integer.parseInt(this.L.getText().toString());
        int i5 = Integer.parseInt(this.P.getText().toString());
        if (this.f1038a0 && (this.J.getText().toString().trim().length() < 4 || this.N.getText().toString().trim().length() < 4 || i4 > iC || i5 > iC2)) {
            u(getString(R$string.time_set_format));
            return;
        }
        if (str.equals(str2)) {
            u(getString(R$string.time_set_conflict));
            return;
        }
        if (this.f1038a0) {
            if (this.f1047j0) {
                String str3 = this.f1049k0;
                String str4 = this.f1051l0;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                try {
                    zEquals = simpleDateFormat.parse(str3).equals(simpleDateFormat.parse(str4));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (zEquals && !h.a.a0(str, str2, BaseTransientBottomBar.ANIMATION_FADE_DURATION)) {
                    u(getString(R$string.min_machine_interval));
                    return;
                }
            } else if (!h.a.a0(str, str2, BaseTransientBottomBar.ANIMATION_FADE_DURATION)) {
                u(getString(R$string.min_machine_interval));
                return;
            }
        } else if (!h.a.a0(str, str2, BaseTransientBottomBar.ANIMATION_FADE_DURATION)) {
            u(getString(R$string.min_machine_interval));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("start_time", str);
        bundle.putString("end_time", str2);
        bundle.putBoolean("is_week", this.f1039b0);
        bundle.putBoolean("is_playOnMonday", this.f1040c0);
        bundle.putBoolean("is_playOnTuesday", this.f1041d0);
        bundle.putBoolean("is_playOnWednesday", this.f1042e0);
        bundle.putBoolean("is_playOnThursday", this.f1043f0);
        bundle.putBoolean("is_playOnFriday", this.f1044g0);
        bundle.putBoolean("is_playOnSaturday", this.f1045h0);
        bundle.putBoolean("is_playOnSunday", this.f1046i0);
        bundle.putBoolean("is_date", this.f1047j0);
        bundle.putString("start_date", this.f1049k0);
        bundle.putString("end_date", this.f1051l0);
        setResult(-1, getIntent().putExtras(bundle));
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_switch_time_item_modify);
            } else {
                setContentView(R$layout.activity_switch_time_item_modify_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_switch_time_item_modify);
            } else {
                setContentView(R$layout.activity_switch_time_item_modify_barscreen);
            }
        }
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_number_250;
            } else if (i6 < 800) {
                this.f824g = R$xml.hd_number_barscreen;
            } else {
                this.f824g = R$xml.hd_nine_number;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 >= 360 && i7 >= 720) {
                this.f824g = R$xml.hd_nine_number;
            } else {
                this.f824g = R$xml.hd_nine_number_barscreen;
            }
        }
        this.f1048k = (TextView) findViewById(R$id.title_text_view);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.start_time_set);
        this.f1050l = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f1050l.setOnFocusChangeListener(this);
        s(this.f1050l, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.end_time_set);
        this.f1052m = linearLayout2;
        this.f820c = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f1052m.setOnFocusChangeListener(this);
        this.f1053n = (LinearLayout) findViewById(R$id.ll_machine_set);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.ll_specify_week);
        this.f1054o = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f1054o.setOnFocusChangeListener(this);
        this.f1055p = (TextView) findViewById(R$id.tv_specify_week);
        this.f1056q = (LinearLayout) findViewById(R$id.ll_week_show);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.ll_monday_week);
        this.f1057r = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f1057r.setOnFocusChangeListener(this);
        this.f1058s = (TextView) findViewById(R$id.tv_monday_week);
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R$id.ll_tuesday_week);
        this.f1059t = linearLayout5;
        linearLayout5.setOnClickListener(this);
        this.f1059t.setOnFocusChangeListener(this);
        this.f1060u = (TextView) findViewById(R$id.tv_tuesday_week);
        LinearLayout linearLayout6 = (LinearLayout) findViewById(R$id.ll_wednesday_week);
        this.f1061v = linearLayout6;
        linearLayout6.setOnClickListener(this);
        this.f1061v.setOnFocusChangeListener(this);
        this.f1062w = (TextView) findViewById(R$id.tv_wednesday_week);
        LinearLayout linearLayout7 = (LinearLayout) findViewById(R$id.ll_thursday_week);
        this.f1063x = linearLayout7;
        linearLayout7.setOnClickListener(this);
        this.f1063x.setOnFocusChangeListener(this);
        this.f1064y = (TextView) findViewById(R$id.tv_thursday_week);
        LinearLayout linearLayout8 = (LinearLayout) findViewById(R$id.ll_friday_week);
        this.f1065z = linearLayout8;
        linearLayout8.setOnClickListener(this);
        this.f1065z.setOnFocusChangeListener(this);
        this.A = (TextView) findViewById(R$id.tv_friday_week);
        LinearLayout linearLayout9 = (LinearLayout) findViewById(R$id.ll_saturday_week);
        this.B = linearLayout9;
        linearLayout9.setOnClickListener(this);
        this.B.setOnFocusChangeListener(this);
        this.C = (TextView) findViewById(R$id.tv_saturday_week);
        LinearLayout linearLayout10 = (LinearLayout) findViewById(R$id.ll_sunday_week);
        this.D = linearLayout10;
        linearLayout10.setOnClickListener(this);
        this.D.setOnFocusChangeListener(this);
        this.E = (TextView) findViewById(R$id.tv_sunday_week);
        LinearLayout linearLayout11 = (LinearLayout) findViewById(R$id.ll_specify_date);
        this.F = linearLayout11;
        linearLayout11.setOnClickListener(this);
        this.F.setOnFocusChangeListener(this);
        this.G = (TextView) findViewById(R$id.tv_specify_date);
        this.H = (LinearLayout) findViewById(R$id.ll_date_show);
        LinearLayout linearLayout12 = (LinearLayout) findViewById(R$id.start_date_set);
        this.I = linearLayout12;
        linearLayout12.setOnClickListener(this);
        this.I.setOnFocusChangeListener(this);
        s(this.I, false);
        this.J = (TextView) findViewById(R$id.start_yy_text);
        this.K = (TextView) findViewById(R$id.start_mm_text);
        this.L = (TextView) findViewById(R$id.start_dd_text);
        LinearLayout linearLayout13 = (LinearLayout) findViewById(R$id.end_date_set);
        this.M = linearLayout13;
        linearLayout13.setOnClickListener(this);
        this.M.setOnFocusChangeListener(this);
        s(this.M, false);
        this.N = (TextView) findViewById(R$id.end_yy_text);
        this.O = (TextView) findViewById(R$id.end_mm_text);
        this.P = (TextView) findViewById(R$id.end_dd_text);
        Button button = (Button) findViewById(R$id.set_query_btn);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.set_cancel_btn);
        button2.setOnClickListener(this);
        button2.setOnFocusChangeListener(this);
        Button button3 = (Button) findViewById(R$id.set_delete_btn);
        button3.setOnClickListener(this);
        button3.setOnFocusChangeListener(this);
        this.Q = (TextView) findViewById(R$id.start_time_title);
        TextView textView = (TextView) findViewById(R$id.start_hour_text);
        this.S = textView;
        this.Y.add(textView);
        TextView textView2 = (TextView) findViewById(R$id.start_minute_text);
        this.T = textView2;
        this.Y.add(textView2);
        TextView textView3 = (TextView) findViewById(R$id.start_second_text);
        this.U = textView3;
        this.Y.add(textView3);
        this.R = (TextView) findViewById(R$id.end_time_title);
        TextView textView4 = (TextView) findViewById(R$id.end_hour_text);
        this.V = textView4;
        this.Y.add(textView4);
        TextView textView5 = (TextView) findViewById(R$id.end_minute_text);
        this.W = textView5;
        this.Y.add(textView5);
        TextView textView6 = (TextView) findViewById(R$id.end_second_text);
        this.X = textView6;
        this.Y.add(textView6);
        this.Z = h.a.H(this);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("start_time", "00:00:00");
            String string2 = extras.getString("end_time", "23:59:59");
            this.S.setText(h.a.N(string, 0));
            this.T.setText(h.a.N(string, 1));
            this.U.setText(h.a.N(string, 2));
            this.V.setText(h.a.N(string2, 0));
            this.W.setText(h.a.N(string2, 1));
            this.X.setText(h.a.N(string2, 2));
            boolean z3 = extras.getBoolean("isMachine", false);
            this.f1038a0 = z3;
            this.f1053n.setVisibility(z3 ? 0 : 8);
            if (!this.f1038a0) {
                this.f1048k.setText(getString(R$string.switch_screen_set));
                this.Q.setText(getString(R$string.boot_time));
                this.R.setText(getString(R$string.shutdown_time));
                return;
            }
            this.f1048k.setText(getString(R$string.switch_machine_set));
            this.Q.setText(getString(R$string.machine_on_time));
            this.R.setText(getString(R$string.machine_off_time));
            this.f1039b0 = extras.getBoolean("is_week", false);
            this.f1040c0 = extras.getBoolean("is_playOnMonday", false);
            this.f1041d0 = extras.getBoolean("is_playOnTuesday", false);
            this.f1042e0 = extras.getBoolean("is_playOnWednesday", false);
            this.f1043f0 = extras.getBoolean("is_playOnThursday", false);
            this.f1044g0 = extras.getBoolean("is_playOnFriday", false);
            this.f1045h0 = extras.getBoolean("is_playOnSaturday", false);
            this.f1046i0 = extras.getBoolean("is_playOnSunday", false);
            this.f1047j0 = extras.getBoolean("is_date", false);
            this.f1049k0 = extras.getString("start_date", h.a.n());
            this.f1051l0 = extras.getString("end_date", h.a.n());
            StringBuilder sbA = f.a("initData: mIsWeek->");
            sbA.append(this.f1039b0);
            sbA.append(" mIsDate->");
            sbA.append(this.f1047j0);
            Log.d("SwitchTimeItemModify", sbA.toString());
            this.f1056q.setVisibility(this.f1039b0 ? 0 : 8);
            this.H.setVisibility(this.f1047j0 ? 0 : 8);
            this.f1055p.setText(getString(this.f1039b0 ? R$string.open : R$string.close));
            this.f1058s.setText(getString(this.f1040c0 ? R$string.open : R$string.close));
            this.f1060u.setText(getString(this.f1041d0 ? R$string.open : R$string.close));
            this.f1062w.setText(getString(this.f1042e0 ? R$string.open : R$string.close));
            this.f1064y.setText(getString(this.f1043f0 ? R$string.open : R$string.close));
            this.A.setText(getString(this.f1044g0 ? R$string.open : R$string.close));
            this.C.setText(getString(this.f1045h0 ? R$string.open : R$string.close));
            this.E.setText(getString(this.f1046i0 ? R$string.open : R$string.close));
            this.G.setText(getString(this.f1047j0 ? R$string.open : R$string.close));
            this.J.setText(h.a.t(this.f1049k0, 0));
            this.K.setText(h.a.t(this.f1049k0, 1));
            this.L.setText(h.a.t(this.f1049k0, 2));
            this.N.setText(h.a.t(this.f1051l0, 0));
            this.O.setText(h.a.t(this.f1051l0, 1));
            this.P.setText(h.a.t(this.f1051l0, 2));
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        int id = view.getId();
        if (id == R$id.set_query_btn || id == R$id.set_cancel_btn || id == R$id.set_delete_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (!z3 || (textView = this.f822e) == null) {
                return;
            }
            textView.setTextColor(Color.parseColor("#868686"));
            m();
            return;
        }
        r(view, z3);
        int i4 = R$id.start_time_set;
        if (id == i4) {
            j(view, z3);
        } else if (id == R$id.end_time_set) {
            n(view, z3);
        }
        s(view, z3);
        if (id == i4) {
            if (z3) {
                if (this.f822e != null) {
                    m();
                    return;
                }
                return;
            }
            if (this.f822e == null || this.f1052m.isFocused()) {
                return;
            }
            if (this.f822e.equals(this.S)) {
                this.S.setTextColor(-1);
                return;
            }
            if (this.f822e.equals(this.T)) {
                this.T.setTextColor(-1);
                return;
            }
            if (this.f822e.equals(this.U)) {
                this.U.setTextColor(-1);
                return;
            }
            if (this.f822e.equals(this.W)) {
                this.W.setTextColor(-1);
                this.V.setTextColor(Color.parseColor("#868686"));
                this.X.setTextColor(Color.parseColor("#868686"));
                return;
            } else {
                if (this.f822e.equals(this.X)) {
                    this.X.setTextColor(-1);
                    this.W.setTextColor(Color.parseColor("#868686"));
                    this.V.setTextColor(Color.parseColor("#868686"));
                    return;
                }
                return;
            }
        }
        if (id == R$id.end_time_set) {
            if (z3) {
                if (this.f822e != null) {
                    m();
                    return;
                }
                return;
            } else {
                if (this.f1050l.isFocused() || (textView3 = this.f822e) == null || !textView3.equals(this.V)) {
                    return;
                }
                this.V.setTextColor(-1);
                return;
            }
        }
        if (id != R$id.start_date_set) {
            if (id == R$id.end_date_set) {
                if (z3) {
                    if (this.f822e != null) {
                        m();
                        return;
                    }
                    return;
                } else {
                    if (this.M.isFocused() || (textView2 = this.f822e) == null || !textView2.equals(this.N)) {
                        return;
                    }
                    this.N.setTextColor(-1);
                    return;
                }
            }
            return;
        }
        if (z3) {
            if (this.f822e != null) {
                m();
                return;
            }
            return;
        }
        if (this.f822e == null || this.M.isFocused()) {
            return;
        }
        if (this.f822e.equals(this.J)) {
            this.J.setTextColor(-1);
            return;
        }
        if (this.f822e.equals(this.K)) {
            this.K.setTextColor(-1);
            return;
        }
        if (this.f822e.equals(this.L)) {
            this.L.setTextColor(-1);
            return;
        }
        if (this.f822e.equals(this.O)) {
            this.O.setTextColor(-1);
            this.N.setTextColor(Color.parseColor("#868686"));
            this.P.setTextColor(Color.parseColor("#868686"));
        } else if (this.f822e.equals(this.P)) {
            this.P.setTextColor(-1);
            this.N.setTextColor(Color.parseColor("#868686"));
            this.P.setTextColor(Color.parseColor("#868686"));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21) {
            if (this.f1050l.isFocused()) {
                h.a.x0(this.S, this.T, false);
                return true;
            }
            if (this.f1052m.isFocused()) {
                h.a.x0(this.V, this.W, false);
                return true;
            }
            if (this.f1054o.isFocused()) {
                q(this.f1054o, true, false);
                boolean z3 = !this.f1039b0;
                this.f1039b0 = z3;
                this.f1055p.setText(getString(z3 ? R$string.open : R$string.close));
                this.f1056q.setVisibility(this.f1039b0 ? 0 : 8);
                return true;
            }
            if (this.f1057r.isFocused()) {
                q(this.f1057r, true, false);
                boolean z4 = !this.f1040c0;
                this.f1040c0 = z4;
                this.f1058s.setText(getString(z4 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1059t.isFocused()) {
                q(this.f1059t, true, false);
                boolean z5 = !this.f1041d0;
                this.f1041d0 = z5;
                this.f1060u.setText(getString(z5 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1061v.isFocused()) {
                q(this.f1061v, true, false);
                boolean z6 = !this.f1042e0;
                this.f1042e0 = z6;
                this.f1062w.setText(getString(z6 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1063x.isFocused()) {
                q(this.f1063x, true, false);
                boolean z7 = !this.f1043f0;
                this.f1043f0 = z7;
                this.f1064y.setText(getString(z7 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1065z.isFocused()) {
                q(this.f1065z, true, false);
                boolean z8 = !this.f1044g0;
                this.f1044g0 = z8;
                this.A.setText(getString(z8 ? R$string.open : R$string.close));
                return true;
            }
            if (this.B.isFocused()) {
                q(this.B, true, false);
                boolean z9 = !this.f1045h0;
                this.f1045h0 = z9;
                this.C.setText(getString(z9 ? R$string.open : R$string.close));
                return true;
            }
            if (this.D.isFocused()) {
                q(this.D, true, false);
                boolean z10 = !this.f1046i0;
                this.f1046i0 = z10;
                this.E.setText(getString(z10 ? R$string.open : R$string.close));
                return true;
            }
            if (this.F.isFocused()) {
                q(this.F, true, false);
                boolean z11 = !this.f1047j0;
                this.f1047j0 = z11;
                this.G.setText(getString(z11 ? R$string.open : R$string.close));
                this.H.setVisibility(this.f1047j0 ? 0 : 8);
                return true;
            }
            if (this.I.isFocused()) {
                h.a.a(this.J, this.K, this.L, false);
                return true;
            }
            if (this.M.isFocused()) {
                h.a.a(this.N, this.O, this.P, false);
                return true;
            }
        } else if (i4 == 22) {
            if (this.f1050l.isFocused()) {
                h.a.x0(this.S, this.T, true);
                return true;
            }
            if (this.f1052m.isFocused()) {
                h.a.x0(this.V, this.W, true);
                return true;
            }
            if (this.f1054o.isFocused()) {
                q(this.f1054o, true, true);
                boolean z12 = !this.f1039b0;
                this.f1039b0 = z12;
                this.f1055p.setText(getString(z12 ? R$string.open : R$string.close));
                this.f1056q.setVisibility(this.f1039b0 ? 0 : 8);
                return true;
            }
            if (this.f1057r.isFocused()) {
                q(this.f1057r, true, true);
                boolean z13 = !this.f1040c0;
                this.f1040c0 = z13;
                this.f1058s.setText(getString(z13 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1059t.isFocused()) {
                q(this.f1059t, true, true);
                boolean z14 = !this.f1041d0;
                this.f1041d0 = z14;
                this.f1060u.setText(getString(z14 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1061v.isFocused()) {
                q(this.f1061v, true, true);
                boolean z15 = !this.f1042e0;
                this.f1042e0 = z15;
                this.f1062w.setText(getString(z15 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1063x.isFocused()) {
                q(this.f1063x, true, true);
                boolean z16 = !this.f1043f0;
                this.f1043f0 = z16;
                this.f1064y.setText(getString(z16 ? R$string.open : R$string.close));
                return true;
            }
            if (this.f1065z.isFocused()) {
                q(this.f1065z, true, true);
                boolean z17 = !this.f1044g0;
                this.f1044g0 = z17;
                this.A.setText(getString(z17 ? R$string.open : R$string.close));
                return true;
            }
            if (this.B.isFocused()) {
                q(this.B, true, true);
                boolean z18 = !this.f1045h0;
                this.f1045h0 = z18;
                this.C.setText(getString(z18 ? R$string.open : R$string.close));
                return true;
            }
            if (this.D.isFocused()) {
                q(this.D, true, true);
                boolean z19 = !this.f1046i0;
                this.f1046i0 = z19;
                this.E.setText(getString(z19 ? R$string.open : R$string.close));
                return true;
            }
            if (this.F.isFocused()) {
                q(this.F, true, true);
                boolean z20 = !this.f1047j0;
                this.f1047j0 = z20;
                this.G.setText(getString(z20 ? R$string.open : R$string.close));
                this.H.setVisibility(this.f1047j0 ? 0 : 8);
                return true;
            }
            if (this.I.isFocused()) {
                h.a.a(this.J, this.K, this.L, true);
                return true;
            }
            if (this.M.isFocused()) {
                h.a.a(this.N, this.O, this.P, true);
                return true;
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    public final void y(TextView textView) {
        for (TextView textView2 : this.Y) {
            if (!textView2.equals(textView)) {
                textView2.setTextColor(Color.parseColor("#868686"));
            }
        }
    }

    public final void z(ArrayList arrayList, String str, int i4, int i5) {
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
        bundle.putStringArrayList("List", arrayList);
        intent.putExtras(bundle);
        startActivityForResult(intent, i5);
    }
}
