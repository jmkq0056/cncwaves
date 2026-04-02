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
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.Refund;
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

/* JADX INFO: compiled from: ConfirmInteracRefundResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJJ\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0006H\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "request_id", "", "interac_refund", "Lcom/stripe/proto/model/rest/Refund;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refund;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmInteracRefundResponse extends Message<ConfirmInteracRefundResponse, Builder> {
    public static final ProtoAdapter<ConfirmInteracRefundResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "confirmError", oneofName = "payment_result", schemaIndex = 4, tag = 5)
    public final Error confirm_error;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "declineResponse", oneofName = "payment_result", schemaIndex = 3, tag = 4)
    public final ErrorWrapper decline_response;

    @WireField(adapter = "com.stripe.proto.model.rest.Refund#ADAPTER", jsonName = "interacRefund", oneofName = "payment_result", schemaIndex = 2, tag = 3)
    public final Refund interac_refund;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String request_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public ConfirmInteracRefundResponse() {
        this(null, null, null, null, null, null, 63, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ ConfirmInteracRefundResponse(SystemContext systemContext, String str, Refund refund, ErrorWrapper errorWrapper, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : systemContext, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : refund, (i & 8) != 0 ? null : errorWrapper, (i & 16) != 0 ? null : error, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmInteracRefundResponse(SystemContext systemContext, String request_id, Refund refund, ErrorWrapper errorWrapper, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.request_id = request_id;
        this.interac_refund = refund;
        this.decline_response = errorWrapper;
        this.confirm_error = error;
        if (Internal.countNonNull(refund, errorWrapper, error) > 1) {
            throw new IllegalArgumentException("At most one of interac_refund, decline_response, confirm_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.request_id = this.request_id;
        builder.interac_refund = this.interac_refund;
        builder.decline_response = this.decline_response;
        builder.confirm_error = this.confirm_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmInteracRefundResponse)) {
            return false;
        }
        ConfirmInteracRefundResponse confirmInteracRefundResponse = (ConfirmInteracRefundResponse) other;
        return Intrinsics.areEqual(unknownFields(), confirmInteracRefundResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, confirmInteracRefundResponse.system_context) && Intrinsics.areEqual(this.request_id, confirmInteracRefundResponse.request_id) && Intrinsics.areEqual(this.interac_refund, confirmInteracRefundResponse.interac_refund) && Intrinsics.areEqual(this.decline_response, confirmInteracRefundResponse.decline_response) && Intrinsics.areEqual(this.confirm_error, confirmInteracRefundResponse.confirm_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (((iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37) + this.request_id.hashCode()) * 37;
        Refund refund = this.interac_refund;
        int iHashCode3 = (iHashCode2 + (refund != null ? refund.hashCode() : 0)) * 37;
        ErrorWrapper errorWrapper = this.decline_response;
        int iHashCode4 = (iHashCode3 + (errorWrapper != null ? errorWrapper.hashCode() : 0)) * 37;
        Error error = this.confirm_error;
        int iHashCode5 = iHashCode4 + (error != null ? error.hashCode() : 0);
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
        if (this.interac_refund != null) {
            arrayList2.add("interac_refund=" + this.interac_refund);
        }
        if (this.decline_response != null) {
            arrayList2.add("decline_response=" + this.decline_response);
        }
        if (this.confirm_error != null) {
            arrayList2.add("confirm_error=" + this.confirm_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmInteracRefundResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmInteracRefundResponse copy$default(ConfirmInteracRefundResponse confirmInteracRefundResponse, SystemContext systemContext, String str, Refund refund, ErrorWrapper errorWrapper, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            systemContext = confirmInteracRefundResponse.system_context;
        }
        if ((i & 2) != 0) {
            str = confirmInteracRefundResponse.request_id;
        }
        if ((i & 4) != 0) {
            refund = confirmInteracRefundResponse.interac_refund;
        }
        if ((i & 8) != 0) {
            errorWrapper = confirmInteracRefundResponse.decline_response;
        }
        if ((i & 16) != 0) {
            error = confirmInteracRefundResponse.confirm_error;
        }
        if ((i & 32) != 0) {
            byteString = confirmInteracRefundResponse.unknownFields();
        }
        Error error2 = error;
        ByteString byteString2 = byteString;
        return confirmInteracRefundResponse.copy(systemContext, str, refund, errorWrapper, error2, byteString2);
    }

    public final ConfirmInteracRefundResponse copy(SystemContext system_context, String request_id, Refund interac_refund, ErrorWrapper decline_response, Error confirm_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmInteracRefundResponse(system_context, request_id, interac_refund, decline_response, confirm_error, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmInteracRefundResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;", "()V", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "interac_refund", "Lcom/stripe/proto/model/rest/Refund;", "request_id", "", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmInteracRefundResponse, Builder> {
        public Error confirm_error;
        public ErrorWrapper decline_response;
        public Refund interac_refund;
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

        public final Builder interac_refund(Refund interac_refund) {
            this.interac_refund = interac_refund;
            this.decline_response = null;
            this.confirm_error = null;
            return this;
        }

        public final Builder decline_response(ErrorWrapper decline_response) {
            this.decline_response = decline_response;
            this.interac_refund = null;
            this.confirm_error = null;
            return this;
        }

        public final Builder confirm_error(Error confirm_error) {
            this.confirm_error = confirm_error;
            this.interac_refund = null;
            this.decline_response = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmInteracRefundResponse build() {
            return new ConfirmInteracRefundResponse(this.system_context, this.request_id, this.interac_refund, this.decline_response, this.confirm_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmInteracRefundResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmInteracRefundResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmInteracRefundResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmInteracRefundResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmInteracRefundResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmInteracRefundResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.request_id);
                }
                return size + Refund.ADAPTER.encodedSizeWithTag(3, value.interac_refund) + ErrorWrapper.ADAPTER.encodedSizeWithTag(4, value.decline_response) + Error.ADAPTER.encodedSizeWithTag(5, value.confirm_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmInteracRefundResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.request_id);
                }
                Refund.ADAPTER.encodeWithTag(writer, 3, value.interac_refund);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 4, value.decline_response);
                Error.ADAPTER.encodeWithTag(writer, 5, value.confirm_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmInteracRefundResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 5, value.confirm_error);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 4, value.decline_response);
                Refund.ADAPTER.encodeWithTag(writer, 3, value.interac_refund);
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.request_id);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmInteracRefundResponse redact(ConfirmInteracRefundResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                Refund refund = value.interac_refund;
                Refund refundRedact = refund != null ? Refund.ADAPTER.redact(refund) : null;
                ErrorWrapper errorWrapper = value.decline_response;
                ErrorWrapper errorWrapperRedact = errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null;
                Error error = value.confirm_error;
                return ConfirmInteracRefundResponse.copy$default(value, systemContextRedact, null, refundRedact, errorWrapperRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmInteracRefundResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SystemContext systemContextDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                Error errorDecode = null;
                String strDecode = "";
                Refund refundDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConfirmInteracRefundResponse(systemContextDecode, strDecode, refundDecode, errorWrapperDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        systemContextDecode = SystemContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        refundDecode = Refund.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
