package l;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import cn.huidu.lcd.core.R$string;

/* JADX INFO: loaded from: classes.dex */
public class d implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewGroup f2321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f2322b;

    @Override // l.i
    public void a(ViewGroup viewGroup) {
        this.f2321a = viewGroup;
    }

    @Override // l.i
    public void b(n.f fVar) {
        if (fVar == null || !fVar.f2636c) {
            d();
            return;
        }
        ViewGroup viewGroup = this.f2321a;
        Log.d("FaceDetectFactory", "initPreview: ");
        d();
        if (!fVar.f2640g || viewGroup == null) {
            return;
        }
        Context context = viewGroup.getContext();
        String string = context.getString(R$string.not_support_face_detect);
        TextView textView = new TextView(context);
        this.f2322b = textView;
        textView.setText(string);
        this.f2322b.setTextSize(24.0f);
        this.f2322b.setTextColor(-1);
        float fMeasureText = this.f2322b.getPaint().measureText(string);
        Point pointB = w0.a.b(w0.c.f3777a);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.leftMargin = (int) ((pointB.x - fMeasureText) - 20.0f);
        marginLayoutParams.topMargin = 20;
        viewGroup.addView(this.f2322b, marginLayoutParams);
    }

    @Override // l.i
    public void c() {
    }

    public final void d() {
        TextView textView = this.f2322b;
        if (textView != null) {
            ViewParent parent = textView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f2322b);
            }
            this.f2322b = null;
        }
    }

    @Override // l.i
    public void onStart() {
        b((n.f) b.c().a(n.f.class));
    }

    @Override // l.i
    public void onStop() {
        b(null);
    }
}
