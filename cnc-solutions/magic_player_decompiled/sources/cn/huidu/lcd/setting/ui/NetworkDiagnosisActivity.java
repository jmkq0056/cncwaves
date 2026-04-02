package cn.huidu.lcd.setting.ui;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.NetworkDiagnosisActivity;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import java.util.ArrayList;
import java.util.List;
import p.h;

/* JADX INFO: loaded from: classes.dex */
public class NetworkDiagnosisActivity extends BaseActivity implements View.OnFocusChangeListener, h.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f602t = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f603k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f604l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Button f605m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ProgressBar f606n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f607o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public RecyclerView f608p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public d f609q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public StringBuilder f610r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public h f611s;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f613b;

        public b(String str, int i4) {
            this.f613b = i4;
            this.f612a = str;
        }
    }

    public static class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f614a;

        public c(@NonNull View view) {
            super(view);
            this.f614a = (TextView) view;
        }
    }

    public static class d extends RecyclerView.Adapter<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<b> f615a = new ArrayList();

        public d(a aVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f615a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
            c cVar = (c) viewHolder;
            b bVar = this.f615a.get(i4);
            cVar.f614a.setTextSize(18.0f);
            cVar.f614a.setTextColor(bVar.f613b);
            cVar.f614a.setText(bVar.f612a);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
            TextView textView = new TextView(viewGroup.getContext());
            textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            return new c(textView);
        }
    }

    @Override // p.h.a
    public void c(boolean z3, String str) {
        int i4 = z3 ? -16711936 : SupportMenu.CATEGORY_MASK;
        d dVar = this.f609q;
        dVar.f615a.add(new b(str, i4));
        dVar.notifyDataSetChanged();
        x(false);
    }

    @Override // p.h.a
    public void f(int i4, String str) {
        if (i4 == 1) {
            StringBuilder sb = this.f610r;
            sb.append(str);
            sb.append("\n");
            this.f607o.setText(this.f610r.toString());
            return;
        }
        int i5 = i4 != 2 ? i4 != 3 ? i4 != 4 ? -1 : InputDeviceCompat.SOURCE_ANY : SupportMenu.CATEGORY_MASK : -16711936;
        d dVar = this.f609q;
        dVar.f615a.add(new b(str, i5));
        dVar.notifyDataSetChanged();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_network_diagnosis);
        this.f604l = (TextView) findViewById(R$id.tv_title);
        View viewFindViewById = findViewById(R$id.ll_back);
        this.f603k = viewFindViewById;
        viewFindViewById.setOnFocusChangeListener(this);
        final int i4 = 0;
        this.f603k.setOnClickListener(new View.OnClickListener(this) { // from class: j0.a

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ NetworkDiagnosisActivity f1974b;

            {
                this.f1974b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        NetworkDiagnosisActivity networkDiagnosisActivity = this.f1974b;
                        int i5 = NetworkDiagnosisActivity.f602t;
                        networkDiagnosisActivity.finish();
                        break;
                    default:
                        NetworkDiagnosisActivity networkDiagnosisActivity2 = this.f1974b;
                        int i6 = NetworkDiagnosisActivity.f602t;
                        networkDiagnosisActivity2.y();
                        break;
                }
            }
        });
        Button button = (Button) findViewById(R$id.btn_start);
        this.f605m = button;
        button.setOnFocusChangeListener(this);
        final int i5 = 1;
        this.f605m.setOnClickListener(new View.OnClickListener(this) { // from class: j0.a

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ NetworkDiagnosisActivity f1974b;

            {
                this.f1974b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        NetworkDiagnosisActivity networkDiagnosisActivity = this.f1974b;
                        int i52 = NetworkDiagnosisActivity.f602t;
                        networkDiagnosisActivity.finish();
                        break;
                    default:
                        NetworkDiagnosisActivity networkDiagnosisActivity2 = this.f1974b;
                        int i6 = NetworkDiagnosisActivity.f602t;
                        networkDiagnosisActivity2.y();
                        break;
                }
            }
        });
        this.f606n = (ProgressBar) findViewById(R$id.progress_bar);
        this.f607o = (TextView) findViewById(R$id.tv_progress);
        this.f608p = (RecyclerView) findViewById(R$id.rv_result);
        this.f605m.requestFocus();
        this.f604l.setText(String.valueOf(((n.d) l.b.c().a(n.d.class)).f2632d));
        this.f608p.setLayoutManager(new LinearLayoutManager(this));
        d dVar = new d(null);
        this.f609q = dVar;
        this.f608p.setAdapter(dVar);
        y();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        h hVar = this.f611s;
        if (hVar == null || hVar.f2945b.get()) {
            return;
        }
        Log.d("DiagnosisActivity", "onDestroy: cancel diagnosis task.");
        this.f611s.cancel(true);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        if (view == this.f603k) {
            if (z3) {
                view.setBackgroundResource(R$drawable.bg_btn_radius_3399ff);
                return;
            } else {
                view.setBackgroundColor(0);
                return;
            }
        }
        if (view == this.f605m) {
            if (z3) {
                view.setBackgroundResource(R$drawable.bg_btn_radius_3399ff);
            } else {
                view.setBackgroundResource(R$drawable.bg_btn_radius_434343);
            }
        }
    }

    public final void x(boolean z3) {
        if (z3) {
            p();
            this.f605m.setText(R$string.testing);
            this.f605m.setClickable(false);
            this.f606n.setVisibility(0);
            return;
        }
        o();
        this.f605m.setText(R$string.start_test);
        this.f605m.setClickable(true);
        this.f606n.setVisibility(4);
    }

    public final void y() {
        x(true);
        this.f610r = new StringBuilder();
        this.f607o.setText("");
        d dVar = this.f609q;
        if (!dVar.f615a.isEmpty()) {
            dVar.f615a.clear();
            dVar.notifyDataSetChanged();
        }
        h hVar = new h(this);
        this.f611s = hVar;
        hVar.execute(this);
    }
}
