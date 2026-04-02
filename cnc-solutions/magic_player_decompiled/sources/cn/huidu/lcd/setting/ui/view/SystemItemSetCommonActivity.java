package cn.huidu.lcd.setting.ui.view;

import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.SystemItemSetCommonActivity;
import i0.d;
import i0.e;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SystemItemSetCommonActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f1083y = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f1085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f1086m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1087n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1089p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f1090q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public TextView f1091r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f1092s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f1093t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ImageView f1094u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ImageView f1095v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1096w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1097x;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f1098a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f1100c;

        public a(TextView textView, int i4, View view) {
            this.f1098a = textView;
            this.f1099b = i4;
            this.f1100c = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                SystemItemSetCommonActivity.x(SystemItemSetCommonActivity.this, this.f1099b, ((Object) this.f1098a.getText()) + aVar.f540c);
                return;
            }
            if (i4 == 67) {
                String string = this.f1098a.getText().toString();
                if (string.length() == 1) {
                    this.f1098a.setText("0");
                    return;
                } else {
                    this.f1098a.setText(string.substring(0, string.length() - 1));
                    return;
                }
            }
            if (i4 != 4) {
                if (i4 == 500) {
                    this.f1098a.setText("0");
                    return;
                }
                return;
            }
            SystemItemSetCommonActivity.x(SystemItemSetCommonActivity.this, this.f1099b, this.f1098a.getText().toString());
            int i5 = this.f1099b;
            if (i5 == R$id.second_text || i5 == R$id.value_text_item) {
                SystemItemSetCommonActivity systemItemSetCommonActivity = SystemItemSetCommonActivity.this;
                systemItemSetCommonActivity.f822e = null;
                systemItemSetCommonActivity.f823f.b(systemItemSetCommonActivity.f818a);
                SystemItemSetCommonActivity.this.f819b.scrollTo(0, 0);
                this.f1100c.requestFocus();
                this.f1100c.setFocusable(true);
                return;
            }
            if (i5 == R$id.minute_text) {
                SystemItemSetCommonActivity systemItemSetCommonActivity2 = SystemItemSetCommonActivity.this;
                systemItemSetCommonActivity2.t(systemItemSetCommonActivity2.f1085l, systemItemSetCommonActivity2.f1090q);
            } else if (i5 == R$id.hour_text) {
                SystemItemSetCommonActivity systemItemSetCommonActivity3 = SystemItemSetCommonActivity.this;
                systemItemSetCommonActivity3.t(systemItemSetCommonActivity3.f1085l, systemItemSetCommonActivity3.f1089p);
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f1098a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            SystemItemSetCommonActivity.x(SystemItemSetCommonActivity.this, this.f1099b, this.f1098a.getText().toString());
            SystemItemSetCommonActivity systemItemSetCommonActivity = SystemItemSetCommonActivity.this;
            systemItemSetCommonActivity.f823f.b(systemItemSetCommonActivity.f818a);
            SystemItemSetCommonActivity.this.f819b.scrollTo(0, 0);
            this.f1098a.setCursorVisible(false);
            this.f1100c.requestFocus();
            this.f1100c.setFocusable(true);
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f1098a.getText().toString();
            if (string.length() == 1) {
                this.f1098a.setText("0");
            } else {
                this.f1098a.setText(string.substring(0, string.length() - 1));
            }
        }
    }

    public static void x(SystemItemSetCommonActivity systemItemSetCommonActivity, int i4, String str) {
        Objects.requireNonNull(systemItemSetCommonActivity);
        if (i4 == R$id.hour_text) {
            systemItemSetCommonActivity.f1088o.setText(h.a.w(str));
            return;
        }
        if (i4 == R$id.minute_text) {
            systemItemSetCommonActivity.f1089p.setText(h.a.D(str));
            return;
        }
        if (i4 == R$id.second_text) {
            systemItemSetCommonActivity.f1090q.setText(h.a.D(str));
            return;
        }
        if (i4 == R$id.value_text_item) {
            systemItemSetCommonActivity.f1092s.setText("" + h.a.R(100, str));
        }
    }

    public final void A() {
        int i4 = this.f1096w;
        int i5 = i4 == 0 ? 1 : 0;
        int i6 = this.f1097x;
        int iV0 = i6 - h.a.v0(i6, i4);
        if (iV0 >= i5) {
            i5 = iV0;
        }
        if (this.f1097x != i5) {
            this.f1097x = i5;
            this.f1092s.setText(String.valueOf(i5));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        textView.setTextColor(Color.parseColor("#ffffff"));
        this.f822e = textView;
        if (this.f823f == null) {
            this.f823f = new d();
        }
        int id = textView.getId();
        d dVar = this.f823f;
        dVar.f1889d = id == R$id.second_text || id == R$id.value_text_item;
        dVar.a(this, this.f824g);
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, id, view));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.set_query_btn) {
            Bundle bundle = new Bundle();
            bundle.putString("hour", this.f1088o.getText().toString());
            bundle.putString("minute", this.f1089p.getText().toString());
            bundle.putString("second", this.f1090q.getText().toString());
            bundle.putString("value", this.f1092s.getText().toString());
            setResult(-1, getIntent().putExtras(bundle));
            finish();
            return;
        }
        if (id == R$id.set_cancel_btn) {
            setResult(0);
            finish();
        } else if (id == R$id.set_delete_btn) {
            setResult(2);
            finish();
        } else if (id == R$id.time_set) {
            t(this.f1085l, this.f1088o);
            this.f1089p.setTextColor(Color.parseColor("#868686"));
            this.f1090q.setTextColor(Color.parseColor("#868686"));
            this.f1092s.setTextColor(Color.parseColor("#868686"));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_system_item_set_common_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_system_item_set_common);
            } else {
                setContentView(R$layout.activity_system_item_set_common_barscreen);
            }
        } else {
            if (pointB.x < 360) {
                setContentView(R$layout.activity_system_item_set_common_barscreen);
            }
            int i5 = pointB.x;
            if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_system_item_set_common);
            } else {
                setContentView(R$layout.activity_system_item_set_common_barscreen);
            }
        }
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_number_250;
            } else if (i6 < 360 || i6 >= 800) {
                this.f824g = R$xml.hd_nine_number;
            } else {
                this.f824g = R$xml.hd_number_barscreen;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 < 360) {
                this.f824g = R$xml.hd_nine_number_barscreen;
            } else if (i7 < 360 || i7 >= 720) {
                this.f824g = R$xml.hd_nine_number;
            } else {
                this.f824g = R$xml.hd_nine_number_barscreen;
            }
        }
        this.f1084k = (TextView) findViewById(R$id.title_text_view);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.time_set);
        this.f1085l = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f1085l.setOnFocusChangeListener(this);
        this.f1085l.setScaleX(0.98f);
        this.f1085l.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        final int i8 = 0;
        s(this.f1085l, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.value_set);
        this.f1086m = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f1086m.setOnFocusChangeListener(this);
        this.f1086m.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        this.f820c = this.f1086m;
        Button button = (Button) findViewById(R$id.set_query_btn);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.set_cancel_btn);
        button2.setOnClickListener(this);
        button2.setOnFocusChangeListener(this);
        Button button3 = (Button) findViewById(R$id.set_delete_btn);
        button3.setOnClickListener(this);
        button3.setOnFocusChangeListener(this);
        this.f1087n = (TextView) findViewById(R$id.time_title_text);
        this.f1088o = (TextView) findViewById(R$id.hour_text);
        this.f1089p = (TextView) findViewById(R$id.minute_text);
        this.f1090q = (TextView) findViewById(R$id.second_text);
        this.f1091r = (TextView) findViewById(R$id.value_type_title);
        this.f1092s = (TextView) findViewById(R$id.value_text_item);
        this.f1093t = (TextView) findViewById(R$id.percent_title);
        ImageView imageView = (ImageView) findViewById(R$id.left_control_img);
        this.f1094u = imageView;
        imageView.setOnClickListener(new View.OnClickListener(this) { // from class: m0.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SystemItemSetCommonActivity f2488b;

            {
                this.f2488b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i8) {
                    case 0:
                        SystemItemSetCommonActivity systemItemSetCommonActivity = this.f2488b;
                        int i9 = SystemItemSetCommonActivity.f1083y;
                        systemItemSetCommonActivity.A();
                        break;
                    default:
                        SystemItemSetCommonActivity systemItemSetCommonActivity2 = this.f2488b;
                        int i10 = SystemItemSetCommonActivity.f1083y;
                        systemItemSetCommonActivity2.y();
                        break;
                }
            }
        });
        ImageView imageView2 = (ImageView) findViewById(R$id.right_control_img);
        this.f1095v = imageView2;
        final int i9 = 1;
        imageView2.setOnClickListener(new View.OnClickListener(this) { // from class: m0.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SystemItemSetCommonActivity f2488b;

            {
                this.f2488b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i9) {
                    case 0:
                        SystemItemSetCommonActivity systemItemSetCommonActivity = this.f2488b;
                        int i92 = SystemItemSetCommonActivity.f1083y;
                        systemItemSetCommonActivity.A();
                        break;
                    default:
                        SystemItemSetCommonActivity systemItemSetCommonActivity2 = this.f2488b;
                        int i10 = SystemItemSetCommonActivity.f1083y;
                        systemItemSetCommonActivity2.y();
                        break;
                }
            }
        });
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            int i10 = extras.getInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, 1);
            String string = getString(R$string.volume_set);
            int i11 = R$string.time;
            String string2 = getString(i11);
            String string3 = getString(R$string.volume);
            this.f1096w = i10;
            if (i10 == 0) {
                string = getString(R$string.brightness_set);
                string2 = getString(i11);
                string3 = getString(R$string.brightness);
            }
            this.f1084k.setText(string);
            this.f1087n.setText(string2);
            this.f1091r.setText(string3);
            this.f1088o.setText(extras.getString("hour"));
            this.f1089p.setText(extras.getString("minute"));
            this.f1090q.setText(extras.getString("second"));
            this.f1092s.setText(extras.getString("value"));
            String string4 = extras.getString("value");
            Objects.requireNonNull(string4);
            this.f1097x = Integer.valueOf(string4).intValue();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        int id = view.getId();
        if (id == R$id.set_query_btn || id == R$id.set_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (!z3 || (textView = this.f822e) == null) {
                return;
            }
            textView.setTextColor(Color.parseColor("#868686"));
            m();
            return;
        }
        r(view, z3);
        int i4 = R$id.time_set;
        if (id == i4) {
            j(view, z3);
        } else if (id == R$id.value_set) {
            n(view, z3);
        }
        if (id != i4) {
            if (id == R$id.value_set) {
                this.f1091r.setTextColor(Color.parseColor(z3 ? "#ffffff" : "#cccccc"));
                this.f1093t.setTextColor(Color.parseColor(z3 ? "#ffffff" : "#868686"));
                this.f1092s.setTextColor(Color.parseColor(z3 ? "#ffffff" : "#868686"));
                if (z3 || this.f1085l.isFocused() || (textView2 = this.f822e) == null || !textView2.equals(this.f1092s)) {
                    return;
                }
                this.f1092s.setTextColor(Color.parseColor("#ffffff"));
                return;
            }
            return;
        }
        s(view, z3);
        if (z3 || this.f1086m.isFocused() || (textView3 = this.f822e) == null) {
            return;
        }
        if (textView3.equals(this.f1088o)) {
            this.f1088o.setTextColor(Color.parseColor("#ffffff"));
        } else if (this.f822e.equals(this.f1089p)) {
            this.f1089p.setTextColor(Color.parseColor("#ffffff"));
        } else if (this.f822e.equals(this.f1090q)) {
            this.f1090q.setTextColor(Color.parseColor("#ffffff"));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21) {
            if (this.f1086m.isFocused()) {
                A();
                z(true, true);
                return true;
            }
        } else if (i4 == 22 && this.f1086m.isFocused()) {
            y();
            z(false, true);
            return true;
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 != 21 && i4 != 22) {
            return super.onKeyUp(i4, keyEvent);
        }
        if (this.f1086m.isFocused()) {
            z(i4 == 21, false);
        }
        return true;
    }

    public final void y() {
        int i4 = this.f1097x;
        int iU0 = h.a.u0(i4, this.f1096w) + i4;
        if (iU0 > 100) {
            iU0 = 100;
        }
        if (this.f1097x != iU0) {
            this.f1097x = iU0;
            this.f1092s.setText(String.valueOf(iU0));
        }
    }

    public final void z(boolean z3, boolean z4) {
        if (z3) {
            this.f1094u.setImageResource(z4 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
        } else {
            this.f1095v.setImageResource(z4 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
        }
    }
}
