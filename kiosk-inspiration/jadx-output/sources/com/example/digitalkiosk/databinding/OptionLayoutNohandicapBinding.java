package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public abstract class OptionLayoutNohandicapBinding extends ViewDataBinding {
    public final LinearLayout dineInButton;
    public final LinearLayout handicapButton;
    public final LinearLayout languages;

    @Bindable
    protected Translation mChooseYourOption;

    @Bindable
    protected Translation mDineIn;

    @Bindable
    protected KioskSetting mKiosksetting;

    @Bindable
    protected Translation mPickLater;

    @Bindable
    protected Translation mSelectYourOption;

    @Bindable
    protected Translation mTakeAway;
    public final LinearLayout pickUpButton;
    public final LinearLayout takeAwayButton;

    public abstract void setChooseYourOption(Translation translation);

    public abstract void setDineIn(Translation translation);

    public abstract void setKiosksetting(KioskSetting kioskSetting);

    public abstract void setPickLater(Translation translation);

    public abstract void setSelectYourOption(Translation translation);

    public abstract void setTakeAway(Translation translation);

    protected OptionLayoutNohandicapBinding(Object obj, View view, int i, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5) {
        super(obj, view, i);
        this.dineInButton = linearLayout;
        this.handicapButton = linearLayout2;
        this.languages = linearLayout3;
        this.pickUpButton = linearLayout4;
        this.takeAwayButton = linearLayout5;
    }

    public KioskSetting getKiosksetting() {
        return this.mKiosksetting;
    }

    public Translation getChooseYourOption() {
        return this.mChooseYourOption;
    }

    public Translation getTakeAway() {
        return this.mTakeAway;
    }

    public Translation getDineIn() {
        return this.mDineIn;
    }

    public Translation getPickLater() {
        return this.mPickLater;
    }

    public Translation getSelectYourOption() {
        return this.mSelectYourOption;
    }

    public static OptionLayoutNohandicapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static OptionLayoutNohandicapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (OptionLayoutNohandicapBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.option_layout_nohandicap, viewGroup, z, obj);
    }

    public static OptionLayoutNohandicapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static OptionLayoutNohandicapBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (OptionLayoutNohandicapBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.option_layout_nohandicap, null, false, obj);
    }

    public static OptionLayoutNohandicapBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static OptionLayoutNohandicapBinding bind(View view, Object obj) {
        return (OptionLayoutNohandicapBinding) bind(obj, view, R.layout.option_layout_nohandicap);
    }
}
