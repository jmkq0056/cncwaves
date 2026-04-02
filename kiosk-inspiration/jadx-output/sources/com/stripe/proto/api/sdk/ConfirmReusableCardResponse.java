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
import com.stripe.proto.model.rest.PaymentMethod;
import com.stripe.proto.model.sdk.Error;
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

/* JADX INFO: compiled from: ConfirmReusableCardResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJJ\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0011\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "request_id", "", "created_reusable_card", "Lcom/stripe/proto/model/rest/PaymentMethod;", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "created_reusuable_card", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)V", "getCreated_reusuable_card$annotations", "()V", "getSystem_context$annotations", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmReusableCardResponse extends Message<ConfirmReusableCardResponse, Builder> {
    public static final ProtoAdapter<ConfirmReusableCardResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "confirmError", oneofName = "reusable_card_result", schemaIndex = 3, tag = 3)
    public final Error confirm_error;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER", jsonName = "createdReusableCard", oneofName = "reusable_card_result", schemaIndex = 2, tag = 5)
    public final PaymentMethod created_reusable_card;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER", jsonName = "createdReusuableCard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 2)
    public final PaymentMethod created_reusuable_card;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 4)
    public final String request_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public ConfirmReusableCardResponse() {
        this(null, null, null, null, null, null, 63, null);
    }

    @Deprecated(message = "created_reusuable_card is deprecated")
    public static /* synthetic */ void getCreated_reusuable_card$annotations() {
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ ConfirmReusableCardResponse(SystemContext systemContext, String str, PaymentMethod paymentMethod, Error error, PaymentMethod paymentMethod2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : systemContext, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : paymentMethod, (i & 8) != 0 ? null : error, (i & 16) != 0 ? null : paymentMethod2, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmReusableCardResponse(SystemContext systemContext, String request_id, PaymentMethod paymentMethod, Error error, PaymentMethod paymentMethod2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.request_id = request_id;
        this.created_reusable_card = paymentMethod;
        this.confirm_error = error;
        this.created_reusuable_card = paymentMethod2;
        if (Internal.countNonNull(paymentMethod, error) > 1) {
            throw new IllegalArgumentException("At most one of created_reusable_card, confirm_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.request_id = this.request_id;
        builder.created_reusable_card = this.created_reusable_card;
        builder.confirm_error = this.confirm_error;
        builder.created_reusuable_card = this.created_reusuable_card;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmReusableCardResponse)) {
            return false;
        }
        ConfirmReusableCardResponse confirmReusableCardResponse = (ConfirmReusableCardResponse) other;
        return Intrinsics.areEqual(unknownFields(), confirmReusableCardResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, confirmReusableCardResponse.system_context) && Intrinsics.areEqual(this.request_id, confirmReusableCardResponse.request_id) && Intrinsics.areEqual(this.created_reusable_card, confirmReusableCardResponse.created_reusable_card) && Intrinsics.areEqual(this.confirm_error, confirmReusableCardResponse.confirm_error) && Intrinsics.areEqual(this.created_reusuable_card, confirmReusableCardResponse.created_reusuable_card);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (((iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37) + this.request_id.hashCode()) * 37;
        PaymentMethod paymentMethod = this.created_reusable_card;
        int iHashCode3 = (iHashCode2 + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        Error error = this.confirm_error;
        int iHashCode4 = (iHashCode3 + (error != null ? error.hashCode() : 0)) * 37;
        PaymentMethod paymentMethod2 = this.created_reusuable_card;
        int iHashCode5 = iHashCode4 + (paymentMethod2 != null ? paymentMethod2.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("request_id=" + Internal.sanitize(this.request_id));
        if (this.created_reusable_card != null) {
            arrayList2.add("created_reusable_card=" + this.created_reusable_card);
        }
        if (this.confirm_error != null) {
            arrayList2.add("confirm_error=" + this.confirm_error);
        }
        if (this.created_reusuable_card != null) {
            arrayList2.add("created_reusuable_card=" + this.created_reusuable_card);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmReusableCardResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmReusableCardResponse copy$default(ConfirmReusableCardResponse confirmReusableCardResponse, SystemContext systemContext, String str, PaymentMethod paymentMethod, Error error, PaymentMethod paymentMethod2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            systemContext = confirmReusableCardResponse.system_context;
        }
        if ((i & 2) != 0) {
            str = confirmReusableCardResponse.request_id;
        }
        if ((i & 4) != 0) {
            paymentMethod = confirmReusableCardResponse.created_reusable_card;
        }
        if ((i & 8) != 0) {
            error = confirmReusableCardResponse.confirm_error;
        }
        if ((i & 16) != 0) {
            paymentMethod2 = confirmReusableCardResponse.created_reusuable_card;
        }
        if ((i & 32) != 0) {
            byteString = confirmReusableCardResponse.unknownFields();
        }
        PaymentMethod paymentMethod3 = paymentMethod2;
        ByteString byteString2 = byteString;
        return confirmReusableCardResponse.copy(systemContext, str, paymentMethod, error, paymentMethod3, byteString2);
    }

    public final ConfirmReusableCardResponse copy(SystemContext system_context, String request_id, PaymentMethod created_reusable_card, Error confirm_error, PaymentMethod created_reusuable_card, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmReusableCardResponse(system_context, request_id, created_reusable_card, confirm_error, created_reusuable_card, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmReusableCardResponse.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0012\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;", "()V", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "created_reusable_card", "Lcom/stripe/proto/model/rest/PaymentMethod;", "created_reusuable_card", "request_id", "", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmReusableCardResponse, Builder> {
        public Error confirm_error;
        public PaymentMethod created_reusable_card;
        public PaymentMethod created_reusuable_card;
        public String request_id = "";
        public SystemContext system_context;

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder request_id(String request_id) {
            Intrinsics.checkNotNullParameter(request_id, "request_id");
            this.request_id = request_id;
            return this;
        }

        @Deprecated(message = "created_reusuable_card is deprecated")
        public final Builder created_reusuable_card(PaymentMethod created_reusuable_card) {
            this.created_reusuable_card = created_reusuable_card;
            return this;
        }

        public final Builder created_reusable_card(PaymentMethod created_reusable_card) {
            this.created_reusable_card = created_reusable_card;
            this.confirm_error = null;
            return this;
        }

        public final Builder confirm_error(Error confirm_error) {
            this.confirm_error = confirm_error;
            this.created_reusable_card = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmReusableCardResponse build() {
            return new ConfirmReusableCardResponse(this.system_context, this.request_id, this.created_reusable_card, this.confirm_error, this.created_reusuable_card, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmReusableCardResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmReusableCardResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmReusableCardResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmReusableCardResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmReusableCardResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmReusableCardResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.request_id);
                }
                int iEncodedSizeWithTag = size + PaymentMethod.ADAPTER.encodedSizeWithTag(5, value.created_reusable_card) + Error.ADAPTER.encodedSizeWithTag(3, value.confirm_error);
                return value.created_reusuable_card != null ? iEncodedSizeWithTag + PaymentMethod.ADAPTER.encodedSizeWithTag(2, value.created_reusuable_card) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmReusableCardResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.request_id);
                }
                if (value.created_reusuable_card != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.created_reusuable_card);
                }
                PaymentMethod.ADAPTER.encodeWithTag(writer, 5, value.created_reusable_card);
                Error.ADAPTER.encodeWithTag(writer, 3, value.confirm_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmReusableCardResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 3, value.confirm_error);
                PaymentMethod.ADAPTER.encodeWithTag(writer, 5, value.created_reusable_card);
                if (value.created_reusuable_card != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.created_reusuable_card);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.request_id);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmReusableCardResponse redact(ConfirmReusableCardResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                PaymentMethod paymentMethod = value.created_reusable_card;
                PaymentMethod paymentMethodRedact = paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null;
                Error error = value.confirm_error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                PaymentMethod paymentMethod2 = value.created_reusuable_card;
                return ConfirmReusableCardResponse.copy$default(value, systemContextRedact, null, paymentMethodRedact, errorRedact, paymentMethod2 != null ? PaymentMethod.ADAPTER.redact(paymentMethod2) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmReusableCardResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SystemContext systemContextDecode = null;
                Error errorDecode = null;
                PaymentMethod paymentMethodDecode = null;
                String strDecode = "";
                PaymentMethod paymentMethodDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConfirmReusableCardResponse(systemContextDecode, strDecode, paymentMethodDecode2, errorDecode, paymentMethodDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        systemContextDecode = SystemContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        paymentMethodDecode2 = PaymentMethod.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
