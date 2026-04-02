package m0;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.huidu.lcd.setting.ui.view.NetworkingModeFragment;
import i0.e;

/* JADX INFO: loaded from: classes.dex */
public class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f2481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NetworkingModeFragment f2483c;

    public b(NetworkingModeFragment networkingModeFragment, TextView textView, View view) {
        this.f2483c = networkingModeFragment;
        this.f2481a = textView;
        this.f2482b = view;
    }

    @Override // i0.e
    public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
        int i4 = aVar.f541d;
        String str = aVar.f540c;
        if (i4 == 0) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f2481a, str);
        } else {
            if (i4 == 67) {
                h.a.g(this.f2481a);
                return;
            }
            if (i4 != 4) {
                if (i4 == 500) {
                    this.f2481a.setText("0");
                }
            } else {
                NetworkingModeFragment networkingModeFragment = this.f2483c;
                int i5 = NetworkingModeFragment.f997n;
                networkingModeFragment.f(false);
                this.f2483c.f998c.m();
                this.f2482b.setFocusable(true);
                this.f2482b.requestFocus();
            }
        }
    }

    @Override // i0.e
    public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
        String str = aVar.f540c;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h.a.V(this.f2481a, str);
    }

    @Override // i0.e
    public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
        NetworkingModeFragment networkingModeFragment = this.f2483c;
        int i4 = NetworkingModeFragment.f997n;
        networkingModeFragment.f(false);
        this.f2483c.f998c.m();
        this.f2482b.setFocusable(true);
        this.f2482b.requestFocus();
    }

    @Override // i0.e
    public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
        h.a.g(this.f2481a);
    }
}
