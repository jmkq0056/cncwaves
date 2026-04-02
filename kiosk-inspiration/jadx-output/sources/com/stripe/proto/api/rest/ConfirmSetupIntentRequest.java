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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: ConfirmSetupIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBe\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jf\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;", "expand", "", "", "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "mandate_data", "Lcom/stripe/proto/api/rest/Mandate;", "payment_method_options", "", "return_url", OfflineStorageConstantsKt.ID, "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmSetupIntentRequest extends Message<ConfirmSetupIntentRequest, Builder> {
    public static final ProtoAdapter<ConfirmSetupIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 5, tag = 6)
    public final String id;

    @WireField(adapter = "com.stripe.proto.api.rest.Mandate#ADAPTER", jsonName = "mandateData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final Mandate mandate_data;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER", jsonName = "paymentMethodData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RequestedPaymentMethod payment_method_data;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethodOptions", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 4)
    public final Map<String, String> payment_method_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "returnUrl", schemaIndex = 4, tag = 5)
    public final String return_url;

    public ConfirmSetupIntentRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ ConfirmSetupIntentRequest(List list, RequestedPaymentMethod requestedPaymentMethod, Mandate mandate, Map map, String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : requestedPaymentMethod, (i & 4) != 0 ? null : mandate, (i & 8) != 0 ? MapsKt.emptyMap() : map, (i & 16) != 0 ? null : str, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmSetupIntentRequest(List<String> expand, RequestedPaymentMethod requestedPaymentMethod, Mandate mandate, Map<String, String> payment_method_options, String str, String str2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(payment_method_options, "payment_method_options");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_method_data = requestedPaymentMethod;
        this.mandate_data = mandate;
        this.return_url = str;
        this.id = str2;
        this.expand = Internal.immutableCopyOf("expand", expand);
        this.payment_method_options = Internal.immutableCopyOf("payment_method_options", payment_method_options);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expand = this.expand;
        builder.payment_method_data = this.payment_method_data;
        builder.mandate_data = this.mandate_data;
        builder.payment_method_options = this.payment_method_options;
        builder.return_url = this.return_url;
        builder.id = this.id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmSetupIntentRequest)) {
            return false;
        }
        ConfirmSetupIntentRequest confirmSetupIntentRequest = (ConfirmSetupIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), confirmSetupIntentRequest.unknownFields()) && Intrinsics.areEqual(this.expand, confirmSetupIntentRequest.expand) && Intrinsics.areEqual(this.payment_method_data, confirmSetupIntentRequest.payment_method_data) && Intrinsics.areEqual(this.mandate_data, confirmSetupIntentRequest.mandate_data) && Intrinsics.areEqual(this.payment_method_options, confirmSetupIntentRequest.payment_method_options) && Intrinsics.areEqual(this.return_url, confirmSetupIntentRequest.return_url) && Intrinsics.areEqual(this.id, confirmSetupIntentRequest.id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.expand.hashCode()) * 37;
        RequestedPaymentMethod requestedPaymentMethod = this.payment_method_data;
        int iHashCode2 = (iHashCode + (requestedPaymentMethod != null ? requestedPaymentMethod.hashCode() : 0)) * 37;
        Mandate mandate = this.mandate_data;
        int iHashCode3 = (((iHashCode2 + (mandate != null ? mandate.hashCode() : 0)) * 37) + this.payment_method_options.hashCode()) * 37;
        String str = this.return_url;
        int iHashCode4 = (iHashCode3 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.id;
        int iHashCode5 = iHashCode4 + (str2 != null ? str2.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.payment_method_data != null) {
            arrayList.add("payment_method_data=" + this.payment_method_data);
        }
        if (this.mandate_data != null) {
            arrayList.add("mandate_data=" + this.mandate_data);
        }
        if (!this.payment_method_options.isEmpty()) {
            arrayList.add("payment_method_options=" + this.payment_method_options);
        }
        if (this.return_url != null) {
            arrayList.add("return_url=" + this.return_url);
        }
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmSetupIntentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfirmSetupIntentRequest copy$default(ConfirmSetupIntentRequest confirmSetupIntentRequest, List list, RequestedPaymentMethod requestedPaymentMethod, Mandate mandate, Map map, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = confirmSetupIntentRequest.expand;
        }
        if ((i & 2) != 0) {
            requestedPaymentMethod = confirmSetupIntentRequest.payment_method_data;
        }
        if ((i & 4) != 0) {
            mandate = confirmSetupIntentRequest.mandate_data;
        }
        if ((i & 8) != 0) {
            map = confirmSetupIntentRequest.payment_method_options;
        }
        if ((i & 16) != 0) {
            str = confirmSetupIntentRequest.return_url;
        }
        if ((i & 32) != 0) {
            str2 = confirmSetupIntentRequest.id;
        }
        if ((i & 64) != 0) {
            byteString = confirmSetupIntentRequest.unknownFields();
        }
        String str3 = str2;
        ByteString byteString2 = byteString;
        String str4 = str;
        Mandate mandate2 = mandate;
        return confirmSetupIntentRequest.copy(list, requestedPaymentMethod, mandate2, map, str4, str3, byteString2);
    }

    public final ConfirmSetupIntentRequest copy(List<String> expand, RequestedPaymentMethod payment_method_data, Mandate mandate_data, Map<String, String> payment_method_options, String return_url, String id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(payment_method_options, "payment_method_options");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmSetupIntentRequest(expand, payment_method_data, mandate_data, payment_method_options, return_url, id, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u001a\u0010\f\u001a\u00020\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "()V", "expand", "", "", OfflineStorageConstantsKt.ID, "mandate_data", "Lcom/stripe/proto/api/rest/Mandate;", "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "payment_method_options", "", "return_url", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmSetupIntentRequest, Builder> {
        public String id;
        public Mandate mandate_data;
        public RequestedPaymentMethod payment_method_data;
        public String return_url;
        public List<String> expand = CollectionsKt.emptyList();
        public Map<String, String> payment_method_options = MapsKt.emptyMap();

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder payment_method_data(RequestedPaymentMethod payment_method_data) {
            this.payment_method_data = payment_method_data;
            return this;
        }

        public final Builder mandate_data(Mandate mandate_data) {
            this.mandate_data = mandate_data;
            return this;
        }

        public final Builder payment_method_options(Map<String, String> payment_method_options) {
            Intrinsics.checkNotNullParameter(payment_method_options, "payment_method_options");
            this.payment_method_options = payment_method_options;
            return this;
        }

        public final Builder return_url(String return_url) {
            this.return_url = return_url;
            return this;
        }

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmSetupIntentRequest build() {
            return new ConfirmSetupIntentRequest(this.expand, this.payment_method_data, this.mandate_data, this.payment_method_options, this.return_url, this.id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmSetupIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmSetupIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmSetupIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ConfirmSetupIntentRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: payment_method_optionsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy payment_method_optionsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.rest.ConfirmSetupIntentRequest$Companion$ADAPTER$1$payment_method_optionsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getPayment_method_optionsAdapter() {
                return (ProtoAdapter) this.payment_method_optionsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.expand);
                if (value.payment_method_data != null) {
                    size += RequestedPaymentMethod.ADAPTER.encodedSizeWithTag(2, value.payment_method_data);
                }
                if (value.mandate_data != null) {
                    size += Mandate.ADAPTER.encodedSizeWithTag(3, value.mandate_data);
                }
                int iEncodedSizeWithTag = size + getPayment_method_optionsAdapter().encodedSizeWithTag(4, value.payment_method_options);
                if (value.return_url != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.return_url);
                }
                return value.id != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.id) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.payment_method_data);
                }
                if (value.mandate_data != null) {
                    Mandate.ADAPTER.encodeWithTag(writer, 3, value.mandate_data);
                }
                getPayment_method_optionsAdapter().encodeWithTag(writer, 4, value.payment_method_options);
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.return_url);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.id);
                }
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.return_url);
                }
                getPayment_method_optionsAdapter().encodeWithTag(writer, 4, value.payment_method_options);
                if (value.mandate_data != null) {
                    Mandate.ADAPTER.encodeWithTag(writer, 3, value.mandate_data);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.payment_method_data);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmSetupIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                RequestedPaymentMethod requestedPaymentMethodDecode = null;
                Mandate mandateDecode = null;
                String strDecode = null;
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 2:
                                requestedPaymentMethodDecode = RequestedPaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 3:
                                mandateDecode = Mandate.ADAPTER.decode(reader);
                                break;
                            case 4:
                                linkedHashMap.putAll(getPayment_method_optionsAdapter().decode(reader));
                                break;
                            case 5:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ConfirmSetupIntentRequest(arrayList, requestedPaymentMethodDecode, mandateDecode, linkedHashMap, strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmSetupIntentRequest redact(ConfirmSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RequestedPaymentMethod requestedPaymentMethod = value.payment_method_data;
                RequestedPaymentMethod requestedPaymentMethodRedact = requestedPaymentMethod != null ? RequestedPaymentMethod.ADAPTER.redact(requestedPaymentMethod) : null;
                Mandate mandate = value.mandate_data;
                Mandate mandateRedact = mandate != null ? Mandate.ADAPTER.redact(mandate) : null;
                String str = value.return_url;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.id;
                return ConfirmSetupIntentRequest.copy$default(value, null, requestedPaymentMethodRedact, mandateRedact, null, strRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY, 9, null);
            }
        };
    }
}
