package cn.huidu.lcd.setting.ui.view;

import android.os.Bundle;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.ui.adapter.CommonSelectTypeAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import h.a;
import java.util.ArrayList;
import java.util.List;
import o.b;

/* JADX INFO: loaded from: classes.dex */
public class SlideItemListSelectActivity extends BaseActivity implements CommonSelectTypeAdapter.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1009k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LcdPlayerRecyclerView f1010l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CommonSelectTypeAdapter f1011m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<b> f1012n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1013o;

    @Override // cn.huidu.lcd.setting.ui.adapter.CommonSelectTypeAdapter.a
    public void e(b bVar) {
        if (bVar.f2809b != this.f1013o) {
            Bundle bundle = new Bundle();
            bundle.putString("name", bVar.f2808a);
            bundle.putInt("index", bVar.f2809b);
            setResult(-1, getIntent().putExtras(bundle));
        }
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_common_select_type_main);
        this.f1009k = (TextView) findViewById(R$id.title_text_view);
        this.f1010l = (LcdPlayerRecyclerView) findViewById(R$id.main_recycler_view);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        this.f1010l.setLayoutManager(baseLinearLayoutManager);
        CommonSelectTypeAdapter commonSelectTypeAdapter = new CommonSelectTypeAdapter(this);
        this.f1011m = commonSelectTypeAdapter;
        commonSelectTypeAdapter.f731b = this;
        commonSelectTypeAdapter.setHasStableIds(true);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("title", "");
            String string2 = extras.getString(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, "");
            ArrayList<String> stringArrayList = extras.getStringArrayList("list");
            this.f1009k.setText(string);
            if (stringArrayList != null) {
                this.f1012n.clear();
                for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                    String str = stringArrayList.get(i4);
                    b bVar = new b();
                    bVar.f2809b = i4;
                    bVar.f2808a = str;
                    bVar.f2810c = String.valueOf(i4);
                    if (string2.equals(str)) {
                        bVar.f2812e = true;
                        this.f1013o = i4;
                    }
                    this.f1012n.add(bVar);
                }
            }
        }
        CommonSelectTypeAdapter commonSelectTypeAdapter2 = this.f1011m;
        List<b> list = this.f1012n;
        commonSelectTypeAdapter2.f732c.clear();
        ArrayList<b> arrayList = commonSelectTypeAdapter2.f732c;
        if (arrayList != null) {
            arrayList.addAll(list);
        }
        CommonSelectTypeAdapter commonSelectTypeAdapter3 = this.f1011m;
        commonSelectTypeAdapter3.f733d = this.f1013o;
        commonSelectTypeAdapter3.f734e = 1;
        this.f1010l.setAdapter(commonSelectTypeAdapter3);
        a.f0(baseLinearLayoutManager, this.f1010l, this.f1013o);
    }
}
