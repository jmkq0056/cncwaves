package com.stripe.proto.model.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
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

/* JADX INFO: compiled from: TerminalUserAgent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ@\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/rest/TerminalUserAgent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/TerminalUserAgent$Builder;", "pos_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_version_info", "reader_device_info", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalUserAgent extends Message<TerminalUserAgent, Builder> {
    public static final ProtoAdapter<TerminalUserAgent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "posDeviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DeviceInfo pos_device_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "posVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final VersionInfoPb pos_version_info;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "readerDeviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final DeviceInfo reader_device_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "readerVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final VersionInfoPb reader_version_info;

    public TerminalUserAgent() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ TerminalUserAgent(VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb2, DeviceInfo deviceInfo2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : versionInfoPb, (i & 2) != 0 ? null : deviceInfo, (i & 4) != 0 ? null : versionInfoPb2, (i & 8) != 0 ? null : deviceInfo2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalUserAgent(VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb2, DeviceInfo deviceInfo2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pos_version_info = versionInfoPb;
        this.pos_device_info = deviceInfo;
        this.reader_version_info = versionInfoPb2;
        this.reader_device_info = deviceInfo2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pos_version_info = this.pos_version_info;
        builder.pos_device_info = this.pos_device_info;
        builder.reader_version_info = this.reader_version_info;
        builder.reader_device_info = this.reader_device_info;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TerminalUserAgent)) {
            return false;
        }
        TerminalUserAgent terminalUserAgent = (TerminalUserAgent) other;
        return Intrinsics.areEqual(unknownFields(), terminalUserAgent.unknownFields()) && Intrinsics.areEqual(this.pos_version_info, terminalUserAgent.pos_version_info) && Intrinsics.areEqual(this.pos_device_info, terminalUserAgent.pos_device_info) && Intrinsics.areEqual(this.reader_version_info, terminalUserAgent.reader_version_info) && Intrinsics.areEqual(this.reader_device_info, terminalUserAgent.reader_device_info);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        VersionInfoPb versionInfoPb = this.pos_version_info;
        int iHashCode2 = (iHashCode + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo = this.pos_device_info;
        int iHashCode3 = (iHashCode2 + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb2 = this.reader_version_info;
        int iHashCode4 = (iHashCode3 + (versionInfoPb2 != null ? versionInfoPb2.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo2 = this.reader_device_info;
        int iHashCode5 = iHashCode4 + (deviceInfo2 != null ? deviceInfo2.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.pos_version_info != null) {
            arrayList.add("pos_version_info=" + this.pos_version_info);
        }
        if (this.pos_device_info != null) {
            arrayList.add("pos_device_info=" + this.pos_device_info);
        }
        if (this.reader_version_info != null) {
            arrayList.add("reader_version_info=" + this.reader_version_info);
        }
        if (this.reader_device_info != null) {
            arrayList.add("reader_device_info=" + this.reader_device_info);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "TerminalUserAgent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TerminalUserAgent copy$default(TerminalUserAgent terminalUserAgent, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb2, DeviceInfo deviceInfo2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            versionInfoPb = terminalUserAgent.pos_version_info;
        }
        if ((i & 2) != 0) {
            deviceInfo = terminalUserAgent.pos_device_info;
        }
        if ((i & 4) != 0) {
            versionInfoPb2 = terminalUserAgent.reader_version_info;
        }
        if ((i & 8) != 0) {
            deviceInfo2 = terminalUserAgent.reader_device_info;
        }
        if ((i & 16) != 0) {
            byteString = terminalUserAgent.unknownFields();
        }
        ByteString byteString2 = byteString;
        VersionInfoPb versionInfoPb3 = versionInfoPb2;
        return terminalUserAgent.copy(versionInfoPb, deviceInfo, versionInfoPb3, deviceInfo2, byteString2);
    }

    public final TerminalUserAgent copy(VersionInfoPb pos_version_info, DeviceInfo pos_device_info, VersionInfoPb reader_version_info, DeviceInfo reader_device_info, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TerminalUserAgent(pos_version_info, pos_device_info, reader_version_info, reader_device_info, unknownFields);
    }

    /* JADX INFO: compiled from: TerminalUserAgent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/rest/TerminalUserAgent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/TerminalUserAgent;", "()V", "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "pos_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "reader_device_info", "reader_version_info", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TerminalUserAgent, Builder> {
        public DeviceInfo pos_device_info;
        public VersionInfoPb pos_version_info;
        public DeviceInfo reader_device_info;
        public VersionInfoPb reader_version_info;

        public final Builder pos_version_info(VersionInfoPb pos_version_info) {
            this.pos_version_info = pos_version_info;
            return this;
        }

        public final Builder pos_device_info(DeviceInfo pos_device_info) {
            this.pos_device_info = pos_device_info;
            return this;
        }

        public final Builder reader_version_info(VersionInfoPb reader_version_info) {
            this.reader_version_info = reader_version_info;
            return this;
        }

        public final Builder reader_device_info(DeviceInfo reader_device_info) {
            this.reader_device_info = reader_device_info;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TerminalUserAgent build() {
            return new TerminalUserAgent(this.pos_version_info, this.pos_device_info, this.reader_version_info, this.reader_device_info, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TerminalUserAgent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/TerminalUserAgent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/TerminalUserAgent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/TerminalUserAgent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TerminalUserAgent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TerminalUserAgent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TerminalUserAgent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.TerminalUserAgent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TerminalUserAgent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.pos_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(1, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(2, value.pos_device_info);
                }
                if (value.reader_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(3, value.reader_version_info);
                }
                return value.reader_device_info != null ? size + DeviceInfo.ADAPTER.encodedSizeWithTag(4, value.reader_device_info) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TerminalUserAgent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 1, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.pos_device_info);
                }
                if (value.reader_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 3, value.reader_version_info);
                }
                if (value.reader_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 4, value.reader_device_info);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TerminalUserAgent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reader_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 4, value.reader_device_info);
                }
                if (value.reader_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 3, value.reader_version_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.pos_device_info);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 1, value.pos_version_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TerminalUserAgent redact(TerminalUserAgent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                VersionInfoPb versionInfoPb = value.pos_version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                DeviceInfo deviceInfo = value.pos_device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                VersionInfoPb versionInfoPb2 = value.reader_version_info;
                VersionInfoPb versionInfoPbRedact2 = versionInfoPb2 != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb2) : null;
                DeviceInfo deviceInfo2 = value.reader_device_info;
                return value.copy(versionInfoPbRedact, deviceInfoRedact, versionInfoPbRedact2, deviceInfo2 != null ? DeviceInfo.ADAPTER.redact(deviceInfo2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TerminalUserAgent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                VersionInfoPb versionInfoPbDecode = null;
                DeviceInfo deviceInfoDecode = null;
                VersionInfoPb versionInfoPbDecode2 = null;
                DeviceInfo deviceInfoDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new TerminalUserAgent(versionInfoPbDecode, deviceInfoDecode, versionInfoPbDecode2, deviceInfoDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        versionInfoPbDecode2 = VersionInfoPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        deviceInfoDecode2 = DeviceInfo.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
