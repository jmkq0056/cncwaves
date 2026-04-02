package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CartItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\b\u0012\u0004\u0012\u00020\r`\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u0019\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bHÆ\u0003J\u0019\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\b\u0012\u0004\u0012\u00020\r`\u000bHÆ\u0003J\t\u0010)\u001a\u00020\u000fHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010!J\u008c\u0001\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b2\u0018\b\u0002\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\b\u0012\u0004\u0012\u00020\r`\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0003HÖ\u0001J\t\u00102\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R!\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR!\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\b\u0012\u0004\u0012\u00020\r`\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!¨\u00063"}, d2 = {"Lcom/example/digitalkiosk/models/CartItem;", "", OfflineStorageConstantsKt.ID, "", "name", "", FirebaseAnalytics.Param.QUANTITY, FirebaseAnalytics.Param.ITEM_ID, "attributes", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItemAttribute;", "Lkotlin/collections/ArrayList;", "remove_ingredients", "Lcom/example/digitalkiosk/models/CartItemExtra;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "size", "size_price", "<init>", "(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getQuantity", "getItem_id", "getAttributes", "()Ljava/util/ArrayList;", "getRemove_ingredients", "getAmount", "()F", "getSize", "getSize_price", "()Ljava/lang/Float;", "Ljava/lang/Float;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)Lcom/example/digitalkiosk/models/CartItem;", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CartItem {
    private final float amount;
    private final ArrayList<CartItemAttribute> attributes;
    private final int id;
    private final int item_id;
    private final String name;
    private final int quantity;
    private final ArrayList<CartItemExtra> remove_ingredients;
    private final String size;
    private final Float size_price;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CartItem copy$default(CartItem cartItem, int i, String str, int i2, int i3, ArrayList arrayList, ArrayList arrayList2, float f, String str2, Float f2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = cartItem.id;
        }
        if ((i4 & 2) != 0) {
            str = cartItem.name;
        }
        if ((i4 & 4) != 0) {
            i2 = cartItem.quantity;
        }
        if ((i4 & 8) != 0) {
            i3 = cartItem.item_id;
        }
        if ((i4 & 16) != 0) {
            arrayList = cartItem.attributes;
        }
        if ((i4 & 32) != 0) {
            arrayList2 = cartItem.remove_ingredients;
        }
        if ((i4 & 64) != 0) {
            f = cartItem.amount;
        }
        if ((i4 & 128) != 0) {
            str2 = cartItem.size;
        }
        if ((i4 & 256) != 0) {
            f2 = cartItem.size_price;
        }
        String str3 = str2;
        Float f3 = f2;
        ArrayList arrayList3 = arrayList2;
        float f4 = f;
        ArrayList arrayList4 = arrayList;
        int i5 = i2;
        return cartItem.copy(i, str, i5, i3, arrayList4, arrayList3, f4, str3, f3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getQuantity() {
        return this.quantity;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getItem_id() {
        return this.item_id;
    }

    public final ArrayList<CartItemAttribute> component5() {
        return this.attributes;
    }

    public final ArrayList<CartItemExtra> component6() {
        return this.remove_ingredients;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final float getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Float getSize_price() {
        return this.size_price;
    }

    public final CartItem copy(int id, String name, int quantity, int item_id, ArrayList<CartItemAttribute> attributes, ArrayList<CartItemExtra> remove_ingredients, float amount, String size, Float size_price) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(remove_ingredients, "remove_ingredients");
        return new CartItem(id, name, quantity, item_id, attributes, remove_ingredients, amount, size, size_price);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CartItem)) {
            return false;
        }
        CartItem cartItem = (CartItem) other;
        return this.id == cartItem.id && Intrinsics.areEqual(this.name, cartItem.name) && this.quantity == cartItem.quantity && this.item_id == cartItem.item_id && Intrinsics.areEqual(this.attributes, cartItem.attributes) && Intrinsics.areEqual(this.remove_ingredients, cartItem.remove_ingredients) && Float.compare(this.amount, cartItem.amount) == 0 && Intrinsics.areEqual(this.size, cartItem.size) && Intrinsics.areEqual((Object) this.size_price, (Object) cartItem.size_price);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + Integer.hashCode(this.quantity)) * 31) + Integer.hashCode(this.item_id)) * 31) + this.attributes.hashCode()) * 31) + this.remove_ingredients.hashCode()) * 31) + Float.hashCode(this.amount)) * 31;
        String str = this.size;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Float f = this.size_price;
        return iHashCode2 + (f != null ? f.hashCode() : 0);
    }

    public String toString() {
        return "CartItem(id=" + this.id + ", name=" + this.name + ", quantity=" + this.quantity + ", item_id=" + this.item_id + ", attributes=" + this.attributes + ", remove_ingredients=" + this.remove_ingredients + ", amount=" + this.amount + ", size=" + this.size + ", size_price=" + this.size_price + ')';
    }

    public CartItem(int i, String name, int i2, int i3, ArrayList<CartItemAttribute> attributes, ArrayList<CartItemExtra> remove_ingredients, float f, String str, Float f2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(remove_ingredients, "remove_ingredients");
        this.id = i;
        this.name = name;
        this.quantity = i2;
        this.item_id = i3;
        this.attributes = attributes;
        this.remove_ingredients = remove_ingredients;
        this.amount = f;
        this.size = str;
        this.size_price = f2;
    }

    public final float getAmount() {
        return this.amount;
    }

    public final ArrayList<CartItemAttribute> getAttributes() {
        return this.attributes;
    }

    public final int getId() {
        return this.id;
    }

    public final int getItem_id() {
        return this.item_id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    public final ArrayList<CartItemExtra> getRemove_ingredients() {
        return this.remove_ingredients;
    }

    public final String getSize() {
        return this.size;
    }

    public final Float getSize_price() {
        return this.size_price;
    }
}
