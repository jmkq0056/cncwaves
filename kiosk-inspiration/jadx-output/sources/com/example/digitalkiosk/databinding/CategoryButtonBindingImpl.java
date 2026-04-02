package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.models.Category;

/* JADX INFO: loaded from: classes.dex */
public class CategoryButtonBindingImpl extends CategoryButtonBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final ImageView mboundView1;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public CategoryButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds));
    }

    private CategoryButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        this.button.setTag(null);
        this.categoryName.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.mboundView1 = imageView;
        imageView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (42 == i) {
            setSelectedCategory((Boolean) obj);
            return true;
        }
        if (5 == i) {
            setCategory((Category) obj);
            return true;
        }
        if (22 != i) {
            return false;
        }
        setHandicapOn((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.CategoryButtonBinding
    public void setSelectedCategory(Boolean bool) {
        this.mSelectedCategory = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(42);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.CategoryButtonBinding
    public void setCategory(Category category) {
        this.mCategory = category;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.CategoryButtonBinding
    public void setHandicapOn(Boolean bool) {
        this.mHandicapOn = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036 A[PHI: r2
      0x0036: PHI (r2v1 long) = (r2v0 long), (r2v7 long) binds: [B:7:0x0017, B:14:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void executeBindings() {
        /*
            r19 = this;
            r1 = r19
            monitor-enter(r19)
            long r2 = r1.mDirtyFlags     // Catch: java.lang.Throwable -> L91
            r4 = 0
            r1.mDirtyFlags = r4     // Catch: java.lang.Throwable -> L91
            monitor-exit(r19)     // Catch: java.lang.Throwable -> L91
            java.lang.Boolean r0 = r1.mSelectedCategory
            com.example.digitalkiosk.models.Category r6 = r1.mCategory
            java.lang.Boolean r7 = r1.mHandicapOn
            r8 = 9
            long r10 = r2 & r8
            int r10 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            r11 = 0
            if (r10 == 0) goto L36
            boolean r0 = androidx.databinding.ViewDataBinding.safeUnbox(r0)
            if (r10 == 0) goto L27
            if (r0 == 0) goto L24
            r12 = 128(0x80, double:6.32E-322)
            goto L26
        L24:
            r12 = 64
        L26:
            long r2 = r2 | r12
        L27:
            if (r0 == 0) goto L36
            android.widget.LinearLayout r0 = r1.button
            android.content.Context r0 = r0.getContext()
            int r10 = com.example.digitalkiosk.R.drawable.category_selected
            android.graphics.drawable.Drawable r0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r0, r10)
            goto L37
        L36:
            r0 = r11
        L37:
            r12 = 10
            long r14 = r2 & r12
            int r10 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r10 == 0) goto L4a
            if (r6 == 0) goto L4a
            java.lang.String r11 = r6.getImage()
            java.lang.String r6 = r6.getName()
            goto L4b
        L4a:
            r6 = r11
        L4b:
            r14 = 12
            long r16 = r2 & r14
            int r10 = (r16 > r4 ? 1 : (r16 == r4 ? 0 : -1))
            r16 = 0
            if (r10 == 0) goto L6a
            boolean r7 = androidx.databinding.ViewDataBinding.safeUnbox(r7)
            if (r10 == 0) goto L64
            if (r7 == 0) goto L60
            r17 = 32
            goto L62
        L60:
            r17 = 16
        L62:
            long r2 = r2 | r17
        L64:
            if (r7 == 0) goto L6a
            r7 = 8
            r16 = r7
        L6a:
            r7 = r16
            long r8 = r8 & r2
            int r8 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r8 == 0) goto L76
            android.widget.LinearLayout r8 = r1.button
            androidx.databinding.adapters.ViewBindingAdapter.setBackground(r8, r0)
        L76:
            long r8 = r2 & r12
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 == 0) goto L86
            android.widget.TextView r0 = r1.categoryName
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r6)
            android.widget.ImageView r0 = r1.mboundView1
            com.example.digitalkiosk.BindingAdaptersKt.bindImage(r0, r11)
        L86:
            long r2 = r2 & r14
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L90
            android.widget.ImageView r0 = r1.mboundView1
            r0.setVisibility(r7)
        L90:
            return
        L91:
            r0 = move-exception
            monitor-exit(r19)     // Catch: java.lang.Throwable -> L91
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.databinding.CategoryButtonBindingImpl.executeBindings():void");
    }
}
