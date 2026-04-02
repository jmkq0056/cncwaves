package m0;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.huidu.lcd.setting.ui.view.LanModeFragment;
import i0.e;

/* JADX INFO: loaded from: classes.dex */
public class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f2478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LanModeFragment f2480c;

    public a(LanModeFragment lanModeFragment, TextView textView, View view) {
        this.f2480c = lanModeFragment;
        this.f2478a = textView;
        this.f2479b = view;
    }

    @Override // i0.e
    public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
        int i4 = aVar.f541d;
        String str = aVar.f540c;
        if (i4 == 0) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f2478a, str);
        } else {
            if (i4 == 67) {
                h.a.g(this.f2478a);
                return;
            }
            if (i4 != 4) {
                if (i4 == 500) {
                    this.f2478a.setText("0");
                }
            } else {
                LanModeFragment lanModeFragment = this.f2480c;
                int i5 = LanModeFragment.f986m;
                lanModeFragment.f(false);
                this.f2480c.f987c.m();
                this.f2479b.setFocusable(true);
                this.f2479b.requestFocus();
            }
        }
    }

    @Override // i0.e
    public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
        String str = aVar.f540c;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h.a.V(this.f2478a, str);
    }

    @Override // i0.e
    public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
        LanModeFragment lanModeFragment = this.f2480c;
        int i4 = LanModeFragment.f986m;
        lanModeFragment.f(false);
        this.f2480c.f987c.m();
        this.f2479b.setFocusable(true);
        this.f2479b.requestFocus();
    }

    @Override // i0.e
    public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
        h.a.g(this.f2478a);
    }
}
