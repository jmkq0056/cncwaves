package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CartLineItem.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 )2\u00060\u0001j\u0002`\u0002:\u0003'()B3\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB%\b\u0000\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\rJ\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J'\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0004HÖ\u0001J\u0006\u0010\u001d\u001a\u00020\u0000J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J&\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%HÁ\u0001¢\u0006\u0002\b&R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006*"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CartLineItem;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "description", "", FirebaseAnalytics.Param.QUANTITY, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;IJLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;IJ)V", "getAmount", "()J", "getDescription", "()Ljava/lang/String;", "getQuantity", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toBuilder", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class CartLineItem implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long amount;
    private final String description;
    private final int quantity;

    public CartLineItem() {
        this((String) null, 0, 0L, 7, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ CartLineItem copy$default(CartLineItem cartLineItem, String str, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = cartLineItem.description;
        }
        if ((i2 & 2) != 0) {
            i = cartLineItem.quantity;
        }
        if ((i2 & 4) != 0) {
            j = cartLineItem.amount;
        }
        return cartLineItem.copy(str, i, j);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getQuantity() {
        return this.quantity;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    public final CartLineItem copy(String description, int quantity, long amount) {
        Intrinsics.checkNotNullParameter(description, "description");
        return new CartLineItem(description, quantity, amount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CartLineItem)) {
            return false;
        }
        CartLineItem cartLineItem = (CartLineItem) other;
        return Intrinsics.areEqual(this.description, cartLineItem.description) && this.quantity == cartLineItem.quantity && this.amount == cartLineItem.amount;
    }

    public int hashCode() {
        return (((this.description.hashCode() * 31) + Integer.hashCode(this.quantity)) * 31) + Long.hashCode(this.amount);
    }

    public String toString() {
        return "CartLineItem(description=" + this.description + ", quantity=" + this.quantity + ", amount=" + this.amount + ')';
    }

    /* JADX INFO: compiled from: CartLineItem.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CartLineItem$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CartLineItem;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CartLineItem> serializer() {
            return CartLineItem$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CartLineItem(int i, String str, int i2, long j, SerializationConstructorMarker serializationConstructorMarker) {
        this.description = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.quantity = 0;
        } else {
            this.quantity = i2;
        }
        if ((i & 4) == 0) {
            this.amount = 0L;
        } else {
            this.amount = j;
        }
    }

    public CartLineItem(String description, int i, long j) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.description = description;
        this.quantity = i;
        this.amount = j;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(CartLineItem self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.description, "")) {
            output.encodeStringElement(serialDesc, 0, self.description);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.quantity != 0) {
            output.encodeIntElement(serialDesc, 1, self.quantity);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.amount == 0) {
            return;
        }
        output.encodeLongElement(serialDesc, 2, self.amount);
    }

    public /* synthetic */ CartLineItem(String str, int i, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? 0L : j);
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    public final long getAmount() {
        return this.amount;
    }

    /* JADX INFO: compiled from: CartLineItem.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;", "", "description", "", FirebaseAnalytics.Param.QUANTITY, "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "(Ljava/lang/String;IJ)V", "getAmount", "()J", "setAmount", "(J)V", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "getQuantity", "()I", "setQuantity", "(I)V", "build", "Lcom/stripe/stripeterminal/external/models/CartLineItem;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private long amount;
        private String description;
        private int quantity;

        public Builder(String description, int i, long j) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.description = description;
            this.quantity = i;
            this.amount = j;
        }

        public final String getDescription() {
            return this.description;
        }

        public final void setDescription(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.description = str;
        }

        public final int getQuantity() {
            return this.quantity;
        }

        public final void setQuantity(int i) {
            this.quantity = i;
        }

        public final long getAmount() {
            return this.amount;
        }

        public final void setAmount(long j) {
            this.amount = j;
        }

        public final CartLineItem build() {
            return new CartLineItem(this.description, this.quantity, this.amount);
        }
    }

    public final CartLineItem toBuilder() {
        return new CartLineItem(this.description, this.quantity, this.amount);
    }
}
