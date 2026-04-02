package com.stripe.proto.terminalauth.pub.api;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.terminalauth.pub.message.AuthenticationMessage;
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

/* JADX INFO: compiled from: AuthenticateDeviceRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_authentication", "Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AuthenticateDeviceRequest extends Message<AuthenticateDeviceRequest, Builder> {
    public static final ProtoAdapter<AuthenticateDeviceRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.terminalauth.pub.message.AuthenticationMessage#ADAPTER", jsonName = "readerAuthentication", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final AuthenticationMessage reader_authentication;

    public AuthenticateDeviceRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ AuthenticateDeviceRequest(DeviceInfo deviceInfo, AuthenticationMessage authenticationMessage, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? null : authenticationMessage, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticateDeviceRequest(DeviceInfo deviceInfo, AuthenticationMessage authenticationMessage, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.reader_authentication = authenticationMessage;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.reader_authentication = this.reader_authentication;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AuthenticateDeviceRequest)) {
            return false;
        }
        AuthenticateDeviceRequest authenticateDeviceRequest = (AuthenticateDeviceRequest) other;
        return Intrinsics.areEqual(unknownFields(), authenticateDeviceRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, authenticateDeviceRequest.device_info) && Intrinsics.areEqual(this.reader_authentication, authenticateDeviceRequest.reader_authentication);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        AuthenticationMessage authenticationMessage = this.reader_authentication;
        int iHashCode3 = iHashCode2 + (authenticationMessage != null ? authenticationMessage.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (this.reader_authentication != null) {
            arrayList.add("reader_authentication=" + this.reader_authentication);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AuthenticateDeviceRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AuthenticateDeviceRequest copy$default(AuthenticateDeviceRequest authenticateDeviceRequest, DeviceInfo deviceInfo, AuthenticationMessage authenticationMessage, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = authenticateDeviceRequest.device_info;
        }
        if ((i & 2) != 0) {
            authenticationMessage = authenticateDeviceRequest.reader_authentication;
        }
        if ((i & 4) != 0) {
            byteString = authenticateDeviceRequest.unknownFields();
        }
        return authenticateDeviceRequest.copy(deviceInfo, authenticationMessage, byteString);
    }

    public final AuthenticateDeviceRequest copy(DeviceInfo device_info, AuthenticationMessage reader_authentication, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AuthenticateDeviceRequest(device_info, reader_authentication, unknownFields);
    }

    /* JADX INFO: compiled from: AuthenticateDeviceRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_authentication", "Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AuthenticateDeviceRequest, Builder> {
        public DeviceInfo device_info;
        public AuthenticationMessage reader_authentication;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder reader_authentication(AuthenticationMessage reader_authentication) {
            this.reader_authentication = reader_authentication;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AuthenticateDeviceRequest build() {
            return new AuthenticateDeviceRequest(this.device_info, this.reader_authentication, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AuthenticateDeviceRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminalauth/pub/api/AuthenticateDeviceRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AuthenticateDeviceRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AuthenticateDeviceRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AuthenticateDeviceRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminalauth.pub.api.AuthenticateDeviceRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AuthenticateDeviceRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                return value.reader_authentication != null ? size + AuthenticationMessage.ADAPTER.encodedSizeWithTag(2, value.reader_authentication) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AuthenticateDeviceRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.reader_authentication != null) {
                    AuthenticationMessage.ADAPTER.encodeWithTag(writer, 2, value.reader_authentication);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AuthenticateDeviceRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reader_authentication != null) {
                    AuthenticationMessage.ADAPTER.encodeWithTag(writer, 2, value.reader_authentication);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AuthenticateDeviceRequest redact(AuthenticateDeviceRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                AuthenticationMessage authenticationMessage = value.reader_authentication;
                return value.copy(deviceInfoRedact, authenticationMessage != null ? AuthenticationMessage.ADAPTER.redact(authenticationMessage) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AuthenticateDeviceRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                AuthenticationMessage authenticationMessageDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AuthenticateDeviceRequest(deviceInfoDecode, authenticationMessageDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        authenticationMessageDecode = AuthenticationMessage.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
