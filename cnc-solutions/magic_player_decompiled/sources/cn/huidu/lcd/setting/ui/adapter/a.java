package cn.huidu.lcd.setting.ui.adapter;

import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.view.AudioRegularVoiceCell;

/* JADX INFO: loaded from: classes.dex */
public class a implements AudioRegularVoiceCell.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AudioListItemAdapter.a f813a;

    public a(AudioListItemAdapter.a aVar) {
        this.f813a = aVar;
    }

    public void a(boolean z3, boolean z4) {
        if (z3) {
            this.f813a.f709f.setImageResource(z4 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
        } else {
            this.f813a.f710g.setImageResource(z4 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
        }
    }
}
