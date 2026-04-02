package cn.huidu.lcd.setting.ui.adapter;

import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.view.AudioModelCellLayout;

/* JADX INFO: loaded from: classes.dex */
public class b implements AudioModelCellLayout.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AudioListItemAdapter.c f814a;

    public b(AudioListItemAdapter.c cVar) {
        this.f814a = cVar;
    }

    public void a(boolean z3, boolean z4) {
        if (z3) {
            this.f814a.f720f.setImageResource(z4 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
        } else {
            this.f814a.f721g.setImageResource(z4 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
        }
    }
}
