package com.stripe.proto.api.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.merchant.ApiLocationPb;
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
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ListLocationsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B+\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ1\u0010\f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ListLocationsResponse$Builder;", "data_", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "has_more", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ListLocationsResponse;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListLocationsResponse extends Message<ListLocationsResponse, Builder> {
    public static final ProtoAdapter<ListLocationsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER", declaredName = "data", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<ApiLocationPb> data_;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "hasMore", schemaIndex = 1, tag = 2)
    public final Boolean has_more;

    public ListLocationsResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ListLocationsResponse(List list, Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListLocationsResponse(List<ApiLocationPb> data_, Boolean bool, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(data_, "data_");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.has_more = bool;
        this.data_ = Internal.immutableCopyOf("data_", data_);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.data_ = this.data_;
        builder.has_more = this.has_more;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ListLocationsResponse)) {
            return false;
        }
        ListLocationsResponse listLocationsResponse = (ListLocationsResponse) other;
        return Intrinsics.areEqual(unknownFields(), listLocationsResponse.unknownFields()) && Intrinsics.areEqual(this.data_, listLocationsResponse.data_) && Intrinsics.areEqual(this.has_more, listLocationsResponse.has_more);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.data_.hashCode()) * 37;
        Boolean bool = this.has_more;
        int iHashCode2 = iHashCode + (bool != null ? bool.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.data_.isEmpty()) {
            arrayList.add("data_=" + this.data_);
        }
        if (this.has_more != null) {
            arrayList.add("has_more=" + this.has_more);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ListLocationsResponse{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ListLocationsResponse copy$default(ListLocationsResponse listLocationsResponse, List list, Boolean bool, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = listLocationsResponse.data_;
        }
        if ((i & 2) != 0) {
            bool = listLocationsResponse.has_more;
        }
        if ((i & 4) != 0) {
            byteString = listLocationsResponse.unknownFields();
        }
        return listLocationsResponse.copy(list, bool, byteString);
    }

    public final ListLocationsResponse copy(List<ApiLocationPb> data_, Boolean has_more, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(data_, "data_");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ListLocationsResponse(data_, has_more, unknownFields);
    }

    /* JADX INFO: compiled from: ListLocationsResponse.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\t¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ListLocationsResponse;", "()V", "data_", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "has_more", "", "Ljava/lang/Boolean;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/ListLocationsResponse$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ListLocationsResponse, Builder> {
        public List<ApiLocationPb> data_ = CollectionsKt.emptyList();
        public Boolean has_more;

        public final Builder data_(List<ApiLocationPb> data_) {
            Intrinsics.checkNotNullParameter(data_, "data_");
            Internal.checkElementsNotNull(data_);
            this.data_ = data_;
            return this;
        }

        public final Builder has_more(Boolean has_more) {
            this.has_more = has_more;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ListLocationsResponse build() {
            return new ListLocationsResponse(this.data_, this.has_more, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ListLocationsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ListLocationsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ListLocationsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ListLocationsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ListLocationsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ListLocationsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ListLocationsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ListLocationsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ApiLocationPb.ADAPTER.asRepeated().encodedSizeWithTag(1, value.data_);
                return value.has_more != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.has_more) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ListLocationsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ApiLocationPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.data_);
                if (value.has_more != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.has_more);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ListLocationsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.has_more != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.has_more);
                }
                ApiLocationPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.data_);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ListLocationsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ListLocationsResponse(arrayList, boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ApiLocationPb.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ListLocationsResponse redact(ListLocationsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List<ApiLocationPb> listM361redactElements = Internal.m361redactElements(value.data_, ApiLocationPb.ADAPTER);
                Boolean bool = value.has_more;
                return value.copy(listM361redactElements, bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, ByteString.EMPTY);
            }
        };
    }
}
