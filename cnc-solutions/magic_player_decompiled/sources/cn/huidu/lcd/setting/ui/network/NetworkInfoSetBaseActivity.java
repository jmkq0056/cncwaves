package cn.huidu.lcd.setting.ui.network;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.FocusEditText;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import i0.d;
import i0.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class NetworkInfoSetBaseActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {
    public static final /* synthetic */ int I = 0;
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f858k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f859l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f860m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f861n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f862o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f863p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f864q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public FocusEditText f865r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public FocusEditText f866s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public FocusEditText f867t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public FocusEditText f868u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Button f869v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Button f870w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<FocusEditText> f871x = new ArrayList();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f872y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f873z;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f874a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f875b;

        public a(TextView textView, View view) {
            this.f874a = textView;
            this.f875b = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                this.f874a.setText(((Object) this.f874a.getText()) + aVar.f540c);
                return;
            }
            if (i4 == 67) {
                String string = this.f874a.getText().toString();
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                this.f874a.setText(string.substring(0, string.length() - 1));
                return;
            }
            if (i4 == 4) {
                int id = this.f874a.getId();
                if (id == R$id.dns_edit_text) {
                    NetworkInfoSetBaseActivity.this.m();
                    this.f874a.setCursorVisible(false);
                    this.f875b.requestFocus();
                    this.f875b.setFocusable(true);
                    return;
                }
                NetworkInfoSetBaseActivity networkInfoSetBaseActivity = NetworkInfoSetBaseActivity.this;
                Objects.requireNonNull(networkInfoSetBaseActivity);
                if (id == R$id.ipv4_edit_text) {
                    networkInfoSetBaseActivity.t(networkInfoSetBaseActivity.f860m, networkInfoSetBaseActivity.f866s);
                    networkInfoSetBaseActivity.D(networkInfoSetBaseActivity.f866s);
                } else if (id == R$id.subnet_edit_text) {
                    networkInfoSetBaseActivity.t(networkInfoSetBaseActivity.f861n, networkInfoSetBaseActivity.f867t);
                    networkInfoSetBaseActivity.D(networkInfoSetBaseActivity.f867t);
                } else if (id == R$id.gateway_edit_text) {
                    networkInfoSetBaseActivity.t(networkInfoSetBaseActivity.f862o, networkInfoSetBaseActivity.f868u);
                    networkInfoSetBaseActivity.D(networkInfoSetBaseActivity.f868u);
                }
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f874a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            NetworkInfoSetBaseActivity.this.m();
            this.f874a.setCursorVisible(false);
            this.f875b.requestFocus();
            this.f875b.setFocusable(true);
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            String string = this.f874a.getText().toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.f874a.setText(string.substring(0, string.length() - 1));
        }
    }

    public void A(boolean z3) {
    }

    public void B() {
    }

    public void C(boolean z3) {
        this.f864q.setText(getString(z3 ? R$string.open : R$string.close));
        if (z3) {
            v(this.f859l, false);
            v(this.f860m, false);
            v(this.f861n, false);
            v(this.f862o, false);
        } else {
            s(this.f859l, false);
            s(this.f860m, false);
            s(this.f861n, false);
            s(this.f862o, false);
        }
        this.f859l.setClickable(z3);
        this.f859l.setFocusable(z3);
        this.f860m.setClickable(z3);
        this.f860m.setFocusable(z3);
        this.f861n.setClickable(z3);
        this.f861n.setFocusable(z3);
        this.f862o.setClickable(z3);
        this.f862o.setFocusable(z3);
        if (z3) {
            this.f865r.setText(this.A);
            this.f866s.setText(this.B);
            this.f867t.setText(this.C);
            this.f868u.setText(this.D);
            if (TextUtils.isEmpty(this.A)) {
                this.f865r.setText(this.E);
            }
            if (TextUtils.isEmpty(this.B)) {
                this.f866s.setText(this.F);
            }
            if (TextUtils.isEmpty(this.C)) {
                this.f867t.setText(this.G);
            }
            if (TextUtils.isEmpty(this.D)) {
                this.f868u.setText(this.H);
            }
        } else {
            if (!this.f873z) {
                this.A = this.f865r.getText().toString();
                this.B = this.f866s.getText().toString();
                this.C = this.f867t.getText().toString();
                this.D = this.f868u.getText().toString();
            }
            this.f865r.setText(this.E);
            this.f866s.setText(this.F);
            this.f867t.setText(this.G);
            this.f868u.setText(this.H);
        }
        this.f873z = false;
    }

    public void D(TextView textView) {
        for (FocusEditText focusEditText : this.f871x) {
            if (!focusEditText.equals(textView)) {
                focusEditText.setCursorVisible(false);
            }
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        if (this.f823f == null) {
            this.f823f = new d();
        }
        this.f823f.f1889d = textView.equals(this.f868u);
        this.f823f.a(this, this.f824g);
        textView.setCursorVisible(true);
        this.f822e = textView;
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, view));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, Intent intent) {
        Bundle extras;
        super.onActivityResult(i4, i5, intent);
        if (i4 == 0 && i5 == -1 && (extras = intent.getExtras()) != null) {
            boolean z3 = extras.getInt("switch") == 0;
            if (this.f872y != z3) {
                this.f872y = z3;
                C(z3);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.network_cancel_btn) {
            y();
            return;
        }
        if (id == R$id.network_query_btn) {
            B();
            return;
        }
        if (id == R$id.auto_set) {
            ArrayList<String> arrayListH = h.a.H(this);
            Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("title", getString(R$string.manual_set));
            bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, !this.f872y ? 1 : 0);
            bundle.putStringArrayList("List", arrayListH);
            intent.putExtras(bundle);
            startActivityForResult(intent, 0);
            return;
        }
        if (id == R$id.ipv4_set) {
            t(view, this.f865r);
            D(this.f865r);
            return;
        }
        if (id == R$id.subnet_set) {
            t(view, this.f866s);
            D(this.f866s);
        } else if (id == R$id.gateway_set) {
            t(view, this.f867t);
            D(this.f867t);
        } else if (id == R$id.dns_set) {
            t(view, this.f868u);
            D(this.f868u);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_wired_network_set);
            } else {
                setContentView(R$layout.activity_wired_network_set_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_wired_network_set);
            } else {
                setContentView(R$layout.activity_wired_network_set_barscreen);
            }
        }
        z();
        x();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        int id = view.getId();
        if (id == R$id.network_query_btn || id == R$id.network_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (!z3 || (textView = this.f822e) == null) {
                return;
            }
            textView.setCursorVisible(false);
            m();
            return;
        }
        r(view, z3);
        v(view, z3);
        int i4 = R$id.auto_set;
        if (id == i4) {
            j(view, z3);
        } else if (id == R$id.dns_set) {
            n(view, z3);
        }
        if (id != i4) {
            if (z3 || (textView2 = this.f822e) == null) {
                return;
            }
            D(textView2);
            return;
        }
        if (!z3 || (textView3 = this.f822e) == null) {
            return;
        }
        textView3.setCursorVisible(false);
        m();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if ((i4 != 22 && i4 != 21) || !this.f858k.isFocused()) {
            return super.onKeyDown(i4, keyEvent);
        }
        q(this.f858k, true, i4 == 22);
        boolean z3 = !this.f872y;
        this.f872y = z3;
        C(z3);
        A(this.f872y);
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 == 22 || i4 == 21) {
            q(this.f858k, false, i4 == 22);
        }
        return super.onKeyUp(i4, keyEvent);
    }

    public void x() {
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                this.f824g = R$xml.hd_number_250;
            } else if (i4 < 800) {
                this.f824g = R$xml.hd_number_barscreen;
            } else {
                this.f824g = R$xml.hd_nine_number;
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                this.f824g = R$xml.hd_number_barscreen;
            } else if (i5 < 720) {
                this.f824g = R$xml.hd_nine_number_barscreen;
            } else {
                this.f824g = R$xml.hd_nine_number;
            }
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.auto_set);
        this.f858k = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f858k.setOnFocusChangeListener(this);
        this.f858k.setScaleX(0.98f);
        this.f858k.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        s(this.f858k, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.ipv4_set);
        this.f859l = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f859l.setOnFocusChangeListener(this);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.subnet_set);
        this.f860m = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f860m.setOnFocusChangeListener(this);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.gateway_set);
        this.f861n = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f861n.setOnFocusChangeListener(this);
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R$id.dns_set);
        this.f862o = linearLayout5;
        this.f820c = linearLayout5;
        linearLayout5.setOnClickListener(this);
        this.f862o.setOnFocusChangeListener(this);
        this.f863p = (TextView) findViewById(R$id.title_text);
        this.f864q = (TextView) findViewById(R$id.auto_text_view);
        FocusEditText focusEditText = (FocusEditText) findViewById(R$id.ipv4_edit_text);
        this.f865r = focusEditText;
        this.f871x.add(focusEditText);
        FocusEditText focusEditText2 = (FocusEditText) findViewById(R$id.subnet_edit_text);
        this.f866s = focusEditText2;
        this.f871x.add(focusEditText2);
        FocusEditText focusEditText3 = (FocusEditText) findViewById(R$id.gateway_edit_text);
        this.f867t = focusEditText3;
        this.f871x.add(focusEditText3);
        FocusEditText focusEditText4 = (FocusEditText) findViewById(R$id.dns_edit_text);
        this.f868u = focusEditText4;
        this.f871x.add(focusEditText4);
        Button button = (Button) findViewById(R$id.network_query_btn);
        this.f869v = button;
        button.setOnClickListener(this);
        this.f869v.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.network_cancel_btn);
        this.f870w = button2;
        button2.setOnClickListener(this);
        this.f870w.setOnFocusChangeListener(this);
        C(this.f872y);
    }

    public void y() {
        finish();
    }

    public void z() {
    }
}
