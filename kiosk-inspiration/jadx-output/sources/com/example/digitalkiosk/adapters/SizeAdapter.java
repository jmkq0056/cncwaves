package com.example.digitalkiosk.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.adapters.SizeAdapter;
import com.example.digitalkiosk.databinding.SizeButtonBinding;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Size;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SizeAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bB'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0013H\u0016J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/example/digitalkiosk/adapters/SizeAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;", "sizes", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Size;", "Lkotlin/collections/ArrayList;", "item", "Lcom/example/digitalkiosk/models/ItemDetails;", "<init>", "(Ljava/util/ArrayList;Lcom/example/digitalkiosk/models/ItemDetails;)V", "binding", "Lcom/example/digitalkiosk/databinding/SizeButtonBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SizeAdapter extends RecyclerView.Adapter<ViewHolder> {
    private SizeButtonBinding binding;
    private final ItemDetails item;
    private OnClickListener onClickListener;
    private final ArrayList<Size> sizes;

    /* JADX INFO: compiled from: SizeAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;", "", "onClick", "", "slug", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(String slug);
    }

    public SizeAdapter(ArrayList<Size> sizes, ItemDetails item) {
        Intrinsics.checkNotNullParameter(sizes, "sizes");
        Intrinsics.checkNotNullParameter(item, "item");
        this.sizes = sizes;
        this.item = item;
    }

    /* JADX INFO: compiled from: SizeAdapter.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/SizeButtonBinding;", "item", "Lcom/example/digitalkiosk/models/ItemDetails;", "onClickListener", "Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;", "<init>", "(Lcom/example/digitalkiosk/databinding/SizeButtonBinding;Lcom/example/digitalkiosk/models/ItemDetails;Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;)V", "bind", "", "size", "Lcom/example/digitalkiosk/models/Size;", "count", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final ItemDetails item;
        private final SizeButtonBinding mybinding;
        private final OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(SizeButtonBinding mybinding, ItemDetails item, OnClickListener onClickListener) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            Intrinsics.checkNotNullParameter(item, "item");
            this.mybinding = mybinding;
            this.item = item;
            this.onClickListener = onClickListener;
        }

        public final void bind(final Size size, int count) {
            Intrinsics.checkNotNullParameter(size, "size");
            this.mybinding.setItem(this.item);
            this.mybinding.setSize(size);
            this.mybinding.setHandicapOn(Boolean.valueOf(OptionActivity.INSTANCE.getHandicap_on()));
            if (OptionActivity.INSTANCE.getHandicap_on()) {
                this.mybinding.sizeName.setTextSize(30.0f);
                this.mybinding.itemName.setTextSize(24.0f);
                this.mybinding.sizePrice.setTextSize(20.0f);
            }
            this.mybinding.button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.SizeAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SizeAdapter.ViewHolder.bind$lambda$0(this.f$0, size, view);
                }
            });
            this.mybinding.setDoubleSize(Boolean.valueOf(count == 2));
            this.mybinding.setTrippleSize(Boolean.valueOf(count == 1));
            this.mybinding.setIsXl(Boolean.valueOf(Intrinsics.areEqual(size.getSlug(), "xl")));
            this.mybinding.setIsLarge(Boolean.valueOf(Intrinsics.areEqual(size.getSlug(), "large")));
            this.mybinding.setIsMedium(Boolean.valueOf(Intrinsics.areEqual(size.getSlug(), FirebaseAnalytics.Param.MEDIUM)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, Size size, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(size.getSlug());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = SizeButtonBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        SizeButtonBinding sizeButtonBinding = this.binding;
        if (sizeButtonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            sizeButtonBinding = null;
        }
        return new ViewHolder(sizeButtonBinding, this.item, this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.sizes.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Size size = this.sizes.get(position);
        Intrinsics.checkNotNullExpressionValue(size, "get(...)");
        holder.bind(size, getItemCount());
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }
}
