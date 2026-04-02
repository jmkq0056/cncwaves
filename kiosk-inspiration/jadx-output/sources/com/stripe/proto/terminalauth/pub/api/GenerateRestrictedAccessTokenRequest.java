package com.stripe.proto.terminalauth.pub.api;

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
import com.stripe.proto.terminalauth.pub.message.RestrictedTokenAccessType;
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

/* JADX INFO: compiled from: GenerateRestrictedAccessTokenRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "access_type", "Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;", "secret", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GenerateRestrictedAccessTokenRequest extends Message<GenerateRestrictedAccessTokenRequest, Builder> {
    public static final ProtoAdapter<GenerateRestrictedAccessTokenRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminalauth.pub.message.RestrictedTokenAccessType#ADAPTER", jsonName = "accessType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RestrictedTokenAccessType access_type;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String secret;

    public GenerateRestrictedAccessTokenRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ GenerateRestrictedAccessTokenRequest(DeviceInfo deviceInfo, RestrictedTokenAccessType restrictedTokenAccessType, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID : restrictedTokenAccessType, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GenerateRestrictedAccessTokenRequest(DeviceInfo deviceInfo, RestrictedTokenAccessType access_type, String secret, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(access_type, "access_type");
        Intrinsics.checkNotNullParameter(secret, "secret");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.access_type = access_type;
        this.secret = secret;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.access_type = this.access_type;
        builder.secret = this.secret;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof GenerateRestrictedAccessTokenRequest)) {
            return false;
        }
        GenerateRestrictedAccessTokenRequest generateRestrictedAccessTokenRequest = (GenerateRestrictedAccessTokenRequest) other;
        return Intrinsics.areEqual(unknownFields(), generateRestrictedAccessTokenRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, generateRestrictedAccessTokenRequest.device_info) && this.access_type == generateRestrictedAccessTokenRequest.access_type && Intrinsics.areEqual(this.secret, generateRestrictedAccessTokenRequest.secret);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.access_type.hashCode()) * 37) + this.secret.hashCode();
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
        arrayList2.add("access_type=" + this.access_type);
        arrayList2.add("secret=" + Internal.sanitize(this.secret));
        return CollectionsKt.joinToString$default(arrayList, ", ", "GenerateRestrictedAccessTokenRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GenerateRestrictedAccessTokenRequest copy$default(GenerateRestrictedAccessTokenRequest generateRestrictedAccessTokenRequest, DeviceInfo deviceInfo, RestrictedTokenAccessType restrictedTokenAccessType, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = generateRestrictedAccessTokenRequest.device_info;
        }
        if ((i & 2) != 0) {
            restrictedTokenAccessType = generateRestrictedAccessTokenRequest.access_type;
        }
        if ((i & 4) != 0) {
            str = generateRestrictedAccessTokenRequest.secret;
        }
        if ((i & 8) != 0) {
            byteString = generateRestrictedAccessTokenRequest.unknownFields();
        }
        return generateRestrictedAccessTokenRequest.copy(deviceInfo, restrictedTokenAccessType, str, byteString);
    }

    public final GenerateRestrictedAccessTokenRequest copy(DeviceInfo device_info, RestrictedTokenAccessType access_type, String secret, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(access_type, "access_type");
        Intrinsics.checkNotNullParameter(secret, "secret");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GenerateRestrictedAccessTokenRequest(device_info, access_type, secret, unknownFields);
    }

    /* JADX INFO: compiled from: GenerateRestrictedAccessTokenRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest;", "()V", "access_type", "Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "secret", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GenerateRestrictedAccessTokenRequest, Builder> {
        public DeviceInfo device_info;
        public RestrictedTokenAccessType access_type = RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID;
        public String secret = "";

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder access_type(RestrictedTokenAccessType access_type) {
            Intrinsics.checkNotNullParameter(access_type, "access_type");
            this.access_type = access_type;
            return this;
        }

        public final Builder secret(String secret) {
            Intrinsics.checkNotNullParameter(secret, "secret");
            this.secret = secret;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GenerateRestrictedAccessTokenRequest build() {
            return new GenerateRestrictedAccessTokenRequest(this.device_info, this.access_type, this.secret, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GenerateRestrictedAccessTokenRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GenerateRestrictedAccessTokenRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GenerateRestrictedAccessTokenRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GenerateRestrictedAccessTokenRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminalauth.pub.api.GenerateRestrictedAccessTokenRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GenerateRestrictedAccessTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (value.access_type != RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID) {
                    size += RestrictedTokenAccessType.ADAPTER.encodedSizeWithTag(2, value.access_type);
                }
                return !Intrinsics.areEqual(value.secret, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.secret) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GenerateRestrictedAccessTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.access_type != RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID) {
                    RestrictedTokenAccessType.ADAPTER.encodeWithTag(writer, 2, value.access_type);
                }
                if (!Intrinsics.areEqual(value.secret, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.secret);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GenerateRestrictedAccessTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.secret, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.secret);
                }
                if (value.access_type != RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID) {
                    RestrictedTokenAccessType.ADAPTER.encodeWithTag(writer, 2, value.access_type);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GenerateRestrictedAccessTokenRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                RestrictedTokenAccessType restrictedTokenAccessTypeDecode = RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GenerateRestrictedAccessTokenRequest(deviceInfoDecode, restrictedTokenAccessTypeDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            restrictedTokenAccessTypeDecode = RestrictedTokenAccessType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GenerateRestrictedAccessTokenRequest redact(GenerateRestrictedAccessTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return GenerateRestrictedAccessTokenRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, null, ByteString.EMPTY, 6, null);
            }
        };
    }
}
