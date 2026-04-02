package com.stripe.proto.event_channel.pub.message;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.stripe.proto.event_channel.pub.message.DisplayPayload;
import com.stripe.proto.model.sdk.Cart;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DisplayPayload.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$Builder;", "type", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$DisplayType;", "cart", "Lcom/stripe/proto/model/sdk/Cart;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$DisplayType;Lcom/stripe/proto/model/sdk/Cart;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "DisplayType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisplayPayload extends Message<DisplayPayload, Builder> {
    public static final ProtoAdapter<DisplayPayload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Cart#ADAPTER", oneofName = "payload", schemaIndex = 1, tag = 2)
    public final Cart cart;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.DisplayPayload$DisplayType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DisplayType type;

    public DisplayPayload() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DisplayPayload(DisplayType displayType, Cart cart, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DisplayType.DISPLAY_TYPE_INVALID : displayType, (i & 2) != 0 ? null : cart, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplayPayload(DisplayType type, Cart cart, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.cart = cart;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.cart = this.cart;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DisplayPayload)) {
            return false;
        }
        DisplayPayload displayPayload = (DisplayPayload) other;
        return Intrinsics.areEqual(unknownFields(), displayPayload.unknownFields()) && this.type == displayPayload.type && Intrinsics.areEqual(this.cart, displayPayload.cart);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
        Cart cart = this.cart;
        int iHashCode2 = iHashCode + (cart != null ? cart.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        if (this.cart != null) {
            arrayList2.add("cart=" + this.cart);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DisplayPayload{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DisplayPayload copy$default(DisplayPayload displayPayload, DisplayType displayType, Cart cart, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            displayType = displayPayload.type;
        }
        if ((i & 2) != 0) {
            cart = displayPayload.cart;
        }
        if ((i & 4) != 0) {
            byteString = displayPayload.unknownFields();
        }
        return displayPayload.copy(displayType, cart, byteString);
    }

    public final DisplayPayload copy(DisplayType type, Cart cart, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DisplayPayload(type, cart, unknownFields);
    }

    /* JADX INFO: compiled from: DisplayPayload.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;", "()V", "cart", "Lcom/stripe/proto/model/sdk/Cart;", "type", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$DisplayType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DisplayPayload, Builder> {
        public Cart cart;
        public DisplayType type = DisplayType.DISPLAY_TYPE_INVALID;

        public final Builder type(DisplayType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder cart(Cart cart) {
            this.cart = cart;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DisplayPayload build() {
            return new DisplayPayload(this.type, this.cart, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DisplayPayload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DisplayPayload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DisplayPayload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DisplayPayload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.DisplayPayload$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DisplayPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != DisplayPayload.DisplayType.DISPLAY_TYPE_INVALID) {
                    size += DisplayPayload.DisplayType.ADAPTER.encodedSizeWithTag(1, value.type);
                }
                return size + Cart.ADAPTER.encodedSizeWithTag(2, value.cart);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DisplayPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != DisplayPayload.DisplayType.DISPLAY_TYPE_INVALID) {
                    DisplayPayload.DisplayType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                Cart.ADAPTER.encodeWithTag(writer, 2, value.cart);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DisplayPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Cart.ADAPTER.encodeWithTag(writer, 2, value.cart);
                if (value.type != DisplayPayload.DisplayType.DISPLAY_TYPE_INVALID) {
                    DisplayPayload.DisplayType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DisplayPayload decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DisplayPayload.DisplayType displayTypeDecode = DisplayPayload.DisplayType.DISPLAY_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                Cart cartDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DisplayPayload(displayTypeDecode, cartDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            displayTypeDecode = DisplayPayload.DisplayType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        cartDecode = Cart.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DisplayPayload redact(DisplayPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Cart cart = value.cart;
                return DisplayPayload.copy$default(value, null, cart != null ? Cart.ADAPTER.redact(cart) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DisplayPayload.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$DisplayType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DISPLAY_TYPE_INVALID", "CART", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DisplayType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DisplayType[] $VALUES;
        public static final ProtoAdapter<DisplayType> ADAPTER;
        public static final DisplayType CART;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DisplayType DISPLAY_TYPE_INVALID;
        private final int value;

        private static final /* synthetic */ DisplayType[] $values() {
            return new DisplayType[]{DISPLAY_TYPE_INVALID, CART};
        }

        @JvmStatic
        public static final DisplayType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DisplayType> getEntries() {
            return $ENTRIES;
        }

        public static DisplayType valueOf(String str) {
            return (DisplayType) Enum.valueOf(DisplayType.class, str);
        }

        public static DisplayType[] values() {
            return (DisplayType[]) $VALUES.clone();
        }

        private DisplayType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DisplayType displayType = new DisplayType("DISPLAY_TYPE_INVALID", 0, 0);
            DISPLAY_TYPE_INVALID = displayType;
            CART = new DisplayType("CART", 1, 1);
            DisplayType[] displayTypeArr$values = $values();
            $VALUES = displayTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(displayTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DisplayType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DisplayType>(orCreateKotlinClass, syntax, displayType) { // from class: com.stripe.proto.event_channel.pub.message.DisplayPayload$DisplayType$Companion$ADAPTER$1
                {
                    DisplayPayload.DisplayType displayType2 = displayType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public DisplayPayload.DisplayType fromValue(int value) {
                    return DisplayPayload.DisplayType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: DisplayPayload.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$DisplayType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload$DisplayType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DisplayType fromValue(int value) {
                if (value == 0) {
                    return DisplayType.DISPLAY_TYPE_INVALID;
                }
                if (value != 1) {
                    return null;
                }
                return DisplayType.CART;
            }
        }
    }
}
