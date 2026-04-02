package com.example.digitalkiosk.adapters;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.CategoryAdapter;
import com.example.digitalkiosk.databinding.CategoryButtonBinding;
import com.example.digitalkiosk.models.Category;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CategoryAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u0010H\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/example/digitalkiosk/adapters/CategoryAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;", "categories", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Category;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;)V", "binding", "Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;", "lastPosition", "", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "setAnimation", "viewToAnimate", "Landroid/view/View;", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CategoryAdapter extends RecyclerView.Adapter<ViewHolder> {
    private CategoryButtonBinding binding;
    private final ArrayList<Category> categories;
    private final Context context;
    private int lastPosition;
    private OnClickListener onClickListener;

    /* JADX INFO: compiled from: CategoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;", "", "onClick", "", "model", "Lcom/example/digitalkiosk/models/Category;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(Category model);
    }

    public CategoryAdapter(ArrayList<Category> categories, Context context) {
        Intrinsics.checkNotNullParameter(categories, "categories");
        Intrinsics.checkNotNullParameter(context, "context");
        this.categories = categories;
        this.context = context;
        this.lastPosition = -1;
    }

    /* JADX INFO: compiled from: CategoryAdapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;", "<init>", "(Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;)V", "bind", "", "category", "Lcom/example/digitalkiosk/models/Category;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final CategoryButtonBinding mybinding;
        private final OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(CategoryButtonBinding mybinding, OnClickListener onClickListener) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            this.mybinding = mybinding;
            this.onClickListener = onClickListener;
        }

        public final void bind(final Category category) {
            Intrinsics.checkNotNullParameter(category, "category");
            this.mybinding.setCategory(category);
            this.mybinding.setSelectedCategory(Boolean.valueOf(category == ShopActivity.INSTANCE.getSelectedCategory()));
            this.mybinding.setHandicapOn(Boolean.valueOf(OptionActivity.INSTANCE.getHandicap_on()));
            this.mybinding.button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CategoryAdapter.ViewHolder.bind$lambda$0(this.f$0, category, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, Category category, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                Intrinsics.checkNotNull(onClickListener);
                onClickListener.onClick(category);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = CategoryButtonBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        CategoryButtonBinding categoryButtonBinding = this.binding;
        if (categoryButtonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            categoryButtonBinding = null;
        }
        return new ViewHolder(categoryButtonBinding, this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.categories.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Category category = this.categories.get(position);
        Intrinsics.checkNotNullExpressionValue(category, "get(...)");
        holder.bind(category);
        View itemView = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        setAnimation(itemView, position);
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }

    private final void setAnimation(View viewToAnimate, int position) {
        if (position > this.lastPosition) {
            viewToAnimate.startAnimation(AnimationUtils.loadAnimation(this.context, R.anim.slide_in_left));
            this.lastPosition = position;
        }
    }
}
