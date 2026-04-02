package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityOptionBinding extends ViewDataBinding {
    public final View exitbutton;
    public final OptionLayoutHandicapBinding handicap;

    @Bindable
    protected Translation mChooseYourOption;

    @Bindable
    protected Translation mDineIn;

    @Bindable
    protected Boolean mHandicapOn;

    @Bindable
    protected KioskSetting mKiosksetting;

    @Bindable
    protected Translation mPickLater;

    @Bindable
    protected Translation mSelectYourOption;

    @Bindable
    protected Translation mTakeAway;
    public final OptionLayoutNohandicapBinding noHandicap;

    public abstract void setChooseYourOption(Translation translation);

    public abstract void setDineIn(Translation translation);

    public abstract void setHandicapOn(Boolean bool);

    public abstract void setKiosksetting(KioskSetting kioskSetting);

    public abstract void setPickLater(Translation translation);

    public abstract void setSelectYourOption(Translation translation);

    public abstract void setTakeAway(Translation translation);

    protected ActivityOptionBinding(Object obj, View view, int i, View view2, OptionLayoutHandicapBinding optionLayoutHandicapBinding, OptionLayoutNohandicapBinding optionLayoutNohandicapBinding) {
        super(obj, view, i);
        this.exitbutton = view2;
        this.handicap = optionLayoutHandicapBinding;
        this.noHandicap = optionLayoutNohandicapBinding;
    }

    public Boolean getHandicapOn() {
        return this.mHandicapOn;
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

    public static ActivityOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityOptionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_option, viewGroup, z, obj);
    }

    public static ActivityOptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityOptionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityOptionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_option, null, false, obj);
    }

    public static ActivityOptionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityOptionBinding bind(View view, Object obj) {
        return (ActivityOptionBinding) bind(obj, view, R.layout.activity_option);
    }
}
