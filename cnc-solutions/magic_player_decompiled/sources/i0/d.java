package i0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.view.ViewGroup;
import cn.huidu.lcd.setting.R$dimen;
import cn.huidu.lcd.setting.keyboard.SkbContainer;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SkbContainer f1886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f1887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public cn.huidu.lcd.setting.keyboard.a f1888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1889d = false;

    public void a(Context context, int i4) {
        this.f1887b = context;
        SkbContainer skbContainer = new SkbContainer(context);
        this.f1886a = skbContainer;
        skbContainer.setNineNumKeyDone(this.f1889d);
        this.f1886a.setSkbLayout(i4);
        this.f1886a.setFocusable(true);
        this.f1886a.setFocusableInTouchMode(true);
        this.f1886a.requestFocus();
        this.f1888c = null;
        this.f1886a.setMoveSoftKey(false);
        float dimension = (int) this.f1887b.getResources().getDimension(R$dimen.w_25);
        Resources resources = this.f1887b.getResources();
        int i5 = R$dimen.h_25;
        this.f1886a.setSoftKeySelectPadding(new RectF(dimension, (int) resources.getDimension(i5), (int) this.f1887b.getResources().getDimension(r2), (int) this.f1887b.getResources().getDimension(i5)));
        this.f1886a.setMoveDuration(200);
        this.f1886a.setSelectSofkKeyFront(false);
        this.f1886a.setSelectSofkKeyFront(true);
        this.f1886a.setOnFocusChangeListener(new b(this));
    }

    public void b(ViewGroup viewGroup) {
        SkbContainer skbContainer = this.f1886a;
        if (skbContainer != null) {
            viewGroup.removeView(skbContainer);
            viewGroup.setVisibility(4);
            this.f1886a = null;
        }
    }
}
