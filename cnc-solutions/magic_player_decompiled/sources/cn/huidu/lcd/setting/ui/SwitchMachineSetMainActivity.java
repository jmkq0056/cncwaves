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
import o.d;
import q.j;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class SwitchMachineSetMainActivity extends BaseActivity implements SwitchTimeListAdapter.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f647r = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LcdPlayerRecyclerView f648k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public List<d> f649l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<d> f650m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<d> f651n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public SwitchTimeListAdapter f652o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public d f653p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public j f654q;

    public final void A() {
        boolean z3;
        int size = this.f651n.size();
        boolean z4 = false;
        if (size != this.f650m.size()) {
            z4 = true;
            break;
        }
        if (size > 0) {
            for (d dVar : this.f651n) {
                Iterator<d> it = this.f650m.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z3 = false;
                        break;
                    }
                    d next = it.next();
                    String str = dVar.f2831l;
                    if (str == null) {
                        str = "";
                    }
                    String str2 = dVar.f2832m;
                    if (str2 == null) {
                        str2 = "";
                    }
                    String str3 = next.f2831l;
                    if (str3 == null) {
                        str3 = "";
                    }
                    String str4 = next.f2832m;
                    String str5 = str4 != null ? str4 : "";
                    if (next.f2820a.equals(dVar.f2820a) && next.f2821b.equals(dVar.f2821b) && next.f2822c == dVar.f2822c && next.f2823d == dVar.f2823d && next.f2824e == dVar.f2824e && next.f2825f == dVar.f2825f && next.f2826g == dVar.f2826g && next.f2827h == dVar.f2827h && next.f2828i == dVar.f2828i && next.f2829j == dVar.f2829j && next.f2830k == dVar.f2830k && str3.equals(str) && str2.equals(str5)) {
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
            if (this.f650m.size() > 0) {
                arrayList.addAll(this.f650m);
            }
            this.f654q.i(arrayList);
            r rVar = new r();
            rVar.f1964d = true;
            c.b().f(rVar);
        }
    }

    public final void B(String str, String str2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, String str3, String str4, int i4) {
        Intent intent = new Intent(this, (Class<?>) SwitchTimeItemModifyActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("start_time", str);
        bundle.putString("end_time", str2);
        bundle.putBoolean("isMachine", true);
        bundle.putBoolean("is_week", z3);
        bundle.putBoolean("is_playOnMonday", z4);
        bundle.putBoolean("is_playOnTuesday", z5);
        bundle.putBoolean("is_playOnWednesday", z6);
        bundle.putBoolean("is_playOnThursday", z7);
        bundle.putBoolean("is_playOnFriday", z8);
        bundle.putBoolean("is_playOnSaturday", z9);
        bundle.putBoolean("is_playOnSunday", z10);
        bundle.putBoolean("is_date", z11);
        bundle.putString("start_date", str3);
        bundle.putString("end_date", str4);
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
            d dVar = this.f653p;
            if (dVar != null) {
                this.f650m.remove(dVar);
                z();
                this.f652o.a(this.f649l);
                this.f652o.notifyDataSetChanged();
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
            if (i4 < 360) {
                setContentView(R$layout.activity_audio_setting_main_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_audio_setting_main);
            } else {
                setContentView(R$layout.activity_audio_setting_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                setContentView(R$layout.activity_audio_setting_main_barscreen);
            } else if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_audio_setting_main);
            } else {
                setContentView(R$layout.activity_audio_setting_main_barscreen);
            }
        }
        ((TextView) findViewById(R$id.title_text_view)).setText(getString(R$string.switch_machine_set));
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f648k = (LcdPlayerRecyclerView) findViewById(R$id.recycler_view_list);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        this.f648k.setLayoutManager(baseLinearLayoutManager);
        j jVar = new j(this);
        this.f654q = jVar;
        List<d> listD = jVar.d();
        if (listD != null) {
            for (d dVar : listD) {
                this.f650m.add(dVar);
                List<d> list = this.f651n;
                d dVar2 = new d();
                dVar2.f2820a = dVar.f2820a;
                dVar2.f2821b = dVar.f2821b;
                dVar2.f2831l = dVar.f2831l;
                dVar2.f2832m = dVar.f2832m;
                dVar2.f2823d = dVar.f2823d;
                dVar2.f2824e = dVar.f2824e;
                dVar2.f2825f = dVar.f2825f;
                dVar2.f2826g = dVar.f2826g;
                dVar2.f2827h = dVar.f2827h;
                dVar2.f2828i = dVar.f2828i;
                dVar2.f2829j = dVar.f2829j;
                dVar2.f2822c = dVar.f2822c;
                dVar2.f2830k = dVar.f2830k;
                list.add(dVar2);
            }
        }
        z();
        SwitchTimeListAdapter switchTimeListAdapter = new SwitchTimeListAdapter(this, true);
        this.f652o = switchTimeListAdapter;
        switchTimeListAdapter.setHasStableIds(true);
        SwitchTimeListAdapter switchTimeListAdapter2 = this.f652o;
        switchTimeListAdapter2.f773d = this;
        switchTimeListAdapter2.a(this.f649l);
        this.f648k.setAdapter(this.f652o);
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
        boolean z4 = bundle.getBoolean("is_week");
        boolean z5 = bundle.getBoolean("is_playOnMonday");
        boolean z6 = bundle.getBoolean("is_playOnTuesday");
        boolean z7 = bundle.getBoolean("is_playOnWednesday");
        boolean z8 = bundle.getBoolean("is_playOnThursday");
        boolean z9 = bundle.getBoolean("is_playOnFriday");
        boolean z10 = bundle.getBoolean("is_playOnSaturday");
        boolean z11 = bundle.getBoolean("is_playOnSunday");
        boolean z12 = bundle.getBoolean("is_date");
        String string3 = bundle.getString("start_date");
        String string4 = bundle.getString("end_date");
        d dVar = new d(string, string2);
        dVar.f2822c = z4;
        if (z4) {
            dVar.f2823d = z5;
            dVar.f2824e = z6;
            dVar.f2825f = z7;
            dVar.f2826g = z8;
            dVar.f2827h = z9;
            dVar.f2828i = z10;
            dVar.f2829j = z11;
        }
        dVar.f2830k = z12;
        if (z12) {
            dVar.f2831l = string3;
            dVar.f2832m = string4;
        }
        if (z3) {
            if (!y(false, dVar)) {
                this.f650m.add(0, dVar);
            }
        } else {
            if (this.f653p == null) {
                return;
            }
            if (!y(true, dVar)) {
                d dVar2 = this.f653p;
                dVar2.f2820a = string;
                dVar2.f2821b = string2;
                dVar2.f2822c = z4;
                if (z4) {
                    dVar2.f2823d = z5;
                    dVar2.f2824e = z6;
                    dVar2.f2825f = z7;
                    dVar2.f2826g = z8;
                    dVar2.f2827h = z9;
                    dVar2.f2828i = z10;
                    dVar2.f2829j = z11;
                }
                dVar2.f2830k = z12;
                if (z12) {
                    dVar2.f2831l = string3;
                    dVar2.f2832m = string4;
                }
            }
        }
        z();
        this.f652o.a(this.f649l);
        this.f652o.notifyDataSetChanged();
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x011b, code lost:
    
        r0 = r6.contains(java.lang.Integer.valueOf(((java.lang.Integer) r7.get(r0)).intValue()));
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x02f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0434 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x014a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean y(boolean r24, o.d r25) {
        /*
            Method dump skipped, instruction units count: 1088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.SwitchMachineSetMainActivity.y(boolean, o.d):boolean");
    }

    public final void z() {
        this.f649l.clear();
        this.f649l.addAll(this.f650m);
        this.f649l.add(new d());
    }
}
