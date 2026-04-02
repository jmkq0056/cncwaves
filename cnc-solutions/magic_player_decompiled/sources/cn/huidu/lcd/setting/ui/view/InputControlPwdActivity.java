package cn.huidu.lcd.setting.ui.view;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.media.f;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import i0.d;
import i0.e;
import j.b;
import l.c;
import org.greenrobot.eventbus.ThreadMode;
import w0.h;

/* JADX INFO: loaded from: classes.dex */
public class InputControlPwdActivity extends BaseActivity {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f941k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f942l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public FocusEditText f943m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f944n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f945o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f946p;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f948b;

        public a(TextView textView, View view) {
            this.f947a = textView;
            this.f948b = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                this.f947a.setText(((Object) this.f947a.getText()) + aVar.f540c);
                return;
            }
            if (i4 == 67) {
                String string = this.f947a.getText().toString();
                if (string.length() == 0) {
                    return;
                }
                this.f947a.setText(string.substring(0, string.length() - 1));
                return;
            }
            if (i4 == 4) {
                if (TextUtils.isEmpty(this.f947a.getText().toString())) {
                    InputControlPwdActivity inputControlPwdActivity = InputControlPwdActivity.this;
                    inputControlPwdActivity.u(inputControlPwdActivity.getString(R$string.none_pwd));
                    return;
                }
                InputControlPwdActivity.this.m();
                this.f947a.setCursorVisible(false);
                this.f948b.requestFocus();
                this.f948b.setFocusable(true);
                InputControlPwdActivity inputControlPwdActivity2 = InputControlPwdActivity.this;
                String string2 = inputControlPwdActivity2.f943m.getText().toString();
                if (string2.equals(inputControlPwdActivity2.f944n) || string2.equals(inputControlPwdActivity2.f945o)) {
                    inputControlPwdActivity2.setResult(-1);
                    inputControlPwdActivity2.finish();
                } else {
                    inputControlPwdActivity2.u(inputControlPwdActivity2.getString(R$string.control_pwd_error));
                    inputControlPwdActivity2.t(inputControlPwdActivity2.f942l, inputControlPwdActivity2.f943m);
                }
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f947a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            InputControlPwdActivity.this.setResult(2);
            InputControlPwdActivity.this.finish();
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f947a.getText().toString();
            if (string.length() == 0) {
                return;
            }
            this.f947a.setText(string.substring(0, string.length() - 1));
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void handleMessage(b bVar) {
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        if (this.f823f == null) {
            this.f823f = new d();
        }
        this.f823f.a(this, this.f824g);
        textView.setCursorVisible(true);
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, view));
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_input_control_pwd_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_input_control_pwd);
            } else {
                setContentView(R$layout.activity_input_control_pwd_barscreen);
            }
        } else {
            setContentView(R$layout.activity_input_control_pwd);
        }
        h.a.q0(this);
        this.f941k = (TextView) findViewById(R$id.title_text_view);
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i5 = pointB2.y;
            if (i5 < 360) {
                this.f824g = R$xml.hd_number_symbol_250;
            } else if (i5 < 360 || i5 >= 800) {
                this.f824g = R$xml.hd_number_symbol;
            } else {
                this.f824g = R$xml.hd_number_symbol_barscreen;
            }
        } else {
            int i6 = pointB2.x;
            if (i6 < 360) {
                this.f824g = R$xml.hd_number_symbol_barscreen;
            } else if (i6 < 360 || i6 >= 720) {
                this.f824g = R$xml.hd_number_symbol;
            } else {
                this.f824g = R$xml.hd_number_symbol_barscreen;
            }
        }
        this.f942l = (LinearLayout) findViewById(R$id.input_main_view);
        FocusEditText focusEditText = (FocusEditText) findViewById(R$id.pwd_input_view);
        this.f943m = focusEditText;
        t(this.f942l, focusEditText);
        Intent intent = getIntent();
        this.f946p = intent.getIntExtra("lockMode", 0);
        this.f944n = intent.getStringExtra("password");
        String stringExtra = intent.getStringExtra("title");
        if (!TextUtils.isEmpty(stringExtra)) {
            this.f941k.setText(stringExtra);
        }
        if (this.f946p == 0) {
            this.f945o = h.c(c.a().f2296b);
        } else {
            this.f945o = "huidu@2022";
        }
        androidx.media.a.a(f.a("mBase64Pwd: "), this.f945o, "mBase64Pwd");
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        h.a.B0(this);
    }
}
