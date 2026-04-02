package f0;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import cn.huidu.lcd.render.model.QrCodeNode;
import cn.huidu.lcd.render.model.WidgetNode;

/* JADX INFO: loaded from: classes.dex */
public class j extends d0.h<QrCodeNode> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ImageView f1669p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Bitmap f1670q;

    public j(a0.g gVar) {
        super(gVar);
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof QrCodeNode;
    }

    @Override // d0.d
    public void m() {
        String imagePath = ((QrCodeNode) this.f1487b).getImagePath();
        if (imagePath == null) {
            return;
        }
        z.b.c(imagePath).a(new p.b(this));
    }

    @Override // d0.d
    public View p(Context context) {
        ImageView imageView = new ImageView(context);
        this.f1669p = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        Bitmap bitmap = this.f1670q;
        if (bitmap != null) {
            this.f1669p.setImageBitmap(bitmap);
        }
        return this.f1669p;
    }

    @Override // d0.e
    public void x() {
        D();
    }
}
