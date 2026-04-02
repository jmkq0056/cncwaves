package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.storage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: StorageEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Deprecated(message = "StorageEvent is deprecated")
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent$Builder;", "free_disk_space_mb", "", "total_disk_space_mb", "unknownFields", "Lokio/ByteString;", "(IILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StorageEvent extends Message<StorageEvent, Builder> {
    public static final ProtoAdapter<StorageEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "freeDiskSpaceMb", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int free_disk_space_mb;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "totalDiskSpaceMb", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int total_disk_space_mb;

    public StorageEvent() {
        this(0, 0, null, 7, null);
    }

    public /* synthetic */ StorageEvent(int i, int i2, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StorageEvent(int i, int i2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.free_disk_space_mb = i;
        this.total_disk_space_mb = i2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.free_disk_space_mb = this.free_disk_space_mb;
        builder.total_disk_space_mb = this.total_disk_space_mb;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StorageEvent)) {
            return false;
        }
        StorageEvent storageEvent = (StorageEvent) other;
        return Intrinsics.areEqual(unknownFields(), storageEvent.unknownFields()) && this.free_disk_space_mb == storageEvent.free_disk_space_mb && this.total_disk_space_mb == storageEvent.total_disk_space_mb;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Integer.hashCode(this.free_disk_space_mb)) * 37) + Integer.hashCode(this.total_disk_space_mb);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("free_disk_space_mb=" + this.free_disk_space_mb);
        arrayList2.add("total_disk_space_mb=" + this.total_disk_space_mb);
        return CollectionsKt.joinToString$default(arrayList, ", ", "StorageEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ StorageEvent copy$default(StorageEvent storageEvent, int i, int i2, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = storageEvent.free_disk_space_mb;
        }
        if ((i3 & 2) != 0) {
            i2 = storageEvent.total_disk_space_mb;
        }
        if ((i3 & 4) != 0) {
            byteString = storageEvent.unknownFields();
        }
        return storageEvent.copy(i, i2, byteString);
    }

    public final StorageEvent copy(int free_disk_space_mb, int total_disk_space_mb, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new StorageEvent(free_disk_space_mb, total_disk_space_mb, unknownFields);
    }

    /* JADX INFO: compiled from: StorageEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;", "()V", "free_disk_space_mb", "", "total_disk_space_mb", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<StorageEvent, Builder> {
        public int free_disk_space_mb;
        public int total_disk_space_mb;

        public final Builder free_disk_space_mb(int free_disk_space_mb) {
            this.free_disk_space_mb = free_disk_space_mb;
            return this;
        }

        public final Builder total_disk_space_mb(int total_disk_space_mb) {
            this.total_disk_space_mb = total_disk_space_mb;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public StorageEvent build() {
            return new StorageEvent(this.free_disk_space_mb, this.total_disk_space_mb, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: StorageEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ StorageEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StorageEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<StorageEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.storage.StorageEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(StorageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.free_disk_space_mb != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.free_disk_space_mb));
                }
                return value.total_disk_space_mb != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.total_disk_space_mb)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, StorageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.free_disk_space_mb != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.free_disk_space_mb));
                }
                if (value.total_disk_space_mb != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.total_disk_space_mb));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, StorageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.total_disk_space_mb != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.total_disk_space_mb));
                }
                if (value.free_disk_space_mb != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.free_disk_space_mb));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public StorageEvent redact(StorageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return StorageEvent.copy$default(value, 0, 0, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public StorageEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new StorageEvent(iIntValue, iIntValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
