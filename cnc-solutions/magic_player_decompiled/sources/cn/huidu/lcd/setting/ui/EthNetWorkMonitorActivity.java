package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.FocusIndexEditText;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import h.a;
import java.util.ArrayList;
import java.util.Objects;
import l.b;
import n.i;
import s.h;
import v.c;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class EthNetWorkMonitorActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f591u = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f592k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f593l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f594m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f595n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f596o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public FocusIndexEditText f597p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public FocusIndexEditText f598q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public FocusIndexEditText f599r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public i f600s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f601t;

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        y();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1) {
            return;
        }
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null && i4 == 0) {
            int i6 = extras.getInt("switch");
            boolean z3 = this.f601t;
            if ((!z3 ? 1 : 0) != i6) {
                this.f601t = !z3;
                x();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.enable_monitor_view) {
            ArrayList<String> arrayListH = a.H(this);
            Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("title", getString(R$string.enable_monitor));
            bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, !this.f601t ? 1 : 0);
            bundle.putStringArrayList("List", arrayListH);
            intent.putExtras(bundle);
            startActivityForResult(intent, 0);
            return;
        }
        int i4 = R$id.ping_address_item;
        if (id == i4 || id == R$id.edt_ping_address) {
            if (id == i4) {
                FocusIndexEditText focusIndexEditText = this.f597p;
                focusIndexEditText.setSelection(focusIndexEditText.getTextString().length());
            }
            t(this.f593l, this.f597p);
            return;
        }
        int i5 = R$id.ping_number_item;
        if (id == i5 || id == R$id.edt_ping_number) {
            if (id == i5) {
                FocusIndexEditText focusIndexEditText2 = this.f598q;
                focusIndexEditText2.setSelection(focusIndexEditText2.getTextString().length());
            }
            t(this.f594m, this.f598q);
            return;
        }
        int i6 = R$id.ping_delay_time;
        if (id == i6 || id == R$id.edt_ping_delay_time) {
            if (id == i6) {
                FocusIndexEditText focusIndexEditText3 = this.f599r;
                focusIndexEditText3.setSelection(focusIndexEditText3.getTextString().length());
            }
            t(this.f595n, this.f599r);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_eth_net_work_monitor);
            } else {
                setContentView(R$layout.activity_eth_net_work_monitor_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_eth_net_work_monitor);
            } else {
                setContentView(R$layout.activity_eth_net_work_monitor_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
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
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.enable_monitor_view);
        this.f592k = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f592k.setOnFocusChangeListener(this);
        this.f592k.setScaleX(0.98f);
        this.f592k.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        s(this.f592k, false);
        this.f596o = (TextView) findViewById(R$id.enable_monitor_item);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.ping_address_item);
        this.f593l = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f593l.setOnFocusChangeListener(this);
        FocusIndexEditText focusIndexEditText = (FocusIndexEditText) findViewById(R$id.edt_ping_address);
        this.f597p = focusIndexEditText;
        focusIndexEditText.setCustomClickListener(this);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.ping_number_item);
        this.f594m = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f594m.setOnFocusChangeListener(this);
        FocusIndexEditText focusIndexEditText2 = (FocusIndexEditText) findViewById(R$id.edt_ping_number);
        this.f598q = focusIndexEditText2;
        focusIndexEditText2.setCustomClickListener(this);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.ping_delay_time);
        this.f595n = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f595n.setOnFocusChangeListener(this);
        FocusIndexEditText focusIndexEditText3 = (FocusIndexEditText) findViewById(R$id.edt_ping_delay_time);
        this.f599r = focusIndexEditText3;
        focusIndexEditText3.setCustomClickListener(this);
        i iVar = (i) b.c().a(i.class);
        this.f600s = iVar;
        boolean z3 = iVar.f2656c;
        this.f601t = z3;
        this.f596o.setText(getString(z3 ? R$string.open : R$string.close));
        if (this.f600s.f2657d.length() > 0) {
            this.f597p.setText(this.f600s.f2657d);
        }
        this.f598q.setText(String.valueOf(this.f600s.f2658e));
        this.f599r.setText(String.valueOf(this.f600s.f2659f));
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        r(view, z3);
        v(view, z3);
        if (view.getId() == R$id.mode_main_view) {
            j(view, z3);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if ((i4 == 21 || i4 == 22) && this.f592k.isFocused()) {
            q(this.f592k, true, i4 == 22);
            this.f601t = !this.f601t;
            x();
            return true;
        }
        if (keyEvent.getKeyCode() != 4) {
            return super.onKeyDown(i4, keyEvent);
        }
        y();
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if ((i4 == 21 || i4 == 22) && this.f592k.isFocused()) {
            q(this.f592k, false, i4 == 22);
        }
        return super.onKeyUp(i4, keyEvent);
    }

    public final void x() {
        this.f596o.setText(getString(this.f601t ? R$string.open : R$string.close));
        if (d.c("cat /system/bin/dhcptool").f3779b.isEmpty()) {
            return;
        }
        d.c("mount -o rw -o remount /system", "rm /system/bin/dhcptool", "sync");
        new AlertDialog.Builder(this).setMessage(R$string.setup_success_reboot_or_not).setNegativeButton(R$string.cancel, c.f3631d).setPositiveButton(R$string.confirm, new v.b(this)).show();
    }

    public final void y() {
        this.f600s.f2656c = this.f601t;
        String textString = this.f597p.getTextString();
        String textString2 = this.f598q.getTextString();
        String textString3 = this.f599r.getTextString();
        if (textString.length() <= 0) {
            u(getString(R$string.ping_address_not_null));
            return;
        }
        if (textString2.length() <= 0) {
            u(getString(R$string.ping_number_not_null));
            return;
        }
        if (textString3.length() <= 0) {
            u(getString(R$string.ping_delay_time_not_null));
            return;
        }
        i iVar = this.f600s;
        iVar.f2657d = textString;
        iVar.f2658e = Integer.parseInt(textString2);
        this.f600s.f2659f = Integer.parseInt(textString3);
        b.c().d(this.f600s);
        if (this.f601t) {
            n0.d.a().c();
        } else {
            n0.d dVarA = n0.d.a();
            Objects.requireNonNull(dVarA);
            Log.d("TelephonyMonitor", "stop: ");
            if (dVarA.f2712a != null) {
                dVarA.f2713b = false;
                dVarA.f2712a = null;
                h.a("stop monitor thread..");
            }
        }
        finish();
    }
}
