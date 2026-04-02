package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.VideoView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Translation;
import me.relex.circleindicator.CircleIndicator3;

/* JADX INFO: loaded from: classes.dex */
public class ActivityHomeBindingImpl extends ActivityHomeBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final FrameLayout mboundView0;
    private final ImageView mboundView2;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.video, 3);
        sparseIntArray.put(R.id.bannerSlider, 4);
        sparseIntArray.put(R.id.indicators, 5);
    }

    public ActivityHomeBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private ActivityHomeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ViewPager2) objArr[4], (CircleIndicator3) objArr[5], (AppCompatButton) objArr[1], (VideoView) objArr[3]);
        this.mDirtyFlags = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[2];
        this.mboundView2 = imageView;
        imageView.setTag(null);
        this.selectItems.setTag(null);
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
        if (53 == i) {
            setTapText((Translation) obj);
            return true;
        }
        if (33 == i) {
            setLogoUrl((String) obj);
            return true;
        }
        if (31 != i) {
            return false;
        }
        setLanguageLoaded((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ActivityHomeBinding
    public void setTapText(Translation translation) {
        this.mTapText = translation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(53);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityHomeBinding
    public void setLogoUrl(String str) {
        this.mLogoUrl = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(33);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityHomeBinding
    public void setLanguageLoaded(Boolean bool) {
        this.mLanguageLoaded = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(31);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        boolean z;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Translation translation = this.mTapText;
        String str = this.mLogoUrl;
        Boolean bool = this.mLanguageLoaded;
        long j2 = j & 9;
        int i = 0;
        if (j2 != 0) {
            z = translation != null;
            if (j2 != 0) {
                j = z ? j | 128 : j | 64;
            }
        } else {
            z = false;
        }
        long j3 = j & 12;
        if (j3 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j3 != 0) {
                j |= zSafeUnbox ? 32L : 16L;
            }
            if (!zSafeUnbox) {
                i = 8;
            }
        }
        String str2 = null;
        String translation2 = ((j & 128) == 0 || translation == null) ? null : translation.getTranslation();
        long j4 = j & 9;
        if (j4 != 0) {
            if (!z) {
                translation2 = this.selectItems.getResources().getString(R.string.main_button);
            }
            str2 = translation2;
        }
        if ((10 & j) != 0) {
            BindingAdaptersKt.bindImage(this.mboundView2, str);
        }
        if ((j & 12) != 0) {
            this.selectItems.setVisibility(i);
        }
        if (j4 != 0) {
            TextViewBindingAdapter.setText(this.selectItems, str2);
        }
    }
}
