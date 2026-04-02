package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Order.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\bA\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bé\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0015\u001a\u00020\n\u0012\u0006\u0010\u0016\u001a\u00020\n\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b!\u0010\"J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\u0019\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bHÆ\u0003J\t\u0010G\u001a\u00020\nHÆ\u0003J\t\u0010H\u001a\u00020\nHÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010L\u001a\u00020\nHÆ\u0003J\t\u0010M\u001a\u00020\nHÆ\u0003J\t\u0010N\u001a\u00020\nHÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010P\u001a\u00020\nHÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010R\u001a\u00020\nHÆ\u0003J\t\u0010S\u001a\u00020\nHÆ\u0003J\t\u0010T\u001a\u00020\u0018HÆ\u0003J\t\u0010U\u001a\u00020\u0018HÆ\u0003J\t\u0010V\u001a\u00020\u0018HÆ\u0003J\t\u0010W\u001a\u00020\u0018HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010?J\u0010\u0010[\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0002\u0010BJ \u0002\u0010\\\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\n2\b\b\u0002\u0010\u0011\u001a\u00020\n2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0013\u001a\u00020\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0015\u001a\u00020\n2\b\b\u0002\u0010\u0016\u001a\u00020\n2\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u00182\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0018HÆ\u0001¢\u0006\u0002\u0010]J\u0013\u0010^\u001a\u00020_2\b\u0010`\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010a\u001a\u00020\u0003HÖ\u0001J\t\u0010b\u001a\u00020\nHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010$R!\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b*\u0010)R\u0013\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b+\u0010)R\u0013\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b,\u0010)R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b-\u0010)R\u0011\u0010\u000f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b.\u0010)R\u0011\u0010\u0010\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b/\u0010)R\u0011\u0010\u0011\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b0\u0010)R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b1\u0010)R\u0011\u0010\u0013\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b2\u0010)R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b3\u0010)R\u0011\u0010\u0015\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b4\u0010)R\u0011\u0010\u0016\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b5\u0010)R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0011\u0010\u0019\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b8\u00107R\u0011\u0010\u001a\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b9\u00107R\u0011\u0010\u001b\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b:\u00107R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b=\u0010)R\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010@\u001a\u0004\b>\u0010?R\u0015\u0010 \u001a\u0004\u0018\u00010\u0018¢\u0006\n\n\u0002\u0010C\u001a\u0004\bA\u0010B¨\u0006c"}, d2 = {"Lcom/example/digitalkiosk/models/Order;", "", OfflineStorageConstantsKt.ID, "", "order_number", FirebaseAnalytics.Param.ITEMS, "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/OrderItem;", "Lkotlin/collections/ArrayList;", "order_type", "", "payment_method", "dinein_table", "pickup_time", "pickup_number", "cafe_name", "cafe_address", "cafe_city", "cafe_zipcode", "cafe_phone", "cafe_vat", "kiosk_id", "formatted_date", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.TAX, "tax_percent", "card_fee", "stripe_details", "Lcom/example/digitalkiosk/models/StripeDetails;", "voucher_name", "voucher_discount", "voucher_discount_amount", "<init>", "(IILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFLcom/example/digitalkiosk/models/StripeDetails;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)V", "getId", "()I", "getOrder_number", "getItems", "()Ljava/util/ArrayList;", "getOrder_type", "()Ljava/lang/String;", "getPayment_method", "getDinein_table", "getPickup_time", "getPickup_number", "getCafe_name", "getCafe_address", "getCafe_city", "getCafe_zipcode", "getCafe_phone", "getCafe_vat", "getKiosk_id", "getFormatted_date", "getAmount", "()F", "getTax", "getTax_percent", "getCard_fee", "getStripe_details", "()Lcom/example/digitalkiosk/models/StripeDetails;", "getVoucher_name", "getVoucher_discount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getVoucher_discount_amount", "()Ljava/lang/Float;", "Ljava/lang/Float;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "copy", "(IILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFLcom/example/digitalkiosk/models/StripeDetails;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)Lcom/example/digitalkiosk/models/Order;", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Order {
    private final float amount;
    private final String cafe_address;
    private final String cafe_city;
    private final String cafe_name;
    private final String cafe_phone;
    private final String cafe_vat;
    private final String cafe_zipcode;
    private final float card_fee;
    private final String dinein_table;
    private final String formatted_date;
    private final int id;
    private final ArrayList<OrderItem> items;
    private final String kiosk_id;
    private final int order_number;
    private final String order_type;
    private final String payment_method;
    private final String pickup_number;
    private final String pickup_time;
    private final StripeDetails stripe_details;
    private final float tax;
    private final float tax_percent;
    private final Integer voucher_discount;
    private final Float voucher_discount_amount;
    private final String voucher_name;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Order copy$default(Order order, int i, int i2, ArrayList arrayList, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, float f, float f2, float f3, float f4, StripeDetails stripeDetails, String str14, Integer num, Float f5, int i3, Object obj) {
        Float f6;
        Integer num2;
        int i4 = (i3 & 1) != 0 ? order.id : i;
        int i5 = (i3 & 2) != 0 ? order.order_number : i2;
        ArrayList arrayList2 = (i3 & 4) != 0 ? order.items : arrayList;
        String str15 = (i3 & 8) != 0 ? order.order_type : str;
        String str16 = (i3 & 16) != 0 ? order.payment_method : str2;
        String str17 = (i3 & 32) != 0 ? order.dinein_table : str3;
        String str18 = (i3 & 64) != 0 ? order.pickup_time : str4;
        String str19 = (i3 & 128) != 0 ? order.pickup_number : str5;
        String str20 = (i3 & 256) != 0 ? order.cafe_name : str6;
        String str21 = (i3 & 512) != 0 ? order.cafe_address : str7;
        String str22 = (i3 & 1024) != 0 ? order.cafe_city : str8;
        String str23 = (i3 & 2048) != 0 ? order.cafe_zipcode : str9;
        String str24 = (i3 & 4096) != 0 ? order.cafe_phone : str10;
        String str25 = (i3 & 8192) != 0 ? order.cafe_vat : str11;
        int i6 = i4;
        String str26 = (i3 & 16384) != 0 ? order.kiosk_id : str12;
        String str27 = (i3 & 32768) != 0 ? order.formatted_date : str13;
        float f7 = (i3 & 65536) != 0 ? order.amount : f;
        float f8 = (i3 & 131072) != 0 ? order.tax : f2;
        float f9 = (i3 & 262144) != 0 ? order.tax_percent : f3;
        float f10 = (i3 & 524288) != 0 ? order.card_fee : f4;
        StripeDetails stripeDetails2 = (i3 & 1048576) != 0 ? order.stripe_details : stripeDetails;
        String str28 = (i3 & 2097152) != 0 ? order.voucher_name : str14;
        Integer num3 = (i3 & 4194304) != 0 ? order.voucher_discount : num;
        if ((i3 & 8388608) != 0) {
            num2 = num3;
            f6 = order.voucher_discount_amount;
        } else {
            f6 = f5;
            num2 = num3;
        }
        return order.copy(i6, i5, arrayList2, str15, str16, str17, str18, str19, str20, str21, str22, str23, str24, str25, str26, str27, f7, f8, f9, f10, stripeDetails2, str28, num2, f6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCafe_address() {
        return this.cafe_address;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCafe_city() {
        return this.cafe_city;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getCafe_zipcode() {
        return this.cafe_zipcode;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getCafe_phone() {
        return this.cafe_phone;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getCafe_vat() {
        return this.cafe_vat;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getKiosk_id() {
        return this.kiosk_id;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getFormatted_date() {
        return this.formatted_date;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final float getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final float getTax() {
        return this.tax;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final float getTax_percent() {
        return this.tax_percent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getOrder_number() {
        return this.order_number;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final float getCard_fee() {
        return this.card_fee;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final StripeDetails getStripe_details() {
        return this.stripe_details;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getVoucher_name() {
        return this.voucher_name;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final Integer getVoucher_discount() {
        return this.voucher_discount;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final Float getVoucher_discount_amount() {
        return this.voucher_discount_amount;
    }

    public final ArrayList<OrderItem> component3() {
        return this.items;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOrder_type() {
        return this.order_type;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPayment_method() {
        return this.payment_method;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDinein_table() {
        return this.dinein_table;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPickup_time() {
        return this.pickup_time;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPickup_number() {
        return this.pickup_number;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCafe_name() {
        return this.cafe_name;
    }

    public final Order copy(int id, int order_number, ArrayList<OrderItem> items, String order_type, String payment_method, String dinein_table, String pickup_time, String pickup_number, String cafe_name, String cafe_address, String cafe_city, String cafe_zipcode, String cafe_phone, String cafe_vat, String kiosk_id, String formatted_date, float amount, float tax, float tax_percent, float card_fee, StripeDetails stripe_details, String voucher_name, Integer voucher_discount, Float voucher_discount_amount) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(order_type, "order_type");
        Intrinsics.checkNotNullParameter(payment_method, "payment_method");
        Intrinsics.checkNotNullParameter(cafe_name, "cafe_name");
        Intrinsics.checkNotNullParameter(cafe_address, "cafe_address");
        Intrinsics.checkNotNullParameter(cafe_city, "cafe_city");
        Intrinsics.checkNotNullParameter(cafe_phone, "cafe_phone");
        Intrinsics.checkNotNullParameter(kiosk_id, "kiosk_id");
        Intrinsics.checkNotNullParameter(formatted_date, "formatted_date");
        return new Order(id, order_number, items, order_type, payment_method, dinein_table, pickup_time, pickup_number, cafe_name, cafe_address, cafe_city, cafe_zipcode, cafe_phone, cafe_vat, kiosk_id, formatted_date, amount, tax, tax_percent, card_fee, stripe_details, voucher_name, voucher_discount, voucher_discount_amount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Order)) {
            return false;
        }
        Order order = (Order) other;
        return this.id == order.id && this.order_number == order.order_number && Intrinsics.areEqual(this.items, order.items) && Intrinsics.areEqual(this.order_type, order.order_type) && Intrinsics.areEqual(this.payment_method, order.payment_method) && Intrinsics.areEqual(this.dinein_table, order.dinein_table) && Intrinsics.areEqual(this.pickup_time, order.pickup_time) && Intrinsics.areEqual(this.pickup_number, order.pickup_number) && Intrinsics.areEqual(this.cafe_name, order.cafe_name) && Intrinsics.areEqual(this.cafe_address, order.cafe_address) && Intrinsics.areEqual(this.cafe_city, order.cafe_city) && Intrinsics.areEqual(this.cafe_zipcode, order.cafe_zipcode) && Intrinsics.areEqual(this.cafe_phone, order.cafe_phone) && Intrinsics.areEqual(this.cafe_vat, order.cafe_vat) && Intrinsics.areEqual(this.kiosk_id, order.kiosk_id) && Intrinsics.areEqual(this.formatted_date, order.formatted_date) && Float.compare(this.amount, order.amount) == 0 && Float.compare(this.tax, order.tax) == 0 && Float.compare(this.tax_percent, order.tax_percent) == 0 && Float.compare(this.card_fee, order.card_fee) == 0 && Intrinsics.areEqual(this.stripe_details, order.stripe_details) && Intrinsics.areEqual(this.voucher_name, order.voucher_name) && Intrinsics.areEqual(this.voucher_discount, order.voucher_discount) && Intrinsics.areEqual((Object) this.voucher_discount_amount, (Object) order.voucher_discount_amount);
    }

    public int hashCode() {
        int iHashCode = ((((((((Integer.hashCode(this.id) * 31) + Integer.hashCode(this.order_number)) * 31) + this.items.hashCode()) * 31) + this.order_type.hashCode()) * 31) + this.payment_method.hashCode()) * 31;
        String str = this.dinein_table;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.pickup_time;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.pickup_number;
        int iHashCode4 = (((((((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.cafe_name.hashCode()) * 31) + this.cafe_address.hashCode()) * 31) + this.cafe_city.hashCode()) * 31;
        String str4 = this.cafe_zipcode;
        int iHashCode5 = (((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.cafe_phone.hashCode()) * 31;
        String str5 = this.cafe_vat;
        int iHashCode6 = (((((((((((((iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.kiosk_id.hashCode()) * 31) + this.formatted_date.hashCode()) * 31) + Float.hashCode(this.amount)) * 31) + Float.hashCode(this.tax)) * 31) + Float.hashCode(this.tax_percent)) * 31) + Float.hashCode(this.card_fee)) * 31;
        StripeDetails stripeDetails = this.stripe_details;
        int iHashCode7 = (iHashCode6 + (stripeDetails == null ? 0 : stripeDetails.hashCode())) * 31;
        String str6 = this.voucher_name;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num = this.voucher_discount;
        int iHashCode9 = (iHashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        Float f = this.voucher_discount_amount;
        return iHashCode9 + (f != null ? f.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Order(id=");
        sb.append(this.id).append(", order_number=").append(this.order_number).append(", items=").append(this.items).append(", order_type=").append(this.order_type).append(", payment_method=").append(this.payment_method).append(", dinein_table=").append(this.dinein_table).append(", pickup_time=").append(this.pickup_time).append(", pickup_number=").append(this.pickup_number).append(", cafe_name=").append(this.cafe_name).append(", cafe_address=").append(this.cafe_address).append(", cafe_city=").append(this.cafe_city).append(", cafe_zipcode=");
        sb.append(this.cafe_zipcode).append(", cafe_phone=").append(this.cafe_phone).append(", cafe_vat=").append(this.cafe_vat).append(", kiosk_id=").append(this.kiosk_id).append(", formatted_date=").append(this.formatted_date).append(", amount=").append(this.amount).append(", tax=").append(this.tax).append(", tax_percent=").append(this.tax_percent).append(", card_fee=").append(this.card_fee).append(", stripe_details=").append(this.stripe_details).append(", voucher_name=").append(this.voucher_name).append(", voucher_discount=").append(this.voucher_discount);
        sb.append(", voucher_discount_amount=").append(this.voucher_discount_amount).append(')');
        return sb.toString();
    }

    public Order(int i, int i2, ArrayList<OrderItem> items, String order_type, String payment_method, String str, String str2, String str3, String cafe_name, String cafe_address, String cafe_city, String str4, String cafe_phone, String str5, String kiosk_id, String formatted_date, float f, float f2, float f3, float f4, StripeDetails stripeDetails, String str6, Integer num, Float f5) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(order_type, "order_type");
        Intrinsics.checkNotNullParameter(payment_method, "payment_method");
        Intrinsics.checkNotNullParameter(cafe_name, "cafe_name");
        Intrinsics.checkNotNullParameter(cafe_address, "cafe_address");
        Intrinsics.checkNotNullParameter(cafe_city, "cafe_city");
        Intrinsics.checkNotNullParameter(cafe_phone, "cafe_phone");
        Intrinsics.checkNotNullParameter(kiosk_id, "kiosk_id");
        Intrinsics.checkNotNullParameter(formatted_date, "formatted_date");
        this.id = i;
        this.order_number = i2;
        this.items = items;
        this.order_type = order_type;
        this.payment_method = payment_method;
        this.dinein_table = str;
        this.pickup_time = str2;
        this.pickup_number = str3;
        this.cafe_name = cafe_name;
        this.cafe_address = cafe_address;
        this.cafe_city = cafe_city;
        this.cafe_zipcode = str4;
        this.cafe_phone = cafe_phone;
        this.cafe_vat = str5;
        this.kiosk_id = kiosk_id;
        this.formatted_date = formatted_date;
        this.amount = f;
        this.tax = f2;
        this.tax_percent = f3;
        this.card_fee = f4;
        this.stripe_details = stripeDetails;
        this.voucher_name = str6;
        this.voucher_discount = num;
        this.voucher_discount_amount = f5;
    }

    public final int getId() {
        return this.id;
    }

    public final int getOrder_number() {
        return this.order_number;
    }

    public final ArrayList<OrderItem> getItems() {
        return this.items;
    }

    public final String getOrder_type() {
        return this.order_type;
    }

    public final String getPayment_method() {
        return this.payment_method;
    }

    public final String getDinein_table() {
        return this.dinein_table;
    }

    public final String getPickup_time() {
        return this.pickup_time;
    }

    public final String getPickup_number() {
        return this.pickup_number;
    }

    public final String getCafe_name() {
        return this.cafe_name;
    }

    public final String getCafe_address() {
        return this.cafe_address;
    }

    public final String getCafe_city() {
        return this.cafe_city;
    }

    public final String getCafe_zipcode() {
        return this.cafe_zipcode;
    }

    public final String getCafe_phone() {
        return this.cafe_phone;
    }

    public final String getCafe_vat() {
        return this.cafe_vat;
    }

    public final String getKiosk_id() {
        return this.kiosk_id;
    }

    public final String getFormatted_date() {
        return this.formatted_date;
    }

    public final float getAmount() {
        return this.amount;
    }

    public final float getTax() {
        return this.tax;
    }

    public final float getTax_percent() {
        return this.tax_percent;
    }

    public final float getCard_fee() {
        return this.card_fee;
    }

    public final StripeDetails getStripe_details() {
        return this.stripe_details;
    }

    public final String getVoucher_name() {
        return this.voucher_name;
    }

    public final Integer getVoucher_discount() {
        return this.voucher_discount;
    }

    public final Float getVoucher_discount_amount() {
        return this.voucher_discount_amount;
    }
}
