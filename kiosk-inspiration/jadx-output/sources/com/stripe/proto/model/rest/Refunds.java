package com.stripe.proto.model.rest;

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
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: Refunds.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B7\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ=\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\tH\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/rest/Refunds;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Refunds$Builder;", "data_", "", "Lcom/stripe/proto/model/rest/Refund;", "has_more", "", "total_count", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "Ljava/lang/Integer;", "copy", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Refunds;", "equals", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Refunds extends Message<Refunds, Builder> {
    public static final ProtoAdapter<Refunds> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.Refund#ADAPTER", declaredName = "data", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<Refund> data_;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "hasMore", schemaIndex = 1, tag = 2)
    public final Boolean has_more;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "totalCount", schemaIndex = 2, tag = 3)
    public final Integer total_count;

    public Refunds() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ Refunds(List list, Boolean bool, Integer num, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : num, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Refunds(List<Refund> data_, Boolean bool, Integer num, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(data_, "data_");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.has_more = bool;
        this.total_count = num;
        this.data_ = Internal.immutableCopyOf("data_", data_);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.data_ = this.data_;
        builder.has_more = this.has_more;
        builder.total_count = this.total_count;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Refunds)) {
            return false;
        }
        Refunds refunds = (Refunds) other;
        return Intrinsics.areEqual(unknownFields(), refunds.unknownFields()) && Intrinsics.areEqual(this.data_, refunds.data_) && Intrinsics.areEqual(this.has_more, refunds.has_more) && Intrinsics.areEqual(this.total_count, refunds.total_count);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.data_.hashCode()) * 37;
        Boolean bool = this.has_more;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Integer num = this.total_count;
        int iHashCode3 = iHashCode2 + (num != null ? num.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
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
        if (this.total_count != null) {
            arrayList.add("total_count=" + this.total_count);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Refunds{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Refunds copy$default(Refunds refunds, List list, Boolean bool, Integer num, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = refunds.data_;
        }
        if ((i & 2) != 0) {
            bool = refunds.has_more;
        }
        if ((i & 4) != 0) {
            num = refunds.total_count;
        }
        if ((i & 8) != 0) {
            byteString = refunds.unknownFields();
        }
        return refunds.copy(list, bool, num, byteString);
    }

    public final Refunds copy(List<Refund> data_, Boolean has_more, Integer total_count, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(data_, "data_");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Refunds(data_, has_more, total_count, unknownFields);
    }

    /* JADX INFO: compiled from: Refunds.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000eJ\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u000fR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/rest/Refunds$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Refunds;", "()V", "data_", "", "Lcom/stripe/proto/model/rest/Refund;", "has_more", "", "Ljava/lang/Boolean;", "total_count", "", "Ljava/lang/Integer;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Refunds$Builder;", "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Refunds$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Refunds, Builder> {
        public List<Refund> data_ = CollectionsKt.emptyList();
        public Boolean has_more;
        public Integer total_count;

        public final Builder data_(List<Refund> data_) {
            Intrinsics.checkNotNullParameter(data_, "data_");
            Internal.checkElementsNotNull(data_);
            this.data_ = data_;
            return this;
        }

        public final Builder has_more(Boolean has_more) {
            this.has_more = has_more;
            return this;
        }

        public final Builder total_count(Integer total_count) {
            this.total_count = total_count;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Refunds build() {
            return new Refunds(this.data_, this.has_more, this.total_count, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Refunds.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Refunds$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Refunds;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Refunds$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Refunds build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Refunds.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Refunds>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Refunds$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Refunds value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + Refund.ADAPTER.asRepeated().encodedSizeWithTag(1, value.data_);
                if (value.has_more != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.has_more);
                }
                return value.total_count != null ? size + ProtoAdapter.INT32_VALUE.encodedSizeWithTag(3, value.total_count) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Refunds value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Refund.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.data_);
                if (value.has_more != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.has_more);
                }
                if (value.total_count != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 3, value.total_count);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Refunds value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.total_count != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 3, value.total_count);
                }
                if (value.has_more != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.has_more);
                }
                Refund.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.data_);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Refunds decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                Integer numDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Refunds(arrayList, boolDecode, numDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(Refund.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Refunds redact(Refunds value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List<Refund> listM361redactElements = Internal.m361redactElements(value.data_, Refund.ADAPTER);
                Boolean bool = value.has_more;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Integer num = value.total_count;
                return value.copy(listM361redactElements, boolRedact, num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null, ByteString.EMPTY);
            }
        };
    }
}
