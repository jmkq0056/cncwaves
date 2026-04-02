package cn.huidu.lcd.setting.ui.view;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import i0.d;
import i0.e;
import java.util.Calendar;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SystemDateInputActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f1070t = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public FrameLayout f1072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public FrameLayout f1073m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f1074n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1075o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1076p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f1077q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public TextView f1078r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1079s;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f1080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f1081b;

        public a(TextView textView, View view) {
            this.f1080a = textView;
            this.f1081b = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            int id = this.f1080a.getId();
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                String str2 = ((Object) this.f1080a.getText()) + aVar.f540c;
                SystemDateInputActivity systemDateInputActivity = SystemDateInputActivity.this;
                int i5 = SystemDateInputActivity.f1070t;
                Objects.requireNonNull(systemDateInputActivity);
                if (id == R$id.first_item_text) {
                    if (systemDateInputActivity.f1079s) {
                        systemDateInputActivity.f1075o.setText(h.a.U(str2));
                        return;
                    } else {
                        systemDateInputActivity.f1075o.setText(h.a.w(str2));
                        return;
                    }
                }
                if (id == R$id.second_item_text) {
                    if (systemDateInputActivity.f1079s) {
                        systemDateInputActivity.f1076p.setText(h.a.E(str2));
                        return;
                    } else {
                        systemDateInputActivity.f1076p.setText(h.a.D(str2));
                        return;
                    }
                }
                if (id == R$id.third_item_text) {
                    systemDateInputActivity.f1077q.setText(h.a.u(h.a.c(systemDateInputActivity.f1075o.getText().toString(), systemDateInputActivity.f1076p.getText().toString()), str2));
                    return;
                }
                return;
            }
            if (i4 == 67) {
                String string = this.f1080a.getText().toString();
                if (string.length() == 1) {
                    this.f1080a.setText("0");
                    return;
                } else {
                    this.f1080a.setText(string.substring(0, string.length() - 1));
                    return;
                }
            }
            if (i4 != 4) {
                if (i4 == 500) {
                    this.f1080a.setText("0");
                    return;
                }
                return;
            }
            SystemDateInputActivity systemDateInputActivity2 = SystemDateInputActivity.this;
            int i6 = SystemDateInputActivity.f1070t;
            Objects.requireNonNull(systemDateInputActivity2);
            if (id == R$id.first_item_text) {
                systemDateInputActivity2.y(systemDateInputActivity2.f1075o);
                systemDateInputActivity2.f1073m.requestFocus();
                systemDateInputActivity2.t(systemDateInputActivity2.f1073m, systemDateInputActivity2.f1076p);
                return;
            }
            if (id != R$id.second_item_text) {
                if (id == R$id.third_item_text) {
                    systemDateInputActivity2.y(systemDateInputActivity2.f1077q);
                    systemDateInputActivity2.m();
                    systemDateInputActivity2.f1074n.requestFocus();
                    systemDateInputActivity2.f1074n.setFocusable(true);
                    return;
                }
                return;
            }
            if (systemDateInputActivity2.f1079s) {
                systemDateInputActivity2.y(systemDateInputActivity2.f1076p);
                systemDateInputActivity2.f1074n.requestFocus();
                systemDateInputActivity2.t(systemDateInputActivity2.f1074n, systemDateInputActivity2.f1077q);
            } else {
                systemDateInputActivity2.m();
                systemDateInputActivity2.f1073m.requestFocus();
                systemDateInputActivity2.f1073m.setFocusable(true);
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f1080a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            Log.d("SystemDateInputActivity", "onBack: +++back");
            SystemDateInputActivity systemDateInputActivity = SystemDateInputActivity.this;
            TextView textView = this.f1080a;
            int i4 = SystemDateInputActivity.f1070t;
            systemDateInputActivity.y(textView);
            SystemDateInputActivity.this.m();
            this.f1081b.requestFocus();
            this.f1081b.setFocusable(true);
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f1080a.getText().toString();
            if (string.length() == 1) {
                this.f1080a.setText("0");
            } else {
                this.f1080a.setText(string.substring(0, string.length() - 1));
            }
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        x();
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        if (this.f823f == null) {
            this.f823f = new d();
        }
        if (this.f1079s) {
            this.f823f.f1889d = textView.equals(this.f1077q);
        } else {
            this.f823f.f1889d = textView.equals(this.f1076p);
        }
        this.f823f.a(this, this.f824g);
        this.f822e = textView;
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, view));
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public boolean l() {
        x();
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.first_item_view) {
            t(this.f1072l, this.f1075o);
        } else if (id == R$id.second_item_view) {
            t(this.f1073m, this.f1076p);
        } else if (id == R$id.third_item_view) {
            t(this.f1074n, this.f1077q);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_system_date_input);
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        this.f824g = R$xml.hd_nine_number;
        this.f1071k = (TextView) findViewById(R$id.date_time_title);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.first_item_view);
        this.f1072l = frameLayout;
        frameLayout.setOnClickListener(this);
        this.f1072l.setOnFocusChangeListener(this);
        this.f1072l.setBackgroundResource(R$drawable.bg_radius_white);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.second_item_view);
        this.f1073m = frameLayout2;
        this.f820c = frameLayout2;
        frameLayout2.setOnClickListener(this);
        this.f1073m.setOnFocusChangeListener(this);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.third_item_view);
        this.f1074n = frameLayout3;
        frameLayout3.setOnClickListener(this);
        this.f1074n.setOnFocusChangeListener(this);
        this.f1075o = (TextView) findViewById(R$id.first_item_text);
        this.f1076p = (TextView) findViewById(R$id.second_item_text);
        this.f1077q = (TextView) findViewById(R$id.third_item_text);
        this.f1078r = (TextView) findViewById(R$id.last_separator_view);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            boolean z3 = extras.getInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, 2) == 2;
            this.f1079s = z3;
            this.f1071k.setText(getString(z3 ? R$string.date_set : R$string.time_set));
            this.f1078r.setVisibility(z3 ? 0 : 8);
            this.f1074n.setVisibility(z3 ? 0 : 8);
            Calendar calendar = Calendar.getInstance();
            int i4 = calendar.get(1);
            int i5 = calendar.get(2) + 1;
            int i6 = calendar.get(5);
            int i7 = calendar.get(11);
            String string = Integer.toString(i7);
            if (i7 < 10) {
                string = androidx.appcompat.view.a.a("0", string);
            }
            int i8 = calendar.get(12);
            String string2 = Integer.toString(i8);
            if (i8 < 10) {
                string2 = androidx.appcompat.view.a.a("0", string2);
            }
            if (z3) {
                this.f1075o.setText(extras.getString("first_item", String.valueOf(i4)));
                this.f1076p.setText(extras.getString("second_item", String.valueOf(i5)));
                this.f1077q.setText(extras.getString("third_item", String.valueOf(i6)));
            } else {
                this.f1075o.setText(extras.getString("first_item", string));
                this.f1076p.setText(extras.getString("second_item", string2));
                this.f1077q.setText(extras.getString("third_item", ""));
            }
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        if (!z3) {
            if (this.f822e == null) {
                view.setBackgroundResource(R$drawable.bg_radius_white);
                return;
            }
            return;
        }
        view.setBackgroundResource(R$drawable.bg_stroke_3399ff);
        TextView textView = this.f822e;
        if (textView != null) {
            y(textView);
            if (view.equals(this.f1072l)) {
                FrameLayout frameLayout = this.f1073m;
                int i4 = R$drawable.bg_radius_white;
                frameLayout.setBackgroundResource(i4);
                this.f1074n.setBackgroundResource(i4);
            } else if (view.equals(this.f1073m)) {
                FrameLayout frameLayout2 = this.f1072l;
                int i5 = R$drawable.bg_radius_white;
                frameLayout2.setBackgroundResource(i5);
                this.f1074n.setBackgroundResource(i5);
            } else if (view.equals(this.f1074n)) {
                FrameLayout frameLayout3 = this.f1073m;
                int i6 = R$drawable.bg_radius_white;
                frameLayout3.setBackgroundResource(i6);
                this.f1072l.setBackgroundResource(i6);
            }
            m();
        }
    }

    public final void x() {
        Bundle bundle = new Bundle();
        bundle.putString("first_item", this.f1075o.getText().toString());
        bundle.putString("second_item", this.f1076p.getText().toString());
        bundle.putString("third_item", this.f1077q.getText().toString());
        setResult(-1, getIntent().putExtras(bundle));
    }

    public final void y(TextView textView) {
        if (this.f1079s) {
            String string = textView.getText().toString();
            if (textView.equals(this.f1075o)) {
                int iR = h.a.R(2037, string);
                textView.setText(iR < 1970 ? "1970" : android.support.v4.media.d.a("", iR));
            } else {
                int iIntValue = Integer.valueOf(string).intValue();
                if (iIntValue == 0) {
                    iIntValue = 1;
                }
                textView.setText(String.valueOf(iIntValue));
            }
            this.f1077q.setText(h.a.u(h.a.c(this.f1075o.getText().toString(), this.f1076p.getText().toString()), this.f1077q.getText().toString()));
        }
    }
}
