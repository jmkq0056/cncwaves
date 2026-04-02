package cn.huidu.lcd.setting.ui.network;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import h.a;
import java.util.ArrayList;
import l.b;
import n.h;

/* JADX INFO: loaded from: classes.dex */
public class MobileNetworkSetActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f835k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f836l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f837m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Button f838n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Button f839o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList<String> f840p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f841q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f842r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f843s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f844t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f845u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f846v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public h f847w;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        Bundle extras;
        boolean z3;
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1 || (extras = intent.getExtras()) == null) {
            return;
        }
        int i6 = extras.getInt("switch");
        if (i4 == 0) {
            z3 = i6 == 0;
            this.f841q = z3;
            this.f847w.f2653c = z3;
            this.f844t.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 1) {
            z3 = i6 == 0;
            this.f842r = z3;
            this.f847w.f2654d = z3;
            this.f845u.setText(getString(z3 ? R$string.open : R$string.close));
            return;
        }
        if (i4 == 2) {
            z3 = i6 == 0;
            this.f843s = z3;
            this.f847w.f2655e = z3;
            this.f846v.setText(getString(z3 ? R$string.open : R$string.close));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.network_cancel_btn) {
            finish();
            return;
        }
        if (id == R$id.network_query_btn) {
            finish();
            return;
        }
        if (id == R$id.data_net) {
            x(this.f840p, "数据网络", !this.f841q ? 1 : 0, 0);
        } else if (id == R$id.data_roam) {
            x(this.f840p, "数据漫游", !this.f842r ? 1 : 0, 1);
        } else if (id == R$id.open_4g) {
            x(this.f840p, "4G网络", !this.f843s ? 1 : 0, 2);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_mobile_network);
        this.f835k = (LinearLayout) findViewById(R$id.data_net);
        this.f844t = (TextView) findViewById(R$id.tv_date_net);
        this.f845u = (TextView) findViewById(R$id.tv_data_roam);
        this.f846v = (TextView) findViewById(R$id.tv_open_4g);
        this.f835k.setOnClickListener(this);
        this.f835k.setOnFocusChangeListener(this);
        this.f835k.setScaleX(0.98f);
        LinearLayout linearLayout = this.f835k;
        int i4 = R$drawable.bg_stroke_radius_top_434343;
        linearLayout.setBackgroundResource(i4);
        s(this.f835k, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.data_roam);
        this.f836l = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f836l.setOnFocusChangeListener(this);
        this.f836l.setScaleX(0.98f);
        this.f836l.setBackgroundResource(i4);
        s(this.f836l, false);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.open_4g);
        this.f837m = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f837m.setOnFocusChangeListener(this);
        this.f837m.setScaleX(0.98f);
        this.f837m.setBackgroundResource(i4);
        s(this.f837m, false);
        Button button = (Button) findViewById(R$id.network_query_btn);
        this.f838n = button;
        button.setOnClickListener(this);
        this.f838n.setOnFocusChangeListener(this);
        Button button2 = (Button) findViewById(R$id.network_cancel_btn);
        this.f839o = button2;
        button2.setOnClickListener(this);
        this.f839o.setOnFocusChangeListener(this);
        this.f840p = a.H(this);
        this.f847w = (h) b.c().a(h.class);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
    }

    public final void x(ArrayList arrayList, String str, int i4, int i5) {
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
        bundle.putStringArrayList("List", arrayList);
        intent.putExtras(bundle);
        startActivityForResult(intent, i5);
    }
}
