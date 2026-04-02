package m0;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.huidu.lcd.setting.ui.view.StandAloneModeFragment;
import i0.e;

/* JADX INFO: loaded from: classes.dex */
public class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f2484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StandAloneModeFragment f2486c;

    public c(StandAloneModeFragment standAloneModeFragment, TextView textView, View view) {
        this.f2486c = standAloneModeFragment;
        this.f2484a = textView;
        this.f2485b = view;
    }

    @Override // i0.e
    public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
        int i4 = aVar.f541d;
        String str = aVar.f540c;
        if (i4 == 0) {
            if (TextUtils.isEmpty(str) || str.equals(".")) {
                return;
            }
            String strSubstring = ((Object) this.f2484a.getText()) + str;
            if (strSubstring.length() > 1 && Character.valueOf(strSubstring.charAt(0)).compareTo((Character) '0') == 0) {
                strSubstring = strSubstring.substring(1);
            }
            this.f2484a.setText(strSubstring);
            return;
        }
        if (i4 == 67) {
            String string = this.f2484a.getText().toString();
            if (string.length() == 1) {
                this.f2484a.setText("0");
                return;
            } else {
                this.f2484a.setText(string.substring(0, string.length() - 1));
                return;
            }
        }
        if (i4 != 4) {
            if (i4 == 500) {
                this.f2484a.setText("0");
            }
        } else {
            StandAloneModeFragment standAloneModeFragment = this.f2486c;
            int i5 = StandAloneModeFragment.I;
            standAloneModeFragment.g();
            this.f2485b.requestFocus();
            this.f2485b.setFocusable(true);
        }
    }

    @Override // i0.e
    public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
        String str = aVar.f540c;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h.a.V(this.f2484a, str);
    }

    @Override // i0.e
    public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
        StandAloneModeFragment standAloneModeFragment = this.f2486c;
        int i4 = StandAloneModeFragment.I;
        standAloneModeFragment.g();
        this.f2485b.requestFocus();
        this.f2485b.setFocusable(true);
    }

    @Override // i0.e
    public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
        String string = this.f2484a.getText().toString();
        if (string.length() == 1) {
            this.f2484a.setText("0");
        } else {
            this.f2484a.setText(string.substring(0, string.length() - 1));
        }
    }
}
