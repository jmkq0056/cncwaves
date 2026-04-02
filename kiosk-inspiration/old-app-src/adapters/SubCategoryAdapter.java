package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.SubCategoryAdapter;
import com.example.digitalkiosk.databinding.SubcategoryButtonBinding;
import com.example.digitalkiosk.models.Category;
import com.example.digitalkiosk.models.Translation;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubCategoryAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B\u001f\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\fR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/example/digitalkiosk/adapters/SubCategoryAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;", "categories", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Category;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/util/ArrayList;)V", "binding", "Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SubCategoryAdapter extends RecyclerView.Adapter<ViewHolder> {
    private SubcategoryButtonBinding binding;
    private final ArrayList<Category> categories;
    private OnClickListener onClickListener;

    /* JADX INFO: compiled from: SubCategoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;", "", "onClick", "", "model", "Lcom/example/digitalkiosk/models/Category;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(Category model);
    }

    public SubCategoryAdapter(ArrayList<Category> categories) {
        Intrinsics.checkNotNullParameter(categories, "categories");
        this.categories = categories;
    }

    /* JADX INFO: compiled from: SubCategoryAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;", "context", "Landroid/content/Context;", "<init>", "(Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;Landroid/content/Context;)V", "bind", "", "category", "Lcom/example/digitalkiosk/models/Category;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final SubcategoryButtonBinding mybinding;
        private final OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(SubcategoryButtonBinding mybinding, OnClickListener onClickListener, Context context) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            Intrinsics.checkNotNullParameter(context, "context");
            this.mybinding = mybinding;
            this.onClickListener = onClickListener;
            this.context = context;
        }

        public final void bind(final Category category) {
            Category category2;
            String translation;
            Translation translation2 = MainActivity.INSTANCE.get_term_translation("show_all_categories");
            SubcategoryButtonBinding subcategoryButtonBinding = this.mybinding;
            if (category == null) {
                if (translation2 == null || (translation = translation2.getTranslation()) == null) {
                    translation = "Show All";
                }
                category2 = new Category(0, "", translation);
            } else {
                category2 = category;
            }
            subcategoryButtonBinding.setCategory(category2);
            this.mybinding.setSelectedCategory(Boolean.valueOf(category == ShopActivity.INSTANCE.getSelectedSubCategory()));
            this.mybinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.SubCategoryAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubCategoryAdapter.ViewHolder.bind$lambda$0(this.f$0, category, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, Category category, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(category);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = SubcategoryButtonBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        SubcategoryButtonBinding subcategoryButtonBinding = this.binding;
        if (subcategoryButtonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            subcategoryButtonBinding = null;
        }
        OnClickListener onClickListener = this.onClickListener;
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return new ViewHolder(subcategoryButtonBinding, onClickListener, context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.categories.size() > 0) {
            return this.categories.size() + 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.bind(position != 0 ? this.categories.get(position - 1) : null);
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }
}
