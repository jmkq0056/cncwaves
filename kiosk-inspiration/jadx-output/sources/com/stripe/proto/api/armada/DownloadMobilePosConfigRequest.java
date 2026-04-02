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
import com.stripe.proto.api.armada.DownloadMobilePosConfigRequest;
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

/* JADX INFO: compiled from: DownloadMobilePosConfigRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "config_md5", "", "bbpos_config", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "BBPOSConfig", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadMobilePosConfigRequest extends Message<DownloadMobilePosConfigRequest, Builder> {
    public static final ProtoAdapter<DownloadMobilePosConfigRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.armada.DownloadMobilePosConfigRequest$BBPOSConfig#ADAPTER", jsonName = "bbposConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final BBPOSConfig bbpos_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "configMd5", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String config_md5;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    public DownloadMobilePosConfigRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ DownloadMobilePosConfigRequest(DeviceInfo deviceInfo, String str, BBPOSConfig bBPOSConfig, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : bBPOSConfig, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadMobilePosConfigRequest(DeviceInfo deviceInfo, String config_md5, BBPOSConfig bBPOSConfig, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(config_md5, "config_md5");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.config_md5 = config_md5;
        this.bbpos_config = bBPOSConfig;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.config_md5 = this.config_md5;
        builder.bbpos_config = this.bbpos_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DownloadMobilePosConfigRequest)) {
            return false;
        }
        DownloadMobilePosConfigRequest downloadMobilePosConfigRequest = (DownloadMobilePosConfigRequest) other;
        return Intrinsics.areEqual(unknownFields(), downloadMobilePosConfigRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, downloadMobilePosConfigRequest.device_info) && Intrinsics.areEqual(this.config_md5, downloadMobilePosConfigRequest.config_md5) && Intrinsics.areEqual(this.bbpos_config, downloadMobilePosConfigRequest.bbpos_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.config_md5.hashCode()) * 37;
        BBPOSConfig bBPOSConfig = this.bbpos_config;
        int iHashCode3 = iHashCode2 + (bBPOSConfig != null ? bBPOSConfig.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("config_md5=" + Internal.sanitize(this.config_md5));
        if (this.bbpos_config != null) {
            arrayList2.add("bbpos_config=" + this.bbpos_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadMobilePosConfigRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DownloadMobilePosConfigRequest copy$default(DownloadMobilePosConfigRequest downloadMobilePosConfigRequest, DeviceInfo deviceInfo, String str, BBPOSConfig bBPOSConfig, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = downloadMobilePosConfigRequest.device_info;
        }
        if ((i & 2) != 0) {
            str = downloadMobilePosConfigRequest.config_md5;
        }
        if ((i & 4) != 0) {
            bBPOSConfig = downloadMobilePosConfigRequest.bbpos_config;
        }
        if ((i & 8) != 0) {
            byteString = downloadMobilePosConfigRequest.unknownFields();
        }
        return downloadMobilePosConfigRequest.copy(deviceInfo, str, bBPOSConfig, byteString);
    }

    public final DownloadMobilePosConfigRequest copy(DeviceInfo device_info, String config_md5, BBPOSConfig bbpos_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(config_md5, "config_md5");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DownloadMobilePosConfigRequest(device_info, config_md5, bbpos_config, unknownFields);
    }

    /* JADX INFO: compiled from: DownloadMobilePosConfigRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;", "()V", "bbpos_config", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;", "config_md5", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DownloadMobilePosConfigRequest, Builder> {
        public BBPOSConfig bbpos_config;
        public String config_md5 = "";
        public DeviceInfo device_info;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder config_md5(String config_md5) {
            Intrinsics.checkNotNullParameter(config_md5, "config_md5");
            this.config_md5 = config_md5;
            return this;
        }

        public final Builder bbpos_config(BBPOSConfig bbpos_config) {
            this.bbpos_config = bbpos_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DownloadMobilePosConfigRequest build() {
            return new DownloadMobilePosConfigRequest(this.device_info, this.config_md5, this.bbpos_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DownloadMobilePosConfigRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DownloadMobilePosConfigRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadMobilePosConfigRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DownloadMobilePosConfigRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadMobilePosConfigRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DownloadMobilePosConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.config_md5, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.config_md5);
                }
                return value.bbpos_config != null ? size + DownloadMobilePosConfigRequest.BBPOSConfig.ADAPTER.encodedSizeWithTag(3, value.bbpos_config) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DownloadMobilePosConfigRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (!Intrinsics.areEqual(value.config_md5, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_md5);
                }
                if (value.bbpos_config != null) {
                    DownloadMobilePosConfigRequest.BBPOSConfig.ADAPTER.encodeWithTag(writer, 3, value.bbpos_config);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DownloadMobilePosConfigRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.bbpos_config != null) {
                    DownloadMobilePosConfigRequest.BBPOSConfig.ADAPTER.encodeWithTag(writer, 3, value.bbpos_config);
                }
                if (!Intrinsics.areEqual(value.config_md5, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_md5);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DownloadMobilePosConfigRequest redact(DownloadMobilePosConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                DownloadMobilePosConfigRequest.BBPOSConfig bBPOSConfig = value.bbpos_config;
                return DownloadMobilePosConfigRequest.copy$default(value, deviceInfoRedact, null, bBPOSConfig != null ? DownloadMobilePosConfigRequest.BBPOSConfig.ADAPTER.redact(bBPOSConfig) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DownloadMobilePosConfigRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                String strDecode = "";
                DownloadMobilePosConfigRequest.BBPOSConfig bBPOSConfigDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DownloadMobilePosConfigRequest(deviceInfoDecode, strDecode, bBPOSConfigDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        bBPOSConfigDecode = DownloadMobilePosConfigRequest.BBPOSConfig.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: DownloadMobilePosConfigRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;", "firmware_version", "", "config_version", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BBPOSConfig extends Message<BBPOSConfig, Builder> {
        public static final ProtoAdapter<BBPOSConfig> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "configVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String config_version;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "firmwareVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String firmware_version;

        public BBPOSConfig() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ BBPOSConfig(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BBPOSConfig(String firmware_version, String config_version, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
            Intrinsics.checkNotNullParameter(config_version, "config_version");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.firmware_version = firmware_version;
            this.config_version = config_version;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.firmware_version = this.firmware_version;
            builder.config_version = this.config_version;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof BBPOSConfig)) {
                return false;
            }
            BBPOSConfig bBPOSConfig = (BBPOSConfig) other;
            return Intrinsics.areEqual(unknownFields(), bBPOSConfig.unknownFields()) && Intrinsics.areEqual(this.firmware_version, bBPOSConfig.firmware_version) && Intrinsics.areEqual(this.config_version, bBPOSConfig.config_version);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.firmware_version.hashCode()) * 37) + this.config_version.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("firmware_version=" + Internal.sanitize(this.firmware_version));
            arrayList2.add("config_version=" + Internal.sanitize(this.config_version));
            return CollectionsKt.joinToString$default(arrayList, ", ", "BBPOSConfig{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ BBPOSConfig copy$default(BBPOSConfig bBPOSConfig, String str, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = bBPOSConfig.firmware_version;
            }
            if ((i & 2) != 0) {
                str2 = bBPOSConfig.config_version;
            }
            if ((i & 4) != 0) {
                byteString = bBPOSConfig.unknownFields();
            }
            return bBPOSConfig.copy(str, str2, byteString);
        }

        public final BBPOSConfig copy(String firmware_version, String config_version, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
            Intrinsics.checkNotNullParameter(config_version, "config_version");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new BBPOSConfig(firmware_version, config_version, unknownFields);
        }

        /* JADX INFO: compiled from: DownloadMobilePosConfigRequest.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;", "()V", "config_version", "", "firmware_version", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<BBPOSConfig, Builder> {
            public String firmware_version = "";
            public String config_version = "";

            public final Builder firmware_version(String firmware_version) {
                Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
                this.firmware_version = firmware_version;
                return this;
            }

            public final Builder config_version(String config_version) {
                Intrinsics.checkNotNullParameter(config_version, "config_version");
                this.config_version = config_version;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public BBPOSConfig build() {
                return new BBPOSConfig(this.firmware_version, this.config_version, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DownloadMobilePosConfigRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ BBPOSConfig build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BBPOSConfig.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<BBPOSConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadMobilePosConfigRequest$BBPOSConfig$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DownloadMobilePosConfigRequest.BBPOSConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.firmware_version, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.firmware_version);
                    }
                    return !Intrinsics.areEqual(value.config_version, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.config_version) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DownloadMobilePosConfigRequest.BBPOSConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.firmware_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.firmware_version);
                    }
                    if (!Intrinsics.areEqual(value.config_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_version);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DownloadMobilePosConfigRequest.BBPOSConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.config_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_version);
                    }
                    if (Intrinsics.areEqual(value.firmware_version, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.firmware_version);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DownloadMobilePosConfigRequest.BBPOSConfig redact(DownloadMobilePosConfigRequest.BBPOSConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return DownloadMobilePosConfigRequest.BBPOSConfig.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DownloadMobilePosConfigRequest.BBPOSConfig decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new DownloadMobilePosConfigRequest.BBPOSConfig(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
