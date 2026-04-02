package com.stripe.proto.model.common;

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
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.DeviceAssetUpdateEvent;
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

/* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001a\u001b\u001c\u001d\u001eBI\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJJ\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Builder;", "update_type", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;", "asset_info", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "event_timestamp", "Lcom/stripe/proto/model/common/InstantPb;", "device_asset_update_error", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;", "device_asset_update_success", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "DeviceAssetUpdateError", "DeviceAssetUpdateSuccess", "UpdateType", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceAssetUpdateEvent extends Message<DeviceAssetUpdateEvent, Builder> {
    public static final ProtoAdapter<DeviceAssetUpdateEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetInfo#ADAPTER", jsonName = "assetInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final DeviceAssetInfo asset_info;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetUpdateEvent$DeviceAssetUpdateError#ADAPTER", jsonName = "deviceAssetUpdateError", oneofName = "event_details", schemaIndex = 3, tag = 5)
    public final DeviceAssetUpdateError device_asset_update_error;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess#ADAPTER", jsonName = "deviceAssetUpdateSuccess", oneofName = "event_details", schemaIndex = 4, tag = 6)
    public final DeviceAssetUpdateSuccess device_asset_update_success;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "eventTimestamp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final InstantPb event_timestamp;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetUpdateEvent$UpdateType#ADAPTER", jsonName = "updateType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final UpdateType update_type;

    public DeviceAssetUpdateEvent() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ DeviceAssetUpdateEvent(UpdateType updateType, DeviceAssetInfo deviceAssetInfo, InstantPb instantPb, DeviceAssetUpdateError deviceAssetUpdateError, DeviceAssetUpdateSuccess deviceAssetUpdateSuccess, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UpdateType.UPDATE_TYPE_INVALID : updateType, (i & 2) != 0 ? null : deviceAssetInfo, (i & 4) != 0 ? null : instantPb, (i & 8) != 0 ? null : deviceAssetUpdateError, (i & 16) != 0 ? null : deviceAssetUpdateSuccess, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAssetUpdateEvent(UpdateType update_type, DeviceAssetInfo deviceAssetInfo, InstantPb instantPb, DeviceAssetUpdateError deviceAssetUpdateError, DeviceAssetUpdateSuccess deviceAssetUpdateSuccess, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(update_type, "update_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.update_type = update_type;
        this.asset_info = deviceAssetInfo;
        this.event_timestamp = instantPb;
        this.device_asset_update_error = deviceAssetUpdateError;
        this.device_asset_update_success = deviceAssetUpdateSuccess;
        if (Internal.countNonNull(deviceAssetUpdateError, deviceAssetUpdateSuccess) > 1) {
            throw new IllegalArgumentException("At most one of device_asset_update_error, device_asset_update_success may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.update_type = this.update_type;
        builder.asset_info = this.asset_info;
        builder.event_timestamp = this.event_timestamp;
        builder.device_asset_update_error = this.device_asset_update_error;
        builder.device_asset_update_success = this.device_asset_update_success;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceAssetUpdateEvent)) {
            return false;
        }
        DeviceAssetUpdateEvent deviceAssetUpdateEvent = (DeviceAssetUpdateEvent) other;
        return Intrinsics.areEqual(unknownFields(), deviceAssetUpdateEvent.unknownFields()) && this.update_type == deviceAssetUpdateEvent.update_type && Intrinsics.areEqual(this.asset_info, deviceAssetUpdateEvent.asset_info) && Intrinsics.areEqual(this.event_timestamp, deviceAssetUpdateEvent.event_timestamp) && Intrinsics.areEqual(this.device_asset_update_error, deviceAssetUpdateEvent.device_asset_update_error) && Intrinsics.areEqual(this.device_asset_update_success, deviceAssetUpdateEvent.device_asset_update_success);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.update_type.hashCode()) * 37;
        DeviceAssetInfo deviceAssetInfo = this.asset_info;
        int iHashCode2 = (iHashCode + (deviceAssetInfo != null ? deviceAssetInfo.hashCode() : 0)) * 37;
        InstantPb instantPb = this.event_timestamp;
        int iHashCode3 = (iHashCode2 + (instantPb != null ? instantPb.hashCode() : 0)) * 37;
        DeviceAssetUpdateError deviceAssetUpdateError = this.device_asset_update_error;
        int iHashCode4 = (iHashCode3 + (deviceAssetUpdateError != null ? deviceAssetUpdateError.hashCode() : 0)) * 37;
        DeviceAssetUpdateSuccess deviceAssetUpdateSuccess = this.device_asset_update_success;
        int iHashCode5 = iHashCode4 + (deviceAssetUpdateSuccess != null ? deviceAssetUpdateSuccess.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("update_type=" + this.update_type);
        if (this.asset_info != null) {
            arrayList2.add("asset_info=" + this.asset_info);
        }
        if (this.event_timestamp != null) {
            arrayList2.add("event_timestamp=" + this.event_timestamp);
        }
        if (this.device_asset_update_error != null) {
            arrayList2.add("device_asset_update_error=" + this.device_asset_update_error);
        }
        if (this.device_asset_update_success != null) {
            arrayList2.add("device_asset_update_success=" + this.device_asset_update_success);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceAssetUpdateEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceAssetUpdateEvent copy$default(DeviceAssetUpdateEvent deviceAssetUpdateEvent, UpdateType updateType, DeviceAssetInfo deviceAssetInfo, InstantPb instantPb, DeviceAssetUpdateError deviceAssetUpdateError, DeviceAssetUpdateSuccess deviceAssetUpdateSuccess, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            updateType = deviceAssetUpdateEvent.update_type;
        }
        if ((i & 2) != 0) {
            deviceAssetInfo = deviceAssetUpdateEvent.asset_info;
        }
        if ((i & 4) != 0) {
            instantPb = deviceAssetUpdateEvent.event_timestamp;
        }
        if ((i & 8) != 0) {
            deviceAssetUpdateError = deviceAssetUpdateEvent.device_asset_update_error;
        }
        if ((i & 16) != 0) {
            deviceAssetUpdateSuccess = deviceAssetUpdateEvent.device_asset_update_success;
        }
        if ((i & 32) != 0) {
            byteString = deviceAssetUpdateEvent.unknownFields();
        }
        DeviceAssetUpdateSuccess deviceAssetUpdateSuccess2 = deviceAssetUpdateSuccess;
        ByteString byteString2 = byteString;
        return deviceAssetUpdateEvent.copy(updateType, deviceAssetInfo, instantPb, deviceAssetUpdateError, deviceAssetUpdateSuccess2, byteString2);
    }

    public final DeviceAssetUpdateEvent copy(UpdateType update_type, DeviceAssetInfo asset_info, InstantPb event_timestamp, DeviceAssetUpdateError device_asset_update_error, DeviceAssetUpdateSuccess device_asset_update_success, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(update_type, "update_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceAssetUpdateEvent(update_type, asset_info, event_timestamp, device_asset_update_error, device_asset_update_success, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;", "()V", "asset_info", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "device_asset_update_error", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;", "device_asset_update_success", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;", "event_timestamp", "Lcom/stripe/proto/model/common/InstantPb;", "update_type", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceAssetUpdateEvent, Builder> {
        public DeviceAssetInfo asset_info;
        public DeviceAssetUpdateError device_asset_update_error;
        public DeviceAssetUpdateSuccess device_asset_update_success;
        public InstantPb event_timestamp;
        public UpdateType update_type = UpdateType.UPDATE_TYPE_INVALID;

        public final Builder update_type(UpdateType update_type) {
            Intrinsics.checkNotNullParameter(update_type, "update_type");
            this.update_type = update_type;
            return this;
        }

        public final Builder asset_info(DeviceAssetInfo asset_info) {
            this.asset_info = asset_info;
            return this;
        }

        public final Builder event_timestamp(InstantPb event_timestamp) {
            this.event_timestamp = event_timestamp;
            return this;
        }

        public final Builder device_asset_update_error(DeviceAssetUpdateError device_asset_update_error) {
            this.device_asset_update_error = device_asset_update_error;
            this.device_asset_update_success = null;
            return this;
        }

        public final Builder device_asset_update_success(DeviceAssetUpdateSuccess device_asset_update_success) {
            this.device_asset_update_success = device_asset_update_success;
            this.device_asset_update_error = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceAssetUpdateEvent build() {
            return new DeviceAssetUpdateEvent(this.update_type, this.asset_info, this.event_timestamp, this.device_asset_update_error, this.device_asset_update_success, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceAssetUpdateEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceAssetUpdateEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceAssetUpdateEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeviceAssetUpdateEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceAssetUpdateEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.update_type != DeviceAssetUpdateEvent.UpdateType.UPDATE_TYPE_INVALID) {
                    size += DeviceAssetUpdateEvent.UpdateType.ADAPTER.encodedSizeWithTag(1, value.update_type);
                }
                if (value.asset_info != null) {
                    size += DeviceAssetInfo.ADAPTER.encodedSizeWithTag(3, value.asset_info);
                }
                if (value.event_timestamp != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(4, value.event_timestamp);
                }
                return size + DeviceAssetUpdateEvent.DeviceAssetUpdateError.ADAPTER.encodedSizeWithTag(5, value.device_asset_update_error) + DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess.ADAPTER.encodedSizeWithTag(6, value.device_asset_update_success);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceAssetUpdateEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.update_type != DeviceAssetUpdateEvent.UpdateType.UPDATE_TYPE_INVALID) {
                    DeviceAssetUpdateEvent.UpdateType.ADAPTER.encodeWithTag(writer, 1, value.update_type);
                }
                if (value.asset_info != null) {
                    DeviceAssetInfo.ADAPTER.encodeWithTag(writer, 3, value.asset_info);
                }
                if (value.event_timestamp != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 4, value.event_timestamp);
                }
                DeviceAssetUpdateEvent.DeviceAssetUpdateError.ADAPTER.encodeWithTag(writer, 5, value.device_asset_update_error);
                DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess.ADAPTER.encodeWithTag(writer, 6, value.device_asset_update_success);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceAssetUpdateEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess.ADAPTER.encodeWithTag(writer, 6, value.device_asset_update_success);
                DeviceAssetUpdateEvent.DeviceAssetUpdateError.ADAPTER.encodeWithTag(writer, 5, value.device_asset_update_error);
                if (value.event_timestamp != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 4, value.event_timestamp);
                }
                if (value.asset_info != null) {
                    DeviceAssetInfo.ADAPTER.encodeWithTag(writer, 3, value.asset_info);
                }
                if (value.update_type != DeviceAssetUpdateEvent.UpdateType.UPDATE_TYPE_INVALID) {
                    DeviceAssetUpdateEvent.UpdateType.ADAPTER.encodeWithTag(writer, 1, value.update_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAssetUpdateEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DeviceAssetUpdateEvent.UpdateType updateTypeDecode = DeviceAssetUpdateEvent.UpdateType.UPDATE_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                DeviceAssetInfo deviceAssetInfoDecode = null;
                InstantPb instantPbDecode = null;
                DeviceAssetUpdateEvent.DeviceAssetUpdateError deviceAssetUpdateErrorDecode = null;
                DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess deviceAssetUpdateSuccessDecode = null;
                while (true) {
                    DeviceAssetUpdateEvent.UpdateType updateType = updateTypeDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new DeviceAssetUpdateEvent(updateType, deviceAssetInfoDecode, instantPbDecode, deviceAssetUpdateErrorDecode, deviceAssetUpdateSuccessDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                updateTypeDecode = DeviceAssetUpdateEvent.UpdateType.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            deviceAssetInfoDecode = DeviceAssetInfo.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            instantPbDecode = InstantPb.ADAPTER.decode(reader);
                        } else if (iNextTag == 5) {
                            deviceAssetUpdateErrorDecode = DeviceAssetUpdateEvent.DeviceAssetUpdateError.ADAPTER.decode(reader);
                        } else if (iNextTag == 6) {
                            deviceAssetUpdateSuccessDecode = DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAssetUpdateEvent redact(DeviceAssetUpdateEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceAssetInfo deviceAssetInfo = value.asset_info;
                DeviceAssetInfo deviceAssetInfoRedact = deviceAssetInfo != null ? DeviceAssetInfo.ADAPTER.redact(deviceAssetInfo) : null;
                InstantPb instantPb = value.event_timestamp;
                InstantPb instantPbRedact = instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null;
                DeviceAssetUpdateEvent.DeviceAssetUpdateError deviceAssetUpdateError = value.device_asset_update_error;
                DeviceAssetUpdateEvent.DeviceAssetUpdateError deviceAssetUpdateErrorRedact = deviceAssetUpdateError != null ? DeviceAssetUpdateEvent.DeviceAssetUpdateError.ADAPTER.redact(deviceAssetUpdateError) : null;
                DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess deviceAssetUpdateSuccess = value.device_asset_update_success;
                return DeviceAssetUpdateEvent.copy$default(value, null, deviceAssetInfoRedact, instantPbRedact, deviceAssetUpdateErrorRedact, deviceAssetUpdateSuccess != null ? DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess.ADAPTER.redact(deviceAssetUpdateSuccess) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UPDATE_TYPE_INVALID", "INSTALL", "UNINSTALL", "CLEAN_INSTALL", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpdateType[] $VALUES;
        public static final ProtoAdapter<UpdateType> ADAPTER;
        public static final UpdateType CLEAN_INSTALL;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final UpdateType INSTALL;
        public static final UpdateType UNINSTALL;
        public static final UpdateType UPDATE_TYPE_INVALID;
        private final int value;

        private static final /* synthetic */ UpdateType[] $values() {
            return new UpdateType[]{UPDATE_TYPE_INVALID, INSTALL, UNINSTALL, CLEAN_INSTALL};
        }

        @JvmStatic
        public static final UpdateType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<UpdateType> getEntries() {
            return $ENTRIES;
        }

        public static UpdateType valueOf(String str) {
            return (UpdateType) Enum.valueOf(UpdateType.class, str);
        }

        public static UpdateType[] values() {
            return (UpdateType[]) $VALUES.clone();
        }

        private UpdateType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final UpdateType updateType = new UpdateType("UPDATE_TYPE_INVALID", 0, 0);
            UPDATE_TYPE_INVALID = updateType;
            INSTALL = new UpdateType("INSTALL", 1, 1);
            UNINSTALL = new UpdateType("UNINSTALL", 2, 2);
            CLEAN_INSTALL = new UpdateType("CLEAN_INSTALL", 3, 3);
            UpdateType[] updateTypeArr$values = $values();
            $VALUES = updateTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(updateTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdateType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<UpdateType>(orCreateKotlinClass, syntax, updateType) { // from class: com.stripe.proto.model.common.DeviceAssetUpdateEvent$UpdateType$Companion$ADAPTER$1
                {
                    DeviceAssetUpdateEvent.UpdateType updateType2 = updateType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public DeviceAssetUpdateEvent.UpdateType fromValue(int value) {
                    return DeviceAssetUpdateEvent.UpdateType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$UpdateType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final UpdateType fromValue(int value) {
                if (value == 0) {
                    return UpdateType.UPDATE_TYPE_INVALID;
                }
                if (value == 1) {
                    return UpdateType.INSTALL;
                }
                if (value == 2) {
                    return UpdateType.UNINSTALL;
                }
                if (value != 3) {
                    return null;
                }
                return UpdateType.CLEAN_INSTALL;
            }
        }
    }

    /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DeviceAssetUpdateError extends Message<DeviceAssetUpdateError, Builder> {
        public static final ProtoAdapter<DeviceAssetUpdateError> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        /* JADX WARN: Multi-variable type inference failed */
        public DeviceAssetUpdateError() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ DeviceAssetUpdateError(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceAssetUpdateError(ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            return (other instanceof DeviceAssetUpdateError) && Intrinsics.areEqual(unknownFields(), ((DeviceAssetUpdateError) other).unknownFields());
        }

        public int hashCode() {
            return unknownFields().hashCode();
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            return "DeviceAssetUpdateError{}";
        }

        public static /* synthetic */ DeviceAssetUpdateError copy$default(DeviceAssetUpdateError deviceAssetUpdateError, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                byteString = deviceAssetUpdateError.unknownFields();
            }
            return deviceAssetUpdateError.copy(byteString);
        }

        public final DeviceAssetUpdateError copy(ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new DeviceAssetUpdateError(unknownFields);
        }

        /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;", "()V", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<DeviceAssetUpdateError, Builder> {
            @Override // com.squareup.wire.Message.Builder
            public DeviceAssetUpdateError build() {
                return new DeviceAssetUpdateError(buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateError$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ DeviceAssetUpdateError build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceAssetUpdateError.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<DeviceAssetUpdateError>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeviceAssetUpdateEvent$DeviceAssetUpdateError$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DeviceAssetUpdateEvent.DeviceAssetUpdateError value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DeviceAssetUpdateEvent.DeviceAssetUpdateError value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DeviceAssetUpdateEvent.DeviceAssetUpdateError value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DeviceAssetUpdateEvent.DeviceAssetUpdateError redact(DeviceAssetUpdateEvent.DeviceAssetUpdateError value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DeviceAssetUpdateEvent.DeviceAssetUpdateError decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            reader.readUnknownField(iNextTag);
                        } else {
                            return new DeviceAssetUpdateEvent.DeviceAssetUpdateError(reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DeviceAssetUpdateSuccess extends Message<DeviceAssetUpdateSuccess, Builder> {
        public static final ProtoAdapter<DeviceAssetUpdateSuccess> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        /* JADX WARN: Multi-variable type inference failed */
        public DeviceAssetUpdateSuccess() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ DeviceAssetUpdateSuccess(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceAssetUpdateSuccess(ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            return (other instanceof DeviceAssetUpdateSuccess) && Intrinsics.areEqual(unknownFields(), ((DeviceAssetUpdateSuccess) other).unknownFields());
        }

        public int hashCode() {
            return unknownFields().hashCode();
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            return "DeviceAssetUpdateSuccess{}";
        }

        public static /* synthetic */ DeviceAssetUpdateSuccess copy$default(DeviceAssetUpdateSuccess deviceAssetUpdateSuccess, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                byteString = deviceAssetUpdateSuccess.unknownFields();
            }
            return deviceAssetUpdateSuccess.copy(byteString);
        }

        public final DeviceAssetUpdateSuccess copy(ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new DeviceAssetUpdateSuccess(unknownFields);
        }

        /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;", "()V", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<DeviceAssetUpdateSuccess, Builder> {
            @Override // com.squareup.wire.Message.Builder
            public DeviceAssetUpdateSuccess build() {
                return new DeviceAssetUpdateSuccess(buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DeviceAssetUpdateEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ DeviceAssetUpdateSuccess build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceAssetUpdateSuccess.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<DeviceAssetUpdateSuccess>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeviceAssetUpdateEvent$DeviceAssetUpdateSuccess$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess redact(DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            reader.readUnknownField(iNextTag);
                        } else {
                            return new DeviceAssetUpdateEvent.DeviceAssetUpdateSuccess(reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
