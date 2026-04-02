package cn.huidu.lcd.setting.ui;

import android.app.ActivityManager;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.f;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ActivityChooserModel;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.FocusEditText;
import java.io.File;
import java.text.DecimalFormat;
import l.b;
import l.e;
import n.d;
import s.i;
import s.m;
import w0.a;
import w0.c;

/* JADX INFO: loaded from: classes.dex */
public class AboutUsMainActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f557v = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FocusEditText f558k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f559l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f560m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f561n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f562o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f563p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f564q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public TextView f565r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f566s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f567t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public d f568u;

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        if (TextUtils.isEmpty(this.f558k.getText().toString().trim())) {
            u(getResources().getString(R$string.please_input_device_name));
        } else {
            x();
            finish();
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public boolean l() {
        if (TextUtils.isEmpty(this.f558k.getText().toString().trim())) {
            u(getResources().getString(R$string.please_input_device_name));
            return true;
        }
        x();
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.device_name) {
            t(view, this.f558k);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        PackageInfo packageInfo;
        String string;
        String strZ;
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_about_us_main);
            } else {
                setContentView(R$layout.activity_about_us_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_about_us_main);
            } else {
                setContentView(R$layout.activity_about_us_main_barscreen);
            }
        }
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = a.b(this);
        if (a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_250;
            } else if (i6 < 800) {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            } else {
                this.f824g = R$xml.hd_qwerty_lowcase;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 >= 360 && i7 >= 720) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_capital;
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.device_name);
        linearLayout.setOnClickListener(this);
        linearLayout.setOnFocusChangeListener(this);
        linearLayout.setScaleX(0.98f);
        linearLayout.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.device_id);
        linearLayout2.setOnFocusChangeListener(this);
        linearLayout2.setScaleX(0.98f);
        Resources resources = getResources();
        int i8 = R$color.no_focus_bg_color;
        linearLayout2.setBackgroundColor(resources.getColor(i8));
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.system_version);
        linearLayout3.setOnFocusChangeListener(this);
        linearLayout3.setScaleX(0.98f);
        linearLayout3.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.software_version);
        linearLayout4.setOnFocusChangeListener(this);
        linearLayout4.setScaleX(0.98f);
        linearLayout4.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R$id.kernel_version);
        linearLayout5.setOnFocusChangeListener(this);
        linearLayout5.setScaleX(0.98f);
        linearLayout5.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout6 = (LinearLayout) findViewById(R$id.total_capacity);
        this.f820c = linearLayout6;
        linearLayout6.setOnFocusChangeListener(this);
        linearLayout6.setScaleX(0.98f);
        linearLayout6.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout7 = (LinearLayout) findViewById(R$id.leave_capacity);
        linearLayout7.setOnFocusChangeListener(this);
        linearLayout7.setScaleX(0.98f);
        linearLayout7.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout8 = (LinearLayout) findViewById(R$id.ram_total_capacity);
        this.f820c = linearLayout8;
        linearLayout8.setOnFocusChangeListener(this);
        linearLayout8.setScaleX(0.98f);
        linearLayout8.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout9 = (LinearLayout) findViewById(R$id.ram_leave_capacity);
        linearLayout9.setOnFocusChangeListener(this);
        linearLayout9.setScaleX(0.98f);
        linearLayout9.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout10 = (LinearLayout) findViewById(R$id.item_eth_mac);
        linearLayout10.setOnFocusChangeListener(this);
        linearLayout10.setScaleX(0.98f);
        linearLayout10.setBackgroundColor(getResources().getColor(i8));
        LinearLayout linearLayout11 = (LinearLayout) findViewById(R$id.item_wifi_mac);
        linearLayout11.setOnFocusChangeListener(this);
        linearLayout11.setScaleX(0.98f);
        linearLayout11.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        this.f558k = (FocusEditText) findViewById(R$id.device_name_text);
        this.f560m = (TextView) findViewById(R$id.device_id_text);
        this.f559l = (TextView) findViewById(R$id.system_version_text);
        this.f561n = (TextView) findViewById(R$id.kernel_version_text);
        TextView textView = (TextView) findViewById(R$id.software_version_text);
        try {
            packageInfo = getPackageManager().getPackageInfo(getPackageName(), 16384);
        } catch (Exception e4) {
            e4.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo != null) {
            StringBuilder sbA = f.a("V");
            sbA.append(packageInfo.versionName);
            string = sbA.toString();
        } else {
            string = "V1.0.1";
        }
        textView.setText(string);
        this.f562o = (TextView) findViewById(R$id.total_capacity_text);
        this.f563p = (TextView) findViewById(R$id.leave_capacity_text);
        this.f564q = (TextView) findViewById(R$id.ram_total_capacity_text);
        this.f565r = (TextView) findViewById(R$id.ram_leave_capacity_text);
        this.f566s = (TextView) findViewById(R$id.tv_eth_mac);
        this.f567t = (TextView) findViewById(R$id.tv_wifi_mac);
        d dVar = (d) b.c().a(d.class);
        this.f568u = dVar;
        String str = dVar.f2631c;
        String str2 = dVar.f2632d;
        this.f558k.setText(str);
        this.f560m.setText(str2);
        this.f559l.setText(Build.VERSION.RELEASE);
        this.f561n.setText(cn.huidu.lcd.core.a.f335a);
        this.f562o.setText(m.f(m.e()));
        this.f563p.setText(m.f(m.d()));
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        StringBuilder sb = new StringBuilder();
        double dA = i.a();
        Double.isNaN(dA);
        Double.isNaN(dA);
        sb.append(decimalFormat.format(Math.ceil((dA * 1.0d) / 1048576.0d)));
        sb.append(" GB");
        this.f564q.setText(sb.toString());
        TextView textView2 = this.f565r;
        ActivityManager activityManager = (ActivityManager) c.f3777a.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        textView2.setText(Formatter.formatFileSize(c.f3777a, memoryInfo.availMem));
        int i9 = cn.huidu.lcd.core.a.f337c;
        if (i9 == 102 || i9 == 107 || i9 == 108) {
            strZ = e.z(new File("/mnt/private/ULI/factory/mac.txt"));
            if (TextUtils.isEmpty(strZ)) {
                strZ = h.a.B("eth0");
            }
        } else {
            strZ = h.a.B("eth0");
        }
        if (TextUtils.isEmpty(strZ)) {
            strZ = "00:00:00:00:00:00";
        }
        this.f566s.setText(strZ);
        String strB = h.a.B("wlan0");
        this.f567t.setText(TextUtils.isEmpty(strB) ? "00:00:00:00:00:00" : strB);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        r(view, z3);
        s(view, z3);
        int id = view.getId();
        int i4 = R$id.device_name;
        if (id == i4) {
            j(view, z3);
        } else if (id == R$id.ram_leave_capacity) {
            n(view, z3);
        }
        if (id == i4 || !z3 || this.f822e == null) {
            return;
        }
        m();
        this.f558k.setCursorVisible(false);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void w() {
        if (TextUtils.isEmpty(this.f558k.getText().toString().trim())) {
            return;
        }
        x();
    }

    public final void x() {
        String strTrim = this.f558k.getText().toString().trim();
        if (strTrim.equals(this.f568u.f2631c)) {
            return;
        }
        this.f568u.f2631c = strTrim;
        b.c().d(this.f568u);
        l.c.a().i(strTrim);
    }
}
