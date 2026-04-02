package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.sdk.Error;
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

/* JADX INFO: compiled from: ForwardingError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardingError;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ForwardingError$Builder;", "reader_error", "Lcom/stripe/proto/model/sdk/Error;", "server_error", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ForwardingError extends Message<ForwardingError, Builder> {
    public static final ProtoAdapter<ForwardingError> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "readerError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Error reader_error;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "serverError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ErrorWrapper server_error;

    public ForwardingError() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ForwardingError(Error error, ErrorWrapper errorWrapper, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : error, (i & 2) != 0 ? null : errorWrapper, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardingError(Error error, ErrorWrapper errorWrapper, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reader_error = error;
        this.server_error = errorWrapper;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reader_error = this.reader_error;
        builder.server_error = this.server_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ForwardingError)) {
            return false;
        }
        ForwardingError forwardingError = (ForwardingError) other;
        return Intrinsics.areEqual(unknownFields(), forwardingError.unknownFields()) && Intrinsics.areEqual(this.reader_error, forwardingError.reader_error) && Intrinsics.areEqual(this.server_error, forwardingError.server_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Error error = this.reader_error;
        int iHashCode2 = (iHashCode + (error != null ? error.hashCode() : 0)) * 37;
        ErrorWrapper errorWrapper = this.server_error;
        int iHashCode3 = iHashCode2 + (errorWrapper != null ? errorWrapper.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.reader_error != null) {
            arrayList.add("reader_error=" + this.reader_error);
        }
        if (this.server_error != null) {
            arrayList.add("server_error=" + this.server_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ForwardingError{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ForwardingError copy$default(ForwardingError forwardingError, Error error, ErrorWrapper errorWrapper, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            error = forwardingError.reader_error;
        }
        if ((i & 2) != 0) {
            errorWrapper = forwardingError.server_error;
        }
        if ((i & 4) != 0) {
            byteString = forwardingError.unknownFields();
        }
        return forwardingError.copy(error, errorWrapper, byteString);
    }

    public final ForwardingError copy(Error reader_error, ErrorWrapper server_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ForwardingError(reader_error, server_error, unknownFields);
    }

    /* JADX INFO: compiled from: ForwardingError.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardingError$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ForwardingError;", "()V", "reader_error", "Lcom/stripe/proto/model/sdk/Error;", "server_error", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ForwardingError, Builder> {
        public Error reader_error;
        public ErrorWrapper server_error;

        public final Builder reader_error(Error reader_error) {
            this.reader_error = reader_error;
            return this;
        }

        public final Builder server_error(ErrorWrapper server_error) {
            this.server_error = server_error;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ForwardingError build() {
            return new ForwardingError(this.reader_error, this.server_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ForwardingError.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardingError$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ForwardingError;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ForwardingError$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ForwardingError build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ForwardingError.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ForwardingError>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ForwardingError$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ForwardingError value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.reader_error != null) {
                    size += Error.ADAPTER.encodedSizeWithTag(1, value.reader_error);
                }
                return value.server_error != null ? size + ErrorWrapper.ADAPTER.encodedSizeWithTag(2, value.server_error) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ForwardingError value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.reader_error != null) {
                    Error.ADAPTER.encodeWithTag(writer, 1, value.reader_error);
                }
                if (value.server_error != null) {
                    ErrorWrapper.ADAPTER.encodeWithTag(writer, 2, value.server_error);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ForwardingError value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.server_error != null) {
                    ErrorWrapper.ADAPTER.encodeWithTag(writer, 2, value.server_error);
                }
                if (value.reader_error != null) {
                    Error.ADAPTER.encodeWithTag(writer, 1, value.reader_error);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ForwardingError redact(ForwardingError value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Error error = value.reader_error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                ErrorWrapper errorWrapper = value.server_error;
                return value.copy(errorRedact, errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ForwardingError decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Error errorDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ForwardingError(errorDecode, errorWrapperDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
