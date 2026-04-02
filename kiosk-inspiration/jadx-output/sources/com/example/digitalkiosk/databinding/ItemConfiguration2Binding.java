package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Translation;
import me.relex.circleindicator.CircleIndicator3;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemConfiguration2Binding extends ViewDataBinding {
    public final AppCompatButton cancelButton;

    @Bindable
    protected Translation mCancelButtonText;

    @Bindable
    protected String mConfigTitle;

    @Bindable
    protected String mDescriptionText;

    @Bindable
    protected Boolean mDrinksAvailable;

    @Bindable
    protected Translation mDrinksTabTitle;

    @Bindable
    protected Boolean mHandicapOn;

    @Bindable
    protected ItemDetails mItem;

    @Bindable
    protected Translation mNextButtonText;

    @Bindable
    protected Boolean mSidesAvailable;

    @Bindable
    protected Translation mSidesTabTitle;

    @Bindable
    protected Translation mSizeTabTitle;

    @Bindable
    protected Integer mTabPosition;
    public final RelativeLayout mandatoryWarning;
    public final AppCompatButton nextButton;
    public final CircleIndicator3 sideIndicators;
    public final LinearLayout sideIndicatorsWrap;
    public final ViewPager2 sideItems;
    public final RelativeLayout sideNext;
    public final RelativeLayout sidePrevious;
    public final LinearLayout sidesLayout;
    public final RecyclerView sizesDisplay;
    public final RelativeLayout sizesLayout;
    public final LinearLayout steps;
    public final TextView warningMax;
    public final TextView warningMin;
    public final TextView warningSelect;

    public abstract void setCancelButtonText(Translation translation);

    public abstract void setConfigTitle(String str);

    public abstract void setDescriptionText(String str);

    public abstract void setDrinksAvailable(Boolean bool);

    public abstract void setDrinksTabTitle(Translation translation);

    public abstract void setHandicapOn(Boolean bool);

    public abstract void setItem(ItemDetails itemDetails);

    public abstract void setNextButtonText(Translation translation);

    public abstract void setSidesAvailable(Boolean bool);

    public abstract void setSidesTabTitle(Translation translation);

    public abstract void setSizeTabTitle(Translation translation);

    public abstract void setTabPosition(Integer num);

    protected ItemConfiguration2Binding(Object obj, View view, int i, AppCompatButton appCompatButton, RelativeLayout relativeLayout, AppCompatButton appCompatButton2, CircleIndicator3 circleIndicator3, LinearLayout linearLayout, ViewPager2 viewPager2, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, LinearLayout linearLayout2, RecyclerView recyclerView, RelativeLayout relativeLayout4, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.cancelButton = appCompatButton;
        this.mandatoryWarning = relativeLayout;
        this.nextButton = appCompatButton2;
        this.sideIndicators = circleIndicator3;
        this.sideIndicatorsWrap = linearLayout;
        this.sideItems = viewPager2;
        this.sideNext = relativeLayout2;
        this.sidePrevious = relativeLayout3;
        this.sidesLayout = linearLayout2;
        this.sizesDisplay = recyclerView;
        this.sizesLayout = relativeLayout4;
        this.steps = linearLayout3;
        this.warningMax = textView;
        this.warningMin = textView2;
        this.warningSelect = textView3;
    }

    public ItemDetails getItem() {
        return this.mItem;
    }

    public Translation getNextButtonText() {
        return this.mNextButtonText;
    }

    public Translation getCancelButtonText() {
        return this.mCancelButtonText;
    }

    public Integer getTabPosition() {
        return this.mTabPosition;
    }

    public Boolean getSidesAvailable() {
        return this.mSidesAvailable;
    }

    public Boolean getDrinksAvailable() {
        return this.mDrinksAvailable;
    }

    public String getConfigTitle() {
        return this.mConfigTitle;
    }

    public Translation getSidesTabTitle() {
        return this.mSidesTabTitle;
    }

    public Translation getDrinksTabTitle() {
        return this.mDrinksTabTitle;
    }

    public Translation getSizeTabTitle() {
        return this.mSizeTabTitle;
    }

    public Boolean getHandicapOn() {
        return this.mHandicapOn;
    }

    public String getDescriptionText() {
        return this.mDescriptionText;
    }

    public static ItemConfiguration2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfiguration2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ItemConfiguration2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_configuration_2, viewGroup, z, obj);
    }

    public static ItemConfiguration2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfiguration2Binding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ItemConfiguration2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_configuration_2, null, false, obj);
    }

    public static ItemConfiguration2Binding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfiguration2Binding bind(View view, Object obj) {
        return (ItemConfiguration2Binding) bind(obj, view, R.layout.item_configuration_2);
    }
}
