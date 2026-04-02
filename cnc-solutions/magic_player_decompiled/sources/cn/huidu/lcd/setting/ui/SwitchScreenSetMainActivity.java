package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.annotation.Nullable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.adapter.SwitchTimeListAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import cn.huidu.lcd.setting.ui.view.SwitchTimeItemModifyActivity;
import g3.c;
import j.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import o.e;
import q.j;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class SwitchScreenSetMainActivity extends BaseActivity implements SwitchTimeListAdapter.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f655r = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LcdPlayerRecyclerView f656k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public List<e> f657l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<e> f658m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<e> f659n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public SwitchTimeListAdapter f660o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public e f661p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public j f662q;

    public final void A() {
        boolean z3;
        int size = this.f659n.size();
        boolean z4 = false;
        if (size != this.f658m.size()) {
            z4 = true;
            break;
        }
        if (size > 0) {
            for (e eVar : this.f659n) {
                Iterator<e> it = this.f658m.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z3 = false;
                        break;
                    }
                    e next = it.next();
                    if (next.f2834a.equals(eVar.f2834a) && next.f2835b.equals(eVar.f2835b)) {
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    z4 = true;
                    break;
                }
            }
        }
        if (z4) {
            ArrayList arrayList = new ArrayList();
            if (this.f658m.size() > 0) {
                arrayList.addAll(this.f658m);
            }
            this.f662q.j(arrayList);
            r rVar = new r();
            rVar.f1963c = true;
            c.b().f(rVar);
        }
    }

    public final void B(String str, String str2, int i4) {
        Intent intent = new Intent(this, (Class<?>) SwitchTimeItemModifyActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("start_time", str);
        bundle.putString("end_time", str2);
        bundle.putBoolean("isMachine", false);
        intent.putExtras(bundle);
        startActivityForResult(intent, i4);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        A();
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 == 0) {
            return;
        }
        if (i5 == 2) {
            e eVar = this.f661p;
            if (eVar != null) {
                this.f658m.remove(eVar);
                z();
                this.f660o.b(this.f657l);
                this.f660o.notifyDataSetChanged();
                return;
            }
            return;
        }
        Objects.requireNonNull(intent);
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        if (i4 == 1) {
            x(extras, true);
        } else if (i4 == 2) {
            x(extras, false);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_audio_setting_main);
            } else {
                setContentView(R$layout.activity_audio_setting_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_audio_setting_main);
            } else {
                setContentView(R$layout.activity_audio_setting_main_barscreen);
            }
        }
        ((TextView) findViewById(R$id.title_text_view)).setText(getString(R$string.switch_screen_set));
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f656k = (LcdPlayerRecyclerView) findViewById(R$id.recycler_view_list);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        this.f656k.setLayoutManager(baseLinearLayoutManager);
        j jVar = new j(this);
        this.f662q = jVar;
        List<e> listE = jVar.e();
        if (listE != null) {
            for (e eVar : listE) {
                this.f658m.add(eVar);
                List<e> list = this.f659n;
                e eVar2 = new e();
                eVar2.f2834a = eVar.f2834a;
                eVar2.f2835b = eVar.f2835b;
                list.add(eVar2);
            }
        }
        z();
        SwitchTimeListAdapter switchTimeListAdapter = new SwitchTimeListAdapter(this, false);
        this.f660o = switchTimeListAdapter;
        switchTimeListAdapter.setHasStableIds(true);
        SwitchTimeListAdapter switchTimeListAdapter2 = this.f660o;
        switchTimeListAdapter2.f772c = this;
        switchTimeListAdapter2.b(this.f657l);
        this.f656k.setAdapter(this.f660o);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.onKeyDown(i4, keyEvent);
        }
        A();
        finish();
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void w() {
        A();
    }

    public final void x(Bundle bundle, boolean z3) {
        String string = bundle.getString("start_time");
        String string2 = bundle.getString("end_time");
        e eVar = new e(string, string2);
        if (z3) {
            if (!y(false, eVar)) {
                this.f658m.add(0, eVar);
            }
        } else {
            if (this.f661p == null) {
                return;
            }
            if (!y(true, eVar)) {
                e eVar2 = this.f661p;
                eVar2.f2834a = string;
                eVar2.f2835b = string2;
            }
        }
        z();
        this.f660o.b(this.f657l);
        this.f660o.notifyDataSetChanged();
    }

    public final boolean y(boolean z3, e eVar) {
        if (eVar.equals(this.f661p)) {
            u(getString(R$string.time_set_conflict));
            return true;
        }
        Iterator<e> it = this.f658m.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            e next = it.next();
            if (!z3 || !next.equals(this.f661p)) {
                if (h.a.c0(eVar.f2834a, eVar.f2835b, next.f2834a, next.f2835b)) {
                    u(getString(R$string.time_set_conflict));
                    return true;
                }
                if (!(h.a.a0(eVar.f2834a, next.f2835b, 60) ? h.a.a0(eVar.f2835b, next.f2834a, 60) : false)) {
                    u(getString(R$string.min_time_range_interval));
                    return true;
                }
            }
        }
    }

    public final void z() {
        this.f657l.clear();
        this.f657l.addAll(this.f658m);
        this.f657l.add(new e());
    }
}
