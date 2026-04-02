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
import com.stripe.proto.api.sdk.CollectDataResponse;
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

/* JADX INFO: compiled from: CollectDataResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectDataResponse$Builder;", "successfully_started", "Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted;", "error", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "SuccessfullyStarted", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectDataResponse extends Message<CollectDataResponse, Builder> {
    public static final ProtoAdapter<CollectDataResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", oneofName = "type_specific_response_fields", schemaIndex = 1, tag = 2)
    public final Error error;

    @WireField(adapter = "com.stripe.proto.api.sdk.CollectDataResponse$SuccessfullyStarted#ADAPTER", jsonName = "successfullyStarted", oneofName = "type_specific_response_fields", schemaIndex = 0, tag = 1)
    public final SuccessfullyStarted successfully_started;

    public CollectDataResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CollectDataResponse(SuccessfullyStarted successfullyStarted, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : successfullyStarted, (i & 2) != 0 ? null : error, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectDataResponse(SuccessfullyStarted successfullyStarted, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.successfully_started = successfullyStarted;
        this.error = error;
        if (Internal.countNonNull(successfullyStarted, error) > 1) {
            throw new IllegalArgumentException("At most one of successfully_started, error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.successfully_started = this.successfully_started;
        builder.error = this.error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectDataResponse)) {
            return false;
        }
        CollectDataResponse collectDataResponse = (CollectDataResponse) other;
        return Intrinsics.areEqual(unknownFields(), collectDataResponse.unknownFields()) && Intrinsics.areEqual(this.successfully_started, collectDataResponse.successfully_started) && Intrinsics.areEqual(this.error, collectDataResponse.error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SuccessfullyStarted successfullyStarted = this.successfully_started;
        int iHashCode2 = (iHashCode + (successfullyStarted != null ? successfullyStarted.hashCode() : 0)) * 37;
        Error error = this.error;
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
        if (this.error != null) {
            arrayList.add("error=" + this.error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectDataResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CollectDataResponse copy$default(CollectDataResponse collectDataResponse, SuccessfullyStarted successfullyStarted, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            successfullyStarted = collectDataResponse.successfully_started;
        }
        if ((i & 2) != 0) {
            error = collectDataResponse.error;
        }
        if ((i & 4) != 0) {
            byteString = collectDataResponse.unknownFields();
        }
        return collectDataResponse.copy(successfullyStarted, error, byteString);
    }

    public final CollectDataResponse copy(SuccessfullyStarted successfully_started, Error error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectDataResponse(successfully_started, error, unknownFields);
    }

    /* JADX INFO: compiled from: CollectDataResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectDataResponse;", "()V", "error", "Lcom/stripe/proto/model/sdk/Error;", "successfully_started", "Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectDataResponse, Builder> {
        public Error error;
        public SuccessfullyStarted successfully_started;

        public final Builder successfully_started(SuccessfullyStarted successfully_started) {
            this.successfully_started = successfully_started;
            this.error = null;
            return this;
        }

        public final Builder error(Error error) {
            this.error = error;
            this.successfully_started = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectDataResponse build() {
            return new CollectDataResponse(this.successfully_started, this.error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectDataResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectDataResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectDataResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectDataResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectDataResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectDataResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectDataResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectDataResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + CollectDataResponse.SuccessfullyStarted.ADAPTER.encodedSizeWithTag(1, value.successfully_started) + Error.ADAPTER.encodedSizeWithTag(2, value.error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectDataResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                CollectDataResponse.SuccessfullyStarted.ADAPTER.encodeWithTag(writer, 1, value.successfully_started);
                Error.ADAPTER.encodeWithTag(writer, 2, value.error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectDataResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 2, value.error);
                CollectDataResponse.SuccessfullyStarted.ADAPTER.encodeWithTag(writer, 1, value.successfully_started);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectDataResponse redact(CollectDataResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CollectDataResponse.SuccessfullyStarted successfullyStarted = value.successfully_started;
                CollectDataResponse.SuccessfullyStarted successfullyStartedRedact = successfullyStarted != null ? CollectDataResponse.SuccessfullyStarted.ADAPTER.redact(successfullyStarted) : null;
                Error error = value.error;
                return value.copy(successfullyStartedRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectDataResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CollectDataResponse.SuccessfullyStarted successfullyStartedDecode = null;
                Error errorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectDataResponse(successfullyStartedDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        successfullyStartedDecode = CollectDataResponse.SuccessfullyStarted.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: CollectDataResponse.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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

        /* JADX INFO: compiled from: CollectDataResponse.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SuccessfullyStarted, Builder> {
            @Override // com.squareup.wire.Message.Builder
            public SuccessfullyStarted build() {
                return new SuccessfullyStarted(buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectDataResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectDataResponse$SuccessfullyStarted$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
            ADAPTER = new ProtoAdapter<SuccessfullyStarted>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectDataResponse$SuccessfullyStarted$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectDataResponse.SuccessfullyStarted value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectDataResponse.SuccessfullyStarted value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectDataResponse.SuccessfullyStarted value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectDataResponse.SuccessfullyStarted redact(CollectDataResponse.SuccessfullyStarted value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectDataResponse.SuccessfullyStarted decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            reader.readUnknownField(iNextTag);
                        } else {
                            return new CollectDataResponse.SuccessfullyStarted(reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
