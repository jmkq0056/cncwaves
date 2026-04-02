package com.example.digitalkiosk.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemSide.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003JX\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\u000b2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lcom/example/digitalkiosk/models/ItemSide;", "", OfflineStorageConstantsKt.ID, "", "name", "", "description", "min", "max", "type", "required", "", "<init>", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Z)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getDescription", "getMin", "getMax", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "getRequired", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Z)Lcom/example/digitalkiosk/models/ItemSide;", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ItemSide {
    private final String description;
    private final int id;
    private final Integer max;
    private final int min;
    private final String name;
    private final boolean required;
    private final String type;

    public static /* synthetic */ ItemSide copy$default(ItemSide itemSide, int i, String str, String str2, int i2, Integer num, String str3, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = itemSide.id;
        }
        if ((i3 & 2) != 0) {
            str = itemSide.name;
        }
        if ((i3 & 4) != 0) {
            str2 = itemSide.description;
        }
        if ((i3 & 8) != 0) {
            i2 = itemSide.min;
        }
        if ((i3 & 16) != 0) {
            num = itemSide.max;
        }
        if ((i3 & 32) != 0) {
            str3 = itemSide.type;
        }
        if ((i3 & 64) != 0) {
            z = itemSide.required;
        }
        String str4 = str3;
        boolean z2 = z;
        Integer num2 = num;
        String str5 = str2;
        return itemSide.copy(i, str, str5, i2, num2, str4, z2);
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
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getMin() {
        return this.min;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getMax() {
        return this.max;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getRequired() {
        return this.required;
    }

    public final ItemSide copy(int id, String name, String description, int min, Integer max, String type, boolean required) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        return new ItemSide(id, name, description, min, max, type, required);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemSide)) {
            return false;
        }
        ItemSide itemSide = (ItemSide) other;
        return this.id == itemSide.id && Intrinsics.areEqual(this.name, itemSide.name) && Intrinsics.areEqual(this.description, itemSide.description) && this.min == itemSide.min && Intrinsics.areEqual(this.max, itemSide.max) && Intrinsics.areEqual(this.type, itemSide.type) && this.required == itemSide.required;
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.min)) * 31;
        Integer num = this.max;
        return ((((iHashCode2 + (num != null ? num.hashCode() : 0)) * 31) + this.type.hashCode()) * 31) + Boolean.hashCode(this.required);
    }

    public String toString() {
        return "ItemSide(id=" + this.id + ", name=" + this.name + ", description=" + this.description + ", min=" + this.min + ", max=" + this.max + ", type=" + this.type + ", required=" + this.required + ')';
    }

    public ItemSide(int i, String name, String str, int i2, Integer num, String type, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        this.id = i;
        this.name = name;
        this.description = str;
        this.min = i2;
        this.max = num;
        this.type = type;
        this.required = z;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getMin() {
        return this.min;
    }

    public final Integer getMax() {
        return this.max;
    }

    public final String getType() {
        return this.type;
    }

    public final boolean getRequired() {
        return this.required;
    }
}
