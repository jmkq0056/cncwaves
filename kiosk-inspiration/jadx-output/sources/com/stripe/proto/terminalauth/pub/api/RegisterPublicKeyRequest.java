package com.stripe.proto.terminalauth.pub.api;

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
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.terminalauth.pub.api.RegisterPublicKeyRequest;
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

/* JADX INFO: compiled from: RegisterPublicKeyRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B9\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bJ:\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "device_public_key", "Lokio/ByteString;", "device_public_key_signature", "signature_algorithm", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;", "unknownFields", "(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Algorithm", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RegisterPublicKeyRequest extends Message<RegisterPublicKeyRequest, Builder> {
    public static final ProtoAdapter<RegisterPublicKeyRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "devicePublicKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ByteString device_public_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "devicePublicKeySignature", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ByteString device_public_key_signature;

    @WireField(adapter = "com.stripe.proto.terminalauth.pub.api.RegisterPublicKeyRequest$Algorithm#ADAPTER", jsonName = "signatureAlgorithm", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final Algorithm signature_algorithm;

    public RegisterPublicKeyRequest() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ RegisterPublicKeyRequest(DeviceInfo deviceInfo, ByteString byteString, ByteString byteString2, Algorithm algorithm, ByteString byteString3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? ByteString.EMPTY : byteString, (i & 4) != 0 ? ByteString.EMPTY : byteString2, (i & 8) != 0 ? Algorithm.ALGORITHM_INVALID : algorithm, (i & 16) != 0 ? ByteString.EMPTY : byteString3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegisterPublicKeyRequest(DeviceInfo deviceInfo, ByteString device_public_key, ByteString device_public_key_signature, Algorithm signature_algorithm, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_public_key, "device_public_key");
        Intrinsics.checkNotNullParameter(device_public_key_signature, "device_public_key_signature");
        Intrinsics.checkNotNullParameter(signature_algorithm, "signature_algorithm");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.device_public_key = device_public_key;
        this.device_public_key_signature = device_public_key_signature;
        this.signature_algorithm = signature_algorithm;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.device_public_key = this.device_public_key;
        builder.device_public_key_signature = this.device_public_key_signature;
        builder.signature_algorithm = this.signature_algorithm;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RegisterPublicKeyRequest)) {
            return false;
        }
        RegisterPublicKeyRequest registerPublicKeyRequest = (RegisterPublicKeyRequest) other;
        return Intrinsics.areEqual(unknownFields(), registerPublicKeyRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, registerPublicKeyRequest.device_info) && Intrinsics.areEqual(this.device_public_key, registerPublicKeyRequest.device_public_key) && Intrinsics.areEqual(this.device_public_key_signature, registerPublicKeyRequest.device_public_key_signature) && this.signature_algorithm == registerPublicKeyRequest.signature_algorithm;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.device_public_key.hashCode()) * 37) + this.device_public_key_signature.hashCode()) * 37) + this.signature_algorithm.hashCode();
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
        arrayList2.add("device_public_key=" + this.device_public_key);
        arrayList2.add("device_public_key_signature=" + this.device_public_key_signature);
        arrayList2.add("signature_algorithm=" + this.signature_algorithm);
        return CollectionsKt.joinToString$default(arrayList, ", ", "RegisterPublicKeyRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RegisterPublicKeyRequest copy$default(RegisterPublicKeyRequest registerPublicKeyRequest, DeviceInfo deviceInfo, ByteString byteString, ByteString byteString2, Algorithm algorithm, ByteString byteString3, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = registerPublicKeyRequest.device_info;
        }
        if ((i & 2) != 0) {
            byteString = registerPublicKeyRequest.device_public_key;
        }
        if ((i & 4) != 0) {
            byteString2 = registerPublicKeyRequest.device_public_key_signature;
        }
        if ((i & 8) != 0) {
            algorithm = registerPublicKeyRequest.signature_algorithm;
        }
        if ((i & 16) != 0) {
            byteString3 = registerPublicKeyRequest.unknownFields();
        }
        ByteString byteString4 = byteString3;
        ByteString byteString5 = byteString2;
        return registerPublicKeyRequest.copy(deviceInfo, byteString, byteString5, algorithm, byteString4);
    }

    public final RegisterPublicKeyRequest copy(DeviceInfo device_info, ByteString device_public_key, ByteString device_public_key_signature, Algorithm signature_algorithm, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_public_key, "device_public_key");
        Intrinsics.checkNotNullParameter(device_public_key_signature, "device_public_key_signature");
        Intrinsics.checkNotNullParameter(signature_algorithm, "signature_algorithm");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RegisterPublicKeyRequest(device_info, device_public_key, device_public_key_signature, signature_algorithm, unknownFields);
    }

    /* JADX INFO: compiled from: RegisterPublicKeyRequest.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "device_public_key", "Lokio/ByteString;", "device_public_key_signature", "signature_algorithm", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RegisterPublicKeyRequest, Builder> {
        public DeviceInfo device_info;
        public ByteString device_public_key = ByteString.EMPTY;
        public ByteString device_public_key_signature = ByteString.EMPTY;
        public Algorithm signature_algorithm = Algorithm.ALGORITHM_INVALID;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder device_public_key(ByteString device_public_key) {
            Intrinsics.checkNotNullParameter(device_public_key, "device_public_key");
            this.device_public_key = device_public_key;
            return this;
        }

        public final Builder device_public_key_signature(ByteString device_public_key_signature) {
            Intrinsics.checkNotNullParameter(device_public_key_signature, "device_public_key_signature");
            this.device_public_key_signature = device_public_key_signature;
            return this;
        }

        public final Builder signature_algorithm(Algorithm signature_algorithm) {
            Intrinsics.checkNotNullParameter(signature_algorithm, "signature_algorithm");
            this.signature_algorithm = signature_algorithm;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RegisterPublicKeyRequest build() {
            return new RegisterPublicKeyRequest(this.device_info, this.device_public_key, this.device_public_key_signature, this.signature_algorithm, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RegisterPublicKeyRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RegisterPublicKeyRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RegisterPublicKeyRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RegisterPublicKeyRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminalauth.pub.api.RegisterPublicKeyRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RegisterPublicKeyRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.device_public_key, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(2, value.device_public_key);
                }
                if (!Intrinsics.areEqual(value.device_public_key_signature, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(3, value.device_public_key_signature);
                }
                return value.signature_algorithm != RegisterPublicKeyRequest.Algorithm.ALGORITHM_INVALID ? size + RegisterPublicKeyRequest.Algorithm.ADAPTER.encodedSizeWithTag(4, value.signature_algorithm) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RegisterPublicKeyRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.device_public_key, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.device_public_key);
                }
                if (!Intrinsics.areEqual(value.device_public_key_signature, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 3, value.device_public_key_signature);
                }
                if (value.signature_algorithm != RegisterPublicKeyRequest.Algorithm.ALGORITHM_INVALID) {
                    RegisterPublicKeyRequest.Algorithm.ADAPTER.encodeWithTag(writer, 4, value.signature_algorithm);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RegisterPublicKeyRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.signature_algorithm != RegisterPublicKeyRequest.Algorithm.ALGORITHM_INVALID) {
                    RegisterPublicKeyRequest.Algorithm.ADAPTER.encodeWithTag(writer, 4, value.signature_algorithm);
                }
                if (!Intrinsics.areEqual(value.device_public_key_signature, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 3, value.device_public_key_signature);
                }
                if (!Intrinsics.areEqual(value.device_public_key, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.device_public_key);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RegisterPublicKeyRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                ByteString byteString = ByteString.EMPTY;
                RegisterPublicKeyRequest.Algorithm algorithm = RegisterPublicKeyRequest.Algorithm.ALGORITHM_INVALID;
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                RegisterPublicKeyRequest.Algorithm algorithmDecode = algorithm;
                ByteString byteStringDecode2 = byteString;
                while (true) {
                    ByteString byteString2 = byteStringDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new RegisterPublicKeyRequest(deviceInfoDecode, byteString2, byteStringDecode2, algorithmDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                        } else if (iNextTag != 2) {
                            if (iNextTag == 3) {
                                byteStringDecode2 = ProtoAdapter.BYTES.decode(reader);
                            } else if (iNextTag == 4) {
                                try {
                                    algorithmDecode = RegisterPublicKeyRequest.Algorithm.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                    byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RegisterPublicKeyRequest redact(RegisterPublicKeyRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return RegisterPublicKeyRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, null, null, ByteString.EMPTY, 14, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: RegisterPublicKeyRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ALGORITHM_INVALID", "SUNMI_SHA_256_WITH_RSA", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Algorithm implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Algorithm[] $VALUES;
        public static final ProtoAdapter<Algorithm> ADAPTER;
        public static final Algorithm ALGORITHM_INVALID;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Algorithm SUNMI_SHA_256_WITH_RSA;
        private final int value;

        private static final /* synthetic */ Algorithm[] $values() {
            return new Algorithm[]{ALGORITHM_INVALID, SUNMI_SHA_256_WITH_RSA};
        }

        @JvmStatic
        public static final Algorithm fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Algorithm> getEntries() {
            return $ENTRIES;
        }

        public static Algorithm valueOf(String str) {
            return (Algorithm) Enum.valueOf(Algorithm.class, str);
        }

        public static Algorithm[] values() {
            return (Algorithm[]) $VALUES.clone();
        }

        private Algorithm(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Algorithm algorithm = new Algorithm("ALGORITHM_INVALID", 0, 0);
            ALGORITHM_INVALID = algorithm;
            SUNMI_SHA_256_WITH_RSA = new Algorithm("SUNMI_SHA_256_WITH_RSA", 1, 1);
            Algorithm[] algorithmArr$values = $values();
            $VALUES = algorithmArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(algorithmArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Algorithm.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Algorithm>(orCreateKotlinClass, syntax, algorithm) { // from class: com.stripe.proto.terminalauth.pub.api.RegisterPublicKeyRequest$Algorithm$Companion$ADAPTER$1
                {
                    RegisterPublicKeyRequest.Algorithm algorithm2 = algorithm;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public RegisterPublicKeyRequest.Algorithm fromValue(int value) {
                    return RegisterPublicKeyRequest.Algorithm.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: RegisterPublicKeyRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Algorithm fromValue(int value) {
                if (value == 0) {
                    return Algorithm.ALGORITHM_INVALID;
                }
                if (value != 1) {
                    return null;
                }
                return Algorithm.SUNMI_SHA_256_WITH_RSA;
            }
        }
    }
}
