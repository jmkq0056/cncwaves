package cn.huidu.lcd.setting.ui.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.wifi.WifiConfiguration;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.f;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
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
import cn.huidu.lcd.setting.ui.view.CommonLoadingDialog;
import cn.huidu.lcd.setting.ui.view.FocusEditText;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import i.d;
import java.util.ArrayList;
import l.b;
import n.o;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class WifiHotspotSetActivity extends BaseActivity implements View.OnFocusChangeListener, View.OnClickListener {
    public TextView A;
    public ArrayList<String> B;
    public ArrayList<String> C;
    public ArrayList<String> D;
    public ArrayList<String> E;
    public ArrayList<String> F;
    public boolean G;
    public boolean H;
    public int I;
    public int J;
    public int K;
    public WifiConfiguration L;
    public d M;
    public o N;
    public Runnable P;
    public CommonLoadingDialog Q;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f877k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f878l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f879m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f880n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f881o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LinearLayout f882p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public LinearLayout f883q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LinearLayout f884r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f885s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public FocusEditText f886t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f887u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public FocusEditText f888v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f889w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TextView f890x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public TextView f891y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public TextView f892z;
    public Handler O = new Handler();
    public BroadcastReceiver R = new a(this);

    public class a extends BroadcastReceiver {
        public a(WifiHotspotSetActivity wifiHotspotSetActivity) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.wifi.WIFI_AP_STATE_CHANGED".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("wifi_state", 0);
                if (intExtra == 10) {
                    Log.d("WifiHotspotSetActivity", "onReceive: +++热点状态：正在关闭");
                    return;
                }
                if (intExtra == 11) {
                    Log.d("WifiHotspotSetActivity", "onReceive: +++热点状态：已关闭");
                } else if (intExtra == 12) {
                    Log.d("WifiHotspotSetActivity", "onReceive: +++热点状态：正在开启");
                } else if (intExtra == 13) {
                    Log.d("WifiHotspotSetActivity", "onReceive: +++热点状态：已开启");
                }
            }
        }
    }

    public final void A() {
        this.f889w.setText(getString(this.H ? R$string.random_pwd_mode : R$string.fixed_pwd_mode));
        this.f881o.setVisibility(this.H ? 0 : 4);
        this.f882p.setVisibility(this.H ? 4 : 0);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        Bundle extras;
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1 || (extras = intent.getExtras()) == null) {
            return;
        }
        int i6 = extras.getInt("switch");
        if (i4 == 0) {
            boolean z3 = i6 == 0;
            this.G = z3;
            this.f885s.setText(getString(z3 ? R$string.open : R$string.close));
            this.N.f2686c = this.G;
            return;
        }
        if (i4 == 1) {
            this.H = i6 == 0;
            A();
            this.N.f2688e = !this.H ? 1 : 0;
            return;
        }
        if (i4 == 2) {
            if (i6 != this.I) {
                this.I = i6;
                x();
                return;
            }
            return;
        }
        if (i4 == 4) {
            if (this.J != i6) {
                this.J = i6;
                this.N.f2692i = i6;
                this.f892z.setText(this.E.get(i6));
                return;
            }
            return;
        }
        if (i4 != 6) {
            return;
        }
        o oVar = this.N;
        if (oVar.f2694k != i6) {
            oVar.f2694k = i6;
            this.A.setText(this.F.get(i6));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x01e8  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r9) {
        /*
            Method dump skipped, instruction units count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.network.WifiHotspotSetActivity.onClick(android.view.View):void");
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_wifi_hotspot_set);
            } else {
                setContentView(R$layout.activity_wifi_hotspot_set_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_wifi_hotspot_set);
            } else {
                setContentView(R$layout.activity_wifi_hotspot_set_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(this);
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.hotspot_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360 || i6 >= 800) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 < 360 || i7 >= 720) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.ap_state_set);
        this.f877k = linearLayout;
        linearLayout.setOnFocusChangeListener(this);
        this.f877k.setOnClickListener(this);
        s(this.f877k, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.ap_name_set);
        this.f878l = linearLayout2;
        linearLayout2.setOnFocusChangeListener(this);
        this.f878l.setOnClickListener(this);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.pwd_mode_set);
        this.f879m = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f879m.setOnFocusChangeListener(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.pwd_item_set);
        this.f880n = frameLayout;
        frameLayout.setOnFocusChangeListener(this);
        this.f880n.setOnClickListener(this);
        this.f881o = (LinearLayout) findViewById(R$id.effective_time_set);
        this.f882p = (LinearLayout) findViewById(R$id.ap_pwd_set);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.show_location_set);
        this.f883q = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f883q.setOnFocusChangeListener(this);
        this.f820c = this.f883q;
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R$id.apBand_set);
        this.f884r = linearLayout5;
        linearLayout5.setOnClickListener(this);
        this.f884r.setOnFocusChangeListener(this);
        this.A = (TextView) findViewById(R$id.apBand_text);
        Button button = (Button) findViewById(R$id.set_query_btn);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.set_cancel_btn);
        button2.setOnClickListener(this);
        button2.setOnFocusChangeListener(this);
        this.f885s = (TextView) findViewById(R$id.state_text_view);
        this.f886t = (FocusEditText) findViewById(R$id.sid_edit_text);
        this.f887u = (TextView) findViewById(R$id.pwd_title_text);
        this.f888v = (FocusEditText) findViewById(R$id.pwd_edit_text);
        this.f889w = (TextView) findViewById(R$id.pwd_mode_text);
        this.f890x = (TextView) findViewById(R$id.effective_time_title);
        this.f891y = (TextView) findViewById(R$id.effective_time_text);
        this.f892z = (TextView) findViewById(R$id.show_location_text);
        this.M = new d(this);
        StringBuilder sbA = f.a("是否支持5G = ");
        sbA.append(this.M.e());
        Log.e("WifiHotspotSetActivity", sbA.toString());
        if (!this.M.e()) {
            this.f884r.setVisibility(8);
        }
        this.N = (o) b.c().a(o.class);
        this.B = h.a.H(this);
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(getResources().getString(R$string.random_pwd_mode));
        arrayList.add(getResources().getString(R$string.fixed_pwd_mode));
        this.C = arrayList;
        this.D = h.a.K(getResources(), R$array.wifi_effective_time);
        this.E = h.a.K(getResources(), R$array.wifi_location);
        ArrayList<String> arrayListK = h.a.K(getResources(), R$array.ap_band);
        this.F = arrayListK;
        o oVar = this.N;
        this.G = oVar.f2686c;
        this.H = oVar.f2688e == 0;
        this.J = oVar.f2692i;
        int i8 = oVar.f2694k;
        this.K = i8;
        this.A.setText(arrayListK.get(i8));
        int i9 = this.N.f2689f;
        if (i9 == 60) {
            this.I = 1;
        } else if (i9 == 120) {
            this.I = 2;
        } else if (i9 == 300) {
            this.I = 3;
        } else if (i9 == 720) {
            this.I = 4;
        } else if (i9 != 1440) {
            this.I = 0;
        } else {
            this.I = 5;
        }
        this.f891y.setText(this.D.get(this.I));
        this.f885s.setText(getString(this.G ? R$string.open : R$string.close));
        this.L = this.M.d();
        String str = this.N.f2687d;
        if (TextUtils.isEmpty(str)) {
            str = ((n.d) b.c().a(n.d.class)).f2632d;
            if (TextUtils.isEmpty(str)) {
                str = this.L.SSID;
            }
        }
        this.f886t.setText(str);
        String str2 = this.N.f2690g;
        if (TextUtils.isEmpty(str2)) {
            str2 = this.L.preSharedKey;
        }
        this.f888v.setText(str2);
        A();
        this.f892z.setText(this.E.get(this.J));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        registerReceiver(this.R, intentFilter);
        this.P = new l0.a(this, 2);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.O.removeCallbacks(this.P);
        unregisterReceiver(this.R);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        int id = view.getId();
        if (id == R$id.set_query_btn || id == R$id.set_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            return;
        }
        r(view, z3);
        s(view, z3);
        if (id == R$id.ap_state_set) {
            j(view, z3);
        } else if (id == R$id.show_location_set) {
            n(view, z3);
        }
        if (id == R$id.pwd_item_set) {
            if (this.H) {
                this.f890x.setTextColor(z3 ? -1 : getResources().getColor(R$color.no_focus_left_text_color));
                this.f891y.setTextColor(z3 ? -1 : getResources().getColor(R$color.no_focus_right_text_color));
                return;
            } else {
                this.f887u.setTextColor(z3 ? -1 : getResources().getColor(R$color.no_focus_left_text_color));
                this.f888v.setTextColor(z3 ? -1 : getResources().getColor(R$color.no_focus_right_text_color));
                return;
            }
        }
        if (id == R$id.ap_name_set || !z3) {
            return;
        }
        m();
        this.f888v.setCursorVisible(false);
        this.f886t.setCursorVisible(false);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22) {
            if (this.f877k.isFocused()) {
                q(this.f877k, true, i4 == 22);
                boolean z3 = !this.G;
                this.G = z3;
                this.f885s.setText(getString(z3 ? R$string.open : R$string.close));
                this.N.f2686c = this.G;
                return true;
            }
            if (this.f879m.isFocused()) {
                q(this.f879m, true, i4 == 22);
                this.H = !this.H;
                A();
                this.N.f2688e = !this.H ? 1 : 0;
                return true;
            }
            if (this.f880n.isFocused()) {
                if (this.H) {
                    q(this.f881o, true, i4 == 22);
                    if (i4 == 22) {
                        int i5 = this.I + 1;
                        if (i5 > this.D.size() - 1) {
                            this.I = 0;
                        } else {
                            this.I = i5;
                        }
                    } else {
                        int i6 = this.I - 1;
                        if (i6 < 0) {
                            this.I = this.D.size() - 1;
                        } else {
                            this.I = i6;
                        }
                    }
                    x();
                }
                return true;
            }
            if (this.f883q.isFocused()) {
                q(this.f883q, true, i4 == 22);
                boolean z4 = i4 == 22;
                int size = this.E.size() - 1;
                if (z4) {
                    int i7 = this.J + 1;
                    this.J = i7;
                    this.J = i7 <= size ? i7 : 0;
                } else {
                    int i8 = this.J - 1;
                    this.J = i8;
                    if (i8 >= 0) {
                        size = i8;
                    }
                    this.J = size;
                }
                o oVar = this.N;
                int i9 = this.J;
                oVar.f2692i = i9;
                this.f892z.setText(this.E.get(i9));
                return true;
            }
            if (this.f884r.isFocused()) {
                q(this.f884r, true, i4 == 22);
                return true;
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22) {
            if (this.f877k.isFocused()) {
                q(this.f877k, false, i4 == 22);
                return true;
            }
            if (this.f879m.isFocused()) {
                q(this.f879m, false, i4 == 22);
                return true;
            }
            if (this.f880n.isFocused()) {
                if (this.H) {
                    q(this.f881o, false, i4 == 22);
                }
                return true;
            }
            if (this.f883q.isFocused()) {
                q(this.f883q, false, i4 == 22);
                return true;
            }
            if (this.f884r.isFocused()) {
                q(this.f884r, false, i4 == 22);
                return true;
            }
        }
        return super.onKeyUp(i4, keyEvent);
    }

    public final void x() {
        int i4 = this.I;
        this.N.f2689f = i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? i4 != 5 ? 30 : 1440 : 720 : HttpStatus.MULTIPLE_CHOICES_300 : 120 : 60;
        this.f891y.setText(this.D.get(i4));
    }

    public final void y() {
        String string = getString(R$string.setting);
        CommonLoadingDialog commonLoadingDialog = this.Q;
        if (commonLoadingDialog == null) {
            this.Q = CommonLoadingDialog.a(string);
        } else {
            commonLoadingDialog.f914a = string;
            TextView textView = commonLoadingDialog.f915b;
            if (textView != null) {
                textView.setText(string);
            }
        }
        this.Q.show(getSupportFragmentManager(), "LoadingWifiConnect");
    }

    public final void z(int i4, String str, ArrayList arrayList, int i5) {
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i5);
        bundle.putStringArrayList("List", arrayList);
        intent.putExtras(bundle);
        startActivityForResult(intent, i4);
    }
}
