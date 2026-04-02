package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: DeviceFactoryConfigurationEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent$Builder;", "configuration_success", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceConfigurationSuccessEvent;", "configuration_failure", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceConfigurationFailureEvent;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceConfigurationSuccessEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceConfigurationFailureEvent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceFactoryConfigurationEvent extends Message<DeviceFactoryConfigurationEvent, Builder> {
    public static final ProtoAdapter<DeviceFactoryConfigurationEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.DeviceConfigurationFailureEvent#ADAPTER", jsonName = "configurationFailure", oneofName = "factory_configuration_event", schemaIndex = 1, tag = 2)
    public final DeviceConfigurationFailureEvent configuration_failure;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.DeviceConfigurationSuccessEvent#ADAPTER", jsonName = "configurationSuccess", oneofName = "factory_configuration_event", schemaIndex = 0, tag = 1)
    public final DeviceConfigurationSuccessEvent configuration_success;

    public DeviceFactoryConfigurationEvent() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DeviceFactoryConfigurationEvent(DeviceConfigurationSuccessEvent deviceConfigurationSuccessEvent, DeviceConfigurationFailureEvent deviceConfigurationFailureEvent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceConfigurationSuccessEvent, (i & 2) != 0 ? null : deviceConfigurationFailureEvent, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceFactoryConfigurationEvent(DeviceConfigurationSuccessEvent deviceConfigurationSuccessEvent, DeviceConfigurationFailureEvent deviceConfigurationFailureEvent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.configuration_success = deviceConfigurationSuccessEvent;
        this.configuration_failure = deviceConfigurationFailureEvent;
        if (Internal.countNonNull(deviceConfigurationSuccessEvent, deviceConfigurationFailureEvent) > 1) {
            throw new IllegalArgumentException("At most one of configuration_success, configuration_failure may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.configuration_success = this.configuration_success;
        builder.configuration_failure = this.configuration_failure;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceFactoryConfigurationEvent)) {
            return false;
        }
        DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent = (DeviceFactoryConfigurationEvent) other;
        return Intrinsics.areEqual(unknownFields(), deviceFactoryConfigurationEvent.unknownFields()) && Intrinsics.areEqual(this.configuration_success, deviceFactoryConfigurationEvent.configuration_success) && Intrinsics.areEqual(this.configuration_failure, deviceFactoryConfigurationEvent.configuration_failure);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceConfigurationSuccessEvent deviceConfigurationSuccessEvent = this.configuration_success;
        int iHashCode2 = (iHashCode + (deviceConfigurationSuccessEvent != null ? deviceConfigurationSuccessEvent.hashCode() : 0)) * 37;
        DeviceConfigurationFailureEvent deviceConfigurationFailureEvent = this.configuration_failure;
        int iHashCode3 = iHashCode2 + (deviceConfigurationFailureEvent != null ? deviceConfigurationFailureEvent.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.configuration_success != null) {
            arrayList.add("configuration_success=" + this.configuration_success);
        }
        if (this.configuration_failure != null) {
            arrayList.add("configuration_failure=" + this.configuration_failure);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceFactoryConfigurationEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceFactoryConfigurationEvent copy$default(DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent, DeviceConfigurationSuccessEvent deviceConfigurationSuccessEvent, DeviceConfigurationFailureEvent deviceConfigurationFailureEvent, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceConfigurationSuccessEvent = deviceFactoryConfigurationEvent.configuration_success;
        }
        if ((i & 2) != 0) {
            deviceConfigurationFailureEvent = deviceFactoryConfigurationEvent.configuration_failure;
        }
        if ((i & 4) != 0) {
            byteString = deviceFactoryConfigurationEvent.unknownFields();
        }
        return deviceFactoryConfigurationEvent.copy(deviceConfigurationSuccessEvent, deviceConfigurationFailureEvent, byteString);
    }

    public final DeviceFactoryConfigurationEvent copy(DeviceConfigurationSuccessEvent configuration_success, DeviceConfigurationFailureEvent configuration_failure, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceFactoryConfigurationEvent(configuration_success, configuration_failure, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceFactoryConfigurationEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;", "()V", "configuration_failure", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceConfigurationFailureEvent;", "configuration_success", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceConfigurationSuccessEvent;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceFactoryConfigurationEvent, Builder> {
        public DeviceConfigurationFailureEvent configuration_failure;
        public DeviceConfigurationSuccessEvent configuration_success;

        public final Builder configuration_success(DeviceConfigurationSuccessEvent configuration_success) {
            this.configuration_success = configuration_success;
            this.configuration_failure = null;
            return this;
        }

        public final Builder configuration_failure(DeviceConfigurationFailureEvent configuration_failure) {
            this.configuration_failure = configuration_failure;
            this.configuration_success = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceFactoryConfigurationEvent build() {
            return new DeviceFactoryConfigurationEvent(this.configuration_success, this.configuration_failure, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceFactoryConfigurationEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceFactoryConfigurationEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceFactoryConfigurationEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceFactoryConfigurationEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.DeviceFactoryConfigurationEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceFactoryConfigurationEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + DeviceConfigurationSuccessEvent.ADAPTER.encodedSizeWithTag(1, value.configuration_success) + DeviceConfigurationFailureEvent.ADAPTER.encodedSizeWithTag(2, value.configuration_failure);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceFactoryConfigurationEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceConfigurationSuccessEvent.ADAPTER.encodeWithTag(writer, 1, value.configuration_success);
                DeviceConfigurationFailureEvent.ADAPTER.encodeWithTag(writer, 2, value.configuration_failure);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceFactoryConfigurationEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DeviceConfigurationFailureEvent.ADAPTER.encodeWithTag(writer, 2, value.configuration_failure);
                DeviceConfigurationSuccessEvent.ADAPTER.encodeWithTag(writer, 1, value.configuration_success);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceFactoryConfigurationEvent redact(DeviceFactoryConfigurationEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceConfigurationSuccessEvent deviceConfigurationSuccessEvent = value.configuration_success;
                DeviceConfigurationSuccessEvent deviceConfigurationSuccessEventRedact = deviceConfigurationSuccessEvent != null ? DeviceConfigurationSuccessEvent.ADAPTER.redact(deviceConfigurationSuccessEvent) : null;
                DeviceConfigurationFailureEvent deviceConfigurationFailureEvent = value.configuration_failure;
                return value.copy(deviceConfigurationSuccessEventRedact, deviceConfigurationFailureEvent != null ? DeviceConfigurationFailureEvent.ADAPTER.redact(deviceConfigurationFailureEvent) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceFactoryConfigurationEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceConfigurationSuccessEvent deviceConfigurationSuccessEventDecode = null;
                DeviceConfigurationFailureEvent deviceConfigurationFailureEventDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceFactoryConfigurationEvent(deviceConfigurationSuccessEventDecode, deviceConfigurationFailureEventDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceConfigurationSuccessEventDecode = DeviceConfigurationSuccessEvent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        deviceConfigurationFailureEventDecode = DeviceConfigurationFailureEvent.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
