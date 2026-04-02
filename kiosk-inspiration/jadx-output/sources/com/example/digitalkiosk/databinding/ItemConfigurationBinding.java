package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemConfigurationBinding extends ViewDataBinding {
    public final AppCompatButton cancelButton;
    public final RecyclerView extras;
    public final RecyclerView extrasHandicap;
    public final NestedScrollView extrasHandicapScroll;
    public final NestedScrollView extrasScroll;
    public final TextView handicapRemoveTitle;
    public final RecyclerView ingredients;
    public final RecyclerView ingredientsHandicap;

    @Bindable
    protected String mAmount;

    @Bindable
    protected Translation mCancelButtonText;

    @Bindable
    protected Boolean mHandicapOn;

    @Bindable
    protected ItemDetails mItem;

    @Bindable
    protected Translation mNextButtonText;
    public final AppCompatButton nextButton;
    public final LinearLayout removeItems;
    public final LinearLayout removeItemsIngredients;
    public final TextView removeTitle;
    public final AppCompatButton yourway;
    public final ImageView yourwayHand;
    public final AppCompatButton yourwayHandicap;
    public final ImageView yourwayHandicapHand;

    public abstract void setAmount(String str);

    public abstract void setCancelButtonText(Translation translation);

    public abstract void setHandicapOn(Boolean bool);

    public abstract void setItem(ItemDetails itemDetails);

    public abstract void setNextButtonText(Translation translation);

    protected ItemConfigurationBinding(Object obj, View view, int i, AppCompatButton appCompatButton, RecyclerView recyclerView, RecyclerView recyclerView2, NestedScrollView nestedScrollView, NestedScrollView nestedScrollView2, TextView textView, RecyclerView recyclerView3, RecyclerView recyclerView4, AppCompatButton appCompatButton2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView2, AppCompatButton appCompatButton3, ImageView imageView, AppCompatButton appCompatButton4, ImageView imageView2) {
        super(obj, view, i);
        this.cancelButton = appCompatButton;
        this.extras = recyclerView;
        this.extrasHandicap = recyclerView2;
        this.extrasHandicapScroll = nestedScrollView;
        this.extrasScroll = nestedScrollView2;
        this.handicapRemoveTitle = textView;
        this.ingredients = recyclerView3;
        this.ingredientsHandicap = recyclerView4;
        this.nextButton = appCompatButton2;
        this.removeItems = linearLayout;
        this.removeItemsIngredients = linearLayout2;
        this.removeTitle = textView2;
        this.yourway = appCompatButton3;
        this.yourwayHand = imageView;
        this.yourwayHandicap = appCompatButton4;
        this.yourwayHandicapHand = imageView2;
    }

    public ItemDetails getItem() {
        return this.mItem;
    }

    public String getAmount() {
        return this.mAmount;
    }

    public Translation getNextButtonText() {
        return this.mNextButtonText;
    }

    public Translation getCancelButtonText() {
        return this.mCancelButtonText;
    }

    public Boolean getHandicapOn() {
        return this.mHandicapOn;
    }

    public static ItemConfigurationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfigurationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ItemConfigurationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_configuration, viewGroup, z, obj);
    }

    public static ItemConfigurationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfigurationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ItemConfigurationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_configuration, null, false, obj);
    }

    public static ItemConfigurationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfigurationBinding bind(View view, Object obj) {
        return (ItemConfigurationBinding) bind(obj, view, R.layout.item_configuration);
    }
}
