package com.stripe.proto.api.armada;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.config.DeviceTraceLevel;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.model.config.ReaderFeatureFlags;
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

/* JADX INFO: compiled from: DownloadMobilePosConfigResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;", "config", "Lcom/stripe/proto/model/config/MobileClientConfig;", "reader_metadata", "Lcom/stripe/proto/api/armada/ReaderMetadata;", "device_trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", SharedPrefs.READER_FEATURE_FLAGS, "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadMobilePosConfigResponse extends Message<DownloadMobilePosConfigResponse, Builder> {
    public static final ProtoAdapter<DownloadMobilePosConfigResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.config.MobileClientConfig#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final MobileClientConfig config;

    @WireField(adapter = "com.stripe.proto.model.config.DeviceTraceLevel#ADAPTER", jsonName = "deviceTraceLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final DeviceTraceLevel device_trace_level;

    @WireField(adapter = "com.stripe.proto.model.config.ReaderFeatureFlags#ADAPTER", jsonName = "readerFeatureFlags", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final ReaderFeatureFlags reader_feature_flags;

    @WireField(adapter = "com.stripe.proto.api.armada.ReaderMetadata#ADAPTER", jsonName = "readerMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ReaderMetadata reader_metadata;

    public DownloadMobilePosConfigResponse() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ DownloadMobilePosConfigResponse(MobileClientConfig mobileClientConfig, ReaderMetadata readerMetadata, DeviceTraceLevel deviceTraceLevel, ReaderFeatureFlags readerFeatureFlags, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : mobileClientConfig, (i & 2) != 0 ? null : readerMetadata, (i & 4) != 0 ? null : deviceTraceLevel, (i & 8) != 0 ? null : readerFeatureFlags, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadMobilePosConfigResponse(MobileClientConfig mobileClientConfig, ReaderMetadata readerMetadata, DeviceTraceLevel deviceTraceLevel, ReaderFeatureFlags readerFeatureFlags, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.config = mobileClientConfig;
        this.reader_metadata = readerMetadata;
        this.device_trace_level = deviceTraceLevel;
        this.reader_feature_flags = readerFeatureFlags;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.config = this.config;
        builder.reader_metadata = this.reader_metadata;
        builder.device_trace_level = this.device_trace_level;
        builder.reader_feature_flags = this.reader_feature_flags;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DownloadMobilePosConfigResponse)) {
            return false;
        }
        DownloadMobilePosConfigResponse downloadMobilePosConfigResponse = (DownloadMobilePosConfigResponse) other;
        return Intrinsics.areEqual(unknownFields(), downloadMobilePosConfigResponse.unknownFields()) && Intrinsics.areEqual(this.config, downloadMobilePosConfigResponse.config) && Intrinsics.areEqual(this.reader_metadata, downloadMobilePosConfigResponse.reader_metadata) && Intrinsics.areEqual(this.device_trace_level, downloadMobilePosConfigResponse.device_trace_level) && Intrinsics.areEqual(this.reader_feature_flags, downloadMobilePosConfigResponse.reader_feature_flags);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        MobileClientConfig mobileClientConfig = this.config;
        int iHashCode2 = (iHashCode + (mobileClientConfig != null ? mobileClientConfig.hashCode() : 0)) * 37;
        ReaderMetadata readerMetadata = this.reader_metadata;
        int iHashCode3 = (iHashCode2 + (readerMetadata != null ? readerMetadata.hashCode() : 0)) * 37;
        DeviceTraceLevel deviceTraceLevel = this.device_trace_level;
        int iHashCode4 = (iHashCode3 + (deviceTraceLevel != null ? deviceTraceLevel.hashCode() : 0)) * 37;
        ReaderFeatureFlags readerFeatureFlags = this.reader_feature_flags;
        int iHashCode5 = iHashCode4 + (readerFeatureFlags != null ? readerFeatureFlags.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.config != null) {
            arrayList.add("config=" + this.config);
        }
        if (this.reader_metadata != null) {
            arrayList.add("reader_metadata=" + this.reader_metadata);
        }
        if (this.device_trace_level != null) {
            arrayList.add("device_trace_level=" + this.device_trace_level);
        }
        if (this.reader_feature_flags != null) {
            arrayList.add("reader_feature_flags=" + this.reader_feature_flags);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadMobilePosConfigResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DownloadMobilePosConfigResponse copy$default(DownloadMobilePosConfigResponse downloadMobilePosConfigResponse, MobileClientConfig mobileClientConfig, ReaderMetadata readerMetadata, DeviceTraceLevel deviceTraceLevel, ReaderFeatureFlags readerFeatureFlags, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            mobileClientConfig = downloadMobilePosConfigResponse.config;
        }
        if ((i & 2) != 0) {
            readerMetadata = downloadMobilePosConfigResponse.reader_metadata;
        }
        if ((i & 4) != 0) {
            deviceTraceLevel = downloadMobilePosConfigResponse.device_trace_level;
        }
        if ((i & 8) != 0) {
            readerFeatureFlags = downloadMobilePosConfigResponse.reader_feature_flags;
        }
        if ((i & 16) != 0) {
            byteString = downloadMobilePosConfigResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        DeviceTraceLevel deviceTraceLevel2 = deviceTraceLevel;
        return downloadMobilePosConfigResponse.copy(mobileClientConfig, readerMetadata, deviceTraceLevel2, readerFeatureFlags, byteString2);
    }

    public final DownloadMobilePosConfigResponse copy(MobileClientConfig config, ReaderMetadata reader_metadata, DeviceTraceLevel device_trace_level, ReaderFeatureFlags reader_feature_flags, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DownloadMobilePosConfigResponse(config, reader_metadata, device_trace_level, reader_feature_flags, unknownFields);
    }

    /* JADX INFO: compiled from: DownloadMobilePosConfigResponse.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;", "()V", "config", "Lcom/stripe/proto/model/config/MobileClientConfig;", "device_trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", SharedPrefs.READER_FEATURE_FLAGS, "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "reader_metadata", "Lcom/stripe/proto/api/armada/ReaderMetadata;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DownloadMobilePosConfigResponse, Builder> {
        public MobileClientConfig config;
        public DeviceTraceLevel device_trace_level;
        public ReaderFeatureFlags reader_feature_flags;
        public ReaderMetadata reader_metadata;

        public final Builder config(MobileClientConfig config) {
            this.config = config;
            return this;
        }

        public final Builder reader_metadata(ReaderMetadata reader_metadata) {
            this.reader_metadata = reader_metadata;
            return this;
        }

        public final Builder device_trace_level(DeviceTraceLevel device_trace_level) {
            this.device_trace_level = device_trace_level;
            return this;
        }

        public final Builder reader_feature_flags(ReaderFeatureFlags reader_feature_flags) {
            this.reader_feature_flags = reader_feature_flags;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DownloadMobilePosConfigResponse build() {
            return new DownloadMobilePosConfigResponse(this.config, this.reader_metadata, this.device_trace_level, this.reader_feature_flags, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DownloadMobilePosConfigResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DownloadMobilePosConfigResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadMobilePosConfigResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DownloadMobilePosConfigResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadMobilePosConfigResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DownloadMobilePosConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.config != null) {
                    size += MobileClientConfig.ADAPTER.encodedSizeWithTag(1, value.config);
                }
                if (value.reader_metadata != null) {
                    size += ReaderMetadata.ADAPTER.encodedSizeWithTag(2, value.reader_metadata);
                }
                if (value.device_trace_level != null) {
                    size += DeviceTraceLevel.ADAPTER.encodedSizeWithTag(3, value.device_trace_level);
                }
                return value.reader_feature_flags != null ? size + ReaderFeatureFlags.ADAPTER.encodedSizeWithTag(4, value.reader_feature_flags) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DownloadMobilePosConfigResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.config != null) {
                    MobileClientConfig.ADAPTER.encodeWithTag(writer, 1, value.config);
                }
                if (value.reader_metadata != null) {
                    ReaderMetadata.ADAPTER.encodeWithTag(writer, 2, value.reader_metadata);
                }
                if (value.device_trace_level != null) {
                    DeviceTraceLevel.ADAPTER.encodeWithTag(writer, 3, value.device_trace_level);
                }
                if (value.reader_feature_flags != null) {
                    ReaderFeatureFlags.ADAPTER.encodeWithTag(writer, 4, value.reader_feature_flags);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DownloadMobilePosConfigResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reader_feature_flags != null) {
                    ReaderFeatureFlags.ADAPTER.encodeWithTag(writer, 4, value.reader_feature_flags);
                }
                if (value.device_trace_level != null) {
                    DeviceTraceLevel.ADAPTER.encodeWithTag(writer, 3, value.device_trace_level);
                }
                if (value.reader_metadata != null) {
                    ReaderMetadata.ADAPTER.encodeWithTag(writer, 2, value.reader_metadata);
                }
                if (value.config != null) {
                    MobileClientConfig.ADAPTER.encodeWithTag(writer, 1, value.config);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DownloadMobilePosConfigResponse redact(DownloadMobilePosConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                MobileClientConfig mobileClientConfig = value.config;
                MobileClientConfig mobileClientConfigRedact = mobileClientConfig != null ? MobileClientConfig.ADAPTER.redact(mobileClientConfig) : null;
                ReaderMetadata readerMetadata = value.reader_metadata;
                ReaderMetadata readerMetadataRedact = readerMetadata != null ? ReaderMetadata.ADAPTER.redact(readerMetadata) : null;
                DeviceTraceLevel deviceTraceLevel = value.device_trace_level;
                DeviceTraceLevel deviceTraceLevelRedact = deviceTraceLevel != null ? DeviceTraceLevel.ADAPTER.redact(deviceTraceLevel) : null;
                ReaderFeatureFlags readerFeatureFlags = value.reader_feature_flags;
                return value.copy(mobileClientConfigRedact, readerMetadataRedact, deviceTraceLevelRedact, readerFeatureFlags != null ? ReaderFeatureFlags.ADAPTER.redact(readerFeatureFlags) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DownloadMobilePosConfigResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                MobileClientConfig mobileClientConfigDecode = null;
                ReaderMetadata readerMetadataDecode = null;
                DeviceTraceLevel deviceTraceLevelDecode = null;
                ReaderFeatureFlags readerFeatureFlagsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DownloadMobilePosConfigResponse(mobileClientConfigDecode, readerMetadataDecode, deviceTraceLevelDecode, readerFeatureFlagsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        mobileClientConfigDecode = MobileClientConfig.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        readerMetadataDecode = ReaderMetadata.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        deviceTraceLevelDecode = DeviceTraceLevel.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        readerFeatureFlagsDecode = ReaderFeatureFlags.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
