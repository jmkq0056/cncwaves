package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Size.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/example/digitalkiosk/models/Size;", "", "slug", "", "name", FirebaseAnalytics.Param.PRICE, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSlug", "()Ljava/lang/String;", "getName", "getPrice", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Size {
    private final String name;
    private final String price;
    private final String slug;

    public static /* synthetic */ Size copy$default(Size size, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = size.slug;
        }
        if ((i & 2) != 0) {
            str2 = size.name;
        }
        if ((i & 4) != 0) {
            str3 = size.price;
        }
        return size.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSlug() {
        return this.slug;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    public final Size copy(String slug, String name, String price) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(price, "price");
        return new Size(slug, name, price);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Size)) {
            return false;
        }
        Size size = (Size) other;
        return Intrinsics.areEqual(this.slug, size.slug) && Intrinsics.areEqual(this.name, size.name) && Intrinsics.areEqual(this.price, size.price);
    }

    public int hashCode() {
        return (((this.slug.hashCode() * 31) + this.name.hashCode()) * 31) + this.price.hashCode();
    }

    public String toString() {
        return "Size(slug=" + this.slug + ", name=" + this.name + ", price=" + this.price + ')';
    }

    public Size(String slug, String name, String price) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(price, "price");
        this.slug = slug;
        this.name = name;
        this.price = price;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPrice() {
        return this.price;
    }
}
