package com.stripe.proto.api.ipc;

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
import com.stripe.proto.api.ipc.DeviceSettingsUpdate;
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

/* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;", "device_asset_update", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "NotifyDeviceAssetUpdate", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceSettingsUpdate extends Message<DeviceSettingsUpdate, Builder> {
    public static final ProtoAdapter<DeviceSettingsUpdate> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.ipc.DeviceSettingsUpdate$NotifyDeviceAssetUpdate#ADAPTER", jsonName = "deviceAssetUpdate", oneofName = "updateMessage", schemaIndex = 0, tag = 1)
    public final NotifyDeviceAssetUpdate device_asset_update;

    /* JADX WARN: Multi-variable type inference failed */
    public DeviceSettingsUpdate() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DeviceSettingsUpdate(NotifyDeviceAssetUpdate notifyDeviceAssetUpdate, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : notifyDeviceAssetUpdate, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceSettingsUpdate(NotifyDeviceAssetUpdate notifyDeviceAssetUpdate, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_asset_update = notifyDeviceAssetUpdate;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_asset_update = this.device_asset_update;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceSettingsUpdate)) {
            return false;
        }
        DeviceSettingsUpdate deviceSettingsUpdate = (DeviceSettingsUpdate) other;
        return Intrinsics.areEqual(unknownFields(), deviceSettingsUpdate.unknownFields()) && Intrinsics.areEqual(this.device_asset_update, deviceSettingsUpdate.device_asset_update);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        NotifyDeviceAssetUpdate notifyDeviceAssetUpdate = this.device_asset_update;
        int iHashCode2 = iHashCode + (notifyDeviceAssetUpdate != null ? notifyDeviceAssetUpdate.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_asset_update != null) {
            arrayList.add("device_asset_update=" + this.device_asset_update);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceSettingsUpdate{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceSettingsUpdate copy$default(DeviceSettingsUpdate deviceSettingsUpdate, NotifyDeviceAssetUpdate notifyDeviceAssetUpdate, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            notifyDeviceAssetUpdate = deviceSettingsUpdate.device_asset_update;
        }
        if ((i & 2) != 0) {
            byteString = deviceSettingsUpdate.unknownFields();
        }
        return deviceSettingsUpdate.copy(notifyDeviceAssetUpdate, byteString);
    }

    public final DeviceSettingsUpdate copy(NotifyDeviceAssetUpdate device_asset_update, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceSettingsUpdate(device_asset_update, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;", "()V", "device_asset_update", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceSettingsUpdate, Builder> {
        public NotifyDeviceAssetUpdate device_asset_update;

        public final Builder device_asset_update(NotifyDeviceAssetUpdate device_asset_update) {
            this.device_asset_update = device_asset_update;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceSettingsUpdate build() {
            return new DeviceSettingsUpdate(this.device_asset_update, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceSettingsUpdate build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceSettingsUpdate.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceSettingsUpdate>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.DeviceSettingsUpdate$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceSettingsUpdate value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + DeviceSettingsUpdate.NotifyDeviceAssetUpdate.ADAPTER.encodedSizeWithTag(1, value.device_asset_update);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceSettingsUpdate value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceSettingsUpdate.NotifyDeviceAssetUpdate.ADAPTER.encodeWithTag(writer, 1, value.device_asset_update);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceSettingsUpdate value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DeviceSettingsUpdate.NotifyDeviceAssetUpdate.ADAPTER.encodeWithTag(writer, 1, value.device_asset_update);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceSettingsUpdate redact(DeviceSettingsUpdate value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceSettingsUpdate.NotifyDeviceAssetUpdate notifyDeviceAssetUpdate = value.device_asset_update;
                return value.copy(notifyDeviceAssetUpdate != null ? DeviceSettingsUpdate.NotifyDeviceAssetUpdate.ADAPTER.redact(notifyDeviceAssetUpdate) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceSettingsUpdate decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceSettingsUpdate.NotifyDeviceAssetUpdate notifyDeviceAssetUpdateDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceSettingsUpdate(notifyDeviceAssetUpdateDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        notifyDeviceAssetUpdateDecode = DeviceSettingsUpdate.NotifyDeviceAssetUpdate.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$Builder;", "update_type", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "UpdateType", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotifyDeviceAssetUpdate extends Message<NotifyDeviceAssetUpdate, Builder> {
        public static final ProtoAdapter<NotifyDeviceAssetUpdate> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.ipc.DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType#ADAPTER", jsonName = "updateType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final UpdateType update_type;

        /* JADX WARN: Multi-variable type inference failed */
        public NotifyDeviceAssetUpdate() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ NotifyDeviceAssetUpdate(UpdateType updateType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? UpdateType.UNKNOWN : updateType, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotifyDeviceAssetUpdate(UpdateType update_type, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(update_type, "update_type");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.update_type = update_type;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.update_type = this.update_type;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof NotifyDeviceAssetUpdate)) {
                return false;
            }
            NotifyDeviceAssetUpdate notifyDeviceAssetUpdate = (NotifyDeviceAssetUpdate) other;
            return Intrinsics.areEqual(unknownFields(), notifyDeviceAssetUpdate.unknownFields()) && this.update_type == notifyDeviceAssetUpdate.update_type;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.update_type.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("update_type=" + this.update_type);
            return CollectionsKt.joinToString$default(arrayList, ", ", "NotifyDeviceAssetUpdate{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ NotifyDeviceAssetUpdate copy$default(NotifyDeviceAssetUpdate notifyDeviceAssetUpdate, UpdateType updateType, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                updateType = notifyDeviceAssetUpdate.update_type;
            }
            if ((i & 2) != 0) {
                byteString = notifyDeviceAssetUpdate.unknownFields();
            }
            return notifyDeviceAssetUpdate.copy(updateType, byteString);
        }

        public final NotifyDeviceAssetUpdate copy(UpdateType update_type, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(update_type, "update_type");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new NotifyDeviceAssetUpdate(update_type, unknownFields);
        }

        /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate;", "()V", "update_type", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<NotifyDeviceAssetUpdate, Builder> {
            public UpdateType update_type = UpdateType.UNKNOWN;

            public final Builder update_type(UpdateType update_type) {
                Intrinsics.checkNotNullParameter(update_type, "update_type");
                this.update_type = update_type;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public NotifyDeviceAssetUpdate build() {
                return new NotifyDeviceAssetUpdate(this.update_type, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ NotifyDeviceAssetUpdate build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NotifyDeviceAssetUpdate.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<NotifyDeviceAssetUpdate>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.DeviceSettingsUpdate$NotifyDeviceAssetUpdate$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DeviceSettingsUpdate.NotifyDeviceAssetUpdate value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.update_type != DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.UNKNOWN ? size + DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.ADAPTER.encodedSizeWithTag(1, value.update_type) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DeviceSettingsUpdate.NotifyDeviceAssetUpdate value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.update_type != DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.UNKNOWN) {
                        DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.ADAPTER.encodeWithTag(writer, 1, value.update_type);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DeviceSettingsUpdate.NotifyDeviceAssetUpdate value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.update_type != DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.UNKNOWN) {
                        DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.ADAPTER.encodeWithTag(writer, 1, value.update_type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DeviceSettingsUpdate.NotifyDeviceAssetUpdate decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType updateTypeDecode = DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.UNKNOWN;
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new DeviceSettingsUpdate.NotifyDeviceAssetUpdate(updateTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                updateTypeDecode = DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DeviceSettingsUpdate.NotifyDeviceAssetUpdate redact(DeviceSettingsUpdate.NotifyDeviceAssetUpdate value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return DeviceSettingsUpdate.NotifyDeviceAssetUpdate.copy$default(value, null, ByteString.EMPTY, 1, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "REQUIRED_FOR_PAYMENT", "NO_UPDATES", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class UpdateType implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ UpdateType[] $VALUES;
            public static final ProtoAdapter<UpdateType> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final UpdateType NO_UPDATES;
            public static final UpdateType REQUIRED_FOR_PAYMENT;
            public static final UpdateType UNKNOWN;
            private final int value;

            private static final /* synthetic */ UpdateType[] $values() {
                return new UpdateType[]{UNKNOWN, REQUIRED_FOR_PAYMENT, NO_UPDATES};
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
                final UpdateType updateType = new UpdateType("UNKNOWN", 0, 0);
                UNKNOWN = updateType;
                REQUIRED_FOR_PAYMENT = new UpdateType("REQUIRED_FOR_PAYMENT", 1, 1);
                NO_UPDATES = new UpdateType("NO_UPDATES", 2, 2);
                UpdateType[] updateTypeArr$values = $values();
                $VALUES = updateTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(updateTypeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdateType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<UpdateType>(orCreateKotlinClass, syntax, updateType) { // from class: com.stripe.proto.api.ipc.DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType$Companion$ADAPTER$1
                    {
                        DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType updateType2 = updateType;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType fromValue(int value) {
                        return DeviceSettingsUpdate.NotifyDeviceAssetUpdate.UpdateType.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: DeviceSettingsUpdate.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$NotifyDeviceAssetUpdate$UpdateType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final UpdateType fromValue(int value) {
                    if (value == 0) {
                        return UpdateType.UNKNOWN;
                    }
                    if (value == 1) {
                        return UpdateType.REQUIRED_FOR_PAYMENT;
                    }
                    if (value != 2) {
                        return null;
                    }
                    return UpdateType.NO_UPDATES;
                }
            }
        }
    }
}
