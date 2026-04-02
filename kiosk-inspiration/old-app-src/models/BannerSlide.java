package com.example.digitalkiosk.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BannerSlide.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/example/digitalkiosk/models/BannerSlide;", "", "category", "", "image", "", "<init>", "(ILjava/lang/String;)V", "getCategory", "()I", "getImage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BannerSlide {
    private final int category;
    private final String image;

    public static /* synthetic */ BannerSlide copy$default(BannerSlide bannerSlide, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = bannerSlide.category;
        }
        if ((i2 & 2) != 0) {
            str = bannerSlide.image;
        }
        return bannerSlide.copy(i, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getImage() {
        return this.image;
    }

    public final BannerSlide copy(int category, String image) {
        Intrinsics.checkNotNullParameter(image, "image");
        return new BannerSlide(category, image);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BannerSlide)) {
            return false;
        }
        BannerSlide bannerSlide = (BannerSlide) other;
        return this.category == bannerSlide.category && Intrinsics.areEqual(this.image, bannerSlide.image);
    }

    public int hashCode() {
        return (Integer.hashCode(this.category) * 31) + this.image.hashCode();
    }

    public String toString() {
        return "BannerSlide(category=" + this.category + ", image=" + this.image + ')';
    }

    public BannerSlide(int i, String image) {
        Intrinsics.checkNotNullParameter(image, "image");
        this.category = i;
        this.image = image;
    }

    public final int getCategory() {
        return this.category;
    }

    public final String getImage() {
        return this.image;
    }
}
