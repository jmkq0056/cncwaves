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
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: UpdatePaymentIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dB[\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Ja\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0005H\u0016R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;", "expand", "", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", OfflineStorageConstantsKt.ID, "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "amount_tip", "payment_method_options", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatePaymentIntentRequest extends Message<UpdatePaymentIntentRequest, Builder> {
    public static final ProtoAdapter<UpdatePaymentIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 1, tag = 2)
    public final Long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountTip", schemaIndex = 4, tag = 5)
    public final Long amount_tip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String id;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER", jsonName = "paymentMethodData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final RequestedPaymentMethod payment_method_data;

    @WireField(adapter = "com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions#ADAPTER", jsonName = "paymentMethodOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final UpdatePaymentIntentPaymentMethodOptions payment_method_options;

    public UpdatePaymentIntentRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ UpdatePaymentIntentRequest(List list, Long l, String str, RequestedPaymentMethod requestedPaymentMethod, Long l2, UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : requestedPaymentMethod, (i & 16) != 0 ? null : l2, (i & 32) != 0 ? null : updatePaymentIntentPaymentMethodOptions, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatePaymentIntentRequest(List<String> expand, Long l, String str, RequestedPaymentMethod requestedPaymentMethod, Long l2, UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.amount = l;
        this.id = str;
        this.payment_method_data = requestedPaymentMethod;
        this.amount_tip = l2;
        this.payment_method_options = updatePaymentIntentPaymentMethodOptions;
        this.expand = Internal.immutableCopyOf("expand", expand);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expand = this.expand;
        builder.amount = this.amount;
        builder.id = this.id;
        builder.payment_method_data = this.payment_method_data;
        builder.amount_tip = this.amount_tip;
        builder.payment_method_options = this.payment_method_options;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdatePaymentIntentRequest)) {
            return false;
        }
        UpdatePaymentIntentRequest updatePaymentIntentRequest = (UpdatePaymentIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), updatePaymentIntentRequest.unknownFields()) && Intrinsics.areEqual(this.expand, updatePaymentIntentRequest.expand) && Intrinsics.areEqual(this.amount, updatePaymentIntentRequest.amount) && Intrinsics.areEqual(this.id, updatePaymentIntentRequest.id) && Intrinsics.areEqual(this.payment_method_data, updatePaymentIntentRequest.payment_method_data) && Intrinsics.areEqual(this.amount_tip, updatePaymentIntentRequest.amount_tip) && Intrinsics.areEqual(this.payment_method_options, updatePaymentIntentRequest.payment_method_options);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.expand.hashCode()) * 37;
        Long l = this.amount;
        int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
        String str = this.id;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        RequestedPaymentMethod requestedPaymentMethod = this.payment_method_data;
        int iHashCode4 = (iHashCode3 + (requestedPaymentMethod != null ? requestedPaymentMethod.hashCode() : 0)) * 37;
        Long l2 = this.amount_tip;
        int iHashCode5 = (iHashCode4 + (l2 != null ? l2.hashCode() : 0)) * 37;
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions = this.payment_method_options;
        int iHashCode6 = iHashCode5 + (updatePaymentIntentPaymentMethodOptions != null ? updatePaymentIntentPaymentMethodOptions.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.amount != null) {
            arrayList.add("amount=" + this.amount);
        }
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.payment_method_data != null) {
            arrayList.add("payment_method_data=" + this.payment_method_data);
        }
        if (this.amount_tip != null) {
            arrayList.add("amount_tip=" + this.amount_tip);
        }
        if (this.payment_method_options != null) {
            arrayList.add("payment_method_options=" + this.payment_method_options);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdatePaymentIntentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UpdatePaymentIntentRequest copy$default(UpdatePaymentIntentRequest updatePaymentIntentRequest, List list, Long l, String str, RequestedPaymentMethod requestedPaymentMethod, Long l2, UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = updatePaymentIntentRequest.expand;
        }
        if ((i & 2) != 0) {
            l = updatePaymentIntentRequest.amount;
        }
        if ((i & 4) != 0) {
            str = updatePaymentIntentRequest.id;
        }
        if ((i & 8) != 0) {
            requestedPaymentMethod = updatePaymentIntentRequest.payment_method_data;
        }
        if ((i & 16) != 0) {
            l2 = updatePaymentIntentRequest.amount_tip;
        }
        if ((i & 32) != 0) {
            updatePaymentIntentPaymentMethodOptions = updatePaymentIntentRequest.payment_method_options;
        }
        if ((i & 64) != 0) {
            byteString = updatePaymentIntentRequest.unknownFields();
        }
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions2 = updatePaymentIntentPaymentMethodOptions;
        ByteString byteString2 = byteString;
        Long l3 = l2;
        String str2 = str;
        return updatePaymentIntentRequest.copy(list, l, str2, requestedPaymentMethod, l3, updatePaymentIntentPaymentMethodOptions2, byteString2);
    }

    public final UpdatePaymentIntentRequest copy(List<String> expand, Long amount, String id, RequestedPaymentMethod payment_method_data, Long amount_tip, UpdatePaymentIntentPaymentMethodOptions payment_method_options, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdatePaymentIntentRequest(expand, amount, id, payment_method_data, amount_tip, payment_method_options, unknownFields);
    }

    /* JADX INFO: compiled from: UpdatePaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "amount_tip", "expand", "", "", OfflineStorageConstantsKt.ID, "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "payment_method_options", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdatePaymentIntentRequest, Builder> {
        public Long amount;
        public Long amount_tip;
        public List<String> expand = CollectionsKt.emptyList();
        public String id;
        public RequestedPaymentMethod payment_method_data;
        public UpdatePaymentIntentPaymentMethodOptions payment_method_options;

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder amount(Long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder payment_method_data(RequestedPaymentMethod payment_method_data) {
            this.payment_method_data = payment_method_data;
            return this;
        }

        public final Builder amount_tip(Long amount_tip) {
            this.amount_tip = amount_tip;
            return this;
        }

        public final Builder payment_method_options(UpdatePaymentIntentPaymentMethodOptions payment_method_options) {
            this.payment_method_options = payment_method_options;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdatePaymentIntentRequest build() {
            return new UpdatePaymentIntentRequest(this.expand, this.amount, this.id, this.payment_method_data, this.amount_tip, this.payment_method_options, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdatePaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdatePaymentIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdatePaymentIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdatePaymentIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdatePaymentIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdatePaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.expand);
                if (value.amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.amount);
                }
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.id);
                }
                if (value.payment_method_data != null) {
                    size += RequestedPaymentMethod.ADAPTER.encodedSizeWithTag(4, value.payment_method_data);
                }
                if (value.amount_tip != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(5, value.amount_tip);
                }
                return value.payment_method_options != null ? size + UpdatePaymentIntentPaymentMethodOptions.ADAPTER.encodedSizeWithTag(6, value.payment_method_options) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdatePaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.id);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 4, value.payment_method_data);
                }
                if (value.amount_tip != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 5, value.amount_tip);
                }
                if (value.payment_method_options != null) {
                    UpdatePaymentIntentPaymentMethodOptions.ADAPTER.encodeWithTag(writer, 6, value.payment_method_options);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdatePaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.payment_method_options != null) {
                    UpdatePaymentIntentPaymentMethodOptions.ADAPTER.encodeWithTag(writer, 6, value.payment_method_options);
                }
                if (value.amount_tip != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 5, value.amount_tip);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 4, value.payment_method_data);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.id);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdatePaymentIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Long lDecode = null;
                String strDecode = null;
                RequestedPaymentMethod requestedPaymentMethodDecode = null;
                Long lDecode2 = null;
                UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptionsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 2:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                requestedPaymentMethodDecode = RequestedPaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 5:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 6:
                                updatePaymentIntentPaymentMethodOptionsDecode = UpdatePaymentIntentPaymentMethodOptions.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new UpdatePaymentIntentRequest(arrayList, lDecode, strDecode, requestedPaymentMethodDecode, lDecode2, updatePaymentIntentPaymentMethodOptionsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdatePaymentIntentRequest redact(UpdatePaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                RequestedPaymentMethod requestedPaymentMethod = value.payment_method_data;
                RequestedPaymentMethod requestedPaymentMethodRedact = requestedPaymentMethod != null ? RequestedPaymentMethod.ADAPTER.redact(requestedPaymentMethod) : null;
                Long l2 = value.amount_tip;
                Long lRedact2 = l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null;
                UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions = value.payment_method_options;
                return UpdatePaymentIntentRequest.copy$default(value, null, lRedact, strRedact, requestedPaymentMethodRedact, lRedact2, updatePaymentIntentPaymentMethodOptions != null ? UpdatePaymentIntentPaymentMethodOptions.ADAPTER.redact(updatePaymentIntentPaymentMethodOptions) : null, ByteString.EMPTY, 1, null);
            }
        };
    }
}
