package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.media.b;
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
import o.f;
import q.a;
import q.j;

/* JADX INFO: loaded from: classes.dex */
public class AudioSettingMainActivity extends BaseActivity implements AudioListItemAdapter.e {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f569u = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LcdPlayerRecyclerView f570k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AudioListItemAdapter f571l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public j f574o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public f f575p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public a f576q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f578s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public o.a f579t;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<o.a> f572m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<o.a> f573n = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f577r = true;

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
        if (this.f572m.size() >= 6) {
            u(getString(R$string.can_add_max_count_data));
        } else {
            A(1, "00", "00", "00", "100", 1);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void b(int i4) {
        this.f578s = i4;
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void d() {
        ArrayList<String> arrayListM = h.a.m(this);
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", getString(R$string.volume_mode));
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, !this.f577r ? 1 : 0);
        bundle.putStringArrayList("List", arrayListM);
        intent.putExtras(bundle);
        startActivityForResult(intent, 0);
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void g(boolean z3) {
        this.f577r = z3;
        z();
        this.f571l.notifyDataSetChanged();
    }

    @Override // cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter.e
    public void h(o.a aVar, boolean z3) {
        if (!z3) {
            this.f579t = aVar;
            A(1, h.a.N(aVar.f2804a, 0), h.a.N(aVar.f2804a, 1), h.a.N(aVar.f2804a, 2), aVar.f2806c, 2);
        } else {
            if (this.f573n.contains(aVar)) {
                this.f573n.remove(aVar);
            }
            z();
            this.f571l.notifyDataSetChanged();
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        y();
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 == 0) {
            return;
        }
        if (i5 == 2) {
            o.a aVar = this.f579t;
            if (aVar != null) {
                this.f573n.remove(aVar);
                z();
                this.f571l.notifyDataSetChanged();
                return;
            }
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        if (i4 == 0) {
            boolean z3 = extras.getInt("switch") == 0;
            if (this.f577r != z3) {
                this.f577r = z3;
                z();
                this.f571l.notifyDataSetChanged();
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
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
        ((TextView) findViewById(R$id.title_text_view)).setText(getString(R$string.volume_set));
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f570k = (LcdPlayerRecyclerView) findViewById(R$id.recycler_view_list);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        this.f570k.setLayoutManager(baseLinearLayoutManager);
        a aVar = new a(this);
        this.f576q = aVar;
        this.f578s = aVar.c(aVar.b());
        j jVar = new j(this);
        this.f574o = jVar;
        f fVarF = jVar.f();
        this.f575p = fVarF;
        if (fVarF != null) {
            this.f577r = fVarF.f2837a;
            this.f573n.addAll(fVarF.f2839c);
            int i6 = this.f575p.f2838b;
            this.f578s = i6;
            if (this.f577r) {
                int iA = this.f576q.a(i6);
                this.f576q.d(iA);
                StringBuilder sb = new StringBuilder();
                sb.append("initData: +++");
                sb.append(this.f578s);
                sb.append("%");
                sb.append(iA);
                sb.append(this.f575p.f2837a);
                sb.append("///");
                b.a(sb, this.f575p.f2838b, "AudioSettingMain");
            }
        }
        AudioListItemAdapter audioListItemAdapter = new AudioListItemAdapter(this);
        this.f571l = audioListItemAdapter;
        audioListItemAdapter.setHasStableIds(true);
        AudioListItemAdapter audioListItemAdapter2 = this.f571l;
        audioListItemAdapter2.f698c = this;
        audioListItemAdapter2.f700e = 1;
        z();
        this.f570k.setAdapter(this.f571l);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 24 || i4 == 25 || i4 == 164) {
            return true;
        }
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
        o.a aVar = new o.a(string + ":" + string2 + ":" + string3, string4, false);
        if (z3) {
            for (o.a aVar2 : this.f573n) {
                if (aVar2.f2804a.equals(aVar.f2804a)) {
                    u(getString(R$string.time_set_conflict));
                    return;
                } else if (!h.a.b0(aVar.f2804a, aVar2.f2804a, 120)) {
                    u(getString(R$string.min_time_interval));
                    return;
                }
            }
            this.f573n.add(0, aVar);
        } else {
            if (this.f579t == null) {
                return;
            }
            for (o.a aVar3 : this.f573n) {
                if (aVar3.equals(this.f579t)) {
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
            this.f579t.f2804a = string + ":" + string2 + ":" + string3;
            this.f579t.f2806c = string4;
        }
        z();
        this.f571l.notifyDataSetChanged();
    }

    public final void y() {
        if (!this.f577r && this.f573n.isEmpty()) {
            this.f577r = true;
        }
        this.f575p = new f(this.f577r, this.f578s, this.f573n);
        StringBuilder sbA = android.support.v4.media.f.a("saveAudioSetLocalData: +++");
        sbA.append(this.f577r);
        sbA.append("///");
        sbA.append(this.f578s);
        sbA.append("///");
        sbA.append(this.f573n.size());
        Log.d("AudioSettingMain", sbA.toString());
        this.f574o.k(this.f575p);
        if (this.f577r) {
            this.f576q.d(this.f576q.a(this.f578s));
        }
        r rVar = new r();
        rVar.f1961a = true;
        c.b().f(rVar);
        finish();
    }

    public final void z() {
        this.f572m.clear();
        if (this.f577r) {
            this.f572m.add(new o.a(getString(R$string.volume_mode), getString(R$string.default_type), true));
            this.f572m.add(new o.a(getString(R$string.fixed_volume), String.valueOf(this.f578s), true));
        } else {
            this.f572m.add(new o.a(getString(R$string.volume_mode), getString(R$string.customize), false));
            this.f572m.addAll(this.f573n);
            this.f572m.add(new o.a("", getString(R$string.add_to), false));
        }
        AudioListItemAdapter audioListItemAdapter = this.f571l;
        audioListItemAdapter.f699d = this.f577r;
        List<o.a> list = this.f572m;
        audioListItemAdapter.f697b.clear();
        if (list != null) {
            audioListItemAdapter.f697b.addAll(list);
        }
    }
}
