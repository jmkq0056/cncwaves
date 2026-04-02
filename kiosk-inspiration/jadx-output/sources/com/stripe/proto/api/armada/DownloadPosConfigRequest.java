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

/* JADX INFO: compiled from: DownloadPosConfigRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ0\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadPosConfigRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadPosConfigRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "config_md5", "", "previous_checksum", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadPosConfigRequest extends Message<DownloadPosConfigRequest, Builder> {
    public static final ProtoAdapter<DownloadPosConfigRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "configMd5", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String config_md5;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "previousChecksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String previous_checksum;

    public DownloadPosConfigRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ DownloadPosConfigRequest(DeviceInfo deviceInfo, String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadPosConfigRequest(DeviceInfo deviceInfo, String config_md5, String previous_checksum, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(config_md5, "config_md5");
        Intrinsics.checkNotNullParameter(previous_checksum, "previous_checksum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.config_md5 = config_md5;
        this.previous_checksum = previous_checksum;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.config_md5 = this.config_md5;
        builder.previous_checksum = this.previous_checksum;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DownloadPosConfigRequest)) {
            return false;
        }
        DownloadPosConfigRequest downloadPosConfigRequest = (DownloadPosConfigRequest) other;
        return Intrinsics.areEqual(unknownFields(), downloadPosConfigRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, downloadPosConfigRequest.device_info) && Intrinsics.areEqual(this.config_md5, downloadPosConfigRequest.config_md5) && Intrinsics.areEqual(this.previous_checksum, downloadPosConfigRequest.previous_checksum);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.config_md5.hashCode()) * 37) + this.previous_checksum.hashCode();
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
        arrayList2.add("config_md5=" + Internal.sanitize(this.config_md5));
        arrayList2.add("previous_checksum=" + Internal.sanitize(this.previous_checksum));
        return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadPosConfigRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DownloadPosConfigRequest copy$default(DownloadPosConfigRequest downloadPosConfigRequest, DeviceInfo deviceInfo, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = downloadPosConfigRequest.device_info;
        }
        if ((i & 2) != 0) {
            str = downloadPosConfigRequest.config_md5;
        }
        if ((i & 4) != 0) {
            str2 = downloadPosConfigRequest.previous_checksum;
        }
        if ((i & 8) != 0) {
            byteString = downloadPosConfigRequest.unknownFields();
        }
        return downloadPosConfigRequest.copy(deviceInfo, str, str2, byteString);
    }

    public final DownloadPosConfigRequest copy(DeviceInfo device_info, String config_md5, String previous_checksum, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(config_md5, "config_md5");
        Intrinsics.checkNotNullParameter(previous_checksum, "previous_checksum");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DownloadPosConfigRequest(device_info, config_md5, previous_checksum, unknownFields);
    }

    /* JADX INFO: compiled from: DownloadPosConfigRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadPosConfigRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadPosConfigRequest;", "()V", "config_md5", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "previous_checksum", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DownloadPosConfigRequest, Builder> {
        public DeviceInfo device_info;
        public String config_md5 = "";
        public String previous_checksum = "";

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder config_md5(String config_md5) {
            Intrinsics.checkNotNullParameter(config_md5, "config_md5");
            this.config_md5 = config_md5;
            return this;
        }

        public final Builder previous_checksum(String previous_checksum) {
            Intrinsics.checkNotNullParameter(previous_checksum, "previous_checksum");
            this.previous_checksum = previous_checksum;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DownloadPosConfigRequest build() {
            return new DownloadPosConfigRequest(this.device_info, this.config_md5, this.previous_checksum, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DownloadPosConfigRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadPosConfigRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadPosConfigRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadPosConfigRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DownloadPosConfigRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadPosConfigRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DownloadPosConfigRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadPosConfigRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DownloadPosConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.config_md5, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.config_md5);
                }
                return !Intrinsics.areEqual(value.previous_checksum, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.previous_checksum) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DownloadPosConfigRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.config_md5, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_md5);
                }
                if (!Intrinsics.areEqual(value.previous_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.previous_checksum);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DownloadPosConfigRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.previous_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.previous_checksum);
                }
                if (!Intrinsics.areEqual(value.config_md5, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_md5);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DownloadPosConfigRequest redact(DownloadPosConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return DownloadPosConfigRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, null, ByteString.EMPTY, 6, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DownloadPosConfigRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DownloadPosConfigRequest(deviceInfoDecode, strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
