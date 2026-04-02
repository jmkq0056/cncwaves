package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Translation;
import me.relex.circleindicator.CircleIndicator3;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public class ItemConfiguration2BindingImpl extends ItemConfiguration2Binding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final TextView mboundView1;
    private final TextView mboundView2;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.steps, 7);
        sparseIntArray.put(R.id.sides_layout, 8);
        sparseIntArray.put(R.id.sizes_layout, 9);
        sparseIntArray.put(R.id.side_indicators_wrap, 10);
        sparseIntArray.put(R.id.side_previous, 11);
        sparseIntArray.put(R.id.side_indicators, 12);
        sparseIntArray.put(R.id.side_next, 13);
        sparseIntArray.put(R.id.mandatory_warning, 14);
        sparseIntArray.put(R.id.warning_select, 15);
        sparseIntArray.put(R.id.warning_max, 16);
        sparseIntArray.put(R.id.warning_min, 17);
    }

    public ItemConfiguration2BindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 18, sIncludes, sViewsWithIds));
    }

    private ItemConfiguration2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatButton) objArr[5], (RelativeLayout) objArr[14], (AppCompatButton) objArr[6], (CircleIndicator3) objArr[12], (LinearLayout) objArr[10], (ViewPager2) objArr[3], (RelativeLayout) objArr[13], (RelativeLayout) objArr[11], (LinearLayout) objArr[8], (RecyclerView) objArr[4], (RelativeLayout) objArr[9], (LinearLayout) objArr[7], (TextView) objArr[16], (TextView) objArr[17], (TextView) objArr[15]);
        this.mDirtyFlags = -1L;
        this.cancelButton.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.mboundView1 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.mboundView2 = textView2;
        textView2.setTag(null);
        this.nextButton.setTag(null);
        this.sideItems.setTag(null);
        this.sizesDisplay.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4096L;
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
        if (27 == i) {
            setItem((ItemDetails) obj);
            return true;
        }
        if (18 == i) {
            setDrinksTabTitle((Translation) obj);
            return true;
        }
        if (50 == i) {
            setTabPosition((Integer) obj);
            return true;
        }
        if (10 == i) {
            setConfigTitle((String) obj);
            return true;
        }
        if (43 == i) {
            setSidesAvailable((Boolean) obj);
            return true;
        }
        if (13 == i) {
            setDescriptionText((String) obj);
            return true;
        }
        if (44 == i) {
            setSidesTabTitle((Translation) obj);
            return true;
        }
        if (46 == i) {
            setSizeTabTitle((Translation) obj);
            return true;
        }
        if (34 == i) {
            setNextButtonText((Translation) obj);
            return true;
        }
        if (17 == i) {
            setDrinksAvailable((Boolean) obj);
            return true;
        }
        if (3 == i) {
            setCancelButtonText((Translation) obj);
            return true;
        }
        if (22 != i) {
            return false;
        }
        setHandicapOn((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setItem(ItemDetails itemDetails) {
        this.mItem = itemDetails;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setDrinksTabTitle(Translation translation) {
        this.mDrinksTabTitle = translation;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setTabPosition(Integer num) {
        this.mTabPosition = num;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setConfigTitle(String str) {
        this.mConfigTitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(10);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setSidesAvailable(Boolean bool) {
        this.mSidesAvailable = bool;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setDescriptionText(String str) {
        this.mDescriptionText = str;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(13);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setSidesTabTitle(Translation translation) {
        this.mSidesTabTitle = translation;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setSizeTabTitle(Translation translation) {
        this.mSizeTabTitle = translation;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setNextButtonText(Translation translation) {
        this.mNextButtonText = translation;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(34);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setDrinksAvailable(Boolean bool) {
        this.mDrinksAvailable = bool;
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setCancelButtonText(Translation translation) {
        this.mCancelButtonText = translation;
        synchronized (this) {
            this.mDirtyFlags |= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfiguration2Binding
    public void setHandicapOn(Boolean bool) {
        this.mHandicapOn = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2048;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0050 A[PHI: r2
      0x0050: PHI (r2v2 long) = (r2v1 long), (r2v17 long) binds: [B:18:0x0038, B:25:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void executeBindings() {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.databinding.ItemConfiguration2BindingImpl.executeBindings():void");
    }
}
