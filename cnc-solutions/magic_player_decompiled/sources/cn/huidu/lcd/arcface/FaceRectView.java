package cn.huidu.lcd.arcface;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FaceRectView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Paint f325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Path f326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<a> f327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f332h;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Rect f333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f334b;

        public a(Rect rect, String str) {
            this.f333a = rect;
            this.f334b = str;
        }
    }

    public FaceRectView(Context context) {
        super(context);
        this.f325a = new Paint();
        this.f326b = new Path();
        this.f327c = new CopyOnWriteArrayList();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        List<a> list = this.f327c;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i4 = 0; i4 < this.f327c.size(); i4++) {
            a aVar = this.f327c.get(i4);
            if (canvas != null && aVar != null) {
                if (this.f331g) {
                    Rect rect = aVar.f333a;
                    this.f325a.setStyle(Paint.Style.STROKE);
                    this.f325a.setStrokeWidth(4.0f);
                    this.f325a.setColor(-1);
                    this.f325a.setAntiAlias(true);
                    this.f326b.reset();
                    this.f326b.moveTo(rect.left, (rect.height() / 4.0f) + rect.top);
                    this.f326b.lineTo(rect.left, rect.top);
                    this.f326b.lineTo((rect.width() / 4.0f) + rect.left, rect.top);
                    this.f326b.moveTo(rect.right - (rect.width() / 4.0f), rect.top);
                    this.f326b.lineTo(rect.right, rect.top);
                    this.f326b.lineTo(rect.right, (rect.height() / 4.0f) + rect.top);
                    this.f326b.moveTo(rect.right, rect.bottom - (rect.height() / 4.0f));
                    this.f326b.lineTo(rect.right, rect.bottom);
                    this.f326b.lineTo(rect.right - (rect.width() / 4.0f), rect.bottom);
                    this.f326b.moveTo((rect.width() / 4.0f) + rect.left, rect.bottom);
                    this.f326b.lineTo(rect.left, rect.bottom);
                    this.f326b.lineTo(rect.left, rect.bottom - (rect.height() / 4.0f));
                    canvas.drawPath(this.f326b, this.f325a);
                }
                if (this.f332h) {
                    String str = aVar.f334b;
                    Rect rect2 = aVar.f333a;
                    this.f325a.setStyle(Paint.Style.FILL_AND_STROKE);
                    this.f325a.setStrokeWidth(1.0f);
                    this.f325a.setColor(-1);
                    this.f325a.setTextSize(rect2.width() / 8.0f);
                    if (str != null && str.length() > 0) {
                        canvas.drawText(str, ((rect2.width() - this.f325a.measureText(str)) / 2.0f) + rect2.left, rect2.top - 10, this.f325a);
                    }
                }
            }
        }
    }

    public void setMirror(boolean z3) {
        this.f328d = z3;
    }

    public void setMirrorHorizontal(boolean z3) {
        this.f329e = z3;
    }

    public void setMirrorVertical(boolean z3) {
        this.f330f = z3;
    }

    public void setShowFaceInfo(boolean z3) {
        this.f332h = z3;
    }

    public void setShowFaceRect(boolean z3) {
        this.f331g = z3;
    }

    public FaceRectView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f325a = new Paint();
        this.f326b = new Path();
        this.f327c = new CopyOnWriteArrayList();
    }
}
