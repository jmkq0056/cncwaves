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
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReadCardPaymentMethodRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BM\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJN\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;", "expand", "", "", "customer", "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "metadata", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReadCardPaymentMethodRequest extends Message<ReadCardPaymentMethodRequest, Builder> {
    public static final ProtoAdapter<ReadCardPaymentMethodRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 4)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER", jsonName = "paymentMethodData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final RequestedPaymentMethod payment_method_data;

    public ReadCardPaymentMethodRequest() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ ReadCardPaymentMethodRequest(List list, String str, RequestedPaymentMethod requestedPaymentMethod, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : requestedPaymentMethod, (i & 8) != 0 ? MapsKt.emptyMap() : map, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadCardPaymentMethodRequest(List<String> expand, String str, RequestedPaymentMethod requestedPaymentMethod, Map<String, String> metadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.customer = str;
        this.payment_method_data = requestedPaymentMethod;
        this.expand = Internal.immutableCopyOf("expand", expand);
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expand = this.expand;
        builder.customer = this.customer;
        builder.payment_method_data = this.payment_method_data;
        builder.metadata = this.metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReadCardPaymentMethodRequest)) {
            return false;
        }
        ReadCardPaymentMethodRequest readCardPaymentMethodRequest = (ReadCardPaymentMethodRequest) other;
        return Intrinsics.areEqual(unknownFields(), readCardPaymentMethodRequest.unknownFields()) && Intrinsics.areEqual(this.expand, readCardPaymentMethodRequest.expand) && Intrinsics.areEqual(this.customer, readCardPaymentMethodRequest.customer) && Intrinsics.areEqual(this.payment_method_data, readCardPaymentMethodRequest.payment_method_data) && Intrinsics.areEqual(this.metadata, readCardPaymentMethodRequest.metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.expand.hashCode()) * 37;
        String str = this.customer;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        RequestedPaymentMethod requestedPaymentMethod = this.payment_method_data;
        int iHashCode3 = ((iHashCode2 + (requestedPaymentMethod != null ? requestedPaymentMethod.hashCode() : 0)) * 37) + this.metadata.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.customer != null) {
            arrayList.add("customer=" + this.customer);
        }
        if (this.payment_method_data != null) {
            arrayList.add("payment_method_data=" + this.payment_method_data);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReadCardPaymentMethodRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReadCardPaymentMethodRequest copy$default(ReadCardPaymentMethodRequest readCardPaymentMethodRequest, List list, String str, RequestedPaymentMethod requestedPaymentMethod, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = readCardPaymentMethodRequest.expand;
        }
        if ((i & 2) != 0) {
            str = readCardPaymentMethodRequest.customer;
        }
        if ((i & 4) != 0) {
            requestedPaymentMethod = readCardPaymentMethodRequest.payment_method_data;
        }
        if ((i & 8) != 0) {
            map = readCardPaymentMethodRequest.metadata;
        }
        if ((i & 16) != 0) {
            byteString = readCardPaymentMethodRequest.unknownFields();
        }
        ByteString byteString2 = byteString;
        RequestedPaymentMethod requestedPaymentMethod2 = requestedPaymentMethod;
        return readCardPaymentMethodRequest.copy(list, str, requestedPaymentMethod2, map, byteString2);
    }

    public final ReadCardPaymentMethodRequest copy(List<String> expand, String customer, RequestedPaymentMethod payment_method_data, Map<String, String> metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReadCardPaymentMethodRequest(expand, customer, payment_method_data, metadata, unknownFields);
    }

    /* JADX INFO: compiled from: ReadCardPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "()V", "customer", "", "expand", "", "metadata", "", "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReadCardPaymentMethodRequest, Builder> {
        public String customer;
        public List<String> expand = CollectionsKt.emptyList();
        public Map<String, String> metadata = MapsKt.emptyMap();
        public RequestedPaymentMethod payment_method_data;

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder customer(String customer) {
            this.customer = customer;
            return this;
        }

        public final Builder payment_method_data(RequestedPaymentMethod payment_method_data) {
            this.payment_method_data = payment_method_data;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReadCardPaymentMethodRequest build() {
            return new ReadCardPaymentMethodRequest(this.expand, this.customer, this.payment_method_data, this.metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReadCardPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReadCardPaymentMethodRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReadCardPaymentMethodRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReadCardPaymentMethodRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ReadCardPaymentMethodRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.rest.ReadCardPaymentMethodRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReadCardPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.expand);
                if (value.customer != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.customer);
                }
                if (value.payment_method_data != null) {
                    size += RequestedPaymentMethod.ADAPTER.encodedSizeWithTag(3, value.payment_method_data);
                }
                return size + getMetadataAdapter().encodedSizeWithTag(4, value.metadata);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReadCardPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.customer);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.payment_method_data);
                }
                getMetadataAdapter().encodeWithTag(writer, 4, value.metadata);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReadCardPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getMetadataAdapter().encodeWithTag(writer, 4, value.metadata);
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.payment_method_data);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.customer);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReadCardPaymentMethodRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                RequestedPaymentMethod requestedPaymentMethodDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReadCardPaymentMethodRequest(arrayList, strDecode, requestedPaymentMethodDecode, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        requestedPaymentMethodDecode = RequestedPaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReadCardPaymentMethodRequest redact(ReadCardPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.customer;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                RequestedPaymentMethod requestedPaymentMethod = value.payment_method_data;
                return ReadCardPaymentMethodRequest.copy$default(value, null, strRedact, requestedPaymentMethod != null ? RequestedPaymentMethod.ADAPTER.redact(requestedPaymentMethod) : null, null, ByteString.EMPTY, 9, null);
            }
        };
    }
}
