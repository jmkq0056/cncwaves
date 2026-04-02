package cn.huidu.lcd.setting.ui.view;

import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import cn.huidu.lcd.setting.R$array;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.adapter.CommonSelectTypeAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import java.util.ArrayList;
import java.util.List;
import o.b;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class CommonSelectTypeMainActivity extends BaseActivity implements CommonSelectTypeAdapter.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f916k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LcdPlayerRecyclerView f917l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CommonSelectTypeAdapter f918m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<b> f919n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b f920o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f921p;

    @Override // cn.huidu.lcd.setting.ui.adapter.CommonSelectTypeAdapter.a
    public void e(b bVar) {
        if (!bVar.f2810c.equals(this.f920o.f2810c)) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("ser_info", bVar);
            setResult(-1, getIntent().putExtras(bundle));
            Log.d("CommonSelectTypeMain", "onSelectTypeClick: +++model" + bVar.f2811d + bVar.toString());
        }
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_common_select_type_main_barscreen);
            } else if (i4 < 360 || i4 >= 720) {
                setContentView(R$layout.activity_common_select_type_main);
            } else {
                setContentView(R$layout.activity_common_select_type_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                setContentView(R$layout.activity_common_select_type_main_barscreen);
            } else if (i5 < 360 || i5 >= 720) {
                setContentView(R$layout.activity_common_select_type_main);
            } else {
                setContentView(R$layout.activity_common_select_type_main_barscreen);
            }
        }
        this.f916k = (TextView) findViewById(R$id.title_text_view);
        this.f917l = (LcdPlayerRecyclerView) findViewById(R$id.main_recycler_view);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        this.f917l.setLayoutManager(baseLinearLayoutManager);
        CommonSelectTypeAdapter commonSelectTypeAdapter = new CommonSelectTypeAdapter(this);
        this.f918m = commonSelectTypeAdapter;
        commonSelectTypeAdapter.f731b = this;
        commonSelectTypeAdapter.setHasStableIds(true);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            int i6 = extras.getInt("list_type");
            b bVar = (b) getIntent().getSerializableExtra("ser_info");
            this.f920o = bVar;
            if (bVar != null) {
                int i7 = 0;
                if (i6 == 0) {
                    this.f916k.setText(getString(R$string.system_time_zone));
                    this.f918m.f734e = 0;
                    String str = bVar.f2810c;
                    this.f919n = h.a.O(getResources());
                    while (true) {
                        if (i7 >= this.f919n.size()) {
                            break;
                        }
                        b bVar2 = this.f919n.get(i7);
                        if (bVar2.f2810c.equals(str)) {
                            bVar2.f2812e = true;
                            this.f921p = i7;
                            break;
                        }
                        i7++;
                    }
                } else if (i6 == 1) {
                    this.f916k.setText(getString(R$string.special_effects));
                    this.f918m.f734e = 1;
                    String str2 = bVar.f2808a;
                    ArrayList<String> arrayListK = h.a.K(getResources(), R$array.effects_name);
                    while (i7 < arrayListK.size()) {
                        b bVar3 = new b();
                        String str3 = arrayListK.get(i7);
                        bVar3.f2808a = str3;
                        bVar3.f2810c = str3;
                        bVar3.f2809b = i7;
                        if (str3.equals(str2)) {
                            bVar3.f2812e = true;
                            this.f921p = i7;
                        }
                        this.f919n.add(bVar3);
                        i7++;
                    }
                }
            } else {
                return;
            }
        }
        CommonSelectTypeAdapter commonSelectTypeAdapter2 = this.f918m;
        List<b> list = this.f919n;
        commonSelectTypeAdapter2.f732c.clear();
        ArrayList<b> arrayList = commonSelectTypeAdapter2.f732c;
        if (arrayList != null) {
            arrayList.addAll(list);
        }
        CommonSelectTypeAdapter commonSelectTypeAdapter3 = this.f918m;
        commonSelectTypeAdapter3.f733d = this.f921p;
        this.f917l.setAdapter(commonSelectTypeAdapter3);
        h.a.f0(baseLinearLayoutManager, this.f917l, this.f921p);
    }
}
