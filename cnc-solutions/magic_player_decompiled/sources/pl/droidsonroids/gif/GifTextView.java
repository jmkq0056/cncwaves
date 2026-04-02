package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import java.io.IOException;
import p3.f;
import pl.droidsonroids.gif.b;

/* JADX INFO: loaded from: classes2.dex */
public class GifTextView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b.C0038b f3061a;

    public GifTextView(Context context) {
        super(context);
    }

    private void setCompoundDrawablesVisible(boolean z3) {
        for (Drawable drawable : getCompoundDrawables()) {
            if (drawable != null) {
                drawable.setVisible(z3, false);
            }
        }
        for (Drawable drawable2 : getCompoundDrawablesRelative()) {
            if (drawable2 != null) {
                drawable2.setVisible(z3, false);
            }
        }
    }

    public final Drawable a(int i4) {
        if (i4 == 0) {
            return null;
        }
        Resources resources = getResources();
        String resourceTypeName = resources.getResourceTypeName(i4);
        if (!isInEditMode() && b.f3083a.contains(resourceTypeName)) {
            try {
                return new p3.d(resources, i4);
            } catch (Resources.NotFoundException | IOException unused) {
            }
        }
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i4, getContext().getTheme()) : resources.getDrawable(i4);
    }

    public final void b(AttributeSet attributeSet, int i4, int i5) {
        if (attributeSet != null) {
            Drawable drawableA = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableLeft", 0));
            Drawable drawableA2 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableTop", 0));
            Drawable drawableA3 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableRight", 0));
            Drawable drawableA4 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableBottom", 0));
            Drawable drawableA5 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableStart", 0));
            Drawable drawableA6 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableEnd", 0));
            if (getLayoutDirection() == 0) {
                if (drawableA5 != null) {
                    drawableA = drawableA5;
                }
                if (drawableA6 == null) {
                    drawableA6 = drawableA3;
                }
            } else {
                if (drawableA5 != null) {
                    drawableA3 = drawableA5;
                }
                if (drawableA6 == null) {
                    drawableA6 = drawableA;
                }
                drawableA = drawableA3;
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawableA, drawableA2, drawableA6, drawableA4);
            setBackground(a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "background", 0)));
            b.C0038b c0038b = new b.C0038b(this, attributeSet, i4, i5);
            this.f3061a = c0038b;
            if (c0038b.f3087b >= 0) {
                for (Drawable drawable : getCompoundDrawables()) {
                    b.a(this.f3061a.f3087b, drawable);
                }
                for (Drawable drawable2 : getCompoundDrawablesRelative()) {
                    b.a(this.f3061a.f3087b, drawable2);
                }
                b.a(this.f3061a.f3087b, getBackground());
            }
        }
        this.f3061a = new b.C0038b();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setCompoundDrawablesVisible(true);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setCompoundDrawablesVisible(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        Drawable[] compoundDrawables = getCompoundDrawables();
        fVar.a(compoundDrawables[0], 0);
        fVar.a(compoundDrawables[1], 1);
        fVar.a(compoundDrawables[2], 2);
        fVar.a(compoundDrawables[3], 3);
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        fVar.a(compoundDrawablesRelative[0], 4);
        fVar.a(compoundDrawablesRelative[2], 5);
        fVar.a(getBackground(), 6);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Drawable[] drawableArr = new Drawable[7];
        if (this.f3061a.f3086a) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            System.arraycopy(compoundDrawables, 0, drawableArr, 0, compoundDrawables.length);
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            drawableArr[4] = compoundDrawablesRelative[0];
            drawableArr[5] = compoundDrawablesRelative[2];
            drawableArr[6] = getBackground();
        }
        return new f(super.onSaveInstanceState(), drawableArr);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i4) {
        setBackground(a(i4));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i4, int i5, int i6, int i7) {
        setCompoundDrawablesRelativeWithIntrinsicBounds(a(i4), a(i5), a(i6), a(i7));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i4, int i5, int i6, int i7) {
        setCompoundDrawablesWithIntrinsicBounds(a(i4), a(i5), a(i6), a(i7));
    }

    public void setFreezesAnimation(boolean z3) {
        this.f3061a.f3086a = z3;
    }

    public GifTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet, 0, 0);
    }

    public GifTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        b(attributeSet, i4, 0);
    }
}
