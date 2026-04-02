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
import com.stripe.proto.model.sdk.PaymentMethod;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
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

/* JADX INFO: compiled from: ConfirmReusableCardRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B;\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ<\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;", "reusable_card_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "customer", "", "metadata", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmReusableCardRequest extends Message<ConfirmReusableCardRequest, Builder> {
    public static final ProtoAdapter<ConfirmReusableCardRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", jsonName = "reusableCardMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final PaymentMethod reusable_card_method;

    public ConfirmReusableCardRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ConfirmReusableCardRequest(PaymentMethod paymentMethod, String str, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : paymentMethod, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? MapsKt.emptyMap() : map, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmReusableCardRequest(PaymentMethod paymentMethod, String customer, Map<String, String> metadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(customer, "customer");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reusable_card_method = paymentMethod;
        this.customer = customer;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reusable_card_method = this.reusable_card_method;
        builder.customer = this.customer;
        builder.metadata = this.metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmReusableCardRequest)) {
            return false;
        }
        ConfirmReusableCardRequest confirmReusableCardRequest = (ConfirmReusableCardRequest) other;
        return Intrinsics.areEqual(unknownFields(), confirmReusableCardRequest.unknownFields()) && Intrinsics.areEqual(this.reusable_card_method, confirmReusableCardRequest.reusable_card_method) && Intrinsics.areEqual(this.customer, confirmReusableCardRequest.customer) && Intrinsics.areEqual(this.metadata, confirmReusableCardRequest.metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PaymentMethod paymentMethod = this.reusable_card_method;
        int iHashCode2 = ((((iHashCode + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37) + this.customer.hashCode()) * 37) + this.metadata.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.reusable_card_method != null) {
            arrayList.add("reusable_card_method=" + this.reusable_card_method);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("customer=" + Internal.sanitize(this.customer));
        if (!this.metadata.isEmpty()) {
            arrayList2.add("metadata=" + this.metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmReusableCardRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfirmReusableCardRequest copy$default(ConfirmReusableCardRequest confirmReusableCardRequest, PaymentMethod paymentMethod, String str, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentMethod = confirmReusableCardRequest.reusable_card_method;
        }
        if ((i & 2) != 0) {
            str = confirmReusableCardRequest.customer;
        }
        if ((i & 4) != 0) {
            map = confirmReusableCardRequest.metadata;
        }
        if ((i & 8) != 0) {
            byteString = confirmReusableCardRequest.unknownFields();
        }
        return confirmReusableCardRequest.copy(paymentMethod, str, map, byteString);
    }

    public final ConfirmReusableCardRequest copy(PaymentMethod reusable_card_method, String customer, Map<String, String> metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(customer, "customer");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmReusableCardRequest(reusable_card_method, customer, metadata, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmReusableCardRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;", "()V", "customer", "", "metadata", "", "reusable_card_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmReusableCardRequest, Builder> {
        public String customer = "";
        public Map<String, String> metadata = MapsKt.emptyMap();
        public PaymentMethod reusable_card_method;

        public final Builder reusable_card_method(PaymentMethod reusable_card_method) {
            this.reusable_card_method = reusable_card_method;
            return this;
        }

        public final Builder customer(String customer) {
            Intrinsics.checkNotNullParameter(customer, "customer");
            this.customer = customer;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmReusableCardRequest build() {
            return new ConfirmReusableCardRequest(this.reusable_card_method, this.customer, this.metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmReusableCardRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmReusableCardRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmReusableCardRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmReusableCardRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmReusableCardRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.sdk.ConfirmReusableCardRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmReusableCardRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.reusable_card_method != null) {
                    size += PaymentMethod.ADAPTER.encodedSizeWithTag(1, value.reusable_card_method);
                }
                if (!Intrinsics.areEqual(value.customer, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.customer);
                }
                return size + getMetadataAdapter().encodedSizeWithTag(3, value.metadata);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmReusableCardRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.reusable_card_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 1, value.reusable_card_method);
                }
                if (!Intrinsics.areEqual(value.customer, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.customer);
                }
                getMetadataAdapter().encodeWithTag(writer, 3, value.metadata);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmReusableCardRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getMetadataAdapter().encodeWithTag(writer, 3, value.metadata);
                if (!Intrinsics.areEqual(value.customer, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.customer);
                }
                if (value.reusable_card_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 1, value.reusable_card_method);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmReusableCardRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                PaymentMethod paymentMethodDecode = null;
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConfirmReusableCardRequest(paymentMethodDecode, strDecode, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmReusableCardRequest redact(ConfirmReusableCardRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethod paymentMethod = value.reusable_card_method;
                return ConfirmReusableCardRequest.copy$default(value, paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null, null, null, ByteString.EMPTY, 6, null);
            }
        };
    }
}
