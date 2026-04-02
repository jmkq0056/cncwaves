package com.stripe.proto.api.armada;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.DeviceInfo;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CreateCardReaderTokenRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ0\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "on_behalf_of", "", "merchant_display_name", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateCardReaderTokenRequest extends Message<CreateCardReaderTokenRequest, Builder> {
    public static final ProtoAdapter<CreateCardReaderTokenRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "merchantDisplayName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final String merchant_display_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "onBehalfOf", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final String on_behalf_of;

    public CreateCardReaderTokenRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CreateCardReaderTokenRequest(DeviceInfo deviceInfo, String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateCardReaderTokenRequest(DeviceInfo deviceInfo, String on_behalf_of, String merchant_display_name, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(on_behalf_of, "on_behalf_of");
        Intrinsics.checkNotNullParameter(merchant_display_name, "merchant_display_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.on_behalf_of = on_behalf_of;
        this.merchant_display_name = merchant_display_name;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.on_behalf_of = this.on_behalf_of;
        builder.merchant_display_name = this.merchant_display_name;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreateCardReaderTokenRequest)) {
            return false;
        }
        CreateCardReaderTokenRequest createCardReaderTokenRequest = (CreateCardReaderTokenRequest) other;
        return Intrinsics.areEqual(unknownFields(), createCardReaderTokenRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, createCardReaderTokenRequest.device_info) && Intrinsics.areEqual(this.on_behalf_of, createCardReaderTokenRequest.on_behalf_of) && Intrinsics.areEqual(this.merchant_display_name, createCardReaderTokenRequest.merchant_display_name);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.on_behalf_of.hashCode()) * 37) + this.merchant_display_name.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("on_behalf_of=" + Internal.sanitize(this.on_behalf_of));
        arrayList2.add("merchant_display_name=" + Internal.sanitize(this.merchant_display_name));
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreateCardReaderTokenRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CreateCardReaderTokenRequest copy$default(CreateCardReaderTokenRequest createCardReaderTokenRequest, DeviceInfo deviceInfo, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = createCardReaderTokenRequest.device_info;
        }
        if ((i & 2) != 0) {
            str = createCardReaderTokenRequest.on_behalf_of;
        }
        if ((i & 4) != 0) {
            str2 = createCardReaderTokenRequest.merchant_display_name;
        }
        if ((i & 8) != 0) {
            byteString = createCardReaderTokenRequest.unknownFields();
        }
        return createCardReaderTokenRequest.copy(deviceInfo, str, str2, byteString);
    }

    public final CreateCardReaderTokenRequest copy(DeviceInfo device_info, String on_behalf_of, String merchant_display_name, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(on_behalf_of, "on_behalf_of");
        Intrinsics.checkNotNullParameter(merchant_display_name, "merchant_display_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreateCardReaderTokenRequest(device_info, on_behalf_of, merchant_display_name, unknownFields);
    }

    /* JADX INFO: compiled from: CreateCardReaderTokenRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "merchant_display_name", "", "on_behalf_of", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreateCardReaderTokenRequest, Builder> {
        public DeviceInfo device_info;
        public String on_behalf_of = "";
        public String merchant_display_name = "";

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder on_behalf_of(String on_behalf_of) {
            Intrinsics.checkNotNullParameter(on_behalf_of, "on_behalf_of");
            this.on_behalf_of = on_behalf_of;
            return this;
        }

        public final Builder merchant_display_name(String merchant_display_name) {
            Intrinsics.checkNotNullParameter(merchant_display_name, "merchant_display_name");
            this.merchant_display_name = merchant_display_name;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreateCardReaderTokenRequest build() {
            return new CreateCardReaderTokenRequest(this.device_info, this.on_behalf_of, this.merchant_display_name, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreateCardReaderTokenRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreateCardReaderTokenRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreateCardReaderTokenRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreateCardReaderTokenRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.CreateCardReaderTokenRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreateCardReaderTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.on_behalf_of, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.on_behalf_of);
                }
                return !Intrinsics.areEqual(value.merchant_display_name, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.merchant_display_name) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreateCardReaderTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.on_behalf_of, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.on_behalf_of);
                }
                if (!Intrinsics.areEqual(value.merchant_display_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.merchant_display_name);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreateCardReaderTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.merchant_display_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.merchant_display_name);
                }
                if (!Intrinsics.areEqual(value.on_behalf_of, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.on_behalf_of);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreateCardReaderTokenRequest redact(CreateCardReaderTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return CreateCardReaderTokenRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, null, ByteString.EMPTY, 6, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreateCardReaderTokenRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CreateCardReaderTokenRequest(deviceInfoDecode, strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
