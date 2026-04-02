package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.proto.model.sdk.SystemContext;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CollectPaymentMethodResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "payment", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectPaymentMethodResponse extends Message<CollectPaymentMethodResponse, Builder> {
    public static final ProtoAdapter<CollectPaymentMethodResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final PaymentMethod payment;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public CollectPaymentMethodResponse() {
        this(null, null, null, 7, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ CollectPaymentMethodResponse(SystemContext systemContext, PaymentMethod paymentMethod, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : systemContext, (i & 2) != 0 ? null : paymentMethod, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectPaymentMethodResponse(SystemContext systemContext, PaymentMethod paymentMethod, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.payment = paymentMethod;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.payment = this.payment;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectPaymentMethodResponse)) {
            return false;
        }
        CollectPaymentMethodResponse collectPaymentMethodResponse = (CollectPaymentMethodResponse) other;
        return Intrinsics.areEqual(unknownFields(), collectPaymentMethodResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, collectPaymentMethodResponse.system_context) && Intrinsics.areEqual(this.payment, collectPaymentMethodResponse.payment);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37;
        PaymentMethod paymentMethod = this.payment;
        int iHashCode3 = iHashCode2 + (paymentMethod != null ? paymentMethod.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        if (this.payment != null) {
            arrayList.add("payment=" + this.payment);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectPaymentMethodResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CollectPaymentMethodResponse copy$default(CollectPaymentMethodResponse collectPaymentMethodResponse, SystemContext systemContext, PaymentMethod paymentMethod, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            systemContext = collectPaymentMethodResponse.system_context;
        }
        if ((i & 2) != 0) {
            paymentMethod = collectPaymentMethodResponse.payment;
        }
        if ((i & 4) != 0) {
            byteString = collectPaymentMethodResponse.unknownFields();
        }
        return collectPaymentMethodResponse.copy(systemContext, paymentMethod, byteString);
    }

    public final CollectPaymentMethodResponse copy(SystemContext system_context, PaymentMethod payment, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectPaymentMethodResponse(system_context, payment, unknownFields);
    }

    /* JADX INFO: compiled from: CollectPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;", "()V", "payment", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectPaymentMethodResponse, Builder> {
        public PaymentMethod payment;
        public SystemContext system_context;

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder payment(PaymentMethod payment) {
            this.payment = payment;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectPaymentMethodResponse build() {
            return new CollectPaymentMethodResponse(this.system_context, this.payment, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectPaymentMethodResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectPaymentMethodResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectPaymentMethodResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectPaymentMethodResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectPaymentMethodResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                return value.payment != null ? size + PaymentMethod.ADAPTER.encodedSizeWithTag(2, value.payment) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectPaymentMethodResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (value.payment != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.payment);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectPaymentMethodResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.payment != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.payment);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectPaymentMethodResponse redact(CollectPaymentMethodResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                PaymentMethod paymentMethod = value.payment;
                return value.copy(systemContextRedact, paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectPaymentMethodResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SystemContext systemContextDecode = null;
                PaymentMethod paymentMethodDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectPaymentMethodResponse(systemContextDecode, paymentMethodDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        systemContextDecode = SystemContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
