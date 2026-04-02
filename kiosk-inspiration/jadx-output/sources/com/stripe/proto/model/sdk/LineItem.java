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
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
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

/* JADX INFO: compiled from: LineItem.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010JN\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\n2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/sdk/LineItem;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/LineItem$Builder;", FirebaseAnalytics.Param.QUANTITY, "", "description", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "discounts", "", "Lcom/stripe/proto/model/sdk/Discount;", "modifiers", "Lcom/stripe/proto/model/sdk/Modifier;", "unknownFields", "Lokio/ByteString;", "(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LineItem extends Message<LineItem, Builder> {
    public static final ProtoAdapter<LineItem> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 9)
    public final long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String description;

    @WireField(adapter = "com.stripe.proto.model.sdk.Discount#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 20)
    public final List<Discount> discounts;

    @WireField(adapter = "com.stripe.proto.model.sdk.Modifier#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 21)
    public final List<Modifier> modifiers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 17)
    public final int quantity;

    public LineItem() {
        this(0, null, 0L, null, null, null, 63, null);
    }

    public /* synthetic */ LineItem(int i, String str, long j, List list, List list2, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? 0L : j, (i2 & 8) != 0 ? CollectionsKt.emptyList() : list, (i2 & 16) != 0 ? CollectionsKt.emptyList() : list2, (i2 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LineItem(int i, String description, long j, List<Discount> discounts, List<Modifier> modifiers, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.quantity = i;
        this.description = description;
        this.amount = j;
        this.discounts = Internal.immutableCopyOf("discounts", discounts);
        this.modifiers = Internal.immutableCopyOf("modifiers", modifiers);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.quantity = this.quantity;
        builder.description = this.description;
        builder.amount = this.amount;
        builder.discounts = this.discounts;
        builder.modifiers = this.modifiers;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof LineItem)) {
            return false;
        }
        LineItem lineItem = (LineItem) other;
        return Intrinsics.areEqual(unknownFields(), lineItem.unknownFields()) && this.quantity == lineItem.quantity && Intrinsics.areEqual(this.description, lineItem.description) && this.amount == lineItem.amount && Intrinsics.areEqual(this.discounts, lineItem.discounts) && Intrinsics.areEqual(this.modifiers, lineItem.modifiers);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.quantity)) * 37) + this.description.hashCode()) * 37) + Long.hashCode(this.amount)) * 37) + this.discounts.hashCode()) * 37) + this.modifiers.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("quantity=" + this.quantity);
        arrayList2.add("description=" + Internal.sanitize(this.description));
        arrayList2.add("amount=" + this.amount);
        if (!this.discounts.isEmpty()) {
            arrayList2.add("discounts=" + this.discounts);
        }
        if (!this.modifiers.isEmpty()) {
            arrayList2.add("modifiers=" + this.modifiers);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "LineItem{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LineItem copy$default(LineItem lineItem, int i, String str, long j, List list, List list2, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = lineItem.quantity;
        }
        if ((i2 & 2) != 0) {
            str = lineItem.description;
        }
        if ((i2 & 4) != 0) {
            j = lineItem.amount;
        }
        if ((i2 & 8) != 0) {
            list = lineItem.discounts;
        }
        if ((i2 & 16) != 0) {
            list2 = lineItem.modifiers;
        }
        if ((i2 & 32) != 0) {
            byteString = lineItem.unknownFields();
        }
        ByteString byteString2 = byteString;
        List list3 = list;
        long j2 = j;
        return lineItem.copy(i, str, j2, list3, list2, byteString2);
    }

    public final LineItem copy(int quantity, String description, long amount, List<Discount> discounts, List<Modifier> modifiers, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new LineItem(quantity, description, amount, discounts, modifiers, unknownFields);
    }

    /* JADX INFO: compiled from: LineItem.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/sdk/LineItem$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/LineItem;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "description", "", "discounts", "", "Lcom/stripe/proto/model/sdk/Discount;", "modifiers", "Lcom/stripe/proto/model/sdk/Modifier;", FirebaseAnalytics.Param.QUANTITY, "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<LineItem, Builder> {
        public long amount;
        public String description = "";
        public List<Discount> discounts = CollectionsKt.emptyList();
        public List<Modifier> modifiers = CollectionsKt.emptyList();
        public int quantity;

        public final Builder quantity(int quantity) {
            this.quantity = quantity;
            return this;
        }

        public final Builder description(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.description = description;
            return this;
        }

        public final Builder amount(long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder discounts(List<Discount> discounts) {
            Intrinsics.checkNotNullParameter(discounts, "discounts");
            Internal.checkElementsNotNull(discounts);
            this.discounts = discounts;
            return this;
        }

        public final Builder modifiers(List<Modifier> modifiers) {
            Intrinsics.checkNotNullParameter(modifiers, "modifiers");
            Internal.checkElementsNotNull(modifiers);
            this.modifiers = modifiers;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public LineItem build() {
            return new LineItem(this.quantity, this.description, this.amount, this.discounts, this.modifiers, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: LineItem.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/LineItem$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/LineItem;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/LineItem$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ LineItem build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LineItem.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<LineItem>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.LineItem$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(LineItem value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.quantity != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(17, Integer.valueOf(value.quantity));
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                }
                if (value.amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(9, Long.valueOf(value.amount));
                }
                return size + Discount.ADAPTER.asRepeated().encodedSizeWithTag(20, value.discounts) + Modifier.ADAPTER.asRepeated().encodedSizeWithTag(21, value.modifiers);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, LineItem value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.quantity != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 17, Integer.valueOf(value.quantity));
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                }
                if (value.amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 9, Long.valueOf(value.amount));
                }
                Discount.ADAPTER.asRepeated().encodeWithTag(writer, 20, value.discounts);
                Modifier.ADAPTER.asRepeated().encodeWithTag(writer, 21, value.modifiers);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, LineItem value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Modifier.ADAPTER.asRepeated().encodeWithTag(writer, 21, value.modifiers);
                Discount.ADAPTER.asRepeated().encodeWithTag(writer, 20, value.discounts);
                if (value.amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 9, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                }
                if (value.quantity != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 17, Integer.valueOf(value.quantity));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public LineItem decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                String strDecode = "";
                long jLongValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new LineItem(iIntValue, strDecode, jLongValue, arrayList, arrayList2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 9) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 17) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 20) {
                        arrayList.add(Discount.ADAPTER.decode(reader));
                    } else if (iNextTag == 21) {
                        arrayList2.add(Modifier.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public LineItem redact(LineItem value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return LineItem.copy$default(value, 0, null, 0L, Internal.m361redactElements(value.discounts, Discount.ADAPTER), Internal.m361redactElements(value.modifiers, Modifier.ADAPTER), ByteString.EMPTY, 7, null);
            }
        };
    }
}
