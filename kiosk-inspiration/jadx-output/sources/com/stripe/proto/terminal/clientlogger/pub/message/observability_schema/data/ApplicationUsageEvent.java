package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.ApplicationMetadata;
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

/* JADX INFO: compiled from: ApplicationUsageEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;", "usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "application", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;", "bucket_metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationUsageEvent extends Message<ApplicationUsageEvent, Builder> {
    public static final ProtoAdapter<ApplicationUsageEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.ApplicationMetadata#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ApplicationMetadata application;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.BucketMetadata#ADAPTER", jsonName = "bucketMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final BucketMetadata bucket_metadata;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageAmount#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DataUsageAmount usage;

    public ApplicationUsageEvent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ApplicationUsageEvent(DataUsageAmount dataUsageAmount, ApplicationMetadata applicationMetadata, BucketMetadata bucketMetadata, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : dataUsageAmount, (i & 2) != 0 ? null : applicationMetadata, (i & 4) != 0 ? null : bucketMetadata, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationUsageEvent(DataUsageAmount dataUsageAmount, ApplicationMetadata applicationMetadata, BucketMetadata bucketMetadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.usage = dataUsageAmount;
        this.application = applicationMetadata;
        this.bucket_metadata = bucketMetadata;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.usage = this.usage;
        builder.application = this.application;
        builder.bucket_metadata = this.bucket_metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApplicationUsageEvent)) {
            return false;
        }
        ApplicationUsageEvent applicationUsageEvent = (ApplicationUsageEvent) other;
        return Intrinsics.areEqual(unknownFields(), applicationUsageEvent.unknownFields()) && Intrinsics.areEqual(this.usage, applicationUsageEvent.usage) && Intrinsics.areEqual(this.application, applicationUsageEvent.application) && Intrinsics.areEqual(this.bucket_metadata, applicationUsageEvent.bucket_metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DataUsageAmount dataUsageAmount = this.usage;
        int iHashCode2 = (iHashCode + (dataUsageAmount != null ? dataUsageAmount.hashCode() : 0)) * 37;
        ApplicationMetadata applicationMetadata = this.application;
        int iHashCode3 = (iHashCode2 + (applicationMetadata != null ? applicationMetadata.hashCode() : 0)) * 37;
        BucketMetadata bucketMetadata = this.bucket_metadata;
        int iHashCode4 = iHashCode3 + (bucketMetadata != null ? bucketMetadata.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.usage != null) {
            arrayList.add("usage=" + this.usage);
        }
        if (this.application != null) {
            arrayList.add("application=" + this.application);
        }
        if (this.bucket_metadata != null) {
            arrayList.add("bucket_metadata=" + this.bucket_metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApplicationUsageEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApplicationUsageEvent copy$default(ApplicationUsageEvent applicationUsageEvent, DataUsageAmount dataUsageAmount, ApplicationMetadata applicationMetadata, BucketMetadata bucketMetadata, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            dataUsageAmount = applicationUsageEvent.usage;
        }
        if ((i & 2) != 0) {
            applicationMetadata = applicationUsageEvent.application;
        }
        if ((i & 4) != 0) {
            bucketMetadata = applicationUsageEvent.bucket_metadata;
        }
        if ((i & 8) != 0) {
            byteString = applicationUsageEvent.unknownFields();
        }
        return applicationUsageEvent.copy(dataUsageAmount, applicationMetadata, bucketMetadata, byteString);
    }

    public final ApplicationUsageEvent copy(DataUsageAmount usage, ApplicationMetadata application, BucketMetadata bucket_metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApplicationUsageEvent(usage, application, bucket_metadata, unknownFields);
    }

    /* JADX INFO: compiled from: ApplicationUsageEvent.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;", "()V", "application", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;", "bucket_metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;", "usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApplicationUsageEvent, Builder> {
        public ApplicationMetadata application;
        public BucketMetadata bucket_metadata;
        public DataUsageAmount usage;

        public final Builder usage(DataUsageAmount usage) {
            this.usage = usage;
            return this;
        }

        public final Builder application(ApplicationMetadata application) {
            this.application = application;
            return this;
        }

        public final Builder bucket_metadata(BucketMetadata bucket_metadata) {
            this.bucket_metadata = bucket_metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApplicationUsageEvent build() {
            return new ApplicationUsageEvent(this.usage, this.application, this.bucket_metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApplicationUsageEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApplicationUsageEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationUsageEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApplicationUsageEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.ApplicationUsageEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApplicationUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.usage != null) {
                    size += DataUsageAmount.ADAPTER.encodedSizeWithTag(1, value.usage);
                }
                if (value.application != null) {
                    size += ApplicationMetadata.ADAPTER.encodedSizeWithTag(2, value.application);
                }
                return value.bucket_metadata != null ? size + BucketMetadata.ADAPTER.encodedSizeWithTag(3, value.bucket_metadata) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApplicationUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.usage != null) {
                    DataUsageAmount.ADAPTER.encodeWithTag(writer, 1, value.usage);
                }
                if (value.application != null) {
                    ApplicationMetadata.ADAPTER.encodeWithTag(writer, 2, value.application);
                }
                if (value.bucket_metadata != null) {
                    BucketMetadata.ADAPTER.encodeWithTag(writer, 3, value.bucket_metadata);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApplicationUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.bucket_metadata != null) {
                    BucketMetadata.ADAPTER.encodeWithTag(writer, 3, value.bucket_metadata);
                }
                if (value.application != null) {
                    ApplicationMetadata.ADAPTER.encodeWithTag(writer, 2, value.application);
                }
                if (value.usage != null) {
                    DataUsageAmount.ADAPTER.encodeWithTag(writer, 1, value.usage);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationUsageEvent redact(ApplicationUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DataUsageAmount dataUsageAmount = value.usage;
                DataUsageAmount dataUsageAmountRedact = dataUsageAmount != null ? DataUsageAmount.ADAPTER.redact(dataUsageAmount) : null;
                ApplicationMetadata applicationMetadata = value.application;
                ApplicationMetadata applicationMetadataRedact = applicationMetadata != null ? ApplicationMetadata.ADAPTER.redact(applicationMetadata) : null;
                BucketMetadata bucketMetadata = value.bucket_metadata;
                return value.copy(dataUsageAmountRedact, applicationMetadataRedact, bucketMetadata != null ? BucketMetadata.ADAPTER.redact(bucketMetadata) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationUsageEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DataUsageAmount dataUsageAmountDecode = null;
                ApplicationMetadata applicationMetadataDecode = null;
                BucketMetadata bucketMetadataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApplicationUsageEvent(dataUsageAmountDecode, applicationMetadataDecode, bucketMetadataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        dataUsageAmountDecode = DataUsageAmount.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        applicationMetadataDecode = ApplicationMetadata.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        bucketMetadataDecode = BucketMetadata.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
