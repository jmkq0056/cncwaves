package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Translation;
import okhttp3.internal.http2.Http2Stream;

/* JADX INFO: loaded from: classes.dex */
public class ItemConfigurationBindingImpl extends ItemConfigurationBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;
    private final LinearLayout mboundView1;
    private final TextView mboundView10;
    private final ImageView mboundView2;
    private final TextView mboundView3;
    private final TextView mboundView4;
    private final TextView mboundView5;
    private final LinearLayout mboundView6;
    private final ImageView mboundView7;
    private final TextView mboundView8;
    private final TextView mboundView9;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.yourway, 13);
        sparseIntArray.put(R.id.yourway_hand, 14);
        sparseIntArray.put(R.id.extras_scroll, 15);
        sparseIntArray.put(R.id.extras, 16);
        sparseIntArray.put(R.id.remove_items, 17);
        sparseIntArray.put(R.id.remove_title, 18);
        sparseIntArray.put(R.id.ingredients, 19);
        sparseIntArray.put(R.id.yourway_handicap, 20);
        sparseIntArray.put(R.id.yourway_handicap_hand, 21);
        sparseIntArray.put(R.id.extras_handicap_scroll, 22);
        sparseIntArray.put(R.id.extras_handicap, 23);
        sparseIntArray.put(R.id.remove_items_ingredients, 24);
        sparseIntArray.put(R.id.handicap_remove_title, 25);
        sparseIntArray.put(R.id.ingredients_handicap, 26);
    }

    public ItemConfigurationBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 27, sIncludes, sViewsWithIds));
    }

    private ItemConfigurationBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatButton) objArr[11], (RecyclerView) objArr[16], (RecyclerView) objArr[23], (NestedScrollView) objArr[22], (NestedScrollView) objArr[15], (TextView) objArr[25], (RecyclerView) objArr[19], (RecyclerView) objArr[26], (AppCompatButton) objArr[12], (LinearLayout) objArr[17], (LinearLayout) objArr[24], (TextView) objArr[18], (AppCompatButton) objArr[13], (ImageView) objArr[14], (AppCompatButton) objArr[20], (ImageView) objArr[21]);
        this.mDirtyFlags = -1L;
        this.cancelButton.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[1];
        this.mboundView1 = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView = (TextView) objArr[10];
        this.mboundView10 = textView;
        textView.setTag(null);
        ImageView imageView = (ImageView) objArr[2];
        this.mboundView2 = imageView;
        imageView.setTag(null);
        TextView textView2 = (TextView) objArr[3];
        this.mboundView3 = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[4];
        this.mboundView4 = textView3;
        textView3.setTag(null);
        TextView textView4 = (TextView) objArr[5];
        this.mboundView5 = textView4;
        textView4.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[6];
        this.mboundView6 = linearLayout3;
        linearLayout3.setTag(null);
        ImageView imageView2 = (ImageView) objArr[7];
        this.mboundView7 = imageView2;
        imageView2.setTag(null);
        TextView textView5 = (TextView) objArr[8];
        this.mboundView8 = textView5;
        textView5.setTag(null);
        TextView textView6 = (TextView) objArr[9];
        this.mboundView9 = textView6;
        textView6.setTag(null);
        this.nextButton.setTag(null);
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
        if (27 == i) {
            setItem((ItemDetails) obj);
            return true;
        }
        if (2 == i) {
            setAmount((String) obj);
            return true;
        }
        if (34 == i) {
            setNextButtonText((Translation) obj);
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

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationBinding
    public void setItem(ItemDetails itemDetails) {
        this.mItem = itemDetails;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationBinding
    public void setAmount(String str) {
        this.mAmount = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationBinding
    public void setNextButtonText(Translation translation) {
        this.mNextButtonText = translation;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(34);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationBinding
    public void setCancelButtonText(Translation translation) {
        this.mCancelButtonText = translation;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemConfigurationBinding
    public void setHandicapOn(Boolean bool) {
        this.mHandicapOn = bool;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        long j2;
        String name;
        String str;
        String str2;
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        long j3;
        String description;
        String image;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        ItemDetails itemDetails = this.mItem;
        String str3 = this.mAmount;
        Translation translation = this.mNextButtonText;
        Translation translation2 = this.mCancelButtonText;
        Boolean bool = this.mHandicapOn;
        long j4 = j & 33;
        String str4 = null;
        int i3 = 0;
        if (j4 != 0) {
            if (itemDetails != null) {
                description = itemDetails.getDescription();
                image = itemDetails.getImage();
                name = itemDetails.getName();
            } else {
                name = null;
                description = null;
                image = null;
            }
            z = description == null;
            if (j4 != 0) {
                j = z ? j | 512 : j | 256;
            }
            str2 = description;
            str = image;
            j2 = 0;
        } else {
            j2 = 0;
            name = null;
            str = null;
            str2 = null;
            z = false;
        }
        long j5 = j & 36;
        if (j5 != j2) {
            z2 = translation != null;
            if (j5 != j2) {
                j = z2 ? j | 32768 : j | Http2Stream.EMIT_BUFFER_SIZE;
            }
        } else {
            z2 = false;
        }
        long j6 = j & 40;
        if (j6 != j2) {
            z3 = translation2 != null;
            if (j6 != j2) {
                j = z3 ? j | 131072 : j | 65536;
            }
        } else {
            z3 = false;
        }
        long j7 = j & 48;
        if (j7 != j2) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j7 != j2) {
                j |= zSafeUnbox ? 2176L : 1088L;
            }
            i = zSafeUnbox ? 0 : 8;
            i2 = zSafeUnbox ? 8 : 0;
        } else {
            i = 0;
            i2 = 0;
        }
        String translation3 = ((j & 32768) == j2 || translation == null) ? null : translation.getTranslation();
        String translation4 = ((j & 131072) == j2 || translation2 == null) ? null : translation2.getTranslation();
        boolean zIsEmpty = ((256 & j) == j2 || str2 == null) ? false : str2.isEmpty();
        long j8 = j & 33;
        if (j8 != j2) {
            boolean z4 = z ? true : zIsEmpty;
            if (j8 != j2) {
                j |= z4 ? 8192L : 4096L;
            }
            if (z4) {
                i3 = 8;
            }
        }
        int i4 = i3;
        long j9 = j & 36;
        if (j9 == j2) {
            translation3 = null;
        } else if (!z2) {
            translation3 = this.nextButton.getResources().getString(R.string.first_popup_next);
        }
        long j10 = j & 40;
        if (j10 != j2) {
            if (z3) {
                j3 = 33;
            } else {
                j3 = 33;
                translation4 = this.cancelButton.getResources().getString(R.string.first_popup_cancel);
            }
            str4 = translation4;
        } else {
            j3 = 33;
        }
        String str5 = str4;
        if (j10 != j2) {
            TextViewBindingAdapter.setText(this.cancelButton, str5);
        }
        if ((j & 48) != j2) {
            this.mboundView1.setVisibility(i2);
            this.mboundView6.setVisibility(i);
        }
        if ((j & j3) != j2) {
            this.mboundView10.setVisibility(i4);
            TextViewBindingAdapter.setText(this.mboundView10, str2);
            BindingAdaptersKt.bindImage(this.mboundView2, str);
            TextViewBindingAdapter.setText(this.mboundView3, name);
            this.mboundView5.setVisibility(i4);
            TextViewBindingAdapter.setText(this.mboundView5, str2);
            BindingAdaptersKt.bindImage(this.mboundView7, str);
            TextViewBindingAdapter.setText(this.mboundView8, name);
        }
        if ((j & 34) != j2) {
            TextViewBindingAdapter.setText(this.mboundView4, str3);
            TextViewBindingAdapter.setText(this.mboundView9, str3);
        }
        if (j9 != j2) {
            TextViewBindingAdapter.setText(this.nextButton, translation3);
        }
    }
}
