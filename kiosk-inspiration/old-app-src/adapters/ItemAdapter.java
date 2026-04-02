package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.ItemAdapter;
import com.example.digitalkiosk.databinding.ItemButtonBinding;
import com.example.digitalkiosk.models.Currency;
import com.example.digitalkiosk.models.Item;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: ItemAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eB/\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0010H\u0016J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/example/digitalkiosk/adapters/ItemAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;", FirebaseAnalytics.Param.ITEMS, "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Item;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "fm", "Landroidx/fragment/app/FragmentManager;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V", "binding", "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;", "lastPosition", "", "onClickListener", "Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ItemAdapter extends RecyclerView.Adapter<ViewHolder> {
    private ItemButtonBinding binding;
    private final Context context;
    private final FragmentManager fm;
    private final ArrayList<Item> items;
    private int lastPosition;
    private OnClickListener onClickListener;

    /* JADX INFO: compiled from: ItemAdapter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;", "", "onClick", "", "model", "Lcom/example/digitalkiosk/models/Item;", "image", "Landroid/view/View;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(Item model, View image);
    }

    public ItemAdapter(ArrayList<Item> items, Context context, FragmentManager fm) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fm, "fm");
        this.items = items;
        this.context = context;
        this.fm = fm;
        this.lastPosition = -1;
    }

    /* JADX INFO: compiled from: ItemAdapter.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;", "context", "Landroid/content/Context;", "fm", "Landroidx/fragment/app/FragmentManager;", "onClickListener", "Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;", "<init>", "(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;)V", "bind", "", "item", "Lcom/example/digitalkiosk/models/Item;", "position", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final FragmentManager fm;
        private final ItemButtonBinding mybinding;
        private final OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(ItemButtonBinding mybinding, Context context, FragmentManager fm, OnClickListener onClickListener) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(fm, "fm");
            this.mybinding = mybinding;
            this.context = context;
            this.fm = fm;
            this.onClickListener = onClickListener;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final void bind(final Item item, int position) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.mybinding.setItem(item);
            this.mybinding.setDarkshade(Boolean.valueOf(position % 2 == 0));
            float price = item.getPrice();
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(price)}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            if (ShopActivity.INSTANCE.getCurrency() != null) {
                Currency currency = ShopActivity.INSTANCE.getCurrency();
                String strReplace$default = Intrinsics.areEqual(currency != null ? currency.getFormat() : null, "comma") ? StringsKt.replace$default(str, ".", ",", false, 4, (Object) null) : str;
                String position2 = currency != null ? currency.getPosition() : null;
                if (position2 != null) {
                    switch (position2.hashCode()) {
                        case -1834249522:
                            if (position2.equals("left_space")) {
                                str = currency.getSymbol() + TokenParser.SP + strReplace$default;
                            }
                            break;
                        case -68021981:
                            if (position2.equals("right_space")) {
                                str = strReplace$default + TokenParser.SP + currency.getSymbol();
                            }
                            break;
                        case 3317767:
                            if (position2.equals("left")) {
                                str = currency.getSymbol() + strReplace$default;
                            }
                            break;
                        case 108511772:
                            if (position2.equals("right")) {
                                str = strReplace$default + currency.getSymbol();
                            }
                            break;
                    }
                }
            }
            this.mybinding.setAmount(str);
            this.mybinding.setSoldOutTranslation(MainActivity.INSTANCE.get_term_translation("sold_out"));
            this.mybinding.button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.ItemAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ItemAdapter.ViewHolder.bind$lambda$0(this.f$0, item, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, Item item, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                ImageView itemImage = viewHolder.mybinding.itemImage;
                Intrinsics.checkNotNullExpressionValue(itemImage, "itemImage");
                onClickListener.onClick(item, itemImage);
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
        return new ViewHolder(itemButtonBinding, this.context, this.fm, this.onClickListener);
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

    public final void setOnClickListener(OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }
}
