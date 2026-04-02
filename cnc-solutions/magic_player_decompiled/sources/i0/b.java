package i0;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.adapter.CommonSelectTypeAdapter;
import cn.huidu.lcd.setting.ui.adapter.LanguageListAdapter;
import cn.huidu.lcd.setting.ui.adapter.SwitchTimeListAdapter;
import cn.huidu.lcd.setting.ui.adapter.WifiListAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1884a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1885b;

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z3) {
        List list;
        Object obj;
        switch (this.f1884a) {
            case 0:
                d dVar = (d) this.f1885b;
                if (!z3) {
                    dVar.f1888c = dVar.f1886a.getSelectKey();
                    dVar.f1886a.e(null);
                } else {
                    cn.huidu.lcd.setting.keyboard.a aVar = dVar.f1888c;
                    if (aVar == null) {
                        dVar.f1886a.c(0, 0);
                    } else {
                        dVar.f1886a.e(aVar);
                    }
                }
                break;
            case 1:
                AudioListItemAdapter.a aVar2 = (AudioListItemAdapter.a) this.f1885b;
                if (!z3) {
                    aVar2.f706c.animate().scaleX(0.98f).setDuration(300L).start();
                    aVar2.f706c.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                    aVar2.f707d.setTextColor(aVar2.f711h.f696a.getResources().getColor(R$color.no_focus_left_text_color));
                    aVar2.f708e.setTextColor(aVar2.f711h.f696a.getResources().getColor(R$color.no_focus_right_text_color));
                } else {
                    aVar2.f706c.animate().scaleX(1.0f).setDuration(300L).start();
                    aVar2.f706c.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    aVar2.f707d.setTextColor(-1);
                    aVar2.f708e.setTextColor(-1);
                }
                break;
            case 2:
                AudioListItemAdapter.b bVar = (AudioListItemAdapter.b) this.f1885b;
                if (!z3) {
                    bVar.f713b.animate().scaleX(0.98f).setDuration(300L).start();
                    bVar.f713b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                    bVar.f712a.setTextColor(bVar.f714c.f696a.getResources().getColor(R$color.no_focus_left_text_color));
                } else {
                    bVar.f713b.animate().scaleX(1.0f).setDuration(300L).start();
                    bVar.f713b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    bVar.f712a.setTextColor(-1);
                }
                break;
            case 3:
                AudioListItemAdapter.c cVar = (AudioListItemAdapter.c) this.f1885b;
                if (!z3) {
                    cVar.f717c.animate().scaleX(0.98f).setDuration(300L).start();
                    cVar.f717c.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
                    cVar.f718d.setTextColor(cVar.f722h.f696a.getResources().getColor(R$color.no_focus_left_text_color));
                    cVar.f719e.setTextColor(cVar.f722h.f696a.getResources().getColor(R$color.no_focus_right_text_color));
                } else {
                    cVar.f717c.animate().scaleX(1.0f).setDuration(300L).start();
                    cVar.f717c.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    cVar.f718d.setTextColor(-1);
                    cVar.f719e.setTextColor(-1);
                }
                break;
            case 4:
                AudioListItemAdapter.d dVar2 = (AudioListItemAdapter.d) this.f1885b;
                if (!z3) {
                    dVar2.f725c.animate().scaleX(0.98f).setDuration(300L).start();
                    dVar2.f725c.setBackgroundColor(dVar2.f729g.f696a.getResources().getColor(R$color.no_focus_bg_color));
                    dVar2.f726d.setTextColor(dVar2.f729g.f696a.getResources().getColor(R$color.no_focus_left_text_color));
                    dVar2.f727e.setTextColor(dVar2.f729g.f696a.getResources().getColor(R$color.no_focus_right_text_color));
                    dVar2.f728f.setVisibility(4);
                    dVar2.f723a.f2807d = false;
                } else {
                    dVar2.f725c.animate().scaleX(1.0f).setDuration(300L).start();
                    dVar2.f725c.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    dVar2.f726d.setTextColor(-1);
                    dVar2.f727e.setTextColor(-1);
                    dVar2.f728f.setImageResource(R$drawable.item_delete_unselect);
                    dVar2.f728f.setVisibility(0);
                }
                break;
            case 5:
                CommonSelectTypeAdapter.b bVar2 = (CommonSelectTypeAdapter.b) this.f1885b;
                int iIndexOf = bVar2.f740f.f732c.indexOf(bVar2.f739e);
                if (!z3) {
                    bVar2.f736b.animate().scaleX(0.98f).setDuration(300L).start();
                    bVar2.f736b.setBackgroundColor(bVar2.f740f.f730a.getResources().getColor(R$color.no_focus_bg_color));
                    bVar2.f738d.setImageResource(bVar2.f739e.f2812e ? R$drawable.item_selected_dark : R$drawable.item_unselected_icon);
                    bVar2.f737c.setTextColor(bVar2.f740f.f730a.getResources().getColor(R$color.no_focus_left_text_color));
                    if (iIndexOf == 0) {
                        bVar2.f736b.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
                    } else if (iIndexOf == bVar2.f740f.f732c.size() - 1) {
                        bVar2.f736b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                    }
                } else {
                    if (iIndexOf != -1) {
                        bVar2.f740f.f733d = iIndexOf;
                    }
                    bVar2.f736b.animate().scaleX(1.0f).setDuration(300L).start();
                    bVar2.f736b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    bVar2.f738d.setImageResource(bVar2.f739e.f2812e ? R$drawable.item_selected_white : R$drawable.item_unselected_focus_icon);
                    bVar2.f737c.setTextColor(-1);
                }
                break;
            case 6:
                LanguageListAdapter.b bVar3 = (LanguageListAdapter.b) this.f1885b;
                if (!z3) {
                    bVar3.f762b.animate().scaleX(0.98f).setDuration(300L).start();
                    bVar3.a(bVar3.f765e);
                    bVar3.f764d.setImageResource(bVar3.f765e == bVar3.f766f.f758c ? R$drawable.item_selected_dark : R$drawable.item_unselected_icon);
                    bVar3.f763c.setTextColor(bVar3.f766f.f756a.getResources().getColor(R$color.no_focus_left_text_color));
                } else {
                    bVar3.f766f.f759d = bVar3.f765e;
                    bVar3.f762b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    bVar3.f762b.animate().scaleX(1.0f).setDuration(300L).start();
                    bVar3.f764d.setImageResource(bVar3.f765e == bVar3.f766f.f758c ? R$drawable.item_selected_white : R$drawable.item_unselected_focus_icon);
                    bVar3.f763c.setTextColor(-1);
                }
                break;
            case 7:
                SwitchTimeListAdapter.c cVar2 = (SwitchTimeListAdapter.c) this.f1885b;
                if (!z3) {
                    cVar2.f777b.animate().scaleX(0.98f).setDuration(300L).start();
                    cVar2.f777b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                    cVar2.f776a.setTextColor(cVar2.f778c.f770a.getResources().getColor(R$color.no_focus_left_text_color));
                } else {
                    cVar2.f777b.animate().scaleX(1.0f).setDuration(300L).start();
                    cVar2.f777b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    cVar2.f776a.setTextColor(-1);
                }
                break;
            case 8:
                SwitchTimeListAdapter.d dVar3 = (SwitchTimeListAdapter.d) this.f1885b;
                SwitchTimeListAdapter switchTimeListAdapter = dVar3.f789k;
                if (switchTimeListAdapter.f771b) {
                    list = switchTimeListAdapter.f775f;
                    obj = dVar3.f780b;
                } else {
                    list = switchTimeListAdapter.f774e;
                    obj = dVar3.f779a;
                }
                int iIndexOf2 = list.indexOf(obj);
                if (!z3) {
                    dVar3.f783e.animate().scaleX(0.98f).setDuration(300L).start();
                    dVar3.f783e.setBackgroundColor(dVar3.f789k.f770a.getResources().getColor(R$color.no_focus_bg_color));
                    TextView textView = dVar3.f784f;
                    Resources resources = dVar3.f789k.f770a.getResources();
                    int i4 = R$color.no_focus_left_text_color;
                    textView.setTextColor(resources.getColor(i4));
                    dVar3.f786h.setTextColor(dVar3.f789k.f770a.getResources().getColor(i4));
                    dVar3.f788j.setVisibility(4);
                    if (dVar3.f789k.f771b) {
                        dVar3.f780b.f2833n = false;
                    } else {
                        dVar3.f779a.f2836c = false;
                    }
                    if (iIndexOf2 == 0) {
                        dVar3.f783e.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
                    }
                } else {
                    dVar3.f783e.animate().scaleX(1.0f).setDuration(300L).start();
                    dVar3.f783e.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    dVar3.f784f.setTextColor(-1);
                    dVar3.f786h.setTextColor(-1);
                    dVar3.f788j.setImageResource(R$drawable.item_delete_unselect);
                    dVar3.f788j.setVisibility(0);
                }
                break;
            case 9:
                WifiListAdapter.a aVar3 = (WifiListAdapter.a) this.f1885b;
                if (!z3) {
                    aVar3.f796b.animate().scaleX(0.98f).setDuration(300L).start();
                    aVar3.f796b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                    aVar3.f797c.setTextColor(aVar3.f798d.f790a.getResources().getColor(R$color.no_focus_left_text_color));
                } else {
                    aVar3.f798d.f794e = r11.f791b.size() - 1;
                    aVar3.f796b.animate().scaleX(1.0f).setDuration(300L).start();
                    aVar3.f796b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    aVar3.f797c.setTextColor(-1);
                }
                break;
            case 10:
                WifiListAdapter.b bVar4 = (WifiListAdapter.b) this.f1885b;
                if (z3) {
                    bVar4.f805g.f794e = 0;
                    bVar4.f801c.animate().scaleX(1.0f).setDuration(300L).start();
                    bVar4.f801c.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    bVar4.f802d.setTextColor(-1);
                    bVar4.f803e.setTextColor(-1);
                } else {
                    bVar4.f801c.animate().scaleX(0.98f).setDuration(300L).start();
                    bVar4.f801c.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
                    TextView textView2 = bVar4.f802d;
                    Resources resources2 = bVar4.f805g.f790a.getResources();
                    int i5 = R$color.no_focus_left_text_color;
                    textView2.setTextColor(resources2.getColor(i5));
                    bVar4.f803e.setTextColor(bVar4.f805g.f790a.getResources().getColor(i5));
                }
                bVar4.f804f.setImageResource(WifiListAdapter.a(bVar4.f805g, bVar4.f799a.f2841b, false));
                break;
            default:
                WifiListAdapter.d dVar4 = (WifiListAdapter.d) this.f1885b;
                if (z3) {
                    dVar4.f812g.f794e = dVar4.f806a;
                    dVar4.f809d.animate().scaleX(1.0f).setDuration(300L).start();
                    dVar4.f809d.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    dVar4.f810e.setTextColor(-1);
                } else {
                    dVar4.f809d.animate().scaleX(0.98f).setDuration(300L).start();
                    dVar4.f809d.setBackgroundColor(dVar4.f812g.f790a.getResources().getColor(R$color.no_focus_bg_color));
                    dVar4.f810e.setTextColor(dVar4.f812g.f790a.getResources().getColor(R$color.no_focus_left_text_color));
                    if (dVar4.f806a == 0) {
                        dVar4.f809d.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
                    }
                }
                dVar4.f811f.setImageResource(WifiListAdapter.a(dVar4.f812g, dVar4.f807b.f2841b, z3));
                break;
        }
    }
}
