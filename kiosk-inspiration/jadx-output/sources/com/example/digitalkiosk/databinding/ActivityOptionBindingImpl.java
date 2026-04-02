package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public class ActivityOptionBindingImpl extends ActivityOptionBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(4);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"option_layout_nohandicap", "option_layout_handicap"}, new int[]{1, 2}, new int[]{R.layout.option_layout_nohandicap, R.layout.option_layout_handicap});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.exitbutton, 3);
    }

    public ActivityOptionBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds));
    }

    private ActivityOptionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (View) objArr[3], (OptionLayoutHandicapBinding) objArr[2], (OptionLayoutNohandicapBinding) objArr[1]);
        this.mDirtyFlags = -1L;
        setContainedBinding(this.handicap);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        setContainedBinding(this.noHandicap);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 512L;
        }
        this.noHandicap.invalidateAll();
        this.handicap.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return this.noHandicap.hasPendingBindings() || this.handicap.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (37 == i) {
            setPickLater((Translation) obj);
            return true;
        }
        if (29 == i) {
            setKiosksetting((KioskSetting) obj);
            return true;
        }
        if (15 == i) {
            setDineIn((Translation) obj);
            return true;
        }
        if (40 == i) {
            setSelectYourOption((Translation) obj);
            return true;
        }
        if (22 == i) {
            setHandicapOn((Boolean) obj);
            return true;
        }
        if (52 == i) {
            setTakeAway((Translation) obj);
            return true;
        }
        if (7 != i) {
            return false;
        }
        setChooseYourOption((Translation) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setPickLater(Translation translation) {
        this.mPickLater = translation;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(37);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setKiosksetting(KioskSetting kioskSetting) {
        this.mKiosksetting = kioskSetting;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setDineIn(Translation translation) {
        this.mDineIn = translation;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(15);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setSelectYourOption(Translation translation) {
        this.mSelectYourOption = translation;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setHandicapOn(Boolean bool) {
        this.mHandicapOn = bool;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setTakeAway(Translation translation) {
        this.mTakeAway = translation;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(52);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityOptionBinding
    public void setChooseYourOption(Translation translation) {
        this.mChooseYourOption = translation;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.noHandicap.setLifecycleOwner(lifecycleOwner);
        this.handicap.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return onChangeHandicap((OptionLayoutHandicapBinding) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return onChangeNoHandicap((OptionLayoutNohandicapBinding) obj, i2);
    }

    private boolean onChangeHandicap(OptionLayoutHandicapBinding optionLayoutHandicapBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeNoHandicap(OptionLayoutNohandicapBinding optionLayoutNohandicapBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Translation translation = this.mPickLater;
        KioskSetting kioskSetting = this.mKiosksetting;
        Translation translation2 = this.mDineIn;
        Translation translation3 = this.mSelectYourOption;
        Boolean bool = this.mHandicapOn;
        Translation translation4 = this.mTakeAway;
        Translation translation5 = this.mChooseYourOption;
        long j2 = j & 576;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 10240L : 5120L;
            }
            int i2 = zSafeUnbox ? 0 : 8;
            i = zSafeUnbox ? 8 : 0;
            i = i2;
        } else {
            i = 0;
        }
        long j3 = j & 640;
        long j4 = j & 768;
        if ((576 & j) != 0) {
            this.handicap.getRoot().setVisibility(i);
            this.noHandicap.getRoot().setVisibility(i);
        }
        if ((520 & j) != 0) {
            this.handicap.setKiosksetting(kioskSetting);
            this.noHandicap.setKiosksetting(kioskSetting);
        }
        if (j4 != 0) {
            this.handicap.setChooseYourOption(translation5);
            this.noHandicap.setChooseYourOption(translation5);
        }
        if (j3 != 0) {
            this.handicap.setTakeAway(translation4);
            this.noHandicap.setTakeAway(translation4);
        }
        if ((528 & j) != 0) {
            this.handicap.setDineIn(translation2);
            this.noHandicap.setDineIn(translation2);
        }
        if ((516 & j) != 0) {
            this.handicap.setPickLater(translation);
            this.noHandicap.setPickLater(translation);
        }
        if ((j & 544) != 0) {
            this.handicap.setSelectYourOption(translation3);
            this.noHandicap.setSelectYourOption(translation3);
        }
        executeBindingsOn(this.noHandicap);
        executeBindingsOn(this.handicap);
    }
}
