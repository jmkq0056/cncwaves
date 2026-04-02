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

/* JADX INFO: compiled from: CheckCertificateStatusRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "certificate_chain", "", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckCertificateStatusRequest extends Message<CheckCertificateStatusRequest, Builder> {
    public static final ProtoAdapter<CheckCertificateStatusRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "certificateChain", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<String> certificate_chain;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    public CheckCertificateStatusRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CheckCertificateStatusRequest(DeviceInfo deviceInfo, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckCertificateStatusRequest(DeviceInfo deviceInfo, List<String> certificate_chain, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(certificate_chain, "certificate_chain");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.certificate_chain = Internal.immutableCopyOf("certificate_chain", certificate_chain);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.certificate_chain = this.certificate_chain;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckCertificateStatusRequest)) {
            return false;
        }
        CheckCertificateStatusRequest checkCertificateStatusRequest = (CheckCertificateStatusRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkCertificateStatusRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, checkCertificateStatusRequest.device_info) && Intrinsics.areEqual(this.certificate_chain, checkCertificateStatusRequest.certificate_chain);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.certificate_chain.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (!this.certificate_chain.isEmpty()) {
            arrayList.add("certificate_chain=" + Internal.sanitize(this.certificate_chain));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckCertificateStatusRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CheckCertificateStatusRequest copy$default(CheckCertificateStatusRequest checkCertificateStatusRequest, DeviceInfo deviceInfo, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = checkCertificateStatusRequest.device_info;
        }
        if ((i & 2) != 0) {
            list = checkCertificateStatusRequest.certificate_chain;
        }
        if ((i & 4) != 0) {
            byteString = checkCertificateStatusRequest.unknownFields();
        }
        return checkCertificateStatusRequest.copy(deviceInfo, list, byteString);
    }

    public final CheckCertificateStatusRequest copy(DeviceInfo device_info, List<String> certificate_chain, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(certificate_chain, "certificate_chain");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckCertificateStatusRequest(device_info, certificate_chain, unknownFields);
    }

    /* JADX INFO: compiled from: CheckCertificateStatusRequest.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;", "()V", "certificate_chain", "", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckCertificateStatusRequest, Builder> {
        public List<String> certificate_chain = CollectionsKt.emptyList();
        public DeviceInfo device_info;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder certificate_chain(List<String> certificate_chain) {
            Intrinsics.checkNotNullParameter(certificate_chain, "certificate_chain");
            Internal.checkElementsNotNull(certificate_chain);
            this.certificate_chain = certificate_chain;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckCertificateStatusRequest build() {
            return new CheckCertificateStatusRequest(this.device_info, this.certificate_chain, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckCertificateStatusRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckCertificateStatusRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckCertificateStatusRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckCertificateStatusRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.CheckCertificateStatusRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckCertificateStatusRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.certificate_chain);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckCertificateStatusRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.certificate_chain);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckCertificateStatusRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.certificate_chain);
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckCertificateStatusRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CheckCertificateStatusRequest(deviceInfoDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckCertificateStatusRequest redact(CheckCertificateStatusRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return CheckCertificateStatusRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, ByteString.EMPTY, 2, null);
            }
        };
    }
}
