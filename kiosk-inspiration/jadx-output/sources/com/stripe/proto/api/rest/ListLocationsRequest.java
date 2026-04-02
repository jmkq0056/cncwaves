package com.stripe.proto.api.rest;

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

/* JADX INFO: compiled from: ListLocationsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ9\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;", "ending_before", "", "limit", "", "starting_after", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ListLocationsRequest;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListLocationsRequest extends Message<ListLocationsRequest, Builder> {
    public static final ProtoAdapter<ListLocationsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "endingBefore", schemaIndex = 0, tag = 1)
    public final String ending_before;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", schemaIndex = 1, tag = 2)
    public final Integer limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "startingAfter", schemaIndex = 2, tag = 3)
    public final String starting_after;

    public ListLocationsRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ListLocationsRequest(String str, Integer num, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListLocationsRequest(String str, Integer num, String str2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ending_before = str;
        this.limit = num;
        this.starting_after = str2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ending_before = this.ending_before;
        builder.limit = this.limit;
        builder.starting_after = this.starting_after;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ListLocationsRequest)) {
            return false;
        }
        ListLocationsRequest listLocationsRequest = (ListLocationsRequest) other;
        return Intrinsics.areEqual(unknownFields(), listLocationsRequest.unknownFields()) && Intrinsics.areEqual(this.ending_before, listLocationsRequest.ending_before) && Intrinsics.areEqual(this.limit, listLocationsRequest.limit) && Intrinsics.areEqual(this.starting_after, listLocationsRequest.starting_after);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.ending_before;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.limit;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        String str2 = this.starting_after;
        int iHashCode4 = iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.ending_before != null) {
            arrayList.add("ending_before=" + this.ending_before);
        }
        if (this.limit != null) {
            arrayList.add("limit=" + this.limit);
        }
        if (this.starting_after != null) {
            arrayList.add("starting_after=" + this.starting_after);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ListLocationsRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ListLocationsRequest copy$default(ListLocationsRequest listLocationsRequest, String str, Integer num, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = listLocationsRequest.ending_before;
        }
        if ((i & 2) != 0) {
            num = listLocationsRequest.limit;
        }
        if ((i & 4) != 0) {
            str2 = listLocationsRequest.starting_after;
        }
        if ((i & 8) != 0) {
            byteString = listLocationsRequest.unknownFields();
        }
        return listLocationsRequest.copy(str, num, str2, byteString);
    }

    public final ListLocationsRequest copy(String ending_before, Integer limit, String starting_after, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ListLocationsRequest(ending_before, limit, starting_after, unknownFields);
    }

    /* JADX INFO: compiled from: ListLocationsRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ListLocationsRequest;", "()V", "ending_before", "", "limit", "", "Ljava/lang/Integer;", "starting_after", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ListLocationsRequest, Builder> {
        public String ending_before;
        public Integer limit;
        public String starting_after;

        public final Builder ending_before(String ending_before) {
            this.ending_before = ending_before;
            return this;
        }

        public final Builder limit(Integer limit) {
            this.limit = limit;
            return this;
        }

        public final Builder starting_after(String starting_after) {
            this.starting_after = starting_after;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ListLocationsRequest build() {
            return new ListLocationsRequest(this.ending_before, this.limit, this.starting_after, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ListLocationsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ListLocationsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ListLocationsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ListLocationsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ListLocationsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ListLocationsRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ListLocationsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.ending_before != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.ending_before);
                }
                if (value.limit != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(2, value.limit);
                }
                return value.starting_after != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.starting_after) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ListLocationsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.ending_before != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.ending_before);
                }
                if (value.limit != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 2, value.limit);
                }
                if (value.starting_after != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.starting_after);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ListLocationsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.starting_after != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.starting_after);
                }
                if (value.limit != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 2, value.limit);
                }
                if (value.ending_before != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.ending_before);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ListLocationsRequest redact(ListLocationsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.ending_before;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Integer num = value.limit;
                Integer numRedact = num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null;
                String str2 = value.starting_after;
                return value.copy(strRedact, numRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ListLocationsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                Integer numDecode = null;
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ListLocationsRequest(strDecode, numDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
