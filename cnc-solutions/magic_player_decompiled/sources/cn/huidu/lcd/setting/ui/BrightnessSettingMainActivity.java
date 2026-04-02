package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import cn.huidu.lcd.setting.ui.view.SystemItemSetCommonActivity;
import g3.c;
import j.r;
import java.util.ArrayList;
import java.util.List;
import o.a;
import o.f;
import q.b;
import q.j;

/* JADX INFO: loaded from: classes.dex */
public class BrightnessSettingMainActivity extends BaseActivity implements AudioListItemAdapter.e {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f580u = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LcdPlayerRecyclerView f581k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AudioListItemAdapter f582l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public j f585o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public f f586p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public b f587q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f589s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public a f590t;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<a> f583m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<a> f584n = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f588r = true;

    public final void A(int i4, String str, String str2, String str3, String str4, int i5) {
        Intent intent = new Intent(this, (Class<?>) SystemItemSetCommonActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
        bundle.putString("hour", str);
        bundle.putString("minute", str2);
        bundle.putString("second", str3);
        bundle.putString("value", str4);
        intent.putExtras(bundle);
        startActivityForResult(intent, i5);
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void a() {
        if (this.f583m.size() >= 6) {
            u(getString(R$string.can_add_max_count_data));
        } else {
            A(0, "00", "00", "00", "100", 1);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void b(int i4) {
        if (i4 != this.f589s) {
            this.f589s = i4;
            this.f587q.e(this.f587q.b(i4));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void d() {
        ArrayList<String> arrayListM = h.a.m(this);
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", getString(R$string.brightness_mode));
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, !this.f588r ? 1 : 0);
        bundle.putStringArrayList("List", arrayListM);
        intent.putExtras(bundle);
        startActivityForResult(intent, 0);
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void g(boolean z3) {
        this.f588r = z3;
        if (z3) {
            this.f587q.e(this.f587q.b(this.f589s));
        }
        z();
        this.f582l.notifyDataSetChanged();
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void h(a aVar, boolean z3) {
        if (!z3) {
            this.f590t = aVar;
            A(0, h.a.N(aVar.f2804a, 0), h.a.N(aVar.f2804a, 1), h.a.N(aVar.f2804a, 2), aVar.f2806c, 2);
        } else {
            this.f584n.remove(aVar);
            z();
            this.f582l.notifyDataSetChanged();
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        y();
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 == 0) {
            return;
        }
        if (i5 == 2) {
            a aVar = this.f590t;
            if (aVar != null) {
                this.f584n.remove(aVar);
                z();
                this.f582l.notifyDataSetChanged();
                return;
            }
            return;
        }
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras == null) {
            return;
        }
        if (i4 == 0) {
            boolean z3 = extras.getInt("switch") == 0;
            if (this.f588r != z3) {
                this.f588r = z3;
                z();
                this.f582l.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (i4 == 1) {
            x(extras, true);
        } else if (i4 == 2) {
            x(extras, false);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
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
        ((TextView) findViewById(R$id.title_text_view)).setText(getString(R$string.brightness_set));
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f581k = (LcdPlayerRecyclerView) findViewById(R$id.recycler_view_list);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        this.f581k.setLayoutManager(baseLinearLayoutManager);
        b bVar = new b(this);
        this.f587q = bVar;
        this.f589s = bVar.d(bVar.c());
        j jVar = new j(this);
        this.f585o = jVar;
        f fVarC = jVar.c();
        this.f586p = fVarC;
        if (fVarC != null) {
            this.f588r = fVarC.f2837a;
            this.f584n.addAll(fVarC.f2839c);
            int i6 = this.f586p.f2838b;
            this.f589s = i6;
            if (this.f588r) {
                this.f587q.e(this.f587q.b(i6));
            }
            StringBuilder sbA = android.support.v4.media.f.a("initData: +++");
            sbA.append(this.f586p.f2837a);
            sbA.append("///");
            androidx.media.b.a(sbA, this.f586p.f2838b, "BrightnessSettingMain");
        }
        AudioListItemAdapter audioListItemAdapter = new AudioListItemAdapter(this);
        this.f582l = audioListItemAdapter;
        audioListItemAdapter.f701f = 1;
        audioListItemAdapter.setHasStableIds(true);
        this.f582l.f698c = this;
        z();
        this.f581k.setAdapter(this.f582l);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.onKeyDown(i4, keyEvent);
        }
        y();
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void w() {
        y();
    }

    public final void x(Bundle bundle, boolean z3) {
        String string = bundle.getString("hour");
        String string2 = bundle.getString("minute");
        String string3 = bundle.getString("second");
        String string4 = bundle.getString("value");
        a aVar = new a(string + ":" + string2 + ":" + string3, string4, false);
        if (z3) {
            for (a aVar2 : this.f584n) {
                if (aVar2.f2804a.equals(aVar.f2804a)) {
                    u(getString(R$string.time_set_conflict));
                    return;
                } else if (!h.a.b0(aVar.f2804a, aVar2.f2804a, 120)) {
                    u(getString(R$string.min_time_interval));
                    return;
                }
            }
            this.f584n.add(0, aVar);
        } else {
            if (this.f590t == null) {
                return;
            }
            for (a aVar3 : this.f584n) {
                if (aVar3.equals(this.f590t)) {
                    if (aVar3.f2804a.equals(aVar.f2804a) && aVar3.f2806c.equals(string4)) {
                        return;
                    }
                } else if (aVar3.f2804a.equals(aVar.f2804a)) {
                    u(getString(R$string.time_set_conflict));
                    return;
                } else if (!h.a.b0(aVar.f2804a, aVar3.f2804a, 120)) {
                    u(getString(R$string.min_time_interval));
                    return;
                }
            }
            this.f590t.f2804a = string + ":" + string2 + ":" + string3;
            this.f590t.f2806c = string4;
        }
        z();
        this.f582l.notifyDataSetChanged();
    }

    public final void y() {
        if (!this.f588r && this.f584n.isEmpty()) {
            this.f588r = true;
        }
        this.f586p = new f(this.f588r, this.f589s, this.f584n);
        StringBuilder sbA = android.support.v4.media.f.a("saveBrightnessLocalData: +++");
        sbA.append(this.f588r);
        sbA.append("///");
        sbA.append(this.f589s);
        sbA.append("///");
        sbA.append(this.f584n);
        Log.d("BrightnessSettingMain", sbA.toString());
        this.f585o.h(this.f586p);
        if (this.f588r) {
            this.f587q.e(this.f587q.b(this.f589s));
        }
        r rVar = new r();
        rVar.f1962b = true;
        c.b().f(rVar);
        finish();
    }

    public final void z() {
        this.f583m.clear();
        if (this.f588r) {
            this.f583m.add(new a(getString(R$string.brightness_mode), getString(R$string.default_type), true));
            this.f583m.add(new a(getString(R$string.fixed_brightness), String.valueOf(this.f589s), true));
        } else {
            this.f583m.add(new a(getString(R$string.brightness_mode), getString(R$string.customize), false));
            this.f583m.addAll(this.f584n);
            this.f583m.add(new a("", getString(R$string.add_to), false));
        }
        AudioListItemAdapter audioListItemAdapter = this.f582l;
        audioListItemAdapter.f699d = this.f588r;
        List<a> list = this.f583m;
        audioListItemAdapter.f697b.clear();
        if (list != null) {
            audioListItemAdapter.f697b.addAll(list);
        }
    }
}
