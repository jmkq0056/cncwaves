package com.example.digitalkiosk.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StripeDetails.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b(\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\u0087\u0001\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0003HÆ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020/HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0012¨\u00061"}, d2 = {"Lcom/example/digitalkiosk/models/StripeDetails;", "", "location_name", "", "location_address1", "location_address2", "location_city", "location_state", "location_country", "location_postal_code", "read_method", "card_brand", "last4", "date", "time", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLocation_name", "()Ljava/lang/String;", "getLocation_address1", "getLocation_address2", "getLocation_city", "getLocation_state", "getLocation_country", "getLocation_postal_code", "getRead_method", "getCard_brand", "getLast4", "getDate", "getTime", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class StripeDetails {
    private final String card_brand;
    private final String date;
    private final String last4;
    private final String location_address1;
    private final String location_address2;
    private final String location_city;
    private final String location_country;
    private final String location_name;
    private final String location_postal_code;
    private final String location_state;
    private final String read_method;
    private final String time;

    public static /* synthetic */ StripeDetails copy$default(StripeDetails stripeDetails, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stripeDetails.location_name;
        }
        if ((i & 2) != 0) {
            str2 = stripeDetails.location_address1;
        }
        if ((i & 4) != 0) {
            str3 = stripeDetails.location_address2;
        }
        if ((i & 8) != 0) {
            str4 = stripeDetails.location_city;
        }
        if ((i & 16) != 0) {
            str5 = stripeDetails.location_state;
        }
        if ((i & 32) != 0) {
            str6 = stripeDetails.location_country;
        }
        if ((i & 64) != 0) {
            str7 = stripeDetails.location_postal_code;
        }
        if ((i & 128) != 0) {
            str8 = stripeDetails.read_method;
        }
        if ((i & 256) != 0) {
            str9 = stripeDetails.card_brand;
        }
        if ((i & 512) != 0) {
            str10 = stripeDetails.last4;
        }
        if ((i & 1024) != 0) {
            str11 = stripeDetails.date;
        }
        if ((i & 2048) != 0) {
            str12 = stripeDetails.time;
        }
        String str13 = str11;
        String str14 = str12;
        String str15 = str9;
        String str16 = str10;
        String str17 = str7;
        String str18 = str8;
        String str19 = str5;
        String str20 = str6;
        return stripeDetails.copy(str, str2, str3, str4, str19, str20, str17, str18, str15, str16, str13, str14);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLocation_name() {
        return this.location_name;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getLast4() {
        return this.last4;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getTime() {
        return this.time;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLocation_address1() {
        return this.location_address1;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLocation_address2() {
        return this.location_address2;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLocation_city() {
        return this.location_city;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLocation_state() {
        return this.location_state;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLocation_country() {
        return this.location_country;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getLocation_postal_code() {
        return this.location_postal_code;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getRead_method() {
        return this.read_method;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCard_brand() {
        return this.card_brand;
    }

    public final StripeDetails copy(String location_name, String location_address1, String location_address2, String location_city, String location_state, String location_country, String location_postal_code, String read_method, String card_brand, String last4, String date, String time) {
        Intrinsics.checkNotNullParameter(location_name, "location_name");
        Intrinsics.checkNotNullParameter(location_address1, "location_address1");
        Intrinsics.checkNotNullParameter(location_address2, "location_address2");
        Intrinsics.checkNotNullParameter(location_country, "location_country");
        Intrinsics.checkNotNullParameter(read_method, "read_method");
        Intrinsics.checkNotNullParameter(card_brand, "card_brand");
        Intrinsics.checkNotNullParameter(last4, "last4");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(time, "time");
        return new StripeDetails(location_name, location_address1, location_address2, location_city, location_state, location_country, location_postal_code, read_method, card_brand, last4, date, time);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StripeDetails)) {
            return false;
        }
        StripeDetails stripeDetails = (StripeDetails) other;
        return Intrinsics.areEqual(this.location_name, stripeDetails.location_name) && Intrinsics.areEqual(this.location_address1, stripeDetails.location_address1) && Intrinsics.areEqual(this.location_address2, stripeDetails.location_address2) && Intrinsics.areEqual(this.location_city, stripeDetails.location_city) && Intrinsics.areEqual(this.location_state, stripeDetails.location_state) && Intrinsics.areEqual(this.location_country, stripeDetails.location_country) && Intrinsics.areEqual(this.location_postal_code, stripeDetails.location_postal_code) && Intrinsics.areEqual(this.read_method, stripeDetails.read_method) && Intrinsics.areEqual(this.card_brand, stripeDetails.card_brand) && Intrinsics.areEqual(this.last4, stripeDetails.last4) && Intrinsics.areEqual(this.date, stripeDetails.date) && Intrinsics.areEqual(this.time, stripeDetails.time);
    }

    public int hashCode() {
        int iHashCode = ((((this.location_name.hashCode() * 31) + this.location_address1.hashCode()) * 31) + this.location_address2.hashCode()) * 31;
        String str = this.location_city;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.location_state;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.location_country.hashCode()) * 31;
        String str3 = this.location_postal_code;
        return ((((((((((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.read_method.hashCode()) * 31) + this.card_brand.hashCode()) * 31) + this.last4.hashCode()) * 31) + this.date.hashCode()) * 31) + this.time.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StripeDetails(location_name=");
        sb.append(this.location_name).append(", location_address1=").append(this.location_address1).append(", location_address2=").append(this.location_address2).append(", location_city=").append(this.location_city).append(", location_state=").append(this.location_state).append(", location_country=").append(this.location_country).append(", location_postal_code=").append(this.location_postal_code).append(", read_method=").append(this.read_method).append(", card_brand=").append(this.card_brand).append(", last4=").append(this.last4).append(", date=").append(this.date).append(", time=");
        sb.append(this.time).append(')');
        return sb.toString();
    }

    public StripeDetails(String location_name, String location_address1, String location_address2, String str, String str2, String location_country, String str3, String read_method, String card_brand, String last4, String date, String time) {
        Intrinsics.checkNotNullParameter(location_name, "location_name");
        Intrinsics.checkNotNullParameter(location_address1, "location_address1");
        Intrinsics.checkNotNullParameter(location_address2, "location_address2");
        Intrinsics.checkNotNullParameter(location_country, "location_country");
        Intrinsics.checkNotNullParameter(read_method, "read_method");
        Intrinsics.checkNotNullParameter(card_brand, "card_brand");
        Intrinsics.checkNotNullParameter(last4, "last4");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(time, "time");
        this.location_name = location_name;
        this.location_address1 = location_address1;
        this.location_address2 = location_address2;
        this.location_city = str;
        this.location_state = str2;
        this.location_country = location_country;
        this.location_postal_code = str3;
        this.read_method = read_method;
        this.card_brand = card_brand;
        this.last4 = last4;
        this.date = date;
        this.time = time;
    }

    public final String getLocation_name() {
        return this.location_name;
    }

    public final String getLocation_address1() {
        return this.location_address1;
    }

    public final String getLocation_address2() {
        return this.location_address2;
    }

    public final String getLocation_city() {
        return this.location_city;
    }

    public final String getLocation_state() {
        return this.location_state;
    }

    public final String getLocation_country() {
        return this.location_country;
    }

    public final String getLocation_postal_code() {
        return this.location_postal_code;
    }

    public final String getRead_method() {
        return this.read_method;
    }

    public final String getCard_brand() {
        return this.card_brand;
    }

    public final String getLast4() {
        return this.last4;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getTime() {
        return this.time;
    }
}
