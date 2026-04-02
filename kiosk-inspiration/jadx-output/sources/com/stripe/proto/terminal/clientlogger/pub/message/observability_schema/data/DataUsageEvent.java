package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data;

import androidx.core.app.NotificationCompat;
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

/* JADX INFO: compiled from: DataUsageEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;", "bucketed_usage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;", "categorized_usage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DataUsageEvent extends Message<DataUsageEvent, Builder> {
    public static final ProtoAdapter<DataUsageEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.BucketedDataUsageEvent#ADAPTER", jsonName = "bucketedUsageEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final BucketedDataUsageEvent bucketed_usage_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.CategorizedUsageEvent#ADAPTER", jsonName = "categorizedUsageEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final CategorizedUsageEvent categorized_usage_event;

    public DataUsageEvent() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DataUsageEvent(BucketedDataUsageEvent bucketedDataUsageEvent, CategorizedUsageEvent categorizedUsageEvent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bucketedDataUsageEvent, (i & 2) != 0 ? null : categorizedUsageEvent, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataUsageEvent(BucketedDataUsageEvent bucketedDataUsageEvent, CategorizedUsageEvent categorizedUsageEvent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bucketed_usage_event = bucketedDataUsageEvent;
        this.categorized_usage_event = categorizedUsageEvent;
        if (Internal.countNonNull(bucketedDataUsageEvent, categorizedUsageEvent) > 1) {
            throw new IllegalArgumentException("At most one of bucketed_usage_event, categorized_usage_event may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bucketed_usage_event = this.bucketed_usage_event;
        builder.categorized_usage_event = this.categorized_usage_event;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DataUsageEvent)) {
            return false;
        }
        DataUsageEvent dataUsageEvent = (DataUsageEvent) other;
        return Intrinsics.areEqual(unknownFields(), dataUsageEvent.unknownFields()) && Intrinsics.areEqual(this.bucketed_usage_event, dataUsageEvent.bucketed_usage_event) && Intrinsics.areEqual(this.categorized_usage_event, dataUsageEvent.categorized_usage_event);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BucketedDataUsageEvent bucketedDataUsageEvent = this.bucketed_usage_event;
        int iHashCode2 = (iHashCode + (bucketedDataUsageEvent != null ? bucketedDataUsageEvent.hashCode() : 0)) * 37;
        CategorizedUsageEvent categorizedUsageEvent = this.categorized_usage_event;
        int iHashCode3 = iHashCode2 + (categorizedUsageEvent != null ? categorizedUsageEvent.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.bucketed_usage_event != null) {
            arrayList.add("bucketed_usage_event=" + this.bucketed_usage_event);
        }
        if (this.categorized_usage_event != null) {
            arrayList.add("categorized_usage_event=" + this.categorized_usage_event);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DataUsageEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DataUsageEvent copy$default(DataUsageEvent dataUsageEvent, BucketedDataUsageEvent bucketedDataUsageEvent, CategorizedUsageEvent categorizedUsageEvent, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bucketedDataUsageEvent = dataUsageEvent.bucketed_usage_event;
        }
        if ((i & 2) != 0) {
            categorizedUsageEvent = dataUsageEvent.categorized_usage_event;
        }
        if ((i & 4) != 0) {
            byteString = dataUsageEvent.unknownFields();
        }
        return dataUsageEvent.copy(bucketedDataUsageEvent, categorizedUsageEvent, byteString);
    }

    public final DataUsageEvent copy(BucketedDataUsageEvent bucketed_usage_event, CategorizedUsageEvent categorized_usage_event, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DataUsageEvent(bucketed_usage_event, categorized_usage_event, unknownFields);
    }

    /* JADX INFO: compiled from: DataUsageEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;", "()V", "bucketed_usage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;", "categorized_usage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DataUsageEvent, Builder> {
        public BucketedDataUsageEvent bucketed_usage_event;
        public CategorizedUsageEvent categorized_usage_event;

        public final Builder bucketed_usage_event(BucketedDataUsageEvent bucketed_usage_event) {
            this.bucketed_usage_event = bucketed_usage_event;
            this.categorized_usage_event = null;
            return this;
        }

        public final Builder categorized_usage_event(CategorizedUsageEvent categorized_usage_event) {
            this.categorized_usage_event = categorized_usage_event;
            this.bucketed_usage_event = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DataUsageEvent build() {
            return new DataUsageEvent(this.bucketed_usage_event, this.categorized_usage_event, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DataUsageEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DataUsageEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DataUsageEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DataUsageEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DataUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + BucketedDataUsageEvent.ADAPTER.encodedSizeWithTag(1, value.bucketed_usage_event) + CategorizedUsageEvent.ADAPTER.encodedSizeWithTag(2, value.categorized_usage_event);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DataUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                BucketedDataUsageEvent.ADAPTER.encodeWithTag(writer, 1, value.bucketed_usage_event);
                CategorizedUsageEvent.ADAPTER.encodeWithTag(writer, 2, value.categorized_usage_event);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DataUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CategorizedUsageEvent.ADAPTER.encodeWithTag(writer, 2, value.categorized_usage_event);
                BucketedDataUsageEvent.ADAPTER.encodeWithTag(writer, 1, value.bucketed_usage_event);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DataUsageEvent redact(DataUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                BucketedDataUsageEvent bucketedDataUsageEvent = value.bucketed_usage_event;
                BucketedDataUsageEvent bucketedDataUsageEventRedact = bucketedDataUsageEvent != null ? BucketedDataUsageEvent.ADAPTER.redact(bucketedDataUsageEvent) : null;
                CategorizedUsageEvent categorizedUsageEvent = value.categorized_usage_event;
                return value.copy(bucketedDataUsageEventRedact, categorizedUsageEvent != null ? CategorizedUsageEvent.ADAPTER.redact(categorizedUsageEvent) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DataUsageEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                BucketedDataUsageEvent bucketedDataUsageEventDecode = null;
                CategorizedUsageEvent categorizedUsageEventDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DataUsageEvent(bucketedDataUsageEventDecode, categorizedUsageEventDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        bucketedDataUsageEventDecode = BucketedDataUsageEvent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        categorizedUsageEventDecode = CategorizedUsageEvent.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
