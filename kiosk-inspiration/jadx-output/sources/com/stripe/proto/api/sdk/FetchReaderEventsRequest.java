package com.stripe.proto.api.sdk;

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
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: FetchReaderEventsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ*\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;", "after_id", "", "acked_id", "", "unknownFields", "Lokio/ByteString;", "(JLjava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FetchReaderEventsRequest extends Message<FetchReaderEventsRequest, Builder> {
    public static final ProtoAdapter<FetchReaderEventsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "ackedId", label = WireField.Label.PACKED, schemaIndex = 1, tag = 2)
    public final List<Long> acked_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "afterId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long after_id;

    public FetchReaderEventsRequest() {
        this(0L, null, null, 7, null);
    }

    public /* synthetic */ FetchReaderEventsRequest(long j, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchReaderEventsRequest(long j, List<Long> acked_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(acked_id, "acked_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.after_id = j;
        this.acked_id = Internal.immutableCopyOf("acked_id", acked_id);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.after_id = this.after_id;
        builder.acked_id = this.acked_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof FetchReaderEventsRequest)) {
            return false;
        }
        FetchReaderEventsRequest fetchReaderEventsRequest = (FetchReaderEventsRequest) other;
        return Intrinsics.areEqual(unknownFields(), fetchReaderEventsRequest.unknownFields()) && this.after_id == fetchReaderEventsRequest.after_id && Intrinsics.areEqual(this.acked_id, fetchReaderEventsRequest.acked_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Long.hashCode(this.after_id)) * 37) + this.acked_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("after_id=" + this.after_id);
        if (!this.acked_id.isEmpty()) {
            arrayList2.add("acked_id=" + this.acked_id);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "FetchReaderEventsRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FetchReaderEventsRequest copy$default(FetchReaderEventsRequest fetchReaderEventsRequest, long j, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = fetchReaderEventsRequest.after_id;
        }
        if ((i & 2) != 0) {
            list = fetchReaderEventsRequest.acked_id;
        }
        if ((i & 4) != 0) {
            byteString = fetchReaderEventsRequest.unknownFields();
        }
        return fetchReaderEventsRequest.copy(j, list, byteString);
    }

    public final FetchReaderEventsRequest copy(long after_id, List<Long> acked_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(acked_id, "acked_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new FetchReaderEventsRequest(after_id, acked_id, unknownFields);
    }

    /* JADX INFO: compiled from: FetchReaderEventsRequest.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\b\u001a\u00020\u0002H\u0016R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;", "()V", "acked_id", "", "", "after_id", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<FetchReaderEventsRequest, Builder> {
        public List<Long> acked_id = CollectionsKt.emptyList();
        public long after_id;

        public final Builder after_id(long after_id) {
            this.after_id = after_id;
            return this;
        }

        public final Builder acked_id(List<Long> acked_id) {
            Intrinsics.checkNotNullParameter(acked_id, "acked_id");
            Internal.checkElementsNotNull(acked_id);
            this.acked_id = acked_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public FetchReaderEventsRequest build() {
            return new FetchReaderEventsRequest(this.after_id, this.acked_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: FetchReaderEventsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ FetchReaderEventsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FetchReaderEventsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<FetchReaderEventsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.FetchReaderEventsRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(FetchReaderEventsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.after_id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.after_id));
                }
                return size + ProtoAdapter.UINT64.asPacked().encodedSizeWithTag(2, value.acked_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, FetchReaderEventsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.after_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.after_id));
                }
                ProtoAdapter.UINT64.asPacked().encodeWithTag(writer, 2, value.acked_id);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, FetchReaderEventsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.UINT64.asPacked().encodeWithTag(writer, 2, value.acked_id);
                if (value.after_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.after_id));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public FetchReaderEventsRequest redact(FetchReaderEventsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return FetchReaderEventsRequest.copy$default(value, 0L, null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public FetchReaderEventsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                ArrayList arrayList = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        break;
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        if (arrayList == null) {
                            arrayList = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 1), 2147483647L));
                        }
                        arrayList.add(ProtoAdapter.UINT64.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
                ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                ArrayList arrayListEmptyList = arrayList;
                if (arrayListEmptyList == null) {
                    arrayListEmptyList = CollectionsKt.emptyList();
                }
                return new FetchReaderEventsRequest(jLongValue, arrayListEmptyList, byteStringEndMessageAndGetUnknownFields);
            }
        };
    }
}
