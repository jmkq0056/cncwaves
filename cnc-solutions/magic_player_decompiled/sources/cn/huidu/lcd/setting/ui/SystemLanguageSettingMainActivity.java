package cn.huidu.lcd.setting.ui;

import android.graphics.Point;
import android.os.Bundle;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.ui.adapter.LanguageListAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import q.f;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class SystemLanguageSettingMainActivity extends BaseActivity implements LanguageListAdapter.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f668o = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public BaseLinearLayoutManager f669k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LcdPlayerRecyclerView f670l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LanguageListAdapter f671m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f672n;

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_system_language_setting_main);
            } else {
                setContentView(R$layout.activity_system_language_setting_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_system_language_setting_main);
            } else {
                setContentView(R$layout.activity_system_language_setting_main_barscreen);
            }
        }
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        map.put("ItemText", "中文简体");
        arrayList.add(map);
        HashMap map2 = new HashMap();
        map2.put("ItemText", "中文繁体");
        arrayList.add(map2);
        HashMap map3 = new HashMap();
        map3.put("ItemText", "English");
        arrayList.add(map3);
        HashMap map4 = new HashMap();
        map4.put("ItemText", "日本語");
        arrayList.add(map4);
        HashMap map5 = new HashMap();
        map5.put("ItemText", "한국어");
        arrayList.add(map5);
        String strA = f.a(this);
        Objects.requireNonNull(strA);
        switch (strA) {
            case "en":
                this.f672n = 2;
                break;
            case "ja":
                this.f672n = 3;
                break;
            case "ko":
                this.f672n = 4;
                break;
            case "tw":
                this.f672n = 1;
                break;
            case "zh":
                this.f672n = 0;
                break;
            default:
                this.f672n = 0;
                break;
        }
        LanguageListAdapter languageListAdapter = new LanguageListAdapter(this);
        this.f671m = languageListAdapter;
        languageListAdapter.f760e = this;
        languageListAdapter.setHasStableIds(true);
        LanguageListAdapter languageListAdapter2 = this.f671m;
        int i6 = this.f672n;
        languageListAdapter2.f758c = i6;
        languageListAdapter2.f759d = i6;
        languageListAdapter2.f757b.clear();
        if (arrayList.size() > 0) {
            languageListAdapter2.f757b.addAll(arrayList);
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        this.f669k = baseLinearLayoutManager;
        baseLinearLayoutManager.setOrientation(1);
        LcdPlayerRecyclerView lcdPlayerRecyclerView = (LcdPlayerRecyclerView) findViewById(R$id.main_language_view);
        this.f670l = lcdPlayerRecyclerView;
        lcdPlayerRecyclerView.setLayoutManager(this.f669k);
        this.f670l.setAdapter(this.f671m);
    }
}
