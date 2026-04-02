package cn.huidu.lcd.setting.ui.view;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
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
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import p.b;
import p.d;

/* JADX INFO: loaded from: classes.dex */
public class InputInfoJoinWifiActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f950y = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f951k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f952l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f953m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f954n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public FocusEditText f955o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f956p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public FocusEditText f957q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Button f958r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Button f959s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Handler f960t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public d f961u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ArrayList<String> f962v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f963w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f964x = false;

    public static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<InputInfoJoinWifiActivity> f965a;

        public a(InputInfoJoinWifiActivity inputInfoJoinWifiActivity) {
            this.f965a = new WeakReference<>(inputInfoJoinWifiActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            InputInfoJoinWifiActivity inputInfoJoinWifiActivity = this.f965a.get();
            if (inputInfoJoinWifiActivity != null) {
                int i4 = InputInfoJoinWifiActivity.f950y;
                int i5 = message.what;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    inputInfoJoinWifiActivity.finish();
                } else {
                    StringBuilder sbA = f.a("Connect failed: ");
                    sbA.append(message.obj);
                    Log.d("InputInfoJoinWifi", sbA.toString());
                    inputInfoJoinWifiActivity.finish();
                }
            }
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public boolean l() {
        return this.f964x;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        Bundle extras;
        int i6;
        super.onActivityResult(i4, i5, intent);
        if (i4 != 0 || i5 != -1 || (extras = intent.getExtras()) == null || this.f963w == (i6 = extras.getInt("switch"))) {
            return;
        }
        this.f963w = i6;
        this.f956p.setText(this.f962v.get(i6));
        x(this.f963w != this.f962v.size() - 1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f964x) {
            return;
        }
        int id = view.getId();
        if (id == R$id.network_query_btn) {
            if (TextUtils.isEmpty(this.f955o.getText().toString())) {
                u(getString(R$string.none_network_name));
                return;
            }
            if (this.f963w == this.f962v.size() - 1) {
                this.f961u.e(this.f955o.getText().toString(), "", 0);
                this.f954n.setText(String.format("%s%s%s%s", getString(R$string.adding), "\"", this.f955o.getText().toString(), "\"..."));
                this.f964x = true;
                return;
            } else {
                if (TextUtils.isEmpty(this.f957q.getText().toString())) {
                    u(getString(R$string.none_pwd));
                    return;
                }
                this.f954n.setText(String.format("%s%s%s%s", getString(R$string.adding), "\"", this.f955o.getText().toString(), "\"..."));
                this.f964x = true;
                if (this.f963w == this.f962v.size() - 2) {
                    this.f961u.e(this.f955o.getText().toString(), this.f957q.getText().toString(), 1);
                    return;
                } else {
                    this.f961u.e(this.f955o.getText().toString(), this.f957q.getText().toString(), 2);
                    return;
                }
            }
        }
        if (id == R$id.network_cancel_btn) {
            finish();
            return;
        }
        if (id == R$id.sid_name_view) {
            t(this.f951k, this.f955o);
            this.f957q.setCursorVisible(false);
            return;
        }
        if (id != R$id.security_type_view) {
            if (id == R$id.pwd_set_view) {
                t(this.f953m, this.f957q);
                this.f955o.setCursorVisible(false);
                return;
            }
            return;
        }
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", getString(R$string.network_security_type));
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.f963w);
        bundle.putStringArrayList("List", this.f962v);
        intent.putExtras(bundle);
        startActivityForResult(intent, 0);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_input_info_join_wifi_barscreen);
            } else if (i4 < 360 || i4 > 800) {
                setContentView(R$layout.activity_input_info_join_wifi);
            } else {
                setContentView(R$layout.activity_input_info_join_wifi_barscreen);
            }
        } else if (pointB.y < 360) {
            setContentView(R$layout.activity_input_info_join_wifi_barscreen);
        } else {
            int i5 = pointB.x;
            if (i5 < 360 || i5 > 800) {
                setContentView(R$layout.activity_input_info_join_wifi);
            } else {
                setContentView(R$layout.activity_input_info_join_wifi_barscreen);
            }
        }
        ArrayList<String> arrayList = new ArrayList<>(Arrays.asList("WPA2", "WPA", "WEP", getResources().getString(R$string.no)));
        this.f962v = arrayList;
        this.f963w = arrayList.size() - 1;
        this.f960t = new a(this);
        d dVar = new d(this);
        this.f961u = dVar;
        dVar.f2928g = new b(this);
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_250;
            } else if (i6 < 360 || i6 > 800) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        } else if (pointB2.y < 360) {
            this.f824g = R$xml.hd_qwerty_barscreen_lower;
        } else {
            int i7 = pointB2.x;
            if (i7 < 360 || i7 >= 720) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        }
        this.f954n = (TextView) findViewById(R$id.other_wifi_info);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.sid_name_view);
        this.f951k = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f951k.setOnFocusChangeListener(this);
        this.f951k.setScaleX(0.98f);
        LinearLayout linearLayout2 = this.f951k;
        int i8 = R$drawable.bg_radius_434343;
        linearLayout2.setBackgroundResource(i8);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.security_type_view);
        this.f952l = linearLayout3;
        this.f820c = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f952l.setOnFocusChangeListener(this);
        this.f952l.setScaleX(0.98f);
        this.f952l.setBackgroundResource(i8);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.pwd_set_view);
        this.f953m = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f953m.setOnFocusChangeListener(this);
        this.f953m.setScaleX(0.98f);
        this.f953m.setBackgroundResource(i8);
        this.f955o = (FocusEditText) findViewById(R$id.sid_name_text);
        TextView textView = (TextView) findViewById(R$id.security_type_text);
        this.f956p = textView;
        textView.setText(this.f962v.get(this.f963w));
        this.f957q = (FocusEditText) findViewById(R$id.pwd_set_text);
        x(false);
        Button button = (Button) findViewById(R$id.network_query_btn);
        this.f958r = button;
        button.setOnClickListener(this);
        this.f958r.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.network_cancel_btn);
        this.f959s = button2;
        button2.setOnClickListener(this);
        this.f959s.setOnFocusChangeListener(this);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d dVar = this.f961u;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        int id = view.getId();
        if (id == R$id.network_query_btn || id == R$id.network_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (!z3 || this.f822e == null) {
                return;
            }
            m();
            this.f955o.setCursorVisible(false);
            this.f957q.setCursorVisible(false);
            return;
        }
        r(view, z3);
        if (!z3) {
            view.setBackgroundResource(R$drawable.bg_btn_radius_434343);
        }
        if (id == R$id.security_type_view && z3) {
            m();
            this.f955o.setCursorVisible(false);
            this.f957q.setCursorVisible(false);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21) {
            if (this.f952l.isFocused()) {
                int i5 = this.f963w - 1;
                if (i5 >= 0) {
                    this.f963w = i5;
                    this.f956p.setText(this.f962v.get(i5));
                    if (this.f963w == this.f962v.size() - 2) {
                        x(true);
                    }
                }
                return true;
            }
        } else if (i4 == 22 && this.f952l.isFocused()) {
            int i6 = this.f963w + 1;
            if (i6 <= this.f962v.size() - 1) {
                this.f963w = i6;
                this.f956p.setText(this.f962v.get(i6));
                if (this.f963w == this.f962v.size() - 1) {
                    x(false);
                }
            }
            return true;
        }
        return super.onKeyDown(i4, keyEvent);
    }

    public final void x(boolean z3) {
        this.f953m.setVisibility(z3 ? 0 : 8);
        this.f953m.setClickable(z3);
        this.f953m.setFocusable(z3);
        if (z3) {
            this.f820c = (ViewGroup) findViewById(R$id.pwd_set_view);
        } else {
            this.f820c = (ViewGroup) findViewById(R$id.security_type_view);
        }
    }
}
