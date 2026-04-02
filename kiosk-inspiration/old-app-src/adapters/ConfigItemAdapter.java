package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.ConfigItemAdapter;
import com.example.digitalkiosk.databinding.ItemButtonBinding;
import com.example.digitalkiosk.models.CartItemSide;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.ItemToAdd;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfigItemAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB;\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\fH\u0016J\b\u0010\u0016\u001a\u00020\fH\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\fH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;", FirebaseAnalytics.Param.ITEMS, "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Item;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "onClickListener", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;", "sidePosition", "", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "binding", "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "getItemCount", "onBindViewHolder", "", "holder", "position", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConfigItemAdapter extends RecyclerView.Adapter<ViewHolder> {
    private ItemButtonBinding binding;
    private final Context context;
    private final ArrayList<Item> items;
    private final OnClickListener onClickListener;
    private final Integer sidePosition;

    /* JADX INFO: compiled from: ConfigItemAdapter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;", "", "onClick", "", "model", "Lcom/example/digitalkiosk/models/Item;", "position", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(Item model, int position);
    }

    public ConfigItemAdapter(ArrayList<Item> items, Context context, OnClickListener onClickListener, Integer num) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(context, "context");
        this.items = items;
        this.context = context;
        this.onClickListener = onClickListener;
        this.sidePosition = num;
    }

    /* JADX INFO: compiled from: ConfigItemAdapter.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;", "context", "Landroid/content/Context;", "onClickListener", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;", "sidePosition", "", "itemAdapter", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;", "<init>", "(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;)V", "Ljava/lang/Integer;", "bind", "", "item", "Lcom/example/digitalkiosk/models/Item;", "position", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final ConfigItemAdapter itemAdapter;
        private final ItemButtonBinding mybinding;
        private final OnClickListener onClickListener;
        private final Integer sidePosition;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(ItemButtonBinding mybinding, Context context, OnClickListener onClickListener, Integer num, ConfigItemAdapter itemAdapter) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(itemAdapter, "itemAdapter");
            this.mybinding = mybinding;
            this.context = context;
            this.onClickListener = onClickListener;
            this.sidePosition = num;
            this.itemAdapter = itemAdapter;
        }

        public final void bind(final Item item, final int position) {
            ArrayList<ArrayList<CartItemSide>> selected_sides;
            ArrayList<CartItemSide> arrayList;
            Intrinsics.checkNotNullParameter(item, "item");
            Context context = this.context;
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
            ShopActivity shopActivity = (ShopActivity) context;
            this.mybinding.setItem(item);
            this.mybinding.setDarkshade(Boolean.valueOf(position % 2 == 0));
            this.mybinding.setSelected(false);
            if (this.sidePosition == null) {
                this.mybinding.setSelected(false);
            } else {
                ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
                CartItemSide cartItemSide = null;
                Object obj = null;
                cartItemSide = null;
                cartItemSide = null;
                if (itemToAdd != null && (selected_sides = itemToAdd.getSelected_sides()) != null && (arrayList = selected_sides.get(this.sidePosition.intValue())) != null) {
                    Iterator<T> it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if (((CartItemSide) next).getId() == item.getId()) {
                            obj = next;
                            break;
                        }
                    }
                    cartItemSide = (CartItemSide) obj;
                }
                this.mybinding.setSelected(Boolean.valueOf(cartItemSide != null));
                this.mybinding.setCount(cartItemSide != null ? Integer.valueOf(cartItemSide.getQuantity()) : 0);
            }
            this.mybinding.setAmount(shopActivity.convertAmountToFormat(item.getPrice()));
            this.mybinding.setSoldOutTranslation(MainActivity.INSTANCE.get_term_translation("sold_out"));
            this.mybinding.button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.ConfigItemAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ConfigItemAdapter.ViewHolder.bind$lambda$1(this.f$0, item, position, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$1(ViewHolder viewHolder, Item item, int i, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(item, i);
                viewHolder.itemAdapter.notifyItemChanged(i);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = ItemButtonBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        ItemButtonBinding itemButtonBinding = this.binding;
        if (itemButtonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            itemButtonBinding = null;
        }
        return new ViewHolder(itemButtonBinding, this.context, this.onClickListener, this.sidePosition, this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Item item = this.items.get(position);
        Intrinsics.checkNotNullExpressionValue(item, "get(...)");
        holder.bind(item, position);
    }
}
