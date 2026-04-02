package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public class OptionLayoutNohandicapBindingImpl extends OptionLayoutNohandicapBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final ImageView mboundView1;
    private final LinearLayout mboundView10;
    private final TextView mboundView11;
    private final TextView mboundView12;
    private final TextView mboundView2;
    private final LinearLayout mboundView3;
    private final TextView mboundView4;
    private final Space mboundView5;
    private final Space mboundView6;
    private final LinearLayout mboundView7;
    private final TextView mboundView8;
    private final Space mboundView9;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.takeAwayButton, 13);
        sparseIntArray.put(R.id.dineInButton, 14);
        sparseIntArray.put(R.id.pickUpButton, 15);
        sparseIntArray.put(R.id.languages, 16);
        sparseIntArray.put(R.id.handicapButton, 17);
    }

    public OptionLayoutNohandicapBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 18, sIncludes, sViewsWithIds));
    }

    private OptionLayoutNohandicapBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[14], (LinearLayout) objArr[17], (LinearLayout) objArr[16], (LinearLayout) objArr[15], (LinearLayout) objArr[13]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.mboundView1 = imageView;
        imageView.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[10];
        this.mboundView10 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[11];
        this.mboundView11 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[12];
        this.mboundView12 = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[2];
        this.mboundView2 = textView3;
        textView3.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[3];
        this.mboundView3 = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView4 = (TextView) objArr[4];
        this.mboundView4 = textView4;
        textView4.setTag(null);
        Space space = (Space) objArr[5];
        this.mboundView5 = space;
        space.setTag(null);
        Space space2 = (Space) objArr[6];
        this.mboundView6 = space2;
        space2.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[7];
        this.mboundView7 = linearLayout3;
        linearLayout3.setTag(null);
        TextView textView5 = (TextView) objArr[8];
        this.mboundView8 = textView5;
        textView5.setTag(null);
        Space space3 = (Space) objArr[9];
        this.mboundView9 = space3;
        space3.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64L;
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
        if (39 == i) {
            setSelectYourOption((Translation) obj);
            return true;
        }
        if (6 == i) {
            setChooseYourOption((Translation) obj);
            return true;
        }
        if (29 == i) {
            setKiosksetting((KioskSetting) obj);
            return true;
        }
        if (36 == i) {
            setPickLater((Translation) obj);
            return true;
        }
        if (14 == i) {
            setDineIn((Translation) obj);
            return true;
        }
        if (51 != i) {
            return false;
        }
        setTakeAway((Translation) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.OptionLayoutNohandicapBinding
    public void setSelectYourOption(Translation translation) {
        this.mSelectYourOption = translation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(39);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.OptionLayoutNohandicapBinding
    public void setChooseYourOption(Translation translation) {
        this.mChooseYourOption = translation;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.OptionLayoutNohandicapBinding
    public void setKiosksetting(KioskSetting kioskSetting) {
        this.mKiosksetting = kioskSetting;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.OptionLayoutNohandicapBinding
    public void setPickLater(Translation translation) {
        this.mPickLater = translation;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(36);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.OptionLayoutNohandicapBinding
    public void setDineIn(Translation translation) {
        this.mDineIn = translation;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.OptionLayoutNohandicapBinding
    public void setTakeAway(Translation translation) {
        this.mTakeAway = translation;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(51);
        super.requestRebind();
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:223:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void executeBindings() {
        /*
            Method dump skipped, instruction units count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.databinding.OptionLayoutNohandicapBindingImpl.executeBindings():void");
    }
}
