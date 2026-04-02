package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: Cart.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 /2\u00060\u0001j\u0002`\u0002:\u0003-./BC\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fB5\b\u0000\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J7\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0004HÖ\u0001J\u0006\u0010\"\u001a\u00020#J\t\u0010$\u001a\u00020\u0006HÖ\u0001J&\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+HÁ\u0001¢\u0006\u0002\b,R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016¨\u00060"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Cart;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", FirebaseAnalytics.Param.CURRENCY, "", FirebaseAnalytics.Param.TAX, "", "total", "lineItems", "", "Lcom/stripe/stripeterminal/external/models/CartLineItem;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;JJLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;JJLjava/util/List;)V", "getCurrency", "()Ljava/lang/String;", "getLineItems", "()Ljava/util/List;", "getTax", "()J", "getTotal", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toBuilder", "Lcom/stripe/stripeterminal/external/models/Cart$Builder;", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class Cart implements java.io.Serializable {
    private final String currency;
    private final List<CartLineItem> lineItems;
    private final long tax;
    private final long total;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, new ArrayListSerializer(CartLineItem$$serializer.INSTANCE)};

    public Cart() {
        this((String) null, 0L, 0L, (List) null, 15, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Cart copy$default(Cart cart, String str, long j, long j2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cart.currency;
        }
        if ((i & 2) != 0) {
            j = cart.tax;
        }
        if ((i & 4) != 0) {
            j2 = cart.total;
        }
        if ((i & 8) != 0) {
            list = cart.lineItems;
        }
        List list2 = list;
        return cart.copy(str, j, j2, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getTax() {
        return this.tax;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getTotal() {
        return this.total;
    }

    public final List<CartLineItem> component4() {
        return this.lineItems;
    }

    public final Cart copy(String currency, long tax, long total, List<CartLineItem> lineItems) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(lineItems, "lineItems");
        return new Cart(currency, tax, total, lineItems);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Cart)) {
            return false;
        }
        Cart cart = (Cart) other;
        return Intrinsics.areEqual(this.currency, cart.currency) && this.tax == cart.tax && this.total == cart.total && Intrinsics.areEqual(this.lineItems, cart.lineItems);
    }

    public int hashCode() {
        return (((((this.currency.hashCode() * 31) + Long.hashCode(this.tax)) * 31) + Long.hashCode(this.total)) * 31) + this.lineItems.hashCode();
    }

    public String toString() {
        return "Cart(currency=" + this.currency + ", tax=" + this.tax + ", total=" + this.total + ", lineItems=" + this.lineItems + ')';
    }

    /* JADX INFO: compiled from: Cart.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Cart$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Cart;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Cart> serializer() {
            return Cart$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Cart(int i, String str, long j, long j2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        this.currency = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.tax = 0L;
        } else {
            this.tax = j;
        }
        if ((i & 4) == 0) {
            this.total = 0L;
        } else {
            this.total = j2;
        }
        if ((i & 8) == 0) {
            this.lineItems = CollectionsKt.emptyList();
        } else {
            this.lineItems = list;
        }
    }

    public Cart(String currency, long j, long j2, List<CartLineItem> lineItems) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(lineItems, "lineItems");
        this.currency = currency;
        this.tax = j;
        this.total = j2;
        this.lineItems = lineItems;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(Cart self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.currency, "")) {
            output.encodeStringElement(serialDesc, 0, self.currency);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.tax != 0) {
            output.encodeLongElement(serialDesc, 1, self.tax);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.total != 0) {
            output.encodeLongElement(serialDesc, 2, self.total);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 3) && Intrinsics.areEqual(self.lineItems, CollectionsKt.emptyList())) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.lineItems);
    }

    public /* synthetic */ Cart(String str, long j, long j2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final long getTax() {
        return this.tax;
    }

    public final long getTotal() {
        return this.total;
    }

    public final List<CartLineItem> getLineItems() {
        return this.lineItems;
    }

    /* JADX INFO: compiled from: Cart.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0006\u0010\u0019\u001a\u00020\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016¨\u0006\u001b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Cart$Builder;", "", FirebaseAnalytics.Param.CURRENCY, "", FirebaseAnalytics.Param.TAX, "", "total", "lineItems", "", "Lcom/stripe/stripeterminal/external/models/CartLineItem;", "(Ljava/lang/String;JJLjava/util/List;)V", "getCurrency", "()Ljava/lang/String;", "setCurrency", "(Ljava/lang/String;)V", "getLineItems", "()Ljava/util/List;", "setLineItems", "(Ljava/util/List;)V", "getTax", "()J", "setTax", "(J)V", "getTotal", "setTotal", "build", "Lcom/stripe/stripeterminal/external/models/Cart;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String currency;
        private List<CartLineItem> lineItems;
        private long tax;
        private long total;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String currency, long j, long j2) {
            this(currency, j, j2, null, 8, null);
            Intrinsics.checkNotNullParameter(currency, "currency");
        }

        public Builder(String currency, long j, long j2, List<CartLineItem> lineItems) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            Intrinsics.checkNotNullParameter(lineItems, "lineItems");
            this.currency = currency;
            this.tax = j;
            this.total = j2;
            this.lineItems = lineItems;
        }

        public final String getCurrency() {
            return this.currency;
        }

        public final void setCurrency(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.currency = str;
        }

        public final long getTax() {
            return this.tax;
        }

        public final void setTax(long j) {
            this.tax = j;
        }

        public final long getTotal() {
            return this.total;
        }

        public final void setTotal(long j) {
            this.total = j;
        }

        public /* synthetic */ Builder(String str, long j, long j2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j, j2, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
        }

        public final List<CartLineItem> getLineItems() {
            return this.lineItems;
        }

        public final void setLineItems(List<CartLineItem> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.lineItems = list;
        }

        public final Cart build() {
            return new Cart(this.currency, this.tax, this.total, this.lineItems);
        }
    }

    public final Builder toBuilder() {
        return new Builder(this.currency, this.tax, this.total, this.lineItems);
    }
}
