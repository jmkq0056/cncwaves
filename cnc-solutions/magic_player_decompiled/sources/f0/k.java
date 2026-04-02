package f0;

import android.content.Context;
import android.graphics.Canvas;
import android.util.Log;
import android.view.View;
import cn.huidu.lcd.render.model.EffectNode;
import cn.huidu.lcd.render.model.ImageSize;
import cn.huidu.lcd.render.model.TextNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.player.view.DrawableView;
import e0.h;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k extends d0.h<TextNode> implements g0.a, DrawableView.a, h.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public e0.h f1671p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public z.d f1672q;

    public k(a0.g gVar) {
        super(gVar);
        this.f1672q = new z.a(3);
    }

    @Override // d0.e
    public void B() {
        ((z.a) this.f1672q).d(0);
    }

    @Override // d0.e
    public void C() {
        super.C();
        this.f1671p.resume();
        u();
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        this.f1671p.seekTo(i4);
        u();
    }

    @Override // d0.e
    public void G() {
        super.G();
        ((z.a) this.f1672q).f();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof TextNode;
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        e0.h hVar = this.f1671p;
        if (hVar instanceof e0.i) {
            hVar.seekTo(0);
        }
        u();
    }

    @Override // g0.a
    public void f(Canvas canvas) {
        this.f1671p.draw(canvas);
        if (w()) {
            u();
        }
    }

    @Override // d0.d
    public void m() {
        e0.h iVar;
        List<String> fileList = ((TextNode) this.f1487b).getFileList();
        z.e eVar = new z.e();
        eVar.a(fileList);
        ((z.a) this.f1672q).g(eVar);
        TextNode textNode = (TextNode) this.f1487b;
        EffectNode effect = textNode.getEffect();
        if (effect.isContinuousEffect()) {
            e0.b bVar = new e0.b();
            bVar.f1534d = effect.getEffectType();
            int speed = effect.getSpeed();
            bVar.f1536f = speed;
            bVar.f1535e = (speed * 32.0f) / 1000.0f;
            StringBuilder sbA = android.support.v4.media.a.a("setSpeed: ", speed, " pixel/frame, ");
            sbA.append(bVar.f1535e);
            sbA.append(" pixel/ms");
            Log.d("ContinuousImageDrawer", sbA.toString());
            bVar.f1537g = false;
            bVar.f1538h = effect.isEndToEnd();
            List<ImageSize> imageSizeList = textNode.getImageSizeList();
            bVar.f1543m = imageSizeList;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < imageSizeList.size(); i6++) {
                ImageSize imageSize = imageSizeList.get(i6);
                i4 += imageSize.width;
                i5 += imageSize.height;
            }
            bVar.f1544n = i4;
            bVar.f1545o = i5;
            iVar = bVar;
        } else {
            e0.g gVar = new e0.g();
            gVar.f1590b = effect.getEffectType();
            gVar.f1592d = effect.getEnterTime();
            gVar.f1593e = effect.getDisplayTime();
            gVar.f1591c = effect.isClearScreen();
            gVar.f1589a = false;
            iVar = new e0.i(gVar);
        }
        this.f1671p = iVar;
        iVar.a(this.f1672q);
        this.f1671p.f1594a = this;
    }

    @Override // d0.d
    public View p(Context context) {
        DrawableView drawableView = new DrawableView(context);
        drawableView.setOnDrawListener(this);
        return drawableView;
    }

    @Override // d0.e
    public void x() {
        if (this.f1486a.f35f) {
            D();
        }
    }
}
