package pl.droidsonroids.gif;

import android.content.Context;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageView;
import p3.f;
import pl.droidsonroids.gif.b;

/* JADX INFO: loaded from: classes2.dex */
public class GifImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3058a;

    public GifImageView(Context context) {
        super(context);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        fVar.a(getDrawable(), 0);
        fVar.a(getBackground(), 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new f(super.onSaveInstanceState(), this.f3058a ? getDrawable() : null, this.f3058a ? getBackground() : null);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i4) {
        if (b.d(this, false, i4)) {
            return;
        }
        super.setBackgroundResource(i4);
    }

    public void setFreezesAnimation(boolean z3) {
        this.f3058a = z3;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i4) {
        if (b.d(this, true, i4)) {
            return;
        }
        super.setImageResource(i4);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (b.c(this, uri)) {
            return;
        }
        super.setImageURI(uri);
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b.a aVarB = b.b(this, attributeSet, 0, 0);
        this.f3058a = aVarB.f3086a;
        int i4 = aVarB.f3084c;
        if (i4 > 0) {
            super.setImageResource(i4);
        }
        int i5 = aVarB.f3085d;
        if (i5 > 0) {
            super.setBackgroundResource(i5);
        }
    }

    public GifImageView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        b.a aVarB = b.b(this, attributeSet, i4, 0);
        this.f3058a = aVarB.f3086a;
        int i5 = aVarB.f3084c;
        if (i5 > 0) {
            super.setImageResource(i5);
        }
        int i6 = aVarB.f3085d;
        if (i6 > 0) {
            super.setBackgroundResource(i6);
        }
    }
}
