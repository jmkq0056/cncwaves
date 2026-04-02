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
import com.stripe.proto.api.sdk.CollectInputsResponse;
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

/* JADX INFO: compiled from: CollectInputsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;", "successfully_started", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;", "failed", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "SuccessfullyStarted", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectInputsResponse extends Message<CollectInputsResponse, Builder> {
    public static final ProtoAdapter<CollectInputsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", oneofName = "type_specific_response_fields", schemaIndex = 1, tag = 2)
    public final Error failed;

    @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsResponse$SuccessfullyStarted#ADAPTER", jsonName = "successfullyStarted", oneofName = "type_specific_response_fields", schemaIndex = 0, tag = 1)
    public final SuccessfullyStarted successfully_started;

    public CollectInputsResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CollectInputsResponse(SuccessfullyStarted successfullyStarted, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : successfullyStarted, (i & 2) != 0 ? null : error, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectInputsResponse(SuccessfullyStarted successfullyStarted, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.successfully_started = successfullyStarted;
        this.failed = error;
        if (Internal.countNonNull(successfullyStarted, error) > 1) {
            throw new IllegalArgumentException("At most one of successfully_started, failed may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.successfully_started = this.successfully_started;
        builder.failed = this.failed;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectInputsResponse)) {
            return false;
        }
        CollectInputsResponse collectInputsResponse = (CollectInputsResponse) other;
        return Intrinsics.areEqual(unknownFields(), collectInputsResponse.unknownFields()) && Intrinsics.areEqual(this.successfully_started, collectInputsResponse.successfully_started) && Intrinsics.areEqual(this.failed, collectInputsResponse.failed);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SuccessfullyStarted successfullyStarted = this.successfully_started;
        int iHashCode2 = (iHashCode + (successfullyStarted != null ? successfullyStarted.hashCode() : 0)) * 37;
        Error error = this.failed;
        int iHashCode3 = iHashCode2 + (error != null ? error.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.successfully_started != null) {
            arrayList.add("successfully_started=" + this.successfully_started);
        }
        if (this.failed != null) {
            arrayList.add("failed=" + this.failed);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectInputsResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CollectInputsResponse copy$default(CollectInputsResponse collectInputsResponse, SuccessfullyStarted successfullyStarted, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            successfullyStarted = collectInputsResponse.successfully_started;
        }
        if ((i & 2) != 0) {
            error = collectInputsResponse.failed;
        }
        if ((i & 4) != 0) {
            byteString = collectInputsResponse.unknownFields();
        }
        return collectInputsResponse.copy(successfullyStarted, error, byteString);
    }

    public final CollectInputsResponse copy(SuccessfullyStarted successfully_started, Error failed, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectInputsResponse(successfully_started, failed, unknownFields);
    }

    /* JADX INFO: compiled from: CollectInputsResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse;", "()V", "failed", "Lcom/stripe/proto/model/sdk/Error;", "successfully_started", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectInputsResponse, Builder> {
        public Error failed;
        public SuccessfullyStarted successfully_started;

        public final Builder successfully_started(SuccessfullyStarted successfully_started) {
            this.successfully_started = successfully_started;
            this.failed = null;
            return this;
        }

        public final Builder failed(Error failed) {
            this.failed = failed;
            this.successfully_started = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectInputsResponse build() {
            return new CollectInputsResponse(this.successfully_started, this.failed, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectInputsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectInputsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectInputsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectInputsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectInputsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + CollectInputsResponse.SuccessfullyStarted.ADAPTER.encodedSizeWithTag(1, value.successfully_started) + Error.ADAPTER.encodedSizeWithTag(2, value.failed);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectInputsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                CollectInputsResponse.SuccessfullyStarted.ADAPTER.encodeWithTag(writer, 1, value.successfully_started);
                Error.ADAPTER.encodeWithTag(writer, 2, value.failed);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectInputsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 2, value.failed);
                CollectInputsResponse.SuccessfullyStarted.ADAPTER.encodeWithTag(writer, 1, value.successfully_started);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectInputsResponse redact(CollectInputsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CollectInputsResponse.SuccessfullyStarted successfullyStarted = value.successfully_started;
                CollectInputsResponse.SuccessfullyStarted successfullyStartedRedact = successfullyStarted != null ? CollectInputsResponse.SuccessfullyStarted.ADAPTER.redact(successfullyStarted) : null;
                Error error = value.failed;
                return value.copy(successfullyStartedRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectInputsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CollectInputsResponse.SuccessfullyStarted successfullyStartedDecode = null;
                Error errorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectInputsResponse(successfullyStartedDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        successfullyStartedDecode = CollectInputsResponse.SuccessfullyStarted.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: CollectInputsResponse.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SuccessfullyStarted extends Message<SuccessfullyStarted, Builder> {
        public static final ProtoAdapter<SuccessfullyStarted> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        /* JADX WARN: Multi-variable type inference failed */
        public SuccessfullyStarted() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ SuccessfullyStarted(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SuccessfullyStarted(ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            return (other instanceof SuccessfullyStarted) && Intrinsics.areEqual(unknownFields(), ((SuccessfullyStarted) other).unknownFields());
        }

        public int hashCode() {
            return unknownFields().hashCode();
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            return "SuccessfullyStarted{}";
        }

        public static /* synthetic */ SuccessfullyStarted copy$default(SuccessfullyStarted successfullyStarted, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                byteString = successfullyStarted.unknownFields();
            }
            return successfullyStarted.copy(byteString);
        }

        public final SuccessfullyStarted copy(ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SuccessfullyStarted(unknownFields);
        }

        /* JADX INFO: compiled from: CollectInputsResponse.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SuccessfullyStarted, Builder> {
            @Override // com.squareup.wire.Message.Builder
            public SuccessfullyStarted build() {
                return new SuccessfullyStarted(buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectInputsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SuccessfullyStarted build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SuccessfullyStarted.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SuccessfullyStarted>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsResponse$SuccessfullyStarted$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectInputsResponse.SuccessfullyStarted value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectInputsResponse.SuccessfullyStarted value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectInputsResponse.SuccessfullyStarted value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsResponse.SuccessfullyStarted redact(CollectInputsResponse.SuccessfullyStarted value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsResponse.SuccessfullyStarted decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            reader.readUnknownField(iNextTag);
                        } else {
                            return new CollectInputsResponse.SuccessfullyStarted(reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
