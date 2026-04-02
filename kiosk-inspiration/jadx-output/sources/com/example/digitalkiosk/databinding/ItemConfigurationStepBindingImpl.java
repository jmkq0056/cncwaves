package com.example.digitalkiosk.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.Converters;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.example.digitalkiosk.R;
import okhttp3.internal.http2.Http2Stream;

/* JADX INFO: loaded from: classes.dex */
public class ItemConfigurationStepBindingImpl extends ItemConfigurationStepBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;
    private final TextView mboundView1;
    private final View mboundView2;
    private final View mboundView3;
    private final View mboundView4;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public ItemConfigurationStepBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private ItemConfigurationStepBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.mDirtyFlags = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.mboundView1 = textView;
        textView.setTag(null);
        View view2 = (View) objArr[2];
        this.mboundView2 = view2;
        view2.setTag(null);
        View view3 = (View) objArr[3];
        this.mboundView3 = view3;
        view3.setTag(null);
        View view4 = (View) objArr[4];
        this.mboundView4 = view4;
        view4.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32L;
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
        if (9 == i) {
            setCompleted((Boolean) obj);
            return true;
        }
        if (1 == i) {
            setActive((Boolean) obj);
            return true;
        }
        if (32 == i) {
            setLast((Boolean) obj);
            return true;
        }
        if (21 == i) {
            setFirst((Boolean) obj);
            return true;
        }
        if (55 != i) {
            return false;
        }
        setTitle((String) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationStepBinding
    public void setCompleted(Boolean bool) {
        this.mCompleted = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationStepBinding
    public void setActive(Boolean bool) {
        this.mActive = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationStepBinding
    public void setLast(Boolean bool) {
        this.mLast = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationStepBinding
    public void setFirst(Boolean bool) {
        this.mFirst = bool;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(21);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationStepBinding
    public void setTitle(String str) {
        this.mTitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        boolean zSafeUnbox;
        boolean zSafeUnbox2;
        boolean zSafeUnbox3;
        long j2;
        int colorFromResource;
        boolean zSafeUnbox4;
        int colorFromResource2;
        int colorFromResource3;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Boolean bool = this.mCompleted;
        Boolean bool2 = this.mActive;
        Boolean bool3 = this.mLast;
        Boolean bool4 = this.mFirst;
        String str = this.mTitle;
        int i = 0;
        if ((j & 35) != 0) {
            zSafeUnbox = ViewDataBinding.safeUnbox(bool2);
            if ((j & 262179) != 0) {
                j = zSafeUnbox ? j | 32768 : j | Http2Stream.EMIT_BUFFER_SIZE;
            }
        } else {
            zSafeUnbox = false;
        }
        long j3 = j & 37;
        if (j3 != 0) {
            zSafeUnbox2 = ViewDataBinding.safeUnbox(bool3);
            if (j3 != 0) {
                j = zSafeUnbox2 ? j | 8192 : j | 4096;
            }
        } else {
            zSafeUnbox2 = false;
        }
        long j4 = j & 43;
        if (j4 != 0) {
            zSafeUnbox3 = ViewDataBinding.safeUnbox(bool4);
            if (j4 != 0) {
                j = zSafeUnbox3 ? j | 524288 : j | 262144;
            }
        } else {
            zSafeUnbox3 = false;
        }
        long j5 = j & 4096;
        if (j5 != 0) {
            zSafeUnbox4 = ViewDataBinding.safeUnbox(bool);
            if (j5 != 0) {
                j = zSafeUnbox4 ? j | 128 : j | 64;
            }
            j2 = 0;
            colorFromResource = getColorFromResource(this.mboundView4, zSafeUnbox4 ? R.color.tab_active_color : R.color.tab_deactive_color);
        } else {
            j2 = 0;
            colorFromResource = 0;
            zSafeUnbox4 = false;
        }
        if ((j & 262144) != j2) {
            zSafeUnbox = ViewDataBinding.safeUnbox(bool2);
            if ((j & 262179) != j2) {
                j = zSafeUnbox ? j | 32768 : j | Http2Stream.EMIT_BUFFER_SIZE;
            }
        }
        if ((j & 37) == j2) {
            colorFromResource = 0;
        } else if (zSafeUnbox2) {
            colorFromResource = getColorFromResource(this.mboundView4, R.color.transparent);
        }
        if ((j & Http2Stream.EMIT_BUFFER_SIZE) != j2) {
            zSafeUnbox4 = ViewDataBinding.safeUnbox(bool);
            if ((j & 4096) != j2) {
                j = zSafeUnbox4 ? j | 128 : j | 64;
            }
        }
        Drawable drawable = null;
        if ((j & 262179) != j2) {
            if (zSafeUnbox) {
                zSafeUnbox4 = true;
            }
            if ((j & 35) != j2) {
                j |= zSafeUnbox4 ? 2560L : 1280L;
            }
            if ((j & 262144) != j2) {
                j |= zSafeUnbox4 ? 131072L : 65536L;
            }
            if ((j & 35) != j2) {
                colorFromResource2 = getColorFromResource(this.mboundView1, zSafeUnbox4 ? R.color.tab_active_color : R.color.tab_deactive_color);
                drawable = AppCompatResources.getDrawable(this.mboundView3.getContext(), zSafeUnbox4 ? R.drawable.item_config_step_active : R.drawable.item_config_step);
            } else {
                colorFromResource2 = 0;
            }
            if ((j & 262144) != j2) {
                colorFromResource3 = getColorFromResource(this.mboundView2, zSafeUnbox4 ? R.color.tab_active_color : R.color.tab_deactive_color);
            } else {
                colorFromResource3 = 0;
            }
        } else {
            colorFromResource2 = 0;
            colorFromResource3 = 0;
        }
        long j6 = j & 43;
        if (j6 != j2) {
            if (zSafeUnbox3) {
                colorFromResource3 = getColorFromResource(this.mboundView2, R.color.transparent);
            }
            i = colorFromResource3;
        }
        if ((48 & j) != j2) {
            TextViewBindingAdapter.setText(this.mboundView1, str);
        }
        if ((j & 35) != j2) {
            this.mboundView1.setTextColor(colorFromResource2);
            ViewBindingAdapter.setBackground(this.mboundView3, drawable);
        }
        if (j6 != j2) {
            ViewBindingAdapter.setBackground(this.mboundView2, Converters.convertColorToDrawable(i));
        }
        if ((j & 37) != j2) {
            ViewBindingAdapter.setBackground(this.mboundView4, Converters.convertColorToDrawable(colorFromResource));
        }
    }
}
