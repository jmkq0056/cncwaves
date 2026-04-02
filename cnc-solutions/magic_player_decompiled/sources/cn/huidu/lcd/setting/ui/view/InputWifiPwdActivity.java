package cn.huidu.lcd.setting.ui.view;

import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import i0.e;
import java.lang.ref.WeakReference;
import p.d;

/* JADX INFO: loaded from: classes.dex */
public class InputWifiPwdActivity extends BaseActivity {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f966t = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Handler f967k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public d f968l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f969m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f970n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public FocusEditText f971o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ImageView f972p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f973q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f974r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f975s = false;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f977b;

        public a(TextView textView, View view) {
            this.f976a = textView;
            this.f977b = view;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
        @Override // i0.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(cn.huidu.lcd.setting.keyboard.a r9) {
            /*
                Method dump skipped, instruction units count: 234
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.view.InputWifiPwdActivity.a.a(cn.huidu.lcd.setting.keyboard.a):void");
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f976a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            InputWifiPwdActivity.this.finish();
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f976a.getText().toString();
            if (string.length() == 0) {
                return;
            }
            this.f976a.setText(string.substring(0, string.length() - 1));
        }
    }

    public static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<InputWifiPwdActivity> f979a;

        public b(InputWifiPwdActivity inputWifiPwdActivity) {
            this.f979a = new WeakReference<>(inputWifiPwdActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            InputWifiPwdActivity inputWifiPwdActivity = this.f979a.get();
            if (inputWifiPwdActivity != null) {
                int i4 = InputWifiPwdActivity.f966t;
                int i5 = message.what;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    inputWifiPwdActivity.u(inputWifiPwdActivity.getString(R$string.connection_success));
                    inputWifiPwdActivity.finish();
                    return;
                }
                Object obj = message.obj;
                if (obj instanceof String) {
                    inputWifiPwdActivity.u((String) obj);
                } else {
                    inputWifiPwdActivity.u(inputWifiPwdActivity.getString(R$string.connection_failed));
                }
                inputWifiPwdActivity.f974r = false;
                inputWifiPwdActivity.f969m.setText(String.format("%s%s%s%s", inputWifiPwdActivity.getString(R$string.can_not_join), "\"", inputWifiPwdActivity.f973q, "\""));
                inputWifiPwdActivity.t(inputWifiPwdActivity.f970n, inputWifiPwdActivity.f971o);
            }
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        if (this.f823f == null) {
            this.f823f = new i0.d();
        }
        this.f823f.a(this, this.f824g);
        textView.setCursorVisible(true);
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, view));
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public boolean l() {
        return this.f974r;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_input_wifi_pwd_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_input_wifi_pwd);
            } else {
                setContentView(R$layout.activity_input_wifi_pwd_barscreen);
            }
        } else if (pointB.y < 360) {
            setContentView(R$layout.activity_input_wifi_pwd_barscreen);
        } else {
            int i5 = pointB.x;
            if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_input_wifi_pwd);
            } else {
                setContentView(R$layout.activity_input_wifi_pwd_barscreen);
            }
        }
        this.f967k = new b(this);
        d dVar = new d(this);
        this.f968l = dVar;
        dVar.f2928g = new p.b(this);
        this.f973q = getIntent().getStringExtra("Ssid");
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_250;
            } else if (i6 < 800) {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            } else {
                this.f824g = R$xml.hd_qwerty_lowcase;
            }
        } else if (pointB2.x < 720) {
            this.f824g = R$xml.hd_qwerty_barscreen_lower;
        } else {
            this.f824g = R$xml.hd_qwerty_lowcase;
        }
        this.f969m = (TextView) findViewById(R$id.join_state_text);
        if (pointB2.y < 800 && this.f973q.length() > 15) {
            this.f973q = this.f973q.substring(0, 15) + "...";
        }
        if (pointB2.x <= 360 && this.f973q.length() > 8) {
            this.f973q = this.f973q.substring(0, 8) + "...";
        }
        this.f969m.setText(String.format("%s%s%s%s%s", getString(R$string.input), "\"", this.f973q, "\"", getString(R$string.with_pwd)));
        this.f970n = (LinearLayout) findViewById(R$id.input_main_view);
        this.f971o = (FocusEditText) findViewById(R$id.pwd_input_view);
        this.f972p = (ImageView) findViewById(R$id.img_pass_show);
        t(this.f970n, this.f971o);
        this.f972p.setOnClickListener(new w.a(this));
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d dVar = this.f968l;
        if (dVar != null) {
            dVar.a();
        }
    }
}
