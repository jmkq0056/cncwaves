package com.stripe.proto.iot_relay.pub.api;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.iot_relay.pub.message.Android;
import com.stripe.proto.iot_relay.pub.message.Hardware;
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

/* JADX INFO: compiled from: DeviceReportResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse$Builder;", "hardware", "Lcom/stripe/proto/iot_relay/pub/message/Hardware;", "android", "Lcom/stripe/proto/iot_relay/pub/message/Android;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/iot_relay/pub/message/Hardware;Lcom/stripe/proto/iot_relay/pub/message/Android;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceReportResponse extends Message<DeviceReportResponse, Builder> {
    public static final ProtoAdapter<DeviceReportResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.message.Android#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Android android;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.message.Hardware#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Hardware hardware;

    public DeviceReportResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DeviceReportResponse(Hardware hardware, Android android2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : hardware, (i & 2) != 0 ? null : android2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceReportResponse(Hardware hardware, Android android2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.hardware = hardware;
        this.android = android2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.hardware = this.hardware;
        builder.android = this.android;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceReportResponse)) {
            return false;
        }
        DeviceReportResponse deviceReportResponse = (DeviceReportResponse) other;
        return Intrinsics.areEqual(unknownFields(), deviceReportResponse.unknownFields()) && Intrinsics.areEqual(this.hardware, deviceReportResponse.hardware) && Intrinsics.areEqual(this.android, deviceReportResponse.android);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Hardware hardware = this.hardware;
        int iHashCode2 = (iHashCode + (hardware != null ? hardware.hashCode() : 0)) * 37;
        Android android2 = this.android;
        int iHashCode3 = iHashCode2 + (android2 != null ? android2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.hardware != null) {
            arrayList.add("hardware=" + this.hardware);
        }
        if (this.android != null) {
            arrayList.add("android=" + this.android);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceReportResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceReportResponse copy$default(DeviceReportResponse deviceReportResponse, Hardware hardware, Android android2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            hardware = deviceReportResponse.hardware;
        }
        if ((i & 2) != 0) {
            android2 = deviceReportResponse.android;
        }
        if ((i & 4) != 0) {
            byteString = deviceReportResponse.unknownFields();
        }
        return deviceReportResponse.copy(hardware, android2, byteString);
    }

    public final DeviceReportResponse copy(Hardware hardware, Android android2, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceReportResponse(hardware, android2, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceReportResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse;", "()V", "android", "Lcom/stripe/proto/iot_relay/pub/message/Android;", "hardware", "Lcom/stripe/proto/iot_relay/pub/message/Hardware;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceReportResponse, Builder> {
        public Android android;
        public Hardware hardware;

        public final Builder hardware(Hardware hardware) {
            this.hardware = hardware;
            return this;
        }

        public final Builder android(Android android2) {
            this.android = android2;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceReportResponse build() {
            return new DeviceReportResponse(this.hardware, this.android, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceReportResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/DeviceReportResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceReportResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceReportResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceReportResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.DeviceReportResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceReportResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.hardware != null) {
                    size += Hardware.ADAPTER.encodedSizeWithTag(1, value.hardware);
                }
                return value.android != null ? size + Android.ADAPTER.encodedSizeWithTag(2, value.android) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceReportResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.hardware != null) {
                    Hardware.ADAPTER.encodeWithTag(writer, 1, value.hardware);
                }
                if (value.android != null) {
                    Android.ADAPTER.encodeWithTag(writer, 2, value.android);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceReportResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.android != null) {
                    Android.ADAPTER.encodeWithTag(writer, 2, value.android);
                }
                if (value.hardware != null) {
                    Hardware.ADAPTER.encodeWithTag(writer, 1, value.hardware);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceReportResponse redact(DeviceReportResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Hardware hardware = value.hardware;
                Hardware hardwareRedact = hardware != null ? Hardware.ADAPTER.redact(hardware) : null;
                Android android2 = value.android;
                return value.copy(hardwareRedact, android2 != null ? Android.ADAPTER.redact(android2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceReportResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Hardware hardwareDecode = null;
                Android androidDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceReportResponse(hardwareDecode, androidDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        hardwareDecode = Hardware.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        androidDecode = Android.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
