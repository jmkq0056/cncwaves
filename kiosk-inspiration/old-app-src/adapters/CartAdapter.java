package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.CartItem;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CartAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\fR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/example/digitalkiosk/adapters/CartAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;", "cartItems", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItem;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;)V", "onRemoveListener", "Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnRemoveListener", "ViewHolder", "OnRemoveListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CartAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final ArrayList<CartItem> cartItems;
    private final Context context;
    private OnRemoveListener onRemoveListener;

    /* JADX INFO: compiled from: CartAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;", "", "onRemove", "", "model", "Lcom/example/digitalkiosk/models/CartItem;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnRemoveListener {
        void onRemove(CartItem model);
    }

    public CartAdapter(ArrayList<CartItem> cartItems, Context context) {
        Intrinsics.checkNotNullParameter(cartItems, "cartItems");
        Intrinsics.checkNotNullParameter(context, "context");
        this.cartItems = cartItems;
        this.context = context;
    }

    /* JADX INFO: compiled from: CartAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", FirebaseAnalytics.Param.QUANTITY, "Landroid/widget/TextView;", "getQuantity", "()Landroid/widget/TextView;", "name", "getName", FirebaseAnalytics.Param.PRICE, "getPrice", "attributes", "Landroid/widget/LinearLayout;", "getAttributes", "()Landroid/widget/LinearLayout;", "remove", "Landroid/widget/Button;", "getRemove", "()Landroid/widget/Button;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final LinearLayout attributes;
        private final View itemView;
        private final TextView name;
        private final TextView price;
        private final TextView quantity;
        private final Button remove;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.itemView = itemView;
            this.quantity = (TextView) itemView.findViewById(R.id.quantity);
            this.name = (TextView) itemView.findViewById(R.id.name);
            this.price = (TextView) itemView.findViewById(R.id.price);
            this.attributes = (LinearLayout) itemView.findViewById(R.id.attributes);
            this.remove = (Button) itemView.findViewById(R.id.remove_item);
        }

        public final TextView getQuantity() {
            return this.quantity;
        }

        public final TextView getName() {
            return this.name;
        }

        public final TextView getPrice() {
            return this.price;
        }

        public final LinearLayout getAttributes() {
            return this.attributes;
        }

        public final Button getRemove() {
            return this.remove;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 1) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.cart_item_tax, parent, false);
            Intrinsics.checkNotNull(viewInflate);
            return new ViewHolder(viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.cart_item, parent, false);
        Intrinsics.checkNotNull(viewInflate2);
        return new ViewHolder(viewInflate2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.cartItems.size();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0346  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(com.example.digitalkiosk.adapters.CartAdapter.ViewHolder r30, int r31) {
        /*
            Method dump skipped, instruction units count: 1370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.adapters.CartAdapter.onBindViewHolder(com.example.digitalkiosk.adapters.CartAdapter$ViewHolder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(CartAdapter cartAdapter, CartItem cartItem, View view) {
        OnRemoveListener onRemoveListener = cartAdapter.onRemoveListener;
        if (onRemoveListener != null) {
            onRemoveListener.onRemove(cartItem);
        }
    }

    public final void setOnRemoveListener(OnRemoveListener onRemoveListener) {
        Intrinsics.checkNotNullParameter(onRemoveListener, "onRemoveListener");
        this.onRemoveListener = onRemoveListener;
    }
}
