package com.denzcoskun.imageslider.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.PagerAdapter;
import com.denzcoskun.imageslider.constants.ScaleTypes;
import com.denzcoskun.imageslider.interfaces.ItemClickListener;
import com.denzcoskun.imageslider.interfaces.TouchListener;
import com.denzcoskun.imageslider.models.SlideModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewPagerAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001BM\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0002\u0010\u000fBW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0002\u0010\u0012J \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\bH\u0016J\u000e\u0010$\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u0018\u0010%\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\bH\u0016J\u0018\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020\"H\u0016J\u000e\u0010+\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010,\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;", "Landroidx/viewpager/widget/PagerAdapter;", "context", "Landroid/content/Context;", "imageList", "", "Lcom/denzcoskun/imageslider/models/SlideModel;", "radius", "", "errorImage", "placeholder", "titleBackground", "textAlign", "", "textColor", "(Landroid/content/Context;Ljava/util/List;IIIILjava/lang/String;Ljava/lang/String;)V", "scaleType", "Lcom/denzcoskun/imageslider/constants/ScaleTypes;", "(Landroid/content/Context;Ljava/util/List;IIIILcom/denzcoskun/imageslider/constants/ScaleTypes;Ljava/lang/String;Ljava/lang/String;)V", "currentTouchTime", "", "itemClickListener", "Lcom/denzcoskun/imageslider/interfaces/ItemClickListener;", "lastTouchTime", "layoutInflater", "Landroid/view/LayoutInflater;", "touchListener", "Lcom/denzcoskun/imageslider/interfaces/TouchListener;", "destroyItem", "", "container", "Landroid/view/ViewGroup;", "position", "object", "", "getCount", "getGravityFromAlign", "instantiateItem", "Landroid/view/View;", "isViewFromObject", "", "view", "obj", "setItemClickListener", "setTouchListener", "imageslider_release"}, k = 1, mv = {1, 1, 16})
public final class ViewPagerAdapter extends PagerAdapter {
    private long currentTouchTime;
    private int errorImage;
    private List<SlideModel> imageList;
    private ItemClickListener itemClickListener;
    private long lastTouchTime;
    private LayoutInflater layoutInflater;
    private int placeholder;
    private int radius;
    private ScaleTypes scaleType;
    private String textAlign;
    private String textColor;
    private int titleBackground;
    private TouchListener touchListener;

    public ViewPagerAdapter(Context context, List<SlideModel> imageList, int i, int i2, int i3, int i4, ScaleTypes scaleTypes, String textAlign, String textColor) {
        Intrinsics.checkParameterIsNotNull(imageList, "imageList");
        Intrinsics.checkParameterIsNotNull(textAlign, "textAlign");
        Intrinsics.checkParameterIsNotNull(textColor, "textColor");
        this.radius = i;
        this.errorImage = i2;
        this.placeholder = i3;
        this.titleBackground = i4;
        this.scaleType = scaleTypes;
        this.textAlign = textAlign;
        this.textColor = textColor;
        this.imageList = imageList;
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewPagerAdapter(Context context, List<SlideModel> imageList, int i, int i2, int i3, int i4, String textAlign, String textColor) {
        this(context, imageList, i, i2, i3, i4, null, textAlign, textColor);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(imageList, "imageList");
        Intrinsics.checkParameterIsNotNull(textAlign, "textAlign");
        Intrinsics.checkParameterIsNotNull(textColor, "textColor");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        return Intrinsics.areEqual(view, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<SlideModel> list = this.imageList;
        if (list == null) {
            Intrinsics.throwNpe();
        }
        return list.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0141  */
    @Override // androidx.viewpager.widget.PagerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View instantiateItem(android.view.ViewGroup r12, final int r13) {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.denzcoskun.imageslider.adapters.ViewPagerAdapter.instantiateItem(android.view.ViewGroup, int):android.view.View");
    }

    public final int getGravityFromAlign(String textAlign) {
        Intrinsics.checkParameterIsNotNull(textAlign, "textAlign");
        int iHashCode = textAlign.hashCode();
        return iHashCode != 77974012 ? (iHashCode == 1984282709 && textAlign.equals("CENTER")) ? 17 : 3 : textAlign.equals("RIGHT") ? 5 : 3;
    }

    public final void setItemClickListener(ItemClickListener itemClickListener) {
        Intrinsics.checkParameterIsNotNull(itemClickListener, "itemClickListener");
        this.itemClickListener = itemClickListener;
    }

    public final void setTouchListener(TouchListener touchListener) {
        Intrinsics.checkParameterIsNotNull(touchListener, "touchListener");
        this.touchListener = touchListener;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(object, "object");
        container.removeView((RelativeLayout) object);
    }
}
