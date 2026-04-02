package com.example.digitalkiosk.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.adapters.InnerBannerAdapter;
import com.example.digitalkiosk.databinding.InnerBannerBinding;
import com.example.digitalkiosk.models.BannerSlide;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InnerBannerAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B\u001f\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\nR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/example/digitalkiosk/adapters/InnerBannerAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;", "slides", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/BannerSlide;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/util/ArrayList;)V", "onClickListener", "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InnerBannerAdapter extends RecyclerView.Adapter<ViewHolder> {
    private OnClickListener onClickListener;
    private final ArrayList<BannerSlide> slides;

    /* JADX INFO: compiled from: InnerBannerAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;", "", "onClick", "", "category", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(int category);
    }

    public InnerBannerAdapter(ArrayList<BannerSlide> slides) {
        Intrinsics.checkNotNullParameter(slides, "slides");
        this.slides = slides;
    }

    /* JADX INFO: compiled from: InnerBannerAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/InnerBannerBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;", "<init>", "(Lcom/example/digitalkiosk/databinding/InnerBannerBinding;Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;)V", "bind", "", "slide", "Lcom/example/digitalkiosk/models/BannerSlide;", "position", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final InnerBannerBinding mybinding;
        private final OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(InnerBannerBinding mybinding, OnClickListener onClickListener) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            this.mybinding = mybinding;
            this.onClickListener = onClickListener;
        }

        public final void bind(final BannerSlide slide, int position) {
            Intrinsics.checkNotNullParameter(slide, "slide");
            this.mybinding.setImage(slide.getImage());
            this.mybinding.imageContainer.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.InnerBannerAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InnerBannerAdapter.ViewHolder.bind$lambda$0(this.f$0, slide, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, BannerSlide bannerSlide, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(bannerSlide.getCategory());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        InnerBannerBinding innerBannerBindingInflate = InnerBannerBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(innerBannerBindingInflate, "inflate(...)");
        return new ViewHolder(innerBannerBindingInflate, this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.slides.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        BannerSlide bannerSlide = this.slides.get(position);
        Intrinsics.checkNotNullExpressionValue(bannerSlide, "get(...)");
        holder.bind(bannerSlide, position);
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }
}
