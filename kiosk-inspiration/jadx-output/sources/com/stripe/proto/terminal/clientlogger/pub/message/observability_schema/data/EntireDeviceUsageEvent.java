package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: EntireDeviceUsageEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;", "usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "bucket_metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EntireDeviceUsageEvent extends Message<EntireDeviceUsageEvent, Builder> {
    public static final ProtoAdapter<EntireDeviceUsageEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.BucketMetadata#ADAPTER", jsonName = "bucketMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final BucketMetadata bucket_metadata;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageAmount#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DataUsageAmount usage;

    public EntireDeviceUsageEvent() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ EntireDeviceUsageEvent(DataUsageAmount dataUsageAmount, BucketMetadata bucketMetadata, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : dataUsageAmount, (i & 2) != 0 ? null : bucketMetadata, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EntireDeviceUsageEvent(DataUsageAmount dataUsageAmount, BucketMetadata bucketMetadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.usage = dataUsageAmount;
        this.bucket_metadata = bucketMetadata;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.usage = this.usage;
        builder.bucket_metadata = this.bucket_metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EntireDeviceUsageEvent)) {
            return false;
        }
        EntireDeviceUsageEvent entireDeviceUsageEvent = (EntireDeviceUsageEvent) other;
        return Intrinsics.areEqual(unknownFields(), entireDeviceUsageEvent.unknownFields()) && Intrinsics.areEqual(this.usage, entireDeviceUsageEvent.usage) && Intrinsics.areEqual(this.bucket_metadata, entireDeviceUsageEvent.bucket_metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DataUsageAmount dataUsageAmount = this.usage;
        int iHashCode2 = (iHashCode + (dataUsageAmount != null ? dataUsageAmount.hashCode() : 0)) * 37;
        BucketMetadata bucketMetadata = this.bucket_metadata;
        int iHashCode3 = iHashCode2 + (bucketMetadata != null ? bucketMetadata.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.usage != null) {
            arrayList.add("usage=" + this.usage);
        }
        if (this.bucket_metadata != null) {
            arrayList.add("bucket_metadata=" + this.bucket_metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EntireDeviceUsageEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EntireDeviceUsageEvent copy$default(EntireDeviceUsageEvent entireDeviceUsageEvent, DataUsageAmount dataUsageAmount, BucketMetadata bucketMetadata, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            dataUsageAmount = entireDeviceUsageEvent.usage;
        }
        if ((i & 2) != 0) {
            bucketMetadata = entireDeviceUsageEvent.bucket_metadata;
        }
        if ((i & 4) != 0) {
            byteString = entireDeviceUsageEvent.unknownFields();
        }
        return entireDeviceUsageEvent.copy(dataUsageAmount, bucketMetadata, byteString);
    }

    public final EntireDeviceUsageEvent copy(DataUsageAmount usage, BucketMetadata bucket_metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EntireDeviceUsageEvent(usage, bucket_metadata, unknownFields);
    }

    /* JADX INFO: compiled from: EntireDeviceUsageEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;", "()V", "bucket_metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;", "usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EntireDeviceUsageEvent, Builder> {
        public BucketMetadata bucket_metadata;
        public DataUsageAmount usage;

        public final Builder usage(DataUsageAmount usage) {
            this.usage = usage;
            return this;
        }

        public final Builder bucket_metadata(BucketMetadata bucket_metadata) {
            this.bucket_metadata = bucket_metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EntireDeviceUsageEvent build() {
            return new EntireDeviceUsageEvent(this.usage, this.bucket_metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EntireDeviceUsageEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EntireDeviceUsageEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EntireDeviceUsageEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EntireDeviceUsageEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.EntireDeviceUsageEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EntireDeviceUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.usage != null) {
                    size += DataUsageAmount.ADAPTER.encodedSizeWithTag(1, value.usage);
                }
                return value.bucket_metadata != null ? size + BucketMetadata.ADAPTER.encodedSizeWithTag(2, value.bucket_metadata) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EntireDeviceUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.usage != null) {
                    DataUsageAmount.ADAPTER.encodeWithTag(writer, 1, value.usage);
                }
                if (value.bucket_metadata != null) {
                    BucketMetadata.ADAPTER.encodeWithTag(writer, 2, value.bucket_metadata);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EntireDeviceUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.bucket_metadata != null) {
                    BucketMetadata.ADAPTER.encodeWithTag(writer, 2, value.bucket_metadata);
                }
                if (value.usage != null) {
                    DataUsageAmount.ADAPTER.encodeWithTag(writer, 1, value.usage);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EntireDeviceUsageEvent redact(EntireDeviceUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DataUsageAmount dataUsageAmount = value.usage;
                DataUsageAmount dataUsageAmountRedact = dataUsageAmount != null ? DataUsageAmount.ADAPTER.redact(dataUsageAmount) : null;
                BucketMetadata bucketMetadata = value.bucket_metadata;
                return value.copy(dataUsageAmountRedact, bucketMetadata != null ? BucketMetadata.ADAPTER.redact(bucketMetadata) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EntireDeviceUsageEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DataUsageAmount dataUsageAmountDecode = null;
                BucketMetadata bucketMetadataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EntireDeviceUsageEvent(dataUsageAmountDecode, bucketMetadataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        dataUsageAmountDecode = DataUsageAmount.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        bucketMetadataDecode = BucketMetadata.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
