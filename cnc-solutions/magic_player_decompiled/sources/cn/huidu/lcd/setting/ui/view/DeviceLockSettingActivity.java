package cn.huidu.lcd.setting.ui.view;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import i0.d;
import java.util.ArrayList;
import l.b;
import n.e;
import n.g;

/* JADX INFO: loaded from: classes.dex */
public class DeviceLockSettingActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f922x = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f923k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f924l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f925m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FocusEditText f926n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f927o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public FocusEditText f928p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public e f929q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public g f930r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f931s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ArrayList<String> f932t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Button f933u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Button f934v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f935w;

    public class a implements i0.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f937b;

        public a(TextView textView, View view) {
            this.f936a = textView;
            this.f937b = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                this.f936a.setText(((Object) this.f936a.getText()) + aVar.f540c);
                return;
            }
            if (i4 == 67) {
                String string = this.f936a.getText().toString();
                if (string.length() == 0) {
                    return;
                }
                this.f936a.setText(string.substring(0, string.length() - 1));
                return;
            }
            if (i4 == 4) {
                if (TextUtils.isEmpty(this.f936a.getText().toString())) {
                    DeviceLockSettingActivity deviceLockSettingActivity = DeviceLockSettingActivity.this;
                    deviceLockSettingActivity.u(deviceLockSettingActivity.getString(R$string.none_pwd));
                } else {
                    DeviceLockSettingActivity.this.m();
                    this.f936a.setCursorVisible(false);
                    this.f937b.requestFocus();
                    this.f937b.setFocusable(true);
                }
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f936a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            DeviceLockSettingActivity.this.m();
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f936a.getText().toString();
            if (string.length() == 0) {
                return;
            }
            this.f936a.setText(string.substring(0, string.length() - 1));
        }
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        Bundle extras;
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1 || intent == null || (extras = intent.getExtras()) == null) {
            return;
        }
        int i6 = extras.getInt("switch");
        if (i4 == 0) {
            y(i6 == 0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.ll_enable_device_lock) {
            ArrayList<String> arrayList = this.f932t;
            String string = getString(R$string.device_lock);
            int i4 = 1 ^ (this.f931s ? 1 : 0);
            Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("title", string);
            bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
            bundle.putStringArrayList("List", arrayList);
            intent.putExtras(bundle);
            startActivityForResult(intent, 0);
            return;
        }
        if (id == R$id.ll_password1 || id == R$id.edt_password1) {
            FocusEditText focusEditText = this.f926n;
            focusEditText.setSelection(focusEditText.getText().length());
            x(this.f926n, true);
            t(this.f925m, this.f926n);
            return;
        }
        if (id == R$id.ll_password2 || id == R$id.edt_password2) {
            FocusEditText focusEditText2 = this.f928p;
            focusEditText2.setSelection(focusEditText2.getText().length());
            x(this.f928p, true);
            t(this.f927o, this.f928p);
            return;
        }
        if (id != R$id.set_query_btn) {
            if (id == R$id.set_cancel_btn) {
                finish();
                return;
            }
            return;
        }
        String string2 = this.f926n.getText().toString();
        String string3 = this.f928p.getText().toString();
        if (this.f931s) {
            if (TextUtils.isEmpty(string2)) {
                u(getString(R$string.password_empty));
                return;
            }
            if (!string2.equals(string3)) {
                u(getString(R$string.password_not_same));
                return;
            } else if (string2.length() < 8) {
                u(getString(R$string.min_support_pwd_length_msg).replace("#count#", String.valueOf(8)));
                return;
            } else if (string2.length() > 16) {
                u(getString(R$string.max_support_pwd_length_msg).replace("#count#", String.valueOf(16)));
                return;
            }
        }
        if (this.f935w == 0) {
            e eVar = this.f929q;
            boolean z3 = this.f931s;
            eVar.f2634c = z3;
            if (z3) {
                eVar.f2635d = string2;
            }
            b.c().d(this.f929q);
        } else {
            g gVar = this.f930r;
            boolean z4 = this.f931s;
            gVar.f2647c = z4;
            if (z4) {
                gVar.f2648d = string2;
            }
            b.c().d(this.f930r);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putInt("switch", !this.f931s ? 1 : 0);
        setResult(-1, getIntent().putExtras(bundle2));
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_device_lock_setting_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_device_lock_setting);
            } else {
                setContentView(R$layout.activity_device_lock_setting_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                setContentView(R$layout.activity_device_lock_setting_barscreen);
            } else if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_device_lock_setting);
            } else {
                setContentView(R$layout.activity_device_lock_setting_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        View viewFindViewById = findViewById(R$id.ll_enable_device_lock);
        this.f923k = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.f923k.setOnFocusChangeListener(this);
        this.f923k.setBackgroundColor(getResources().getColor(R$color.no_focus_bg_color));
        this.f924l = (TextView) findViewById(R$id.tv_enable_device_lock);
        View viewFindViewById2 = findViewById(R$id.ll_password1);
        this.f925m = viewFindViewById2;
        viewFindViewById2.setOnFocusChangeListener(this);
        this.f925m.setOnClickListener(this);
        FocusEditText focusEditText = (FocusEditText) findViewById(R$id.edt_password1);
        this.f926n = focusEditText;
        focusEditText.setOnClickListener(this);
        View viewFindViewById3 = findViewById(R$id.ll_password2);
        this.f927o = viewFindViewById3;
        viewFindViewById3.setOnFocusChangeListener(this);
        this.f927o.setOnClickListener(this);
        FocusEditText focusEditText2 = (FocusEditText) findViewById(R$id.edt_password2);
        this.f928p = focusEditText2;
        focusEditText2.setOnClickListener(this);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_number_symbol_250;
            } else if (i6 < 360 || i6 >= 800) {
                this.f824g = R$xml.hd_number_symbol;
            } else {
                this.f824g = R$xml.hd_number_symbol_barscreen;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 < 360 || i7 >= 720) {
                this.f824g = R$xml.hd_number_symbol;
            } else {
                this.f824g = R$xml.hd_number_symbol_barscreen;
            }
        }
        Button button = (Button) findViewById(R$id.set_query_btn);
        this.f933u = button;
        button.setOnClickListener(this);
        this.f933u.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.set_cancel_btn);
        this.f934v = button2;
        button2.setOnClickListener(this);
        this.f934v.setOnFocusChangeListener(this);
        this.f935w = getIntent().getIntExtra("lockMode", 0);
        this.f932t = h.a.H(this);
        if (this.f935w == 0) {
            e eVar = (e) b.c().a(e.class);
            this.f929q = eVar;
            y(eVar.f2634c);
        } else {
            g gVar = (g) b.c().a(g.class);
            this.f930r = gVar;
            y(gVar.f2647c);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        int id = view.getId();
        if (id == R$id.set_query_btn || id == R$id.set_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (z3) {
                m();
                return;
            }
            return;
        }
        if (id == R$id.ll_enable_device_lock) {
            if (z3) {
                view.setBackgroundResource(R$drawable.bg_radius_3399ff);
                m();
            } else {
                view.setBackgroundColor(getResources().getColor(R$color.no_focus_bg_color));
            }
            s(view, z3);
            return;
        }
        if (id == R$id.ll_password1) {
            x(this.f926n, z3);
        } else if (id == R$id.ll_password2) {
            x(this.f928p, z3);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if ((i4 != 21 && i4 != 22) || !this.f923k.isFocused()) {
            return super.onKeyDown(i4, keyEvent);
        }
        q(this.f923k, true, i4 == 22);
        y(!this.f931s);
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if ((i4 != 21 && i4 != 22) || !this.f923k.isFocused()) {
            return super.onKeyUp(i4, keyEvent);
        }
        q(this.f923k, false, i4 == 22);
        return true;
    }

    public final void x(EditText editText, boolean z3) {
        editText.setCursorVisible(z3);
        if (z3) {
            FocusEditText focusEditText = this.f926n;
            if (focusEditText != editText) {
                focusEditText.setCursorVisible(false);
            }
            FocusEditText focusEditText2 = this.f928p;
            if (focusEditText2 != editText) {
                focusEditText2.setCursorVisible(false);
            }
        }
    }

    public final void y(boolean z3) {
        this.f931s = z3;
        this.f924l.setText(getString(z3 ? R$string.open : R$string.close));
        if (z3) {
            this.f925m.setVisibility(0);
            this.f927o.setVisibility(0);
            this.f923k.setNextFocusDownId(R$id.ll_password1);
            Button button = this.f933u;
            int i4 = R$id.ll_password2;
            button.setNextFocusUpId(i4);
            this.f934v.setNextFocusUpId(i4);
            return;
        }
        this.f925m.setVisibility(8);
        this.f927o.setVisibility(8);
        this.f923k.setNextFocusDownId(R$id.set_query_btn);
        Button button2 = this.f933u;
        int i5 = R$id.ll_enable_device_lock;
        button2.setNextFocusUpId(i5);
        this.f934v.setNextFocusUpId(i5);
    }
}
