package com.stripe.proto.model.rest;

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

/* JADX INFO: compiled from: GeneratedFrom.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/GeneratedFrom;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/GeneratedFrom$Builder;", "charge", "", "payment_method_details", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GeneratedFrom extends Message<GeneratedFrom, Builder> {
    public static final ProtoAdapter<GeneratedFrom> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String charge;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodDetails#ADAPTER", jsonName = "paymentMethodDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final PaymentMethodDetails payment_method_details;

    public GeneratedFrom() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ GeneratedFrom(String str, PaymentMethodDetails paymentMethodDetails, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : paymentMethodDetails, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneratedFrom(String str, PaymentMethodDetails paymentMethodDetails, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge = str;
        this.payment_method_details = paymentMethodDetails;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge = this.charge;
        builder.payment_method_details = this.payment_method_details;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof GeneratedFrom)) {
            return false;
        }
        GeneratedFrom generatedFrom = (GeneratedFrom) other;
        return Intrinsics.areEqual(unknownFields(), generatedFrom.unknownFields()) && Intrinsics.areEqual(this.charge, generatedFrom.charge) && Intrinsics.areEqual(this.payment_method_details, generatedFrom.payment_method_details);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.charge;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        PaymentMethodDetails paymentMethodDetails = this.payment_method_details;
        int iHashCode3 = iHashCode2 + (paymentMethodDetails != null ? paymentMethodDetails.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.charge != null) {
            arrayList.add("charge=" + this.charge);
        }
        if (this.payment_method_details != null) {
            arrayList.add("payment_method_details=" + this.payment_method_details);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "GeneratedFrom{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GeneratedFrom copy$default(GeneratedFrom generatedFrom, String str, PaymentMethodDetails paymentMethodDetails, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = generatedFrom.charge;
        }
        if ((i & 2) != 0) {
            paymentMethodDetails = generatedFrom.payment_method_details;
        }
        if ((i & 4) != 0) {
            byteString = generatedFrom.unknownFields();
        }
        return generatedFrom.copy(str, paymentMethodDetails, byteString);
    }

    public final GeneratedFrom copy(String charge, PaymentMethodDetails payment_method_details, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GeneratedFrom(charge, payment_method_details, unknownFields);
    }

    /* JADX INFO: compiled from: GeneratedFrom.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/GeneratedFrom$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/GeneratedFrom;", "()V", "charge", "", "payment_method_details", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GeneratedFrom, Builder> {
        public String charge;
        public PaymentMethodDetails payment_method_details;

        public final Builder charge(String charge) {
            this.charge = charge;
            return this;
        }

        public final Builder payment_method_details(PaymentMethodDetails payment_method_details) {
            this.payment_method_details = payment_method_details;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GeneratedFrom build() {
            return new GeneratedFrom(this.charge, this.payment_method_details, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GeneratedFrom.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/GeneratedFrom$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/GeneratedFrom;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/GeneratedFrom$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GeneratedFrom build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GeneratedFrom.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GeneratedFrom>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.GeneratedFrom$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GeneratedFrom value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.charge != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.charge);
                }
                return value.payment_method_details != null ? size + PaymentMethodDetails.ADAPTER.encodedSizeWithTag(2, value.payment_method_details) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GeneratedFrom value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.charge != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.charge);
                }
                if (value.payment_method_details != null) {
                    PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 2, value.payment_method_details);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GeneratedFrom value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.payment_method_details != null) {
                    PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 2, value.payment_method_details);
                }
                if (value.charge != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.charge);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GeneratedFrom redact(GeneratedFrom value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.charge;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                PaymentMethodDetails paymentMethodDetails = value.payment_method_details;
                return value.copy(strRedact, paymentMethodDetails != null ? PaymentMethodDetails.ADAPTER.redact(paymentMethodDetails) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GeneratedFrom decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                PaymentMethodDetails paymentMethodDetailsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GeneratedFrom(strDecode, paymentMethodDetailsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        paymentMethodDetailsDecode = PaymentMethodDetails.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
