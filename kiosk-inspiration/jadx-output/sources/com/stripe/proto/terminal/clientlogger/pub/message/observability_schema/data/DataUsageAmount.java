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

/* JADX INFO: compiled from: DataUsageAmount.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount$Builder;", "uploaded_bytes", "", "downloaded_bytes", "unknownFields", "Lokio/ByteString;", "(JJLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DataUsageAmount extends Message<DataUsageAmount, Builder> {
    public static final ProtoAdapter<DataUsageAmount> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "downloadedBytes", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long downloaded_bytes;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "uploadedBytes", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long uploaded_bytes;

    public DataUsageAmount() {
        this(0L, 0L, null, 7, null);
    }

    public /* synthetic */ DataUsageAmount(long j, long j2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataUsageAmount(long j, long j2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.uploaded_bytes = j;
        this.downloaded_bytes = j2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.uploaded_bytes = this.uploaded_bytes;
        builder.downloaded_bytes = this.downloaded_bytes;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DataUsageAmount)) {
            return false;
        }
        DataUsageAmount dataUsageAmount = (DataUsageAmount) other;
        return Intrinsics.areEqual(unknownFields(), dataUsageAmount.unknownFields()) && this.uploaded_bytes == dataUsageAmount.uploaded_bytes && this.downloaded_bytes == dataUsageAmount.downloaded_bytes;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Long.hashCode(this.uploaded_bytes)) * 37) + Long.hashCode(this.downloaded_bytes);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("uploaded_bytes=" + this.uploaded_bytes);
        arrayList2.add("downloaded_bytes=" + this.downloaded_bytes);
        return CollectionsKt.joinToString$default(arrayList, ", ", "DataUsageAmount{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DataUsageAmount copy$default(DataUsageAmount dataUsageAmount, long j, long j2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = dataUsageAmount.uploaded_bytes;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = dataUsageAmount.downloaded_bytes;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            byteString = dataUsageAmount.unknownFields();
        }
        return dataUsageAmount.copy(j3, j4, byteString);
    }

    public final DataUsageAmount copy(long uploaded_bytes, long downloaded_bytes, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DataUsageAmount(uploaded_bytes, downloaded_bytes, unknownFields);
    }

    /* JADX INFO: compiled from: DataUsageAmount.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "()V", "downloaded_bytes", "", "uploaded_bytes", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DataUsageAmount, Builder> {
        public long downloaded_bytes;
        public long uploaded_bytes;

        public final Builder uploaded_bytes(long uploaded_bytes) {
            this.uploaded_bytes = uploaded_bytes;
            return this;
        }

        public final Builder downloaded_bytes(long downloaded_bytes) {
            this.downloaded_bytes = downloaded_bytes;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DataUsageAmount build() {
            return new DataUsageAmount(this.uploaded_bytes, this.downloaded_bytes, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DataUsageAmount.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DataUsageAmount build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DataUsageAmount.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DataUsageAmount>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageAmount$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DataUsageAmount value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.uploaded_bytes != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.uploaded_bytes));
                }
                return value.downloaded_bytes != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.downloaded_bytes)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DataUsageAmount value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.uploaded_bytes != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.uploaded_bytes));
                }
                if (value.downloaded_bytes != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.downloaded_bytes));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DataUsageAmount value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.downloaded_bytes != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.downloaded_bytes));
                }
                if (value.uploaded_bytes != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.uploaded_bytes));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DataUsageAmount redact(DataUsageAmount value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DataUsageAmount.copy$default(value, 0L, 0L, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DataUsageAmount decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                long jLongValue2 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DataUsageAmount(jLongValue, jLongValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
