package com.stripe.proto.model.sdk;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: Cart.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eBm\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013Jn\u0010\u0014\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0010H\u0016R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/model/sdk/Cart;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/Cart$Builder;", "line_items", "", "Lcom/stripe/proto/model/sdk/LineItem;", "modifiers", "Lcom/stripe/proto/model/sdk/Modifier;", "discounts", "Lcom/stripe/proto/model/sdk/Discount;", "tenders", "Lcom/stripe/proto/model/sdk/Tender;", FirebaseAnalytics.Param.TAX, "", "total", FirebaseAnalytics.Param.CURRENCY, "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Cart extends Message<Cart, Builder> {
    public static final ProtoAdapter<Cart> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String currency;

    @WireField(adapter = "com.stripe.proto.model.sdk.Discount#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<Discount> discounts;

    @WireField(adapter = "com.stripe.proto.model.sdk.LineItem#ADAPTER", jsonName = "lineItems", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<LineItem> line_items;

    @WireField(adapter = "com.stripe.proto.model.sdk.Modifier#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<Modifier> modifiers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long tax;

    @WireField(adapter = "com.stripe.proto.model.sdk.Tender#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 4)
    public final List<Tender> tenders;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final long total;

    public Cart() {
        this(null, null, null, null, 0L, 0L, null, null, 255, null);
    }

    public /* synthetic */ Cart(List list, List list2, List list3, List list4, long j, long j2, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? CollectionsKt.emptyList() : list3, (i & 8) != 0 ? CollectionsKt.emptyList() : list4, (i & 16) != 0 ? 0L : j, (i & 32) != 0 ? 0L : j2, (i & 64) != 0 ? "" : str, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cart(List<LineItem> line_items, List<Modifier> modifiers, List<Discount> discounts, List<Tender> tenders, long j, long j2, String currency, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(line_items, "line_items");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        Intrinsics.checkNotNullParameter(tenders, "tenders");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tax = j;
        this.total = j2;
        this.currency = currency;
        this.line_items = Internal.immutableCopyOf("line_items", line_items);
        this.modifiers = Internal.immutableCopyOf("modifiers", modifiers);
        this.discounts = Internal.immutableCopyOf("discounts", discounts);
        this.tenders = Internal.immutableCopyOf("tenders", tenders);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.line_items = this.line_items;
        builder.modifiers = this.modifiers;
        builder.discounts = this.discounts;
        builder.tenders = this.tenders;
        builder.tax = this.tax;
        builder.total = this.total;
        builder.currency = this.currency;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Cart)) {
            return false;
        }
        Cart cart = (Cart) other;
        return Intrinsics.areEqual(unknownFields(), cart.unknownFields()) && Intrinsics.areEqual(this.line_items, cart.line_items) && Intrinsics.areEqual(this.modifiers, cart.modifiers) && Intrinsics.areEqual(this.discounts, cart.discounts) && Intrinsics.areEqual(this.tenders, cart.tenders) && this.tax == cart.tax && this.total == cart.total && Intrinsics.areEqual(this.currency, cart.currency);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((unknownFields().hashCode() * 37) + this.line_items.hashCode()) * 37) + this.modifiers.hashCode()) * 37) + this.discounts.hashCode()) * 37) + this.tenders.hashCode()) * 37) + Long.hashCode(this.tax)) * 37) + Long.hashCode(this.total)) * 37) + this.currency.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.line_items.isEmpty()) {
            arrayList.add("line_items=" + this.line_items);
        }
        if (!this.modifiers.isEmpty()) {
            arrayList.add("modifiers=" + this.modifiers);
        }
        if (!this.discounts.isEmpty()) {
            arrayList.add("discounts=" + this.discounts);
        }
        if (!this.tenders.isEmpty()) {
            arrayList.add("tenders=" + this.tenders);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("tax=" + this.tax);
        arrayList2.add("total=" + this.total);
        arrayList2.add("currency=" + Internal.sanitize(this.currency));
        return CollectionsKt.joinToString$default(arrayList, ", ", "Cart{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Cart copy$default(Cart cart, List list, List list2, List list3, List list4, long j, long j2, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cart.line_items;
        }
        if ((i & 2) != 0) {
            list2 = cart.modifiers;
        }
        if ((i & 4) != 0) {
            list3 = cart.discounts;
        }
        if ((i & 8) != 0) {
            list4 = cart.tenders;
        }
        if ((i & 16) != 0) {
            j = cart.tax;
        }
        if ((i & 32) != 0) {
            j2 = cart.total;
        }
        if ((i & 64) != 0) {
            str = cart.currency;
        }
        if ((i & 128) != 0) {
            byteString = cart.unknownFields();
        }
        long j3 = j2;
        long j4 = j;
        List list5 = list3;
        List list6 = list4;
        return cart.copy(list, list2, list5, list6, j4, j3, str, byteString);
    }

    public final Cart copy(List<LineItem> line_items, List<Modifier> modifiers, List<Discount> discounts, List<Tender> tenders, long tax, long total, String currency, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(line_items, "line_items");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        Intrinsics.checkNotNullParameter(tenders, "tenders");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Cart(line_items, modifiers, discounts, tenders, tax, total, currency, unknownFields);
    }

    /* JADX INFO: compiled from: Cart.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007J\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0007J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000eR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/sdk/Cart$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/Cart;", "()V", FirebaseAnalytics.Param.CURRENCY, "", "discounts", "", "Lcom/stripe/proto/model/sdk/Discount;", "line_items", "Lcom/stripe/proto/model/sdk/LineItem;", "modifiers", "Lcom/stripe/proto/model/sdk/Modifier;", FirebaseAnalytics.Param.TAX, "", "tenders", "Lcom/stripe/proto/model/sdk/Tender;", "total", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Cart, Builder> {
        public long tax;
        public long total;
        public List<LineItem> line_items = CollectionsKt.emptyList();
        public List<Modifier> modifiers = CollectionsKt.emptyList();
        public List<Discount> discounts = CollectionsKt.emptyList();
        public List<Tender> tenders = CollectionsKt.emptyList();
        public String currency = "";

        public final Builder line_items(List<LineItem> line_items) {
            Intrinsics.checkNotNullParameter(line_items, "line_items");
            Internal.checkElementsNotNull(line_items);
            this.line_items = line_items;
            return this;
        }

        public final Builder modifiers(List<Modifier> modifiers) {
            Intrinsics.checkNotNullParameter(modifiers, "modifiers");
            Internal.checkElementsNotNull(modifiers);
            this.modifiers = modifiers;
            return this;
        }

        public final Builder discounts(List<Discount> discounts) {
            Intrinsics.checkNotNullParameter(discounts, "discounts");
            Internal.checkElementsNotNull(discounts);
            this.discounts = discounts;
            return this;
        }

        public final Builder tenders(List<Tender> tenders) {
            Intrinsics.checkNotNullParameter(tenders, "tenders");
            Internal.checkElementsNotNull(tenders);
            this.tenders = tenders;
            return this;
        }

        public final Builder tax(long tax) {
            this.tax = tax;
            return this;
        }

        public final Builder total(long total) {
            this.total = total;
            return this;
        }

        public final Builder currency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.currency = currency;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Cart build() {
            return new Cart(this.line_items, this.modifiers, this.discounts, this.tenders, this.tax, this.total, this.currency, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Cart.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/Cart$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/Cart;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/Cart$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Cart build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Cart.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Cart>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.Cart$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Cart value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + LineItem.ADAPTER.asRepeated().encodedSizeWithTag(1, value.line_items) + Modifier.ADAPTER.asRepeated().encodedSizeWithTag(2, value.modifiers) + Discount.ADAPTER.asRepeated().encodedSizeWithTag(3, value.discounts) + Tender.ADAPTER.asRepeated().encodedSizeWithTag(4, value.tenders);
                if (value.tax != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.tax));
                }
                if (value.total != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(6, Long.valueOf(value.total));
                }
                return !Intrinsics.areEqual(value.currency, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(7, value.currency) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Cart value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                LineItem.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.line_items);
                Modifier.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.modifiers);
                Discount.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.discounts);
                Tender.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.tenders);
                if (value.tax != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.tax));
                }
                if (value.total != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 6, Long.valueOf(value.total));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.currency);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Cart value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.currency);
                }
                if (value.total != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 6, Long.valueOf(value.total));
                }
                if (value.tax != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.tax));
                }
                Tender.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.tenders);
                Discount.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.discounts);
                Modifier.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.modifiers);
                LineItem.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.line_items);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Cart decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                String strDecode = "";
                long jLongValue2 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(LineItem.ADAPTER.decode(reader));
                                break;
                            case 2:
                                arrayList2.add(Modifier.ADAPTER.decode(reader));
                                break;
                            case 3:
                                arrayList3.add(Discount.ADAPTER.decode(reader));
                                break;
                            case 4:
                                arrayList4.add(Tender.ADAPTER.decode(reader));
                                break;
                            case 5:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 6:
                                jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 7:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Cart(arrayList, arrayList2, arrayList3, arrayList4, jLongValue, jLongValue2, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Cart redact(Cart value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Cart.copy$default(value, Internal.m361redactElements(value.line_items, LineItem.ADAPTER), Internal.m361redactElements(value.modifiers, Modifier.ADAPTER), Internal.m361redactElements(value.discounts, Discount.ADAPTER), Internal.m361redactElements(value.tenders, Tender.ADAPTER), 0L, 0L, null, ByteString.EMPTY, 112, null);
            }
        };
    }
}
