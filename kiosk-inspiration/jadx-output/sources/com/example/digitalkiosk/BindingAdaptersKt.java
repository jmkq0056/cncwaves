package com.example.digitalkiosk;

import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.databinding.BindingAdapter;
import coil.Coil;
import coil.request.ImageRequest;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BindingAdapters.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u001a\u001f\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\u000b\u001a\u001f\u0010\f\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\u000b¨\u0006\u000e"}, d2 = {"bindImage", "", "imgView", "Landroid/widget/ImageView;", "imgUrl", "", "setViewPagerHeight", "view", "Landroid/view/View;", PrinterTextParser.ATTR_BARCODE_HEIGHT, "", "(Landroid/view/View;Ljava/lang/Float;)V", "setViewPagerWidth", PrinterTextParser.ATTR_BARCODE_WIDTH, "app_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class BindingAdaptersKt {
    @BindingAdapter({"dynamicHeight"})
    public static final void setViewPagerHeight(View view, Float f) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(f);
        layoutParams.height = (int) f.floatValue();
        view.setLayoutParams(layoutParams);
    }

    @BindingAdapter({"dynamicWidth"})
    public static final void setViewPagerWidth(View view, Float f) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(f);
        layoutParams.width = (int) f.floatValue();
        view.setLayoutParams(layoutParams);
    }

    @BindingAdapter({"imageUrl"})
    public static final void bindImage(ImageView imgView, String str) {
        Intrinsics.checkNotNullParameter(imgView, "imgView");
        if (str != null) {
            Coil.imageLoader(imgView.getContext()).enqueue(new ImageRequest.Builder(imgView.getContext()).data(Uri.parse(str).buildUpon().scheme("https").build()).target(imgView).build());
        }
    }
}
