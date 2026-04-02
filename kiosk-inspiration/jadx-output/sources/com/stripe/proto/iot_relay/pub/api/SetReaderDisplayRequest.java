package com.stripe.proto.iot_relay.pub.api;

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
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.iot_relay.pub.api.SetReaderDisplayRequest;
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

/* JADX INFO: compiled from: SetReaderDisplayRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0018\u0019\u001aBM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJN\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;", "device_id", "", "stripe_ephemeral_key", "type", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;", "cart", "Lcom/stripe/proto/model/sdk/Cart;", "terminal_action_id", OfflineStorageConstantsKt.READER_ID, "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;Lcom/stripe/proto/model/sdk/Cart;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "DisplayType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetReaderDisplayRequest extends Message<SetReaderDisplayRequest, Builder> {
    public static final ProtoAdapter<SetReaderDisplayRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Cart#ADAPTER", oneofName = "payload", schemaIndex = 3, tag = 4)
    public final Cart cart;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String reader_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeEphemeralKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_ephemeral_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String terminal_action_id;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.api.SetReaderDisplayRequest$DisplayType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final DisplayType type;

    public SetReaderDisplayRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ SetReaderDisplayRequest(String str, String str2, DisplayType displayType, Cart cart, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? DisplayType.DISPLAY_TYPE_INVALID : displayType, (i & 8) != 0 ? null : cart, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetReaderDisplayRequest(String device_id, String stripe_ephemeral_key, DisplayType type, Cart cart, String terminal_action_id, String reader_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.stripe_ephemeral_key = stripe_ephemeral_key;
        this.type = type;
        this.cart = cart;
        this.terminal_action_id = terminal_action_id;
        this.reader_id = reader_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.stripe_ephemeral_key = this.stripe_ephemeral_key;
        builder.type = this.type;
        builder.cart = this.cart;
        builder.terminal_action_id = this.terminal_action_id;
        builder.reader_id = this.reader_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SetReaderDisplayRequest)) {
            return false;
        }
        SetReaderDisplayRequest setReaderDisplayRequest = (SetReaderDisplayRequest) other;
        return Intrinsics.areEqual(unknownFields(), setReaderDisplayRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, setReaderDisplayRequest.device_id) && Intrinsics.areEqual(this.stripe_ephemeral_key, setReaderDisplayRequest.stripe_ephemeral_key) && this.type == setReaderDisplayRequest.type && Intrinsics.areEqual(this.cart, setReaderDisplayRequest.cart) && Intrinsics.areEqual(this.terminal_action_id, setReaderDisplayRequest.terminal_action_id) && Intrinsics.areEqual(this.reader_id, setReaderDisplayRequest.reader_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.stripe_ephemeral_key.hashCode()) * 37) + this.type.hashCode()) * 37;
        Cart cart = this.cart;
        int iHashCode2 = ((((iHashCode + (cart != null ? cart.hashCode() : 0)) * 37) + this.terminal_action_id.hashCode()) * 37) + this.reader_id.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("stripe_ephemeral_key=" + Internal.sanitize(this.stripe_ephemeral_key));
        arrayList2.add("type=" + this.type);
        if (this.cart != null) {
            arrayList2.add("cart=" + this.cart);
        }
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        arrayList2.add("reader_id=" + Internal.sanitize(this.reader_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "SetReaderDisplayRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SetReaderDisplayRequest copy$default(SetReaderDisplayRequest setReaderDisplayRequest, String str, String str2, DisplayType displayType, Cart cart, String str3, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setReaderDisplayRequest.device_id;
        }
        if ((i & 2) != 0) {
            str2 = setReaderDisplayRequest.stripe_ephemeral_key;
        }
        if ((i & 4) != 0) {
            displayType = setReaderDisplayRequest.type;
        }
        if ((i & 8) != 0) {
            cart = setReaderDisplayRequest.cart;
        }
        if ((i & 16) != 0) {
            str3 = setReaderDisplayRequest.terminal_action_id;
        }
        if ((i & 32) != 0) {
            str4 = setReaderDisplayRequest.reader_id;
        }
        if ((i & 64) != 0) {
            byteString = setReaderDisplayRequest.unknownFields();
        }
        String str5 = str4;
        ByteString byteString2 = byteString;
        String str6 = str3;
        DisplayType displayType2 = displayType;
        return setReaderDisplayRequest.copy(str, str2, displayType2, cart, str6, str5, byteString2);
    }

    public final SetReaderDisplayRequest copy(String device_id, String stripe_ephemeral_key, DisplayType type, Cart cart, String terminal_action_id, String reader_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SetReaderDisplayRequest(device_id, stripe_ephemeral_key, type, cart, terminal_action_id, reader_id, unknownFields);
    }

    /* JADX INFO: compiled from: SetReaderDisplayRequest.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;", "()V", "cart", "Lcom/stripe/proto/model/sdk/Cart;", "device_id", "", OfflineStorageConstantsKt.READER_ID, "stripe_ephemeral_key", "terminal_action_id", "type", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SetReaderDisplayRequest, Builder> {
        public Cart cart;
        public String device_id = "";
        public String stripe_ephemeral_key = "";
        public DisplayType type = DisplayType.DISPLAY_TYPE_INVALID;
        public String terminal_action_id = "";
        public String reader_id = "";

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder stripe_ephemeral_key(String stripe_ephemeral_key) {
            Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
            this.stripe_ephemeral_key = stripe_ephemeral_key;
            return this;
        }

        public final Builder type(DisplayType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            Intrinsics.checkNotNullParameter(reader_id, "reader_id");
            this.reader_id = reader_id;
            return this;
        }

        public final Builder cart(Cart cart) {
            this.cart = cart;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SetReaderDisplayRequest build() {
            return new SetReaderDisplayRequest(this.device_id, this.stripe_ephemeral_key, this.type, this.cart, this.terminal_action_id, this.reader_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SetReaderDisplayRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SetReaderDisplayRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetReaderDisplayRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SetReaderDisplayRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.SetReaderDisplayRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SetReaderDisplayRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_ephemeral_key);
                }
                if (value.type != SetReaderDisplayRequest.DisplayType.DISPLAY_TYPE_INVALID) {
                    size += SetReaderDisplayRequest.DisplayType.ADAPTER.encodedSizeWithTag(3, value.type);
                }
                int iEncodedSizeWithTag = size + Cart.ADAPTER.encodedSizeWithTag(4, value.cart);
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(5, value.terminal_action_id);
                }
                return !Intrinsics.areEqual(value.reader_id, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(6, value.reader_id) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SetReaderDisplayRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (value.type != SetReaderDisplayRequest.DisplayType.DISPLAY_TYPE_INVALID) {
                    SetReaderDisplayRequest.DisplayType.ADAPTER.encodeWithTag(writer, 3, value.type);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.reader_id);
                }
                Cart.ADAPTER.encodeWithTag(writer, 4, value.cart);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SetReaderDisplayRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Cart.ADAPTER.encodeWithTag(writer, 4, value.cart);
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.terminal_action_id);
                }
                if (value.type != SetReaderDisplayRequest.DisplayType.DISPLAY_TYPE_INVALID) {
                    SetReaderDisplayRequest.DisplayType.ADAPTER.encodeWithTag(writer, 3, value.type);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SetReaderDisplayRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                SetReaderDisplayRequest.DisplayType displayType = SetReaderDisplayRequest.DisplayType.DISPLAY_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                Cart cartDecode = null;
                SetReaderDisplayRequest.DisplayType displayTypeDecode = displayType;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                try {
                                    displayTypeDecode = SetReaderDisplayRequest.DisplayType.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 4:
                                cartDecode = Cart.ADAPTER.decode(reader);
                                break;
                            case 5:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new SetReaderDisplayRequest(strDecode4, strDecode, displayTypeDecode, cartDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SetReaderDisplayRequest redact(SetReaderDisplayRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Cart cart = value.cart;
                return SetReaderDisplayRequest.copy$default(value, null, null, null, cart != null ? Cart.ADAPTER.redact(cart) : null, null, null, ByteString.EMPTY, 55, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: SetReaderDisplayRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DISPLAY_TYPE_INVALID", "CART", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
            ADAPTER = new EnumAdapter<DisplayType>(orCreateKotlinClass, syntax, displayType) { // from class: com.stripe.proto.iot_relay.pub.api.SetReaderDisplayRequest$DisplayType$Companion$ADAPTER$1
                {
                    SetReaderDisplayRequest.DisplayType displayType2 = displayType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public SetReaderDisplayRequest.DisplayType fromValue(int value) {
                    return SetReaderDisplayRequest.DisplayType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: SetReaderDisplayRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
