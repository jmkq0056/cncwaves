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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.sdk.PaymentMethod;
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

/* JADX INFO: compiled from: ConfirmPaymentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dBU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J[\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "options", "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "amount_surcharge", "", "return_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentRequest extends Message<ConfirmPaymentRequest, Builder> {
    public static final ProtoAdapter<ConfirmPaymentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountSurcharge", schemaIndex = 4, tag = 7)
    public final Long amount_surcharge;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 3, tag = 6)
    public final OfflinePaymentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.api.sdk.ConfirmPaymentOptions#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 5)
    public final ConfirmPaymentOptions options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 2)
    public final String payment_intent_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", jsonName = "paymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final PaymentMethod payment_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "returnUrl", schemaIndex = 5, tag = 8)
    public final String return_url;

    public ConfirmPaymentRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ ConfirmPaymentRequest(String str, PaymentMethod paymentMethod, ConfirmPaymentOptions confirmPaymentOptions, OfflinePaymentDetails offlinePaymentDetails, Long l, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : paymentMethod, (i & 4) != 0 ? null : confirmPaymentOptions, (i & 8) != 0 ? null : offlinePaymentDetails, (i & 16) != 0 ? null : l, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmPaymentRequest(String payment_intent_id, PaymentMethod paymentMethod, ConfirmPaymentOptions confirmPaymentOptions, OfflinePaymentDetails offlinePaymentDetails, Long l, String str, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent_id = payment_intent_id;
        this.payment_method = paymentMethod;
        this.options = confirmPaymentOptions;
        this.offline_details = offlinePaymentDetails;
        this.amount_surcharge = l;
        this.return_url = str;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_intent_id = this.payment_intent_id;
        builder.payment_method = this.payment_method;
        builder.options = this.options;
        builder.offline_details = this.offline_details;
        builder.amount_surcharge = this.amount_surcharge;
        builder.return_url = this.return_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmPaymentRequest)) {
            return false;
        }
        ConfirmPaymentRequest confirmPaymentRequest = (ConfirmPaymentRequest) other;
        return Intrinsics.areEqual(unknownFields(), confirmPaymentRequest.unknownFields()) && Intrinsics.areEqual(this.payment_intent_id, confirmPaymentRequest.payment_intent_id) && Intrinsics.areEqual(this.payment_method, confirmPaymentRequest.payment_method) && Intrinsics.areEqual(this.options, confirmPaymentRequest.options) && Intrinsics.areEqual(this.offline_details, confirmPaymentRequest.offline_details) && Intrinsics.areEqual(this.amount_surcharge, confirmPaymentRequest.amount_surcharge) && Intrinsics.areEqual(this.return_url, confirmPaymentRequest.return_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.payment_intent_id.hashCode()) * 37;
        PaymentMethod paymentMethod = this.payment_method;
        int iHashCode2 = (iHashCode + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        ConfirmPaymentOptions confirmPaymentOptions = this.options;
        int iHashCode3 = (iHashCode2 + (confirmPaymentOptions != null ? confirmPaymentOptions.hashCode() : 0)) * 37;
        OfflinePaymentDetails offlinePaymentDetails = this.offline_details;
        int iHashCode4 = (iHashCode3 + (offlinePaymentDetails != null ? offlinePaymentDetails.hashCode() : 0)) * 37;
        Long l = this.amount_surcharge;
        int iHashCode5 = (iHashCode4 + (l != null ? l.hashCode() : 0)) * 37;
        String str = this.return_url;
        int iHashCode6 = iHashCode5 + (str != null ? str.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        if (this.payment_method != null) {
            arrayList2.add("payment_method=" + this.payment_method);
        }
        if (this.options != null) {
            arrayList2.add("options=" + this.options);
        }
        if (this.offline_details != null) {
            arrayList2.add("offline_details=" + this.offline_details);
        }
        if (this.amount_surcharge != null) {
            arrayList2.add("amount_surcharge=" + this.amount_surcharge);
        }
        if (this.return_url != null) {
            arrayList2.add("return_url=" + this.return_url);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmPaymentRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmPaymentRequest copy$default(ConfirmPaymentRequest confirmPaymentRequest, String str, PaymentMethod paymentMethod, ConfirmPaymentOptions confirmPaymentOptions, OfflinePaymentDetails offlinePaymentDetails, Long l, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = confirmPaymentRequest.payment_intent_id;
        }
        if ((i & 2) != 0) {
            paymentMethod = confirmPaymentRequest.payment_method;
        }
        if ((i & 4) != 0) {
            confirmPaymentOptions = confirmPaymentRequest.options;
        }
        if ((i & 8) != 0) {
            offlinePaymentDetails = confirmPaymentRequest.offline_details;
        }
        if ((i & 16) != 0) {
            l = confirmPaymentRequest.amount_surcharge;
        }
        if ((i & 32) != 0) {
            str2 = confirmPaymentRequest.return_url;
        }
        if ((i & 64) != 0) {
            byteString = confirmPaymentRequest.unknownFields();
        }
        String str3 = str2;
        ByteString byteString2 = byteString;
        Long l2 = l;
        ConfirmPaymentOptions confirmPaymentOptions2 = confirmPaymentOptions;
        return confirmPaymentRequest.copy(str, paymentMethod, confirmPaymentOptions2, offlinePaymentDetails, l2, str3, byteString2);
    }

    public final ConfirmPaymentRequest copy(String payment_intent_id, PaymentMethod payment_method, ConfirmPaymentOptions options, OfflinePaymentDetails offline_details, Long amount_surcharge, String return_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmPaymentRequest(payment_intent_id, payment_method, options, offline_details, amount_surcharge, return_url, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmPaymentRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\fR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "()V", "amount_surcharge", "", "Ljava/lang/Long;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "options", "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "return_url", "(Ljava/lang/Long;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmPaymentRequest, Builder> {
        public Long amount_surcharge;
        public OfflinePaymentDetails offline_details;
        public ConfirmPaymentOptions options;
        public String payment_intent_id = "";
        public PaymentMethod payment_method;
        public String return_url;

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder payment_method(PaymentMethod payment_method) {
            this.payment_method = payment_method;
            return this;
        }

        public final Builder options(ConfirmPaymentOptions options) {
            this.options = options;
            return this;
        }

        public final Builder offline_details(OfflinePaymentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder amount_surcharge(Long amount_surcharge) {
            this.amount_surcharge = amount_surcharge;
            return this;
        }

        public final Builder return_url(String return_url) {
            this.return_url = return_url;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmPaymentRequest build() {
            return new ConfirmPaymentRequest(this.payment_intent_id, this.payment_method, this.options, this.offline_details, this.amount_surcharge, this.return_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmPaymentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmPaymentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmPaymentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmPaymentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmPaymentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmPaymentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.payment_intent_id);
                }
                if (value.payment_method != null) {
                    size += PaymentMethod.ADAPTER.encodedSizeWithTag(3, value.payment_method);
                }
                if (value.options != null) {
                    size += ConfirmPaymentOptions.ADAPTER.encodedSizeWithTag(5, value.options);
                }
                int iEncodedSizeWithTag = size + OfflinePaymentDetails.ADAPTER.encodedSizeWithTag(6, value.offline_details);
                if (value.amount_surcharge != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(7, value.amount_surcharge);
                }
                return value.return_url != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.return_url) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmPaymentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.payment_intent_id);
                }
                if (value.payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.payment_method);
                }
                if (value.options != null) {
                    ConfirmPaymentOptions.ADAPTER.encodeWithTag(writer, 5, value.options);
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 6, value.offline_details);
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.amount_surcharge);
                }
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.return_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmPaymentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.return_url);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.amount_surcharge);
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 6, value.offline_details);
                if (value.options != null) {
                    ConfirmPaymentOptions.ADAPTER.encodeWithTag(writer, 5, value.options);
                }
                if (value.payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.payment_method);
                }
                if (Intrinsics.areEqual(value.payment_intent_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.payment_intent_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentRequest redact(ConfirmPaymentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethod paymentMethod = value.payment_method;
                PaymentMethod paymentMethodRedact = paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null;
                ConfirmPaymentOptions confirmPaymentOptions = value.options;
                ConfirmPaymentOptions confirmPaymentOptionsRedact = confirmPaymentOptions != null ? ConfirmPaymentOptions.ADAPTER.redact(confirmPaymentOptions) : null;
                OfflinePaymentDetails offlinePaymentDetails = value.offline_details;
                OfflinePaymentDetails offlinePaymentDetailsRedact = offlinePaymentDetails != null ? OfflinePaymentDetails.ADAPTER.redact(offlinePaymentDetails) : null;
                Long l = value.amount_surcharge;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str = value.return_url;
                return ConfirmPaymentRequest.copy$default(value, null, paymentMethodRedact, confirmPaymentOptionsRedact, offlinePaymentDetailsRedact, lRedact, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                PaymentMethod paymentMethodDecode = null;
                ConfirmPaymentOptions confirmPaymentOptionsDecode = null;
                OfflinePaymentDetails offlinePaymentDetailsDecode = null;
                Long lDecode = null;
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConfirmPaymentRequest(strDecode, paymentMethodDecode, confirmPaymentOptionsDecode, offlinePaymentDetailsDecode, lDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        confirmPaymentOptionsDecode = ConfirmPaymentOptions.ADAPTER.decode(reader);
                    } else if (iNextTag == 6) {
                        offlinePaymentDetailsDecode = OfflinePaymentDetails.ADAPTER.decode(reader);
                    } else if (iNextTag == 7) {
                        lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                    } else if (iNextTag == 8) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
