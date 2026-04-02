package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$array;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.DeviceLockSettingActivity;
import cn.huidu.lcd.setting.ui.view.InputControlPwdActivity;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import i0.d;
import i0.e;
import j0.b;
import java.util.ArrayList;
import java.util.Objects;
import l.c;
import l.l;
import q.k;

/* JADX INFO: loaded from: classes.dex */
public class OptionSettingMainActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static long f616k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final /* synthetic */ int f617l0 = 0;
    public LinearLayout A;
    public LinearLayout B;
    public TextView C;
    public TextView D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public TextView I;
    public TextView J;
    public TextView K;
    public TextView L;
    public TextView M;
    public TextView N;
    public TextView O;
    public TextView P;
    public TextView Q;
    public ArrayList<String> R;
    public ArrayList<String> S;
    public ArrayList<String> T;
    public ArrayList<String> U;
    public n.a V;
    public n.a W;
    public int X;
    public int Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f618a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f619b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f620c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f621d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f622e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f623f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f624g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f625h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f626i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Handler f627j0 = new Handler();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ScrollView f628k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f629l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f630m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f631n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f632o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LinearLayout f633p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public LinearLayout f634q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LinearLayout f635r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public LinearLayout f636s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LinearLayout f637t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public LinearLayout f638u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public LinearLayout f639v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public LinearLayout f640w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public LinearLayout f641x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public LinearLayout f642y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public LinearLayout f643z;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f644a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f645b;

        public a(TextView textView, View view) {
            this.f644a = textView;
            this.f645b = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str) || str.equals(".")) {
                    return;
                }
                String strSubstring = ((Object) this.f644a.getText()) + str;
                if (strSubstring.length() > 1 && Character.valueOf(strSubstring.charAt(0)).compareTo((Character) '0') == 0) {
                    strSubstring = strSubstring.substring(1);
                }
                this.f644a.setText(strSubstring);
                return;
            }
            if (i4 == 67) {
                String string = this.f644a.getText().toString();
                if (string.length() == 1) {
                    return;
                }
                this.f644a.setText(string.substring(0, string.length() - 1));
                return;
            }
            if (i4 == 4) {
                OptionSettingMainActivity.this.m();
                this.f645b.requestFocus();
                this.f645b.setFocusable(true);
            } else if (i4 == 500) {
                this.f644a.setText("0");
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f644a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            OptionSettingMainActivity.this.m();
            this.f645b.requestFocus();
            this.f645b.setFocusable(true);
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f644a.getText().toString();
            if (string.length() == 1) {
                return;
            }
            this.f644a.setText(string.substring(0, string.length() - 1));
        }
    }

    public final void A(int i4) {
        if (cn.huidu.lcd.core.a.f337c != 103) {
            this.V.f2606c = i4;
            l.e().i(i4);
        } else if (i4 == 1) {
            this.V.f2606c = 2;
            l.e().i(2);
        } else {
            this.V.f2606c = i4;
            l.e().i(i4);
        }
    }

    public final void B(ArrayList arrayList, String str, int i4, int i5) {
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
        bundle.putStringArrayList("List", arrayList);
        intent.putExtras(bundle);
        startActivityForResult(intent, i5);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        if (TextUtils.isEmpty(this.P.getText())) {
            u(getString(R$string.none_pwd));
        } else {
            z();
            finish();
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        textView.setTextColor(-1);
        textView.setCursorVisible(true);
        this.f822e = textView;
        if (this.f823f == null) {
            this.f823f = new d();
        }
        this.f823f.a(this, this.f824g);
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, view));
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public boolean l() {
        if (TextUtils.isEmpty(this.P.getText())) {
            u(getString(R$string.none_pwd));
            return true;
        }
        z();
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v25 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 == -1) {
            if (i4 == 9) {
                Intent intent2 = new Intent(this, (Class<?>) DeviceLockSettingActivity.class);
                intent2.putExtra("lockMode", 0);
                startActivityForResult(intent2, 10);
                return;
            }
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return;
            }
            int i6 = extras.getInt("switch");
            if (i4 == 3) {
                boolean z3 = i6 == 0;
                if (this.f626i0 != z3) {
                    this.f626i0 = z3;
                    y();
                    if (this.f626i0) {
                        this.f627j0.post(new b(this, 0));
                    }
                    this.V.f2621r = this.f626i0;
                    return;
                }
                return;
            }
            if (i4 == 0) {
                this.Y = i6;
                this.C.setText(this.R.get(i6));
                A(this.Y);
                return;
            }
            if (i4 == 1) {
                this.X = i6;
                this.V.f2607d = i6;
                this.D.setText(this.S.get(i6));
                x(this.X);
                return;
            }
            if (i4 == 11) {
                boolean z4 = i6 == 0;
                this.Z = z4;
                this.E.setText(getString(z4 ? R$string.open : R$string.close));
                k.e(this, this.Z);
                return;
            }
            if (i4 == 2) {
                ?? r12 = i6 == 0 ? 1 : 0;
                this.f618a0 = r12;
                this.V.f2608e = r12;
                this.F.setText(getString(r12 != 0 ? R$string.open : R$string.close));
                return;
            }
            if (i4 == 5) {
                boolean z5 = i6 == 0;
                this.f619b0 = z5;
                this.V.f2609f = z5;
                this.G.setText(getString(z5 ? R$string.open : R$string.close));
                return;
            }
            if (i4 == 13) {
                boolean z6 = i6 == 0;
                this.f620c0 = z6;
                this.V.f2610g = z6;
                this.H.setText(getString(z6 ? R$string.open : R$string.close));
                return;
            }
            if (i4 == 6) {
                boolean z7 = i6 == 0;
                this.f621d0 = z7;
                this.V.f2614k = z7;
                this.I.setText(getString(z7 ? R$string.open : R$string.close));
                return;
            }
            if (i4 == 7) {
                boolean z8 = i6 == 0;
                this.f622e0 = z8;
                this.V.f2615l = z8;
                this.J.setText(getString(z8 ? R$string.open : R$string.close));
                return;
            }
            if (i4 == 12) {
                this.f623f0 = i6;
                this.V.f2616m = i6;
                this.K.setText(this.U.get(i6));
                return;
            }
            if (i4 == 8) {
                boolean z9 = i6 == 0;
                this.f624g0 = z9;
                this.L.setText(getString(z9 ? R$string.open : R$string.close));
                n.a aVar = this.V;
                boolean z10 = this.f624g0;
                aVar.f2617n = z10;
                aVar.f2619p = z10;
                aVar.f2618o = z10;
                return;
            }
            if (i4 == 4) {
                boolean z11 = i6 == 0;
                this.f625h0 = z11;
                this.V.f2620q = z11;
                this.M.setText(getString(z11 ? R$string.open : R$string.close));
                return;
            }
            if (i4 == 10) {
                this.N.setText(getString((i6 == 0 ? (char) 1 : (char) 0) != 0 ? R$string.open : R$string.close));
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.storage_location_set) {
            B(this.R, getString(R$string.storage_location), this.Y, 0);
            return;
        }
        if (id == R$id.screen_rotation_set) {
            B(this.S, getString(R$string.screen_rotation), this.X, 1);
            return;
        }
        if (id == R$id.sensor_rotation_set) {
            B(this.T, getString(R$string.sensor_rotation), !this.Z ? 1 : 0, 11);
            return;
        }
        if (id == R$id.play_time_set) {
            t(this.B, this.Q);
            return;
        }
        if (id == R$id.machine_syn_set) {
            B(this.T, getString(R$string.multi_machine_synchronization), !this.f618a0 ? 1 : 0, 2);
            return;
        }
        if (id == R$id.item_enable_interaction) {
            B(this.T, getString(R$string.enable_interaction), !this.f619b0 ? 1 : 0, 5);
            return;
        }
        if (id == R$id.item_enable_play_resume) {
            B(this.T, getString(R$string.enable_play_resume), !this.f620c0 ? 1 : 0, 13);
            return;
        }
        if (id == R$id.item_dual_screen) {
            B(this.T, getString(R$string.enable_dual_screen), !this.f621d0 ? 1 : 0, 6);
            return;
        }
        if (id == R$id.item_auto_play_hdmi_in) {
            B(this.T, getString(R$string.auto_play_hdmi_in), !this.f622e0 ? 1 : 0, 7);
            return;
        }
        if (id == R$id.item_auto_play_hdmi_in_angle) {
            B(this.U, getString(R$string.auto_play_hdmi_in_angle), this.f623f0, 12);
            return;
        }
        if (id == R$id.item_enable_dlna) {
            B(this.T, getString(R$string.screen_projection), !this.f624g0 ? 1 : 0, 8);
            return;
        }
        if (id == R$id.date_time_set) {
            startActivity(new Intent(this, (Class<?>) TimeSettingMainActivity.class));
            return;
        }
        if (id == R$id.eth_network_set) {
            startActivity(new Intent(this, (Class<?>) EthNetWorkMonitorActivity.class));
            return;
        }
        if (id == R$id.item_show_standby) {
            B(this.T, getString(R$string.show_standby_page), !this.f625h0 ? 1 : 0, 4);
            return;
        }
        if (id != R$id.item_device_lock) {
            if (id == R$id.control_pwd_set) {
                B(this.T, getString(R$string.control_pwd), !this.f626i0 ? 1 : 0, 3);
                return;
            } else {
                if (id == R$id.pwd_set_view) {
                    t(this.A, this.P);
                    this.f628k.postDelayed(new b(this, 1), 100L);
                    return;
                }
                return;
            }
        }
        n.e eVar = (n.e) l.b.c().a(n.e.class);
        if (!eVar.f2634c) {
            Intent intent = new Intent(this, (Class<?>) DeviceLockSettingActivity.class);
            intent.putExtra("lockMode", 0);
            startActivityForResult(intent, 10);
        } else {
            Intent intent2 = new Intent(this, (Class<?>) InputControlPwdActivity.class);
            intent2.putExtra("title", getString(R$string.input_device_lock_password));
            intent2.putExtra("lockMode", 0);
            intent2.putExtra("password", eVar.f2635d);
            startActivityForResult(intent2, 9);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_option_setting_main);
            } else {
                setContentView(R$layout.activity_option_setting_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_option_setting_main);
            } else {
                setContentView(R$layout.activity_option_setting_main_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
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
        this.f628k = (ScrollView) findViewById(R$id.scrollview_view_list);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.storage_location_set);
        this.f629l = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f629l.setOnFocusChangeListener(this);
        r(this.f629l, false);
        s(this.f629l, false);
        this.C = (TextView) findViewById(R$id.location_text);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.screen_rotation_set);
        this.f630m = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f630m.setOnFocusChangeListener(this);
        this.D = (TextView) findViewById(R$id.rotation_text);
        int i8 = R$id.sensor_rotation_set;
        LinearLayout linearLayout3 = (LinearLayout) findViewById(i8);
        this.f631n = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f631n.setOnFocusChangeListener(this);
        this.E = (TextView) findViewById(R$id.sensor_rotation_text);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.play_time_set);
        this.B = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.B.setOnFocusChangeListener(this);
        this.Q = (TextView) findViewById(R$id.play_time_text);
        int i9 = R$id.machine_syn_set;
        LinearLayout linearLayout5 = (LinearLayout) findViewById(i9);
        this.f632o = linearLayout5;
        linearLayout5.setOnClickListener(this);
        this.f632o.setOnFocusChangeListener(this);
        this.F = (TextView) findViewById(R$id.machine_syn_text);
        LinearLayout linearLayout6 = (LinearLayout) findViewById(R$id.item_enable_interaction);
        this.f633p = linearLayout6;
        linearLayout6.setOnClickListener(this);
        this.f633p.setOnFocusChangeListener(this);
        this.G = (TextView) findViewById(R$id.tv_enable_interaction);
        LinearLayout linearLayout7 = (LinearLayout) findViewById(R$id.item_enable_play_resume);
        this.f634q = linearLayout7;
        linearLayout7.setOnClickListener(this);
        this.f634q.setOnFocusChangeListener(this);
        this.H = (TextView) findViewById(R$id.tv_enable_play_resume);
        LinearLayout linearLayout8 = (LinearLayout) findViewById(R$id.item_dual_screen);
        this.f635r = linearLayout8;
        linearLayout8.setOnClickListener(this);
        this.f635r.setOnFocusChangeListener(this);
        this.I = (TextView) findViewById(R$id.tv_dual_screen);
        LinearLayout linearLayout9 = (LinearLayout) findViewById(R$id.item_auto_play_hdmi_in);
        this.f636s = linearLayout9;
        linearLayout9.setOnClickListener(this);
        this.f636s.setOnFocusChangeListener(this);
        this.J = (TextView) findViewById(R$id.tv_auto_play_hdmi_in);
        LinearLayout linearLayout10 = (LinearLayout) findViewById(R$id.item_auto_play_hdmi_in_angle);
        this.f637t = linearLayout10;
        linearLayout10.setOnClickListener(this);
        this.f637t.setOnFocusChangeListener(this);
        this.K = (TextView) findViewById(R$id.tv_auto_play_hdmi_in_angle);
        LinearLayout linearLayout11 = (LinearLayout) findViewById(R$id.item_enable_dlna);
        this.f638u = linearLayout11;
        linearLayout11.setOnClickListener(this);
        this.f638u.setOnFocusChangeListener(this);
        this.L = (TextView) findViewById(R$id.tv_enable_dlna);
        LinearLayout linearLayout12 = (LinearLayout) findViewById(R$id.date_time_set);
        this.f639v = linearLayout12;
        linearLayout12.setOnClickListener(this);
        this.f639v.setOnFocusChangeListener(this);
        LinearLayout linearLayout13 = (LinearLayout) findViewById(R$id.eth_network_set);
        this.f640w = linearLayout13;
        linearLayout13.setOnClickListener(this);
        this.f640w.setOnFocusChangeListener(this);
        LinearLayout linearLayout14 = (LinearLayout) findViewById(R$id.item_show_standby);
        this.f641x = linearLayout14;
        linearLayout14.setOnClickListener(this);
        this.f641x.setOnFocusChangeListener(this);
        this.M = (TextView) findViewById(R$id.tv_show_standby);
        LinearLayout linearLayout15 = (LinearLayout) findViewById(R$id.item_device_lock);
        this.f642y = linearLayout15;
        linearLayout15.setOnClickListener(this);
        this.f642y.setOnFocusChangeListener(this);
        this.N = (TextView) findViewById(R$id.tv_device_lock);
        LinearLayout linearLayout16 = (LinearLayout) findViewById(R$id.control_pwd_set);
        this.f643z = linearLayout16;
        linearLayout16.setOnClickListener(this);
        this.f643z.setOnFocusChangeListener(this);
        this.O = (TextView) findViewById(R$id.use_pwd_text);
        LinearLayout linearLayout17 = (LinearLayout) findViewById(R$id.pwd_set_view);
        this.A = linearLayout17;
        this.f820c = this.f634q;
        linearLayout17.setOnClickListener(this);
        this.A.setOnFocusChangeListener(this);
        LinearLayout linearLayout18 = this.A;
        int i10 = R$drawable.bg_stroke_radius_bottom_434343;
        linearLayout18.setBackgroundResource(i10);
        this.P = (TextView) findViewById(R$id.pwd_text);
        this.f631n.setNextFocusDownId(i9);
        this.f632o.setNextFocusUpId(i8);
        this.B.setVisibility(8);
        n.a aVar = (n.a) l.b.c().a(n.a.class);
        this.V = aVar;
        n.a aVar2 = new n.a();
        aVar2.f2606c = aVar.f2606c;
        aVar2.f2607d = aVar.f2607d;
        aVar2.f2608e = aVar.f2608e;
        aVar2.f2609f = aVar.f2609f;
        aVar2.f2610g = aVar.f2610g;
        aVar2.f2613j = aVar.f2613j;
        aVar2.f2614k = aVar.f2614k;
        aVar2.f2615l = aVar.f2615l;
        aVar2.f2616m = aVar.f2616m;
        aVar2.f2617n = aVar.f2617n;
        aVar2.f2618o = aVar.f2618o;
        aVar2.f2619p = aVar.f2619p;
        aVar2.f2620q = aVar.f2620q;
        aVar2.f2621r = aVar.f2621r;
        aVar2.f2622s = aVar.f2622s;
        aVar2.f2623t = aVar.f2623t;
        this.W = aVar2;
        this.T = h.a.H(this);
        Resources resources = getResources();
        int i11 = R$array.screen_rotation;
        this.U = h.a.K(resources, i11);
        int i12 = this.V.f2606c;
        this.Y = i12;
        int i13 = cn.huidu.lcd.core.a.f337c;
        boolean z3 = true;
        if (i13 == 103) {
            if (i12 == 2) {
                this.Y = 1;
            }
            this.R = h.a.K(getResources(), R$array.download_storage_location_no_sd_card);
        } else {
            this.R = h.a.K(getResources(), R$array.download_storage_location);
        }
        this.S = h.a.K(getResources(), i11);
        this.X = this.V.f2607d;
        int iA = k.a();
        if (this.X != iA) {
            this.X = iA;
            this.V.f2607d = iA;
        }
        n.a aVar3 = this.V;
        this.f618a0 = aVar3.f2608e == 1;
        this.f619b0 = aVar3.f2609f;
        this.f620c0 = aVar3.f2610g;
        this.f621d0 = aVar3.f2614k;
        this.f622e0 = aVar3.f2615l;
        this.f623f0 = aVar3.f2616m;
        if (!aVar3.f2617n && !aVar3.f2619p && !aVar3.f2618o) {
            z3 = false;
        }
        this.f624g0 = z3;
        this.f625h0 = aVar3.f2620q;
        this.f626i0 = aVar3.f2621r;
        this.Z = k.b(this);
        if (!this.f626i0) {
            this.f643z.setBackgroundResource(i10);
        }
        this.C.setText(this.R.get(this.Y));
        this.D.setText(this.S.get(this.X));
        this.E.setText(getString(this.Z ? R$string.open : R$string.close));
        this.F.setText(getString(this.f618a0 ? R$string.open : R$string.close));
        this.G.setText(getString(this.f619b0 ? R$string.open : R$string.close));
        this.H.setText(getString(this.f620c0 ? R$string.open : R$string.close));
        this.I.setText(getString(this.f621d0 ? R$string.open : R$string.close));
        this.J.setText(getString(this.f622e0 ? R$string.open : R$string.close));
        this.K.setText(this.U.get(this.f623f0));
        this.L.setText(getString(this.f624g0 ? R$string.open : R$string.close));
        this.M.setText(getString(this.f625h0 ? R$string.open : R$string.close));
        this.P.setText(this.V.f2622s);
        this.Q.setText(String.valueOf(this.V.f2623t));
        this.N.setText(getString(((n.e) l.b.c().a(n.e.class)).f2634c ? R$string.open : R$string.close));
        if (cn.huidu.lcd.core.a.d()) {
            if (!cn.huidu.lcd.core.a.c()) {
                this.f635r.setVisibility(8);
                this.f634q.setNextFocusDownId(this.f636s.getId());
                this.f636s.setNextFocusUpId(this.f634q.getId());
            }
            if (i13 == 103) {
                this.f637t.setVisibility(8);
                this.f636s.setNextFocusDownId(this.f638u.getId());
                this.f638u.setNextFocusUpId(this.f636s.getId());
            }
        } else {
            this.f636s.setVisibility(8);
            this.f637t.setVisibility(8);
            this.f638u.setNextFocusDownId(this.f639v.getId());
            this.f639v.setNextFocusUpId(this.f638u.getId());
            if (cn.huidu.lcd.core.a.c()) {
                this.f635r.setVisibility(0);
                this.f635r.setNextFocusDownId(this.f638u.getId());
                this.f638u.setNextFocusUpId(this.f635r.getId());
            } else {
                this.f635r.setVisibility(8);
                this.f634q.setNextFocusDownId(this.f638u.getId());
                this.f638u.setNextFocusUpId(this.f634q.getId());
            }
        }
        y();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        r(view, z3);
        s(view, z3);
        int id = view.getId();
        if (id == R$id.storage_location_set) {
            j(view, z3);
        } else if (id == R$id.control_pwd_set) {
            if (!this.f626i0) {
                n(view, z3);
            }
        } else if (id == R$id.pwd_set_view && this.f626i0) {
            n(view, z3);
        }
        if (id == R$id.pwd_set_view) {
            if (z3 || this.f822e == null) {
                return;
            }
            this.P.setTextColor(Color.parseColor("#ffffff"));
            return;
        }
        if (z3) {
            m();
            this.P.setTextColor(Color.parseColor("#999999"));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22) {
            if (this.f643z.isFocused()) {
                q(this.f643z, true, i4 == 22);
                this.f626i0 = !this.f626i0;
                y();
                if (this.f626i0) {
                    this.f627j0.post(new b(this, 0));
                }
                this.V.f2621r = this.f626i0;
                return true;
            }
            if (this.f629l.isFocused()) {
                q(this.f629l, true, i4 == 22);
                if (i4 == 22) {
                    int i5 = this.Y + 1;
                    this.Y = i5;
                    this.Y = i5 != this.R.size() ? this.Y : 0;
                } else {
                    int size = this.Y - 1;
                    this.Y = size;
                    if (size < 0) {
                        size = this.R.size() - 1;
                    }
                    this.Y = size;
                }
                this.C.setText(this.R.get(this.Y));
                A(this.Y);
                return true;
            }
            if (this.f630m.isFocused()) {
                q(this.f630m, true, i4 == 22);
                return true;
            }
            if (this.f631n.isFocused()) {
                q(this.f631n, true, i4 == 22);
                boolean z3 = !this.Z;
                this.Z = z3;
                this.E.setText(getString(z3 ? R$string.open : R$string.close));
                k.e(this, this.Z);
                return true;
            }
            if (this.f632o.isFocused()) {
                q(this.f632o, true, i4 == 22);
                boolean z4 = !this.f618a0;
                this.f618a0 = z4;
                this.F.setText(getString(z4 ? R$string.open : R$string.close));
                this.V.f2608e = this.f618a0 ? 1 : 0;
                return true;
            }
            if (this.f633p.isFocused()) {
                q(this.f633p, true, i4 == 22);
                boolean z5 = !this.f619b0;
                this.f619b0 = z5;
                this.G.setText(getString(z5 ? R$string.open : R$string.close));
                this.V.f2609f = this.f619b0;
                return true;
            }
            if (this.f634q.isFocused()) {
                q(this.f634q, true, i4 == 22);
                boolean z6 = !this.f620c0;
                this.f620c0 = z6;
                this.H.setText(getString(z6 ? R$string.open : R$string.close));
                this.V.f2610g = this.f620c0;
                return true;
            }
            if (this.f635r.isFocused()) {
                q(this.f635r, true, i4 == 22);
                boolean z7 = !this.f621d0;
                this.f621d0 = z7;
                this.I.setText(getString(z7 ? R$string.open : R$string.close));
                this.V.f2614k = this.f621d0;
                return true;
            }
            if (this.f636s.isFocused()) {
                q(this.f636s, true, i4 == 22);
                boolean z8 = !this.f622e0;
                this.f622e0 = z8;
                this.J.setText(getString(z8 ? R$string.open : R$string.close));
                this.V.f2615l = this.f622e0;
                return true;
            }
            if (this.f637t.isFocused()) {
                q(this.f637t, true, i4 == 22);
                return true;
            }
            if (this.f638u.isFocused()) {
                q(this.f638u, true, i4 == 22);
                boolean z9 = !this.f624g0;
                this.f624g0 = z9;
                this.L.setText(getString(z9 ? R$string.open : R$string.close));
                n.a aVar = this.V;
                boolean z10 = this.f624g0;
                aVar.f2617n = z10;
                aVar.f2619p = z10;
                aVar.f2618o = z10;
                return true;
            }
            if (this.f641x.isFocused()) {
                q(this.f641x, true, i4 == 22);
                boolean z11 = !this.f625h0;
                this.f625h0 = z11;
                this.M.setText(getString(z11 ? R$string.open : R$string.close));
                this.V.f2620q = this.f625h0;
                return true;
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22) {
            if (this.f643z.isFocused()) {
                q(this.f643z, false, i4 == 22);
                return true;
            }
            if (this.f629l.isFocused()) {
                q(this.f629l, false, i4 == 22);
                return true;
            }
            if (this.f630m.isFocused()) {
                q(this.f630m, false, i4 == 22);
                boolean z3 = i4 == 22;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - f616k0 >= 1500) {
                    f616k0 = jCurrentTimeMillis;
                    if (z3) {
                        int i5 = this.X + 1;
                        this.X = i5;
                        this.X = i5 != this.S.size() ? this.X : 0;
                    } else {
                        int size = this.X - 1;
                        this.X = size;
                        if (size < 0) {
                            size = this.S.size() - 1;
                        }
                        this.X = size;
                    }
                    n.a aVar = this.V;
                    int i6 = this.X;
                    aVar.f2607d = i6;
                    this.D.setText(this.S.get(i6));
                    x(this.X);
                }
                return true;
            }
            if (this.f631n.isFocused()) {
                q(this.f631n, false, i4 == 22);
                return true;
            }
            if (this.f632o.isFocused()) {
                q(this.f632o, false, i4 == 22);
                return true;
            }
            if (this.f633p.isFocused()) {
                q(this.f633p, false, i4 == 22);
                return true;
            }
            if (this.f634q.isFocused()) {
                q(this.f634q, false, i4 == 22);
                return true;
            }
            if (this.f635r.isFocused()) {
                q(this.f635r, false, i4 == 22);
                return true;
            }
            if (this.f636s.isFocused()) {
                q(this.f636s, false, i4 == 22);
                return true;
            }
            if (this.f637t.isFocused()) {
                q(this.f637t, false, i4 == 22);
                boolean z4 = i4 == 22;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (jCurrentTimeMillis2 - f616k0 >= 1500) {
                    f616k0 = jCurrentTimeMillis2;
                    if (z4) {
                        int i7 = this.f623f0 + 1;
                        this.f623f0 = i7;
                        this.f623f0 = i7 != this.U.size() ? this.f623f0 : 0;
                    } else {
                        int size2 = this.f623f0 - 1;
                        this.f623f0 = size2;
                        if (size2 < 0) {
                            size2 = this.U.size() - 1;
                        }
                        this.f623f0 = size2;
                    }
                    n.a aVar2 = this.V;
                    int i8 = this.f623f0;
                    aVar2.f2616m = i8;
                    this.K.setText(this.U.get(i8));
                }
                return true;
            }
            if (this.f638u.isFocused()) {
                q(this.f638u, false, i4 == 22);
                return true;
            }
            if (this.f641x.isFocused()) {
                q(this.f641x, false, i4 == 22);
                return true;
            }
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void w() {
        z();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x007e A[Catch: Exception -> 0x0092, TRY_LEAVE, TryCatch #0 {Exception -> 0x0092, blocks: (B:3:0x0020, B:11:0x003a, B:37:0x006d, B:41:0x0074, B:42:0x007e, B:36:0x0069), top: B:50:0x0020 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(int r9) {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "applyRotation: "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "OptionSettingMain"
            android.util.Log.d(r1, r0)
            l.b r0 = l.b.c()
            n.a r1 = r8.V
            r0.d(r1)
            r0 = 0
            boolean r1 = q.k.d(r8, r9)     // Catch: java.lang.Exception -> L92
            int r2 = cn.huidu.lcd.core.a.f337c     // Catch: java.lang.Exception -> L92
            r3 = 103(0x67, float:1.44E-43)
            r4 = 108(0x6c, float:1.51E-43)
            r5 = 107(0x6b, float:1.5E-43)
            r6 = 1
            if (r2 == r3) goto L35
            if (r2 == r5) goto L35
            if (r2 == r4) goto L35
            r7 = 1
            goto L36
        L35:
            r7 = 0
        L36:
            if (r1 == 0) goto L3d
            if (r7 == 0) goto L3d
            q.k.c(r8, r9)     // Catch: java.lang.Exception -> L92
        L3d:
            r7 = 101(0x65, float:1.42E-43)
            if (r2 == r7) goto L5d
            r7 = 102(0x66, float:1.43E-43)
            if (r2 == r7) goto L5d
            r7 = 39
            if (r2 == r7) goto L5d
            r7 = 104(0x68, float:1.46E-43)
            if (r2 == r7) goto L5d
            r7 = 105(0x69, float:1.47E-43)
            if (r2 == r7) goto L5d
            if (r2 == r3) goto L5d
            r3 = 106(0x6a, float:1.49E-43)
            if (r2 == r3) goto L5d
            if (r2 == r5) goto L5d
            if (r2 != r4) goto L5c
            goto L5d
        L5c:
            r6 = 0
        L5d:
            if (r1 == 0) goto L97
            if (r6 == 0) goto L97
            r3 = 4
            if (r9 < 0) goto L67
            if (r9 >= r3) goto L67
            goto L6d
        L67:
            if (r9 != r3) goto L6f
            int r9 = q.k.a()     // Catch: java.lang.Exception -> L92
        L6d:
            int r9 = r9 * 90
        L6f:
            if (r2 == r5) goto L7e
            if (r2 != r4) goto L74
            goto L7e
        L74:
            java.lang.String r9 = java.lang.String.valueOf(r9)     // Catch: java.lang.Exception -> L92
            java.lang.String r2 = "persist.sys.touch.orientation"
            h.a.r0(r2, r9)     // Catch: java.lang.Exception -> L92
            goto L97
        L7e:
            android.app.Application r2 = w0.c.f3777a     // Catch: java.lang.Exception -> L92
            java.lang.String r9 = java.lang.String.valueOf(r9)     // Catch: java.lang.Exception -> L92
            java.util.HashMap r3 = new java.util.HashMap     // Catch: java.lang.Exception -> L92
            r3.<init>()     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = "ro.input_flinger.primary_touch.rotation"
            r3.put(r4, r9)     // Catch: java.lang.Exception -> L92
            q.c.b(r2, r3)     // Catch: java.lang.Exception -> L92
            goto L97
        L92:
            r9 = move-exception
            r9.printStackTrace()
            r1 = 0
        L97:
            if (r1 == 0) goto Lb8
            androidx.appcompat.app.AlertDialog$Builder r9 = new androidx.appcompat.app.AlertDialog$Builder
            r9.<init>(r8)
            int r0 = cn.huidu.lcd.setting.R$string.setup_success_reboot_or_not
            androidx.appcompat.app.AlertDialog$Builder r9 = r9.setMessage(r0)
            int r0 = cn.huidu.lcd.setting.R$string.cancel
            v.c r1 = v.c.f3632e
            androidx.appcompat.app.AlertDialog$Builder r9 = r9.setNegativeButton(r0, r1)
            int r0 = cn.huidu.lcd.setting.R$string.confirm
            v.c r1 = v.c.f3633f
            androidx.appcompat.app.AlertDialog$Builder r9 = r9.setPositiveButton(r0, r1)
            r9.show()
            goto Lc1
        Lb8:
            int r9 = cn.huidu.lcd.setting.R$string.setup_failed
            android.widget.Toast r9 = android.widget.Toast.makeText(r8, r9, r0)
            r9.show()
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.OptionSettingMainActivity.x(int):void");
    }

    public final void y() {
        this.O.setText(getString(this.f626i0 ? R$string.open : R$string.close));
        this.A.setVisibility(this.f626i0 ? 0 : 8);
        if (this.f643z.isFocused()) {
            return;
        }
        if (this.f626i0) {
            this.f643z.setBackgroundColor(getResources().getColor(R$color.no_focus_bg_color));
        } else {
            this.f643z.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        }
    }

    public final void z() {
        int i4;
        try {
            i4 = Integer.parseInt(this.Q.getText().toString());
        } catch (Exception e4) {
            e4.printStackTrace();
            i4 = 0;
        }
        if (i4 > 0) {
            this.V.f2623t = i4;
        }
        if (!TextUtils.isEmpty(this.P.getText())) {
            this.V.f2622s = this.P.getText().toString();
        }
        n.a aVar = this.V;
        n.a aVar2 = this.W;
        Objects.requireNonNull(aVar);
        if (aVar2.f2606c == aVar.f2606c && aVar2.f2607d == aVar.f2607d && aVar2.f2608e == aVar.f2608e && aVar2.f2609f == aVar.f2609f && aVar2.f2610g == aVar.f2610g && aVar2.f2613j == aVar.f2613j && aVar2.f2614k == aVar.f2614k && aVar2.f2615l == aVar.f2615l && aVar2.f2616m == aVar.f2616m && aVar2.f2617n == aVar.f2617n && aVar2.f2618o == aVar.f2618o && aVar2.f2619p == aVar.f2619p && aVar2.f2620q == aVar.f2620q && aVar2.f2621r == aVar.f2621r && aVar2.f2622s.equals(aVar.f2622s) && aVar2.f2623t == aVar.f2623t) {
            return;
        }
        c cVarA = c.a();
        boolean z3 = this.V.f2610g;
        synchronized (cVarA) {
            cVarA.K = z3;
        }
        n.a aVar3 = this.V;
        if (!aVar3.f2610g) {
            aVar3.f2611h = 0;
            aVar3.f2612i = 0L;
        }
        if (this.W.f2618o != aVar3.f2618o) {
            j.c cVar = new j.c();
            cVar.f1933b = true;
            c cVarA2 = c.a();
            boolean z4 = this.V.f2618o;
            synchronized (cVarA2) {
                cVarA2.M = z4;
            }
            g3.c.b().f(cVar);
        }
        if (this.W.f2619p != this.V.f2619p) {
            j.c cVar2 = new j.c();
            cVar2.f1934c = true;
            c cVarA3 = c.a();
            boolean z5 = this.V.f2619p;
            synchronized (cVarA3) {
                cVarA3.N = z5;
            }
            g3.c.b().f(cVar2);
        }
        if (this.W.f2617n != this.V.f2617n) {
            j.c cVar3 = new j.c();
            cVar3.f1932a = true;
            c cVarA4 = c.a();
            boolean z6 = this.V.f2617n;
            synchronized (cVarA4) {
                cVarA4.L = z6;
            }
            g3.c.b().f(cVar3);
        }
        new Thread(new b(this, 2)).start();
    }
}
