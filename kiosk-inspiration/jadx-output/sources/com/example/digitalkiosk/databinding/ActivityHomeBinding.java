package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.VideoView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Translation;
import me.relex.circleindicator.CircleIndicator3;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityHomeBinding extends ViewDataBinding {
    public final ViewPager2 bannerSlider;
    public final CircleIndicator3 indicators;

    @Bindable
    protected Boolean mLanguageLoaded;

    @Bindable
    protected String mLogoUrl;

    @Bindable
    protected Translation mTapText;
    public final AppCompatButton selectItems;
    public final VideoView video;

    public abstract void setLanguageLoaded(Boolean bool);

    public abstract void setLogoUrl(String str);

    public abstract void setTapText(Translation translation);

    protected ActivityHomeBinding(Object obj, View view, int i, ViewPager2 viewPager2, CircleIndicator3 circleIndicator3, AppCompatButton appCompatButton, VideoView videoView) {
        super(obj, view, i);
        this.bannerSlider = viewPager2;
        this.indicators = circleIndicator3;
        this.selectItems = appCompatButton;
        this.video = videoView;
    }

    public String getLogoUrl() {
        return this.mLogoUrl;
    }

    public Translation getTapText() {
        return this.mTapText;
    }

    public Boolean getLanguageLoaded() {
        return this.mLanguageLoaded;
    }

    public static ActivityHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityHomeBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_home, viewGroup, z, obj);
    }

    public static ActivityHomeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityHomeBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityHomeBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_home, null, false, obj);
    }

    public static ActivityHomeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityHomeBinding bind(View view, Object obj) {
        return (ActivityHomeBinding) bind(obj, view, R.layout.activity_home);
    }
}
