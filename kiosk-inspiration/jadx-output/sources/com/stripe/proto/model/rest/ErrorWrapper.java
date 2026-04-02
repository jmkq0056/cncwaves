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

/* JADX INFO: compiled from: ErrorWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorWrapper;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ErrorWrapper$Builder;", "error", "Lcom/stripe/proto/model/rest/ErrorResponse;", "last_setup_error", "Lcom/stripe/proto/model/rest/LastSetupError;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ErrorWrapper extends Message<ErrorWrapper, Builder> {
    public static final ProtoAdapter<ErrorWrapper> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorResponse#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ErrorResponse error;

    @WireField(adapter = "com.stripe.proto.model.rest.LastSetupError#ADAPTER", jsonName = "lastSetupError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final LastSetupError last_setup_error;

    public ErrorWrapper() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ErrorWrapper(ErrorResponse errorResponse, LastSetupError lastSetupError, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : errorResponse, (i & 2) != 0 ? null : lastSetupError, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorWrapper(ErrorResponse errorResponse, LastSetupError lastSetupError, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.error = errorResponse;
        this.last_setup_error = lastSetupError;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.error = this.error;
        builder.last_setup_error = this.last_setup_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ErrorWrapper)) {
            return false;
        }
        ErrorWrapper errorWrapper = (ErrorWrapper) other;
        return Intrinsics.areEqual(unknownFields(), errorWrapper.unknownFields()) && Intrinsics.areEqual(this.error, errorWrapper.error) && Intrinsics.areEqual(this.last_setup_error, errorWrapper.last_setup_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ErrorResponse errorResponse = this.error;
        int iHashCode2 = (iHashCode + (errorResponse != null ? errorResponse.hashCode() : 0)) * 37;
        LastSetupError lastSetupError = this.last_setup_error;
        int iHashCode3 = iHashCode2 + (lastSetupError != null ? lastSetupError.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.error != null) {
            arrayList.add("error=" + this.error);
        }
        if (this.last_setup_error != null) {
            arrayList.add("last_setup_error=" + this.last_setup_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ErrorWrapper{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ErrorWrapper copy$default(ErrorWrapper errorWrapper, ErrorResponse errorResponse, LastSetupError lastSetupError, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            errorResponse = errorWrapper.error;
        }
        if ((i & 2) != 0) {
            lastSetupError = errorWrapper.last_setup_error;
        }
        if ((i & 4) != 0) {
            byteString = errorWrapper.unknownFields();
        }
        return errorWrapper.copy(errorResponse, lastSetupError, byteString);
    }

    public final ErrorWrapper copy(ErrorResponse error, LastSetupError last_setup_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ErrorWrapper(error, last_setup_error, unknownFields);
    }

    /* JADX INFO: compiled from: ErrorWrapper.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorWrapper$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "()V", "error", "Lcom/stripe/proto/model/rest/ErrorResponse;", "last_setup_error", "Lcom/stripe/proto/model/rest/LastSetupError;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ErrorWrapper, Builder> {
        public ErrorResponse error;
        public LastSetupError last_setup_error;

        public final Builder error(ErrorResponse error) {
            this.error = error;
            return this;
        }

        public final Builder last_setup_error(LastSetupError last_setup_error) {
            this.last_setup_error = last_setup_error;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ErrorWrapper build() {
            return new ErrorWrapper(this.error, this.last_setup_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ErrorWrapper.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorWrapper$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ErrorWrapper$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ErrorWrapper build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ErrorWrapper.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ErrorWrapper>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ErrorWrapper$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ErrorWrapper value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.error != null) {
                    size += ErrorResponse.ADAPTER.encodedSizeWithTag(1, value.error);
                }
                return value.last_setup_error != null ? size + LastSetupError.ADAPTER.encodedSizeWithTag(2, value.last_setup_error) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ErrorWrapper value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.error != null) {
                    ErrorResponse.ADAPTER.encodeWithTag(writer, 1, value.error);
                }
                if (value.last_setup_error != null) {
                    LastSetupError.ADAPTER.encodeWithTag(writer, 2, value.last_setup_error);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ErrorWrapper value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.last_setup_error != null) {
                    LastSetupError.ADAPTER.encodeWithTag(writer, 2, value.last_setup_error);
                }
                if (value.error != null) {
                    ErrorResponse.ADAPTER.encodeWithTag(writer, 1, value.error);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ErrorWrapper redact(ErrorWrapper value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ErrorResponse errorResponse = value.error;
                ErrorResponse errorResponseRedact = errorResponse != null ? ErrorResponse.ADAPTER.redact(errorResponse) : null;
                LastSetupError lastSetupError = value.last_setup_error;
                return value.copy(errorResponseRedact, lastSetupError != null ? LastSetupError.ADAPTER.redact(lastSetupError) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ErrorWrapper decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ErrorResponse errorResponseDecode = null;
                LastSetupError lastSetupErrorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ErrorWrapper(errorResponseDecode, lastSetupErrorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        errorResponseDecode = ErrorResponse.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        lastSetupErrorDecode = LastSetupError.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
