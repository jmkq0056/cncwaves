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
import com.stripe.proto.model.rest.Source;
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

/* JADX INFO: compiled from: ConfirmSourceResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aB=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmSourceResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmSourceResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "request_id", "", "created_source", "Lcom/stripe/proto/model/rest/Source;", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmSourceResponse extends Message<ConfirmSourceResponse, Builder> {
    public static final ProtoAdapter<ConfirmSourceResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "confirmError", oneofName = "source_result", schemaIndex = 3, tag = 3)
    public final Error confirm_error;

    @WireField(adapter = "com.stripe.proto.model.rest.Source#ADAPTER", jsonName = "createdSource", oneofName = "source_result", schemaIndex = 2, tag = 2)
    public final Source created_source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 4)
    public final String request_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public ConfirmSourceResponse() {
        this(null, null, null, null, null, 31, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ ConfirmSourceResponse(SystemContext systemContext, String str, Source source, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : systemContext, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : source, (i & 8) != 0 ? null : error, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmSourceResponse(SystemContext systemContext, String request_id, Source source, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.request_id = request_id;
        this.created_source = source;
        this.confirm_error = error;
        if (Internal.countNonNull(source, error) > 1) {
            throw new IllegalArgumentException("At most one of created_source, confirm_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.request_id = this.request_id;
        builder.created_source = this.created_source;
        builder.confirm_error = this.confirm_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmSourceResponse)) {
            return false;
        }
        ConfirmSourceResponse confirmSourceResponse = (ConfirmSourceResponse) other;
        return Intrinsics.areEqual(unknownFields(), confirmSourceResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, confirmSourceResponse.system_context) && Intrinsics.areEqual(this.request_id, confirmSourceResponse.request_id) && Intrinsics.areEqual(this.created_source, confirmSourceResponse.created_source) && Intrinsics.areEqual(this.confirm_error, confirmSourceResponse.confirm_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (((iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37) + this.request_id.hashCode()) * 37;
        Source source = this.created_source;
        int iHashCode3 = (iHashCode2 + (source != null ? source.hashCode() : 0)) * 37;
        Error error = this.confirm_error;
        int iHashCode4 = iHashCode3 + (error != null ? error.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("request_id=" + Internal.sanitize(this.request_id));
        if (this.created_source != null) {
            arrayList2.add("created_source=" + this.created_source);
        }
        if (this.confirm_error != null) {
            arrayList2.add("confirm_error=" + this.confirm_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmSourceResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmSourceResponse copy$default(ConfirmSourceResponse confirmSourceResponse, SystemContext systemContext, String str, Source source, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            systemContext = confirmSourceResponse.system_context;
        }
        if ((i & 2) != 0) {
            str = confirmSourceResponse.request_id;
        }
        if ((i & 4) != 0) {
            source = confirmSourceResponse.created_source;
        }
        if ((i & 8) != 0) {
            error = confirmSourceResponse.confirm_error;
        }
        if ((i & 16) != 0) {
            byteString = confirmSourceResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        Source source2 = source;
        return confirmSourceResponse.copy(systemContext, str, source2, error, byteString2);
    }

    public final ConfirmSourceResponse copy(SystemContext system_context, String request_id, Source created_source, Error confirm_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmSourceResponse(system_context, request_id, created_source, confirm_error, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmSourceResponse.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0012\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmSourceResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmSourceResponse;", "()V", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "created_source", "Lcom/stripe/proto/model/rest/Source;", "request_id", "", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmSourceResponse, Builder> {
        public Error confirm_error;
        public Source created_source;
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

        public final Builder created_source(Source created_source) {
            this.created_source = created_source;
            this.confirm_error = null;
            return this;
        }

        public final Builder confirm_error(Error confirm_error) {
            this.confirm_error = confirm_error;
            this.created_source = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmSourceResponse build() {
            return new ConfirmSourceResponse(this.system_context, this.request_id, this.created_source, this.confirm_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmSourceResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmSourceResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmSourceResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmSourceResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmSourceResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmSourceResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmSourceResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmSourceResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmSourceResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.request_id);
                }
                return size + Source.ADAPTER.encodedSizeWithTag(2, value.created_source) + Error.ADAPTER.encodedSizeWithTag(3, value.confirm_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmSourceResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.request_id);
                }
                Source.ADAPTER.encodeWithTag(writer, 2, value.created_source);
                Error.ADAPTER.encodeWithTag(writer, 3, value.confirm_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmSourceResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 3, value.confirm_error);
                Source.ADAPTER.encodeWithTag(writer, 2, value.created_source);
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.request_id);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmSourceResponse redact(ConfirmSourceResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                Source source = value.created_source;
                Source sourceRedact = source != null ? Source.ADAPTER.redact(source) : null;
                Error error = value.confirm_error;
                return ConfirmSourceResponse.copy$default(value, systemContextRedact, null, sourceRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmSourceResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SystemContext systemContextDecode = null;
                Error errorDecode = null;
                String strDecode = "";
                Source sourceDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConfirmSourceResponse(systemContextDecode, strDecode, sourceDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        systemContextDecode = SystemContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        sourceDecode = Source.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
