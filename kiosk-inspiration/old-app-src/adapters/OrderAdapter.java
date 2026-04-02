package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.models.CartItem;
import com.example.digitalkiosk.models.CartItemAttribute;
import com.example.digitalkiosk.models.CartItemAttributeItem;
import com.example.digitalkiosk.models.CartItemExtra;
import com.example.digitalkiosk.models.Currency;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: OrderAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/example/digitalkiosk/adapters/OrderAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/OrderAdapter$ViewHolder;", "orderItems", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItem;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "ViewHolder", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OrderAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final Context context;
    private final ArrayList<CartItem> orderItems;

    public OrderAdapter(ArrayList<CartItem> orderItems, Context context) {
        Intrinsics.checkNotNullParameter(orderItems, "orderItems");
        Intrinsics.checkNotNullParameter(context, "context");
        this.orderItems = orderItems;
        this.context = context;
    }

    /* JADX INFO: compiled from: OrderAdapter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/example/digitalkiosk/adapters/OrderAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", FirebaseAnalytics.Param.QUANTITY, "Landroid/widget/TextView;", "getQuantity", "()Landroid/widget/TextView;", "name", "getName", FirebaseAnalytics.Param.PRICE, "getPrice", "attributes", "Landroid/widget/LinearLayout;", "getAttributes", "()Landroid/widget/LinearLayout;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final LinearLayout attributes;
        private final TextView name;
        private final TextView price;
        private final TextView quantity;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.quantity = (TextView) itemView.findViewById(R.id.quantity);
            this.name = (TextView) itemView.findViewById(R.id.name);
            this.price = (TextView) itemView.findViewById(R.id.price);
            this.attributes = (LinearLayout) itemView.findViewById(R.id.attributes);
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
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 1) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.order_item_tax, parent, false);
            Intrinsics.checkNotNull(viewInflate);
            return new ViewHolder(viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.order_item, parent, false);
        Intrinsics.checkNotNull(viewInflate2);
        return new ViewHolder(viewInflate2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.orderItems.size();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        CartItemAttributeItem cartItemAttributeItem;
        String format;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Context context = this.context;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
        ShopActivity shopActivity = (ShopActivity) context;
        CartItem cartItem = this.orderItems.get(position);
        Intrinsics.checkNotNullExpressionValue(cartItem, "get(...)");
        CartItem cartItem2 = cartItem;
        holder.getQuantity().setText(String.valueOf(cartItem2.getQuantity()));
        holder.getName().setText(cartItem2.getName());
        holder.getPrice().setText(shopActivity.convertAmountToFormat(cartItem2.getAmount()));
        holder.getAttributes().removeAllViews();
        ViewGroup viewGroup = null;
        if (cartItem2.getAttributes() != null) {
            if (cartItem2.getAttributes().size() > 0) {
                holder.getAttributes().setVisibility(0);
            }
            Iterator<CartItemAttribute> it = cartItem2.getAttributes().iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                CartItemAttribute next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                CartItemAttribute cartItemAttribute = next;
                if (cartItemAttribute.getItems().size() > 0) {
                    ShopActivity shopActivity2 = shopActivity;
                    ShopActivity shopActivity3 = shopActivity;
                    View viewInflate = LayoutInflater.from(shopActivity2).inflate(R.layout.order_attribute, viewGroup, false);
                    ((TextView) viewInflate.findViewById(R.id.attribute)).setText(cartItemAttribute.getName() + " for " + cartItem2.getName());
                    holder.getAttributes().addView(viewInflate);
                    Iterator<CartItemAttributeItem> it2 = cartItemAttribute.getItems().iterator();
                    Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
                    while (it2.hasNext()) {
                        CartItemAttributeItem next2 = it2.next();
                        Intrinsics.checkNotNullExpressionValue(next2, "next(...)");
                        CartItemAttributeItem cartItemAttributeItem2 = next2;
                        Iterator<CartItemAttributeItem> it3 = it2;
                        View viewInflate2 = LayoutInflater.from(shopActivity2).inflate(R.layout.order_extra, (ViewGroup) null, false);
                        TextView textView = (TextView) viewInflate2.findViewById(R.id.extra);
                        textView.setText(cartItemAttributeItem2.getQuantity() + "x " + cartItemAttributeItem2.getName());
                        holder.getAttributes().addView(viewInflate2);
                        TextView textView2 = (TextView) viewInflate2.findViewById(R.id.extra_price);
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String strReplace$default = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(cartItemAttributeItem2.getPrice() * cartItemAttributeItem2.getQuantity())}, 1));
                        Intrinsics.checkNotNullExpressionValue(strReplace$default, "format(...)");
                        if (ShopActivity.INSTANCE.getCurrency() != null) {
                            Currency currency = ShopActivity.INSTANCE.getCurrency();
                            if (currency != null) {
                                cartItemAttributeItem = cartItemAttributeItem2;
                                format = currency.getFormat();
                            } else {
                                cartItemAttributeItem = cartItemAttributeItem2;
                                format = null;
                            }
                            if (Intrinsics.areEqual(format, "comma")) {
                                strReplace$default = StringsKt.replace$default(strReplace$default, ".", ",", false, 4, (Object) null);
                            }
                            String position2 = currency != null ? currency.getPosition() : null;
                            if (position2 != null) {
                                switch (position2.hashCode()) {
                                    case -1834249522:
                                        if (position2.equals("left_space")) {
                                            strReplace$default = currency.getSymbol() + TokenParser.SP + strReplace$default;
                                        }
                                        break;
                                    case -68021981:
                                        if (position2.equals("right_space")) {
                                            strReplace$default = strReplace$default + TokenParser.SP + currency.getSymbol();
                                        }
                                        break;
                                    case 3317767:
                                        if (position2.equals("left")) {
                                            strReplace$default = currency.getSymbol() + strReplace$default;
                                        }
                                        break;
                                    case 108511772:
                                        if (position2.equals("right")) {
                                            strReplace$default = strReplace$default + currency.getSymbol();
                                        }
                                        break;
                                }
                            }
                        } else {
                            cartItemAttributeItem = cartItemAttributeItem2;
                        }
                        textView2.setText(strReplace$default);
                        if (cartItemAttributeItem.getPrice() > 0.0f) {
                            textView2.setVisibility(0);
                        } else {
                            textView.setTextColor(Color.parseColor("#6E6E6E"));
                        }
                        it2 = it3;
                    }
                    shopActivity = shopActivity3;
                    viewGroup = null;
                }
            }
        }
        ShopActivity shopActivity4 = shopActivity;
        if (cartItem2.getRemove_ingredients() != null) {
            if (cartItem2.getRemove_ingredients().size() > 0) {
                holder.getAttributes().setVisibility(0);
            }
            Iterator<CartItemExtra> it4 = cartItem2.getRemove_ingredients().iterator();
            Intrinsics.checkNotNullExpressionValue(it4, "iterator(...)");
            while (it4.hasNext()) {
                CartItemExtra next3 = it4.next();
                Intrinsics.checkNotNullExpressionValue(next3, "next(...)");
                ShopActivity shopActivity5 = shopActivity4;
                View viewInflate3 = LayoutInflater.from(shopActivity5).inflate(R.layout.order_attribute, (ViewGroup) null, false);
                TextView textView3 = (TextView) viewInflate3.findViewById(R.id.attribute);
                textView3.setText("Remove " + next3.getName());
                textView3.setTextColor(ContextCompat.getColor(shopActivity5, R.color.red));
                holder.getAttributes().addView(viewInflate3);
            }
        }
        if (cartItem2.getSize() != null) {
            holder.getAttributes().setVisibility(0);
            View viewInflate4 = LayoutInflater.from(shopActivity4).inflate(R.layout.order_attribute, (ViewGroup) null, false);
            TextView textView4 = (TextView) viewInflate4.findViewById(R.id.attribute);
            textView4.setText(cartItem2.getSize() + " Size");
            textView4.setTextColor(Color.parseColor("#438D02"));
            TextView textView5 = (TextView) viewInflate4.findViewById(R.id.attribute_price);
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String strReplace$default2 = String.format("%.2f", Arrays.copyOf(new Object[]{cartItem2.getSize_price()}, 1));
            Intrinsics.checkNotNullExpressionValue(strReplace$default2, "format(...)");
            if (ShopActivity.INSTANCE.getCurrency() != null) {
                Currency currency2 = ShopActivity.INSTANCE.getCurrency();
                if (Intrinsics.areEqual(currency2 != null ? currency2.getFormat() : null, "comma")) {
                    strReplace$default2 = StringsKt.replace$default(strReplace$default2, ".", ",", false, 4, (Object) null);
                }
                String position3 = currency2 != null ? currency2.getPosition() : null;
                if (position3 != null) {
                    switch (position3.hashCode()) {
                        case -1834249522:
                            if (position3.equals("left_space")) {
                                strReplace$default2 = currency2.getSymbol() + TokenParser.SP + strReplace$default2;
                            }
                            break;
                        case -68021981:
                            if (position3.equals("right_space")) {
                                strReplace$default2 = strReplace$default2 + TokenParser.SP + currency2.getSymbol();
                            }
                            break;
                        case 3317767:
                            if (position3.equals("left")) {
                                strReplace$default2 = currency2.getSymbol() + strReplace$default2;
                            }
                            break;
                        case 108511772:
                            if (position3.equals("right")) {
                                strReplace$default2 = strReplace$default2 + currency2.getSymbol();
                            }
                            break;
                    }
                }
            }
            textView5.setText(strReplace$default2);
            textView5.setVisibility(0);
            textView5.setTextColor(Color.parseColor("#438D02"));
            holder.getAttributes().addView(viewInflate4);
        }
    }
}
