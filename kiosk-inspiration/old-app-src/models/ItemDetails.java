package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemDetails.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010\u0012\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u000ej\b\u0012\u0004\u0012\u00020\u0015`\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010-\u001a\u00020\u0005HÆ\u0003J\t\u0010.\u001a\u00020\nHÆ\u0003J\t\u0010/\u001a\u00020\fHÆ\u0003J\u0019\u00100\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010HÆ\u0003J\u0019\u00101\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010HÆ\u0003J\t\u00102\u001a\u00020\u0013HÆ\u0003J\u0019\u00103\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u000ej\b\u0012\u0004\u0012\u00020\u0015`\u0010HÆ\u0003J©\u0001\u00104\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0018\b\u0002\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u00102\u0018\b\u0002\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u0018\b\u0002\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u000ej\b\u0012\u0004\u0012\u00020\u0015`\u0010HÆ\u0001J\u0013\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\u0003HÖ\u0001J\t\u00109\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R!\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R!\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010¢\u0006\b\n\u0000\u001a\u0004\b%\u0010$R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R!\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u000ej\b\u0012\u0004\u0012\u00020\u0015`\u0010¢\u0006\b\n\u0000\u001a\u0004\b(\u0010$¨\u0006:"}, d2 = {"Lcom/example/digitalkiosk/models/ItemDetails;", "", OfflineStorageConstantsKt.ID, "", "type", "", "name", "description", "image", FirebaseAnalytics.Param.PRICE, "", "sizes", "Lcom/example/digitalkiosk/models/ItemSizes;", "extras", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Extra;", "Lkotlin/collections/ArrayList;", "ingredients", "attributes", "Lcom/example/digitalkiosk/models/ItemAttributes;", "sides", "Lcom/example/digitalkiosk/models/ItemSide;", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLcom/example/digitalkiosk/models/ItemSizes;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/example/digitalkiosk/models/ItemAttributes;Ljava/util/ArrayList;)V", "getId", "()I", "getType", "()Ljava/lang/String;", "getName", "getDescription", "getImage", "getPrice", "()F", "getSizes", "()Lcom/example/digitalkiosk/models/ItemSizes;", "getExtras", "()Ljava/util/ArrayList;", "getIngredients", "getAttributes", "()Lcom/example/digitalkiosk/models/ItemAttributes;", "getSides", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ItemDetails {
    private final ItemAttributes attributes;
    private final String description;
    private final ArrayList<Extra> extras;
    private final int id;
    private final String image;
    private final ArrayList<Extra> ingredients;
    private final String name;
    private final float price;
    private final ArrayList<ItemSide> sides;
    private final ItemSizes sizes;
    private final String type;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ItemDetails copy$default(ItemDetails itemDetails, int i, String str, String str2, String str3, String str4, float f, ItemSizes itemSizes, ArrayList arrayList, ArrayList arrayList2, ItemAttributes itemAttributes, ArrayList arrayList3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = itemDetails.id;
        }
        if ((i2 & 2) != 0) {
            str = itemDetails.type;
        }
        if ((i2 & 4) != 0) {
            str2 = itemDetails.name;
        }
        if ((i2 & 8) != 0) {
            str3 = itemDetails.description;
        }
        if ((i2 & 16) != 0) {
            str4 = itemDetails.image;
        }
        if ((i2 & 32) != 0) {
            f = itemDetails.price;
        }
        if ((i2 & 64) != 0) {
            itemSizes = itemDetails.sizes;
        }
        if ((i2 & 128) != 0) {
            arrayList = itemDetails.extras;
        }
        if ((i2 & 256) != 0) {
            arrayList2 = itemDetails.ingredients;
        }
        if ((i2 & 512) != 0) {
            itemAttributes = itemDetails.attributes;
        }
        if ((i2 & 1024) != 0) {
            arrayList3 = itemDetails.sides;
        }
        ItemAttributes itemAttributes2 = itemAttributes;
        ArrayList arrayList4 = arrayList3;
        ArrayList arrayList5 = arrayList;
        ArrayList arrayList6 = arrayList2;
        float f2 = f;
        ItemSizes itemSizes2 = itemSizes;
        String str5 = str4;
        String str6 = str2;
        return itemDetails.copy(i, str, str6, str3, str5, f2, itemSizes2, arrayList5, arrayList6, itemAttributes2, arrayList4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final ItemAttributes getAttributes() {
        return this.attributes;
    }

    public final ArrayList<ItemSide> component11() {
        return this.sides;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final float getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final ItemSizes getSizes() {
        return this.sizes;
    }

    public final ArrayList<Extra> component8() {
        return this.extras;
    }

    public final ArrayList<Extra> component9() {
        return this.ingredients;
    }

    public final ItemDetails copy(int id, String type, String name, String description, String image, float price, ItemSizes sizes, ArrayList<Extra> extras, ArrayList<Extra> ingredients, ItemAttributes attributes, ArrayList<ItemSide> sides) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(sizes, "sizes");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(ingredients, "ingredients");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(sides, "sides");
        return new ItemDetails(id, type, name, description, image, price, sizes, extras, ingredients, attributes, sides);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemDetails)) {
            return false;
        }
        ItemDetails itemDetails = (ItemDetails) other;
        return this.id == itemDetails.id && Intrinsics.areEqual(this.type, itemDetails.type) && Intrinsics.areEqual(this.name, itemDetails.name) && Intrinsics.areEqual(this.description, itemDetails.description) && Intrinsics.areEqual(this.image, itemDetails.image) && Float.compare(this.price, itemDetails.price) == 0 && Intrinsics.areEqual(this.sizes, itemDetails.sizes) && Intrinsics.areEqual(this.extras, itemDetails.extras) && Intrinsics.areEqual(this.ingredients, itemDetails.ingredients) && Intrinsics.areEqual(this.attributes, itemDetails.attributes) && Intrinsics.areEqual(this.sides, itemDetails.sides);
    }

    public int hashCode() {
        int iHashCode = ((((Integer.hashCode(this.id) * 31) + this.type.hashCode()) * 31) + this.name.hashCode()) * 31;
        String str = this.description;
        return ((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.image.hashCode()) * 31) + Float.hashCode(this.price)) * 31) + this.sizes.hashCode()) * 31) + this.extras.hashCode()) * 31) + this.ingredients.hashCode()) * 31) + this.attributes.hashCode()) * 31) + this.sides.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ItemDetails(id=");
        sb.append(this.id).append(", type=").append(this.type).append(", name=").append(this.name).append(", description=").append(this.description).append(", image=").append(this.image).append(", price=").append(this.price).append(", sizes=").append(this.sizes).append(", extras=").append(this.extras).append(", ingredients=").append(this.ingredients).append(", attributes=").append(this.attributes).append(", sides=").append(this.sides).append(')');
        return sb.toString();
    }

    public ItemDetails(int i, String type, String name, String str, String image, float f, ItemSizes sizes, ArrayList<Extra> extras, ArrayList<Extra> ingredients, ItemAttributes attributes, ArrayList<ItemSide> sides) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(sizes, "sizes");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(ingredients, "ingredients");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(sides, "sides");
        this.id = i;
        this.type = type;
        this.name = name;
        this.description = str;
        this.image = image;
        this.price = f;
        this.sizes = sizes;
        this.extras = extras;
        this.ingredients = ingredients;
        this.attributes = attributes;
        this.sides = sides;
    }

    public final int getId() {
        return this.id;
    }

    public final String getType() {
        return this.type;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getImage() {
        return this.image;
    }

    public final float getPrice() {
        return this.price;
    }

    public final ItemSizes getSizes() {
        return this.sizes;
    }

    public final ArrayList<Extra> getExtras() {
        return this.extras;
    }

    public final ArrayList<Extra> getIngredients() {
        return this.ingredients;
    }

    public final ItemAttributes getAttributes() {
        return this.attributes;
    }

    public final ArrayList<ItemSide> getSides() {
        return this.sides;
    }
}
