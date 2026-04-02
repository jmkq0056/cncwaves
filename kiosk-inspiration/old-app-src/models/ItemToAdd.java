package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemToAdd.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\t\u0012\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012D\b\u0002\u0010\f\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u00010\u0007j\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u0001`\t¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u001d\u0010!\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\tHÆ\u0003J\u001d\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003JE\u0010$\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u00010\u0007j\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u0001`\tHÆ\u0003J«\u0001\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\t2\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052D\b\u0002\u0010\f\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u00010\u0007j\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u0001`\tHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R.\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u001cRV\u0010\f\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u00010\u0007j\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\t\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0015\"\u0004\b\u001e\u0010\u0017¨\u0006+"}, d2 = {"Lcom/example/digitalkiosk/models/ItemToAdd;", "", FirebaseAnalytics.Param.ITEM_ID, "", "item_type", "", "extras", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItemExtra;", "Lkotlin/collections/ArrayList;", "remove_ingredients", "selected_size", "selected_sides", "Lcom/example/digitalkiosk/models/CartItemSide;", "<init>", "(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V", "getItem_id", "()I", "getItem_type", "()Ljava/lang/String;", "getExtras", "()Ljava/util/ArrayList;", "setExtras", "(Ljava/util/ArrayList;)V", "getRemove_ingredients", "setRemove_ingredients", "getSelected_size", "setSelected_size", "(Ljava/lang/String;)V", "getSelected_sides", "setSelected_sides", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ItemToAdd {
    private ArrayList<CartItemExtra> extras;
    private final int item_id;
    private final String item_type;
    private ArrayList<Integer> remove_ingredients;
    private ArrayList<ArrayList<CartItemSide>> selected_sides;
    private String selected_size;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ItemToAdd copy$default(ItemToAdd itemToAdd, int i, String str, ArrayList arrayList, ArrayList arrayList2, String str2, ArrayList arrayList3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = itemToAdd.item_id;
        }
        if ((i2 & 2) != 0) {
            str = itemToAdd.item_type;
        }
        if ((i2 & 4) != 0) {
            arrayList = itemToAdd.extras;
        }
        if ((i2 & 8) != 0) {
            arrayList2 = itemToAdd.remove_ingredients;
        }
        if ((i2 & 16) != 0) {
            str2 = itemToAdd.selected_size;
        }
        if ((i2 & 32) != 0) {
            arrayList3 = itemToAdd.selected_sides;
        }
        String str3 = str2;
        ArrayList arrayList4 = arrayList3;
        return itemToAdd.copy(i, str, arrayList, arrayList2, str3, arrayList4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getItem_id() {
        return this.item_id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getItem_type() {
        return this.item_type;
    }

    public final ArrayList<CartItemExtra> component3() {
        return this.extras;
    }

    public final ArrayList<Integer> component4() {
        return this.remove_ingredients;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSelected_size() {
        return this.selected_size;
    }

    public final ArrayList<ArrayList<CartItemSide>> component6() {
        return this.selected_sides;
    }

    public final ItemToAdd copy(int item_id, String item_type, ArrayList<CartItemExtra> extras, ArrayList<Integer> remove_ingredients, String selected_size, ArrayList<ArrayList<CartItemSide>> selected_sides) {
        Intrinsics.checkNotNullParameter(item_type, "item_type");
        return new ItemToAdd(item_id, item_type, extras, remove_ingredients, selected_size, selected_sides);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemToAdd)) {
            return false;
        }
        ItemToAdd itemToAdd = (ItemToAdd) other;
        return this.item_id == itemToAdd.item_id && Intrinsics.areEqual(this.item_type, itemToAdd.item_type) && Intrinsics.areEqual(this.extras, itemToAdd.extras) && Intrinsics.areEqual(this.remove_ingredients, itemToAdd.remove_ingredients) && Intrinsics.areEqual(this.selected_size, itemToAdd.selected_size) && Intrinsics.areEqual(this.selected_sides, itemToAdd.selected_sides);
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.item_id) * 31) + this.item_type.hashCode()) * 31;
        ArrayList<CartItemExtra> arrayList = this.extras;
        int iHashCode2 = (iHashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList<Integer> arrayList2 = this.remove_ingredients;
        int iHashCode3 = (iHashCode2 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        String str = this.selected_size;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        ArrayList<ArrayList<CartItemSide>> arrayList3 = this.selected_sides;
        return iHashCode4 + (arrayList3 != null ? arrayList3.hashCode() : 0);
    }

    public String toString() {
        return "ItemToAdd(item_id=" + this.item_id + ", item_type=" + this.item_type + ", extras=" + this.extras + ", remove_ingredients=" + this.remove_ingredients + ", selected_size=" + this.selected_size + ", selected_sides=" + this.selected_sides + ')';
    }

    public ItemToAdd(int i, String item_type, ArrayList<CartItemExtra> arrayList, ArrayList<Integer> arrayList2, String str, ArrayList<ArrayList<CartItemSide>> arrayList3) {
        Intrinsics.checkNotNullParameter(item_type, "item_type");
        this.item_id = i;
        this.item_type = item_type;
        this.extras = arrayList;
        this.remove_ingredients = arrayList2;
        this.selected_size = str;
        this.selected_sides = arrayList3;
    }

    public final int getItem_id() {
        return this.item_id;
    }

    public /* synthetic */ ItemToAdd(int i, String str, ArrayList arrayList, ArrayList arrayList2, String str2, ArrayList arrayList3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? "item" : str, (i2 & 4) != 0 ? new ArrayList() : arrayList, (i2 & 8) != 0 ? new ArrayList() : arrayList2, (i2 & 16) != 0 ? "" : str2, (i2 & 32) != 0 ? new ArrayList() : arrayList3);
    }

    public final String getItem_type() {
        return this.item_type;
    }

    public final ArrayList<CartItemExtra> getExtras() {
        return this.extras;
    }

    public final void setExtras(ArrayList<CartItemExtra> arrayList) {
        this.extras = arrayList;
    }

    public final ArrayList<Integer> getRemove_ingredients() {
        return this.remove_ingredients;
    }

    public final void setRemove_ingredients(ArrayList<Integer> arrayList) {
        this.remove_ingredients = arrayList;
    }

    public final String getSelected_size() {
        return this.selected_size;
    }

    public final void setSelected_size(String str) {
        this.selected_size = str;
    }

    public final ArrayList<ArrayList<CartItemSide>> getSelected_sides() {
        return this.selected_sides;
    }

    public final void setSelected_sides(ArrayList<ArrayList<CartItemSide>> arrayList) {
        this.selected_sides = arrayList;
    }
}
