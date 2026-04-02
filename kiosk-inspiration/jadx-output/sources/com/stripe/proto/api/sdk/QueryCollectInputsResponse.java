package com.stripe.proto.api.sdk;

import androidx.core.graphics.TypefaceCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.sdk.QueryCollectInputsResponse;
import com.stripe.proto.model.sdk.Error;
import io.ktor.http.LinkHeader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0016\u0017\u0018\u0019B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;", "pending", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;", "successfully_completed", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "failed", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Pending", "SuccessfullyCompleted", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryCollectInputsResponse extends Message<QueryCollectInputsResponse, Builder> {
    public static final ProtoAdapter<QueryCollectInputsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", oneofName = "type_specific_response_fields", schemaIndex = 2, tag = 3)
    public final Error failed;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$Pending#ADAPTER", oneofName = "type_specific_response_fields", schemaIndex = 0, tag = 1)
    public final Pending pending;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted#ADAPTER", jsonName = "successfullyCompleted", oneofName = "type_specific_response_fields", schemaIndex = 1, tag = 2)
    public final SuccessfullyCompleted successfully_completed;

    public QueryCollectInputsResponse() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ QueryCollectInputsResponse(Pending pending, SuccessfullyCompleted successfullyCompleted, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : pending, (i & 2) != 0 ? null : successfullyCompleted, (i & 4) != 0 ? null : error, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryCollectInputsResponse(Pending pending, SuccessfullyCompleted successfullyCompleted, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pending = pending;
        this.successfully_completed = successfullyCompleted;
        this.failed = error;
        if (Internal.countNonNull(pending, successfullyCompleted, error) > 1) {
            throw new IllegalArgumentException("At most one of pending, successfully_completed, failed may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pending = this.pending;
        builder.successfully_completed = this.successfully_completed;
        builder.failed = this.failed;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof QueryCollectInputsResponse)) {
            return false;
        }
        QueryCollectInputsResponse queryCollectInputsResponse = (QueryCollectInputsResponse) other;
        return Intrinsics.areEqual(unknownFields(), queryCollectInputsResponse.unknownFields()) && Intrinsics.areEqual(this.pending, queryCollectInputsResponse.pending) && Intrinsics.areEqual(this.successfully_completed, queryCollectInputsResponse.successfully_completed) && Intrinsics.areEqual(this.failed, queryCollectInputsResponse.failed);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Pending pending = this.pending;
        int iHashCode2 = (iHashCode + (pending != null ? pending.hashCode() : 0)) * 37;
        SuccessfullyCompleted successfullyCompleted = this.successfully_completed;
        int iHashCode3 = (iHashCode2 + (successfullyCompleted != null ? successfullyCompleted.hashCode() : 0)) * 37;
        Error error = this.failed;
        int iHashCode4 = iHashCode3 + (error != null ? error.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.pending != null) {
            arrayList.add("pending=" + this.pending);
        }
        if (this.successfully_completed != null) {
            arrayList.add("successfully_completed=" + this.successfully_completed);
        }
        if (this.failed != null) {
            arrayList.add("failed=" + this.failed);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "QueryCollectInputsResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ QueryCollectInputsResponse copy$default(QueryCollectInputsResponse queryCollectInputsResponse, Pending pending, SuccessfullyCompleted successfullyCompleted, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            pending = queryCollectInputsResponse.pending;
        }
        if ((i & 2) != 0) {
            successfullyCompleted = queryCollectInputsResponse.successfully_completed;
        }
        if ((i & 4) != 0) {
            error = queryCollectInputsResponse.failed;
        }
        if ((i & 8) != 0) {
            byteString = queryCollectInputsResponse.unknownFields();
        }
        return queryCollectInputsResponse.copy(pending, successfullyCompleted, error, byteString);
    }

    public final QueryCollectInputsResponse copy(Pending pending, SuccessfullyCompleted successfully_completed, Error failed, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new QueryCollectInputsResponse(pending, successfully_completed, failed, unknownFields);
    }

    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;", "()V", "failed", "Lcom/stripe/proto/model/sdk/Error;", "pending", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;", "successfully_completed", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<QueryCollectInputsResponse, Builder> {
        public Error failed;
        public Pending pending;
        public SuccessfullyCompleted successfully_completed;

        public final Builder pending(Pending pending) {
            this.pending = pending;
            this.successfully_completed = null;
            this.failed = null;
            return this;
        }

        public final Builder successfully_completed(SuccessfullyCompleted successfully_completed) {
            this.successfully_completed = successfully_completed;
            this.pending = null;
            this.failed = null;
            return this;
        }

        public final Builder failed(Error failed) {
            this.failed = failed;
            this.pending = null;
            this.successfully_completed = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public QueryCollectInputsResponse build() {
            return new QueryCollectInputsResponse(this.pending, this.successfully_completed, this.failed, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ QueryCollectInputsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryCollectInputsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<QueryCollectInputsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(QueryCollectInputsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + QueryCollectInputsResponse.Pending.ADAPTER.encodedSizeWithTag(1, value.pending) + QueryCollectInputsResponse.SuccessfullyCompleted.ADAPTER.encodedSizeWithTag(2, value.successfully_completed) + Error.ADAPTER.encodedSizeWithTag(3, value.failed);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, QueryCollectInputsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                QueryCollectInputsResponse.Pending.ADAPTER.encodeWithTag(writer, 1, value.pending);
                QueryCollectInputsResponse.SuccessfullyCompleted.ADAPTER.encodeWithTag(writer, 2, value.successfully_completed);
                Error.ADAPTER.encodeWithTag(writer, 3, value.failed);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 3, value.failed);
                QueryCollectInputsResponse.SuccessfullyCompleted.ADAPTER.encodeWithTag(writer, 2, value.successfully_completed);
                QueryCollectInputsResponse.Pending.ADAPTER.encodeWithTag(writer, 1, value.pending);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public QueryCollectInputsResponse redact(QueryCollectInputsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                QueryCollectInputsResponse.Pending pending = value.pending;
                QueryCollectInputsResponse.Pending pendingRedact = pending != null ? QueryCollectInputsResponse.Pending.ADAPTER.redact(pending) : null;
                QueryCollectInputsResponse.SuccessfullyCompleted successfullyCompleted = value.successfully_completed;
                QueryCollectInputsResponse.SuccessfullyCompleted successfullyCompletedRedact = successfullyCompleted != null ? QueryCollectInputsResponse.SuccessfullyCompleted.ADAPTER.redact(successfullyCompleted) : null;
                Error error = value.failed;
                return value.copy(pendingRedact, successfullyCompletedRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public QueryCollectInputsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                QueryCollectInputsResponse.Pending pendingDecode = null;
                QueryCollectInputsResponse.SuccessfullyCompleted successfullyCompletedDecode = null;
                Error errorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new QueryCollectInputsResponse(pendingDecode, successfullyCompletedDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        pendingDecode = QueryCollectInputsResponse.Pending.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        successfullyCompletedDecode = QueryCollectInputsResponse.SuccessfullyCompleted.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Pending extends Message<Pending, Builder> {
        public static final ProtoAdapter<Pending> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        /* JADX WARN: Multi-variable type inference failed */
        public Pending() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Pending(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Pending(ByteString unknownFields) {
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
            return (other instanceof Pending) && Intrinsics.areEqual(unknownFields(), ((Pending) other).unknownFields());
        }

        public int hashCode() {
            return unknownFields().hashCode();
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            return "Pending{}";
        }

        public static /* synthetic */ Pending copy$default(Pending pending, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                byteString = pending.unknownFields();
            }
            return pending.copy(byteString);
        }

        public final Pending copy(ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Pending(unknownFields);
        }

        /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Pending, Builder> {
            @Override // com.squareup.wire.Message.Builder
            public Pending build() {
                return new Pending(buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Pending build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Pending.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Pending>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$Pending$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(QueryCollectInputsResponse.Pending value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, QueryCollectInputsResponse.Pending value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.Pending value) {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public QueryCollectInputsResponse.Pending redact(QueryCollectInputsResponse.Pending value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public QueryCollectInputsResponse.Pending decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            reader.readUnknownField(iNextTag);
                        } else {
                            return new QueryCollectInputsResponse.Pending(reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Builder;", "inputs", "", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Input", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SuccessfullyCompleted extends Message<SuccessfullyCompleted, Builder> {
        public static final ProtoAdapter<SuccessfullyCompleted> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<Input> inputs;

        /* JADX WARN: Multi-variable type inference failed */
        public SuccessfullyCompleted() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ SuccessfullyCompleted(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SuccessfullyCompleted(List<Input> inputs, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.inputs = Internal.immutableCopyOf("inputs", inputs);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.inputs = this.inputs;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SuccessfullyCompleted)) {
                return false;
            }
            SuccessfullyCompleted successfullyCompleted = (SuccessfullyCompleted) other;
            return Intrinsics.areEqual(unknownFields(), successfullyCompleted.unknownFields()) && Intrinsics.areEqual(this.inputs, successfullyCompleted.inputs);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.inputs.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.inputs.isEmpty()) {
                arrayList.add("inputs=" + this.inputs);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SuccessfullyCompleted{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SuccessfullyCompleted copy$default(SuccessfullyCompleted successfullyCompleted, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = successfullyCompleted.inputs;
            }
            if ((i & 2) != 0) {
                byteString = successfullyCompleted.unknownFields();
            }
            return successfullyCompleted.copy(list, byteString);
        }

        public final SuccessfullyCompleted copy(List<Input> inputs, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SuccessfullyCompleted(inputs, unknownFields);
        }

        /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "()V", "inputs", "", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SuccessfullyCompleted, Builder> {
            public List<Input> inputs = CollectionsKt.emptyList();

            public final Builder inputs(List<Input> inputs) {
                Intrinsics.checkNotNullParameter(inputs, "inputs");
                Internal.checkElementsNotNull(inputs);
                this.inputs = inputs;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SuccessfullyCompleted build() {
                return new SuccessfullyCompleted(this.inputs, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SuccessfullyCompleted build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SuccessfullyCompleted.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SuccessfullyCompleted>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + QueryCollectInputsResponse.SuccessfullyCompleted.Input.ADAPTER.asRepeated().encodedSizeWithTag(1, value.inputs);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.inputs);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.inputs);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public QueryCollectInputsResponse.SuccessfullyCompleted decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new QueryCollectInputsResponse.SuccessfullyCompleted(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(QueryCollectInputsResponse.SuccessfullyCompleted.Input.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public QueryCollectInputsResponse.SuccessfullyCompleted redact(QueryCollectInputsResponse.SuccessfullyCompleted value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m361redactElements(value.inputs, QueryCollectInputsResponse.SuccessfullyCompleted.Input.ADAPTER), ByteString.EMPTY);
                }
            };
        }

        /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
        @Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000b%&'()*+,-./B\u0091\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJ\u0092\u0001\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020$H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Builder;", "type", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;", "custom_text", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;", "required", "", "skipped", "selection", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;", "signature", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;", "email", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;", "numeric", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;", "phone", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;", "toggles", "", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;ZZLcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "CustomText", "Email", "InputType", "Numeric", "Phone", "Selection", "Signature", "Text", "Toggle", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Input extends Message<Input, Builder> {
            public static final ProtoAdapter<Input> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText#ADAPTER", jsonName = "customText", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final CustomText custom_text;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 6, tag = 7)
            public final Email email;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 8, tag = 9)
            public final Numeric numeric;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 9, tag = 10)
            public final Phone phone;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
            public final boolean required;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 4, tag = 5)
            public final Selection selection;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 5, tag = 6)
            public final Signature signature;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
            public final boolean skipped;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 7, tag = 8)
            public final Text text;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 10, tag = 11)
            public final List<Toggle> toggles;

            @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final InputType type;

            public Input() {
                this(null, null, false, false, null, null, null, null, null, null, null, null, 4095, null);
            }

            public /* synthetic */ Input(InputType inputType, CustomText customText, boolean z, boolean z2, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? InputType.INPUT_TYPE_INVALID : inputType, (i & 2) != 0 ? null : customText, (i & 4) != 0 ? false : z, (i & 8) == 0 ? z2 : false, (i & 16) != 0 ? null : selection, (i & 32) != 0 ? null : signature, (i & 64) != 0 ? null : email, (i & 128) != 0 ? null : text, (i & 256) != 0 ? null : numeric, (i & 512) == 0 ? phone : null, (i & 1024) != 0 ? CollectionsKt.emptyList() : list, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Input(InputType type, CustomText customText, boolean z, boolean z2, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List<Toggle> toggles, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(toggles, "toggles");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.type = type;
                this.custom_text = customText;
                this.required = z;
                this.skipped = z2;
                this.selection = selection;
                this.signature = signature;
                this.email = email;
                this.text = text;
                this.numeric = numeric;
                this.phone = phone;
                this.toggles = Internal.immutableCopyOf("toggles", toggles);
                if (Internal.countNonNull(selection, signature, email, text, numeric, phone) > 1) {
                    throw new IllegalArgumentException("At most one of selection, signature, email, text, numeric, phone may be non-null".toString());
                }
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.type = this.type;
                builder.custom_text = this.custom_text;
                builder.required = this.required;
                builder.skipped = this.skipped;
                builder.selection = this.selection;
                builder.signature = this.signature;
                builder.email = this.email;
                builder.text = this.text;
                builder.numeric = this.numeric;
                builder.phone = this.phone;
                builder.toggles = this.toggles;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Input)) {
                    return false;
                }
                Input input = (Input) other;
                return Intrinsics.areEqual(unknownFields(), input.unknownFields()) && this.type == input.type && Intrinsics.areEqual(this.custom_text, input.custom_text) && this.required == input.required && this.skipped == input.skipped && Intrinsics.areEqual(this.selection, input.selection) && Intrinsics.areEqual(this.signature, input.signature) && Intrinsics.areEqual(this.email, input.email) && Intrinsics.areEqual(this.text, input.text) && Intrinsics.areEqual(this.numeric, input.numeric) && Intrinsics.areEqual(this.phone, input.phone) && Intrinsics.areEqual(this.toggles, input.toggles);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
                CustomText customText = this.custom_text;
                int iHashCode2 = (((((iHashCode + (customText != null ? customText.hashCode() : 0)) * 37) + Boolean.hashCode(this.required)) * 37) + Boolean.hashCode(this.skipped)) * 37;
                Selection selection = this.selection;
                int iHashCode3 = (iHashCode2 + (selection != null ? selection.hashCode() : 0)) * 37;
                Signature signature = this.signature;
                int iHashCode4 = (iHashCode3 + (signature != null ? signature.hashCode() : 0)) * 37;
                Email email = this.email;
                int iHashCode5 = (iHashCode4 + (email != null ? email.hashCode() : 0)) * 37;
                Text text = this.text;
                int iHashCode6 = (iHashCode5 + (text != null ? text.hashCode() : 0)) * 37;
                Numeric numeric = this.numeric;
                int iHashCode7 = (iHashCode6 + (numeric != null ? numeric.hashCode() : 0)) * 37;
                Phone phone = this.phone;
                int iHashCode8 = ((iHashCode7 + (phone != null ? phone.hashCode() : 0)) * 37) + this.toggles.hashCode();
                this.hashCode = iHashCode8;
                return iHashCode8;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("type=" + this.type);
                if (this.custom_text != null) {
                    arrayList2.add("custom_text=" + this.custom_text);
                }
                arrayList2.add("required=" + this.required);
                arrayList2.add("skipped=" + this.skipped);
                if (this.selection != null) {
                    arrayList2.add("selection=" + this.selection);
                }
                if (this.signature != null) {
                    arrayList2.add("signature=" + this.signature);
                }
                if (this.email != null) {
                    arrayList2.add("email=" + this.email);
                }
                if (this.text != null) {
                    arrayList2.add("text=" + this.text);
                }
                if (this.numeric != null) {
                    arrayList2.add("numeric=" + this.numeric);
                }
                if (this.phone != null) {
                    arrayList2.add("phone=" + this.phone);
                }
                if (!this.toggles.isEmpty()) {
                    arrayList2.add("toggles=" + this.toggles);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Input{", "}", 0, null, null, 56, null);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Input copy$default(Input input, InputType inputType, CustomText customText, boolean z, boolean z2, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List list, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    inputType = input.type;
                }
                if ((i & 2) != 0) {
                    customText = input.custom_text;
                }
                if ((i & 4) != 0) {
                    z = input.required;
                }
                if ((i & 8) != 0) {
                    z2 = input.skipped;
                }
                if ((i & 16) != 0) {
                    selection = input.selection;
                }
                if ((i & 32) != 0) {
                    signature = input.signature;
                }
                if ((i & 64) != 0) {
                    email = input.email;
                }
                if ((i & 128) != 0) {
                    text = input.text;
                }
                if ((i & 256) != 0) {
                    numeric = input.numeric;
                }
                if ((i & 512) != 0) {
                    phone = input.phone;
                }
                if ((i & 1024) != 0) {
                    list = input.toggles;
                }
                if ((i & 2048) != 0) {
                    byteString = input.unknownFields();
                }
                List list2 = list;
                ByteString byteString2 = byteString;
                Numeric numeric2 = numeric;
                Phone phone2 = phone;
                Email email2 = email;
                Text text2 = text;
                Selection selection2 = selection;
                Signature signature2 = signature;
                return input.copy(inputType, customText, z, z2, selection2, signature2, email2, text2, numeric2, phone2, list2, byteString2);
            }

            public final Input copy(InputType type, CustomText custom_text, boolean required, boolean skipped, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List<Toggle> toggles, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(toggles, "toggles");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Input(type, custom_text, required, skipped, selection, signature, email, text, numeric, phone, toggles, unknownFields);
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0014\u0010\u0015\u001a\u00020\u00002\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;", "()V", "custom_text", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;", "email", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;", "numeric", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;", "phone", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;", "required", "", "selection", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;", "signature", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;", "skipped", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;", "toggles", "", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;", "type", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Input, Builder> {
                public CustomText custom_text;
                public Email email;
                public Numeric numeric;
                public Phone phone;
                public boolean required;
                public Selection selection;
                public Signature signature;
                public boolean skipped;
                public Text text;
                public InputType type = InputType.INPUT_TYPE_INVALID;
                public List<Toggle> toggles = CollectionsKt.emptyList();

                public final Builder type(InputType type) {
                    Intrinsics.checkNotNullParameter(type, "type");
                    this.type = type;
                    return this;
                }

                public final Builder custom_text(CustomText custom_text) {
                    this.custom_text = custom_text;
                    return this;
                }

                public final Builder required(boolean required) {
                    this.required = required;
                    return this;
                }

                public final Builder skipped(boolean skipped) {
                    this.skipped = skipped;
                    return this;
                }

                public final Builder toggles(List<Toggle> toggles) {
                    Intrinsics.checkNotNullParameter(toggles, "toggles");
                    Internal.checkElementsNotNull(toggles);
                    this.toggles = toggles;
                    return this;
                }

                public final Builder selection(Selection selection) {
                    this.selection = selection;
                    this.signature = null;
                    this.email = null;
                    this.text = null;
                    this.numeric = null;
                    this.phone = null;
                    return this;
                }

                public final Builder signature(Signature signature) {
                    this.signature = signature;
                    this.selection = null;
                    this.email = null;
                    this.text = null;
                    this.numeric = null;
                    this.phone = null;
                    return this;
                }

                public final Builder email(Email email) {
                    this.email = email;
                    this.selection = null;
                    this.signature = null;
                    this.text = null;
                    this.numeric = null;
                    this.phone = null;
                    return this;
                }

                public final Builder text(Text text) {
                    this.text = text;
                    this.selection = null;
                    this.signature = null;
                    this.email = null;
                    this.numeric = null;
                    this.phone = null;
                    return this;
                }

                public final Builder numeric(Numeric numeric) {
                    this.numeric = numeric;
                    this.selection = null;
                    this.signature = null;
                    this.email = null;
                    this.text = null;
                    this.phone = null;
                    return this;
                }

                public final Builder phone(Phone phone) {
                    this.phone = phone;
                    this.selection = null;
                    this.signature = null;
                    this.email = null;
                    this.text = null;
                    this.numeric = null;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Input build() {
                    return new Input(this.type, this.custom_text, this.required, this.skipped, this.selection, this.signature, this.email, this.text, this.numeric, this.phone, this.toggles, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Input build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Input.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Input>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.type != QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.INPUT_TYPE_INVALID) {
                            size += QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.ADAPTER.encodedSizeWithTag(1, value.type);
                        }
                        if (value.custom_text != null) {
                            size += QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText.ADAPTER.encodedSizeWithTag(2, value.custom_text);
                        }
                        if (value.required) {
                            size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.required));
                        }
                        if (value.skipped) {
                            size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.skipped));
                        }
                        return size + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.ADAPTER.encodedSizeWithTag(5, value.selection) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature.ADAPTER.encodedSizeWithTag(6, value.signature) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email.ADAPTER.encodedSizeWithTag(7, value.email) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text.ADAPTER.encodedSizeWithTag(8, value.text) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric.ADAPTER.encodedSizeWithTag(9, value.numeric) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone.ADAPTER.encodedSizeWithTag(10, value.phone) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.ADAPTER.asRepeated().encodedSizeWithTag(11, value.toggles);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.type != QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.INPUT_TYPE_INVALID) {
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                        }
                        if (value.custom_text != null) {
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                        }
                        if (value.required) {
                            ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                        }
                        if (value.skipped) {
                            ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.skipped));
                        }
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 11, value.toggles);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.ADAPTER.encodeWithTag(writer, 5, value.selection);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature.ADAPTER.encodeWithTag(writer, 6, value.signature);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email.ADAPTER.encodeWithTag(writer, 7, value.email);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text.ADAPTER.encodeWithTag(writer, 8, value.text);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric.ADAPTER.encodeWithTag(writer, 9, value.numeric);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone.ADAPTER.encodeWithTag(writer, 10, value.phone);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone.ADAPTER.encodeWithTag(writer, 10, value.phone);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric.ADAPTER.encodeWithTag(writer, 9, value.numeric);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text.ADAPTER.encodeWithTag(writer, 8, value.text);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email.ADAPTER.encodeWithTag(writer, 7, value.email);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature.ADAPTER.encodeWithTag(writer, 6, value.signature);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.ADAPTER.encodeWithTag(writer, 5, value.selection);
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 11, value.toggles);
                        if (value.skipped) {
                            ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.skipped));
                        }
                        if (value.required) {
                            ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                        }
                        if (value.custom_text != null) {
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                        }
                        if (value.type != QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.INPUT_TYPE_INVALID) {
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public QueryCollectInputsResponse.SuccessfullyCompleted.Input decode(ProtoReader reader) throws IOException {
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType inputType;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText customText;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection selection;
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType inputType2 = QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.INPUT_TYPE_INVALID;
                        ArrayList arrayList = new ArrayList();
                        long jBeginMessage = reader.beginMessage();
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection selectionDecode = null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature signatureDecode = null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email emailDecode = null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text textDecode = null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric numericDecode = null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone phoneDecode = null;
                        boolean zBooleanValue = false;
                        boolean zBooleanValue2 = false;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType inputTypeDecode = inputType2;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText customTextDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                switch (iNextTag) {
                                    case 1:
                                        try {
                                            inputTypeDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.ADAPTER.decode(reader);
                                            continue;
                                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                            inputType = inputTypeDecode;
                                            customText = customTextDecode;
                                            selection = selectionDecode;
                                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                            inputTypeDecode = inputType;
                                            selectionDecode = selection;
                                            customTextDecode = customText;
                                        }
                                        break;
                                    case 2:
                                        customTextDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText.ADAPTER.decode(reader);
                                        continue;
                                    case 3:
                                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                        continue;
                                    case 4:
                                        zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                        continue;
                                    case 5:
                                        selectionDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.ADAPTER.decode(reader);
                                        continue;
                                    case 6:
                                        signatureDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature.ADAPTER.decode(reader);
                                        continue;
                                    case 7:
                                        emailDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email.ADAPTER.decode(reader);
                                        continue;
                                    case 8:
                                        textDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text.ADAPTER.decode(reader);
                                        continue;
                                    case 9:
                                        numericDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric.ADAPTER.decode(reader);
                                        continue;
                                    case 10:
                                        phoneDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone.ADAPTER.decode(reader);
                                        continue;
                                    case 11:
                                        arrayList.add(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.ADAPTER.decode(reader));
                                        inputType = inputTypeDecode;
                                        customText = customTextDecode;
                                        selection = selectionDecode;
                                        break;
                                    default:
                                        inputType = inputTypeDecode;
                                        customText = customTextDecode;
                                        selection = selectionDecode;
                                        reader.readUnknownField(iNextTag);
                                        break;
                                }
                                inputTypeDecode = inputType;
                                selectionDecode = selection;
                                customTextDecode = customText;
                            } else {
                                return new QueryCollectInputsResponse.SuccessfullyCompleted.Input(inputTypeDecode, customTextDecode, zBooleanValue, zBooleanValue2, selectionDecode, signatureDecode, emailDecode, textDecode, numericDecode, phoneDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public QueryCollectInputsResponse.SuccessfullyCompleted.Input redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText customText = value.custom_text;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText customTextRedact = customText != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText.ADAPTER.redact(customText) : null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection selection = value.selection;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection selectionRedact = selection != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.ADAPTER.redact(selection) : null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature signature = value.signature;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature signatureRedact = signature != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature.ADAPTER.redact(signature) : null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email email = value.email;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email emailRedact = email != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email.ADAPTER.redact(email) : null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text text = value.text;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text textRedact = text != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text.ADAPTER.redact(text) : null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric numeric = value.numeric;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric numericRedact = numeric != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric.ADAPTER.redact(numeric) : null;
                        QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone phone = value.phone;
                        return QueryCollectInputsResponse.SuccessfullyCompleted.Input.copy$default(value, null, customTextRedact, false, false, selectionRedact, signatureRedact, emailRedact, textRedact, numericRedact, phone != null ? QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone.ADAPTER.redact(phone) : null, Internal.m361redactElements(value.toggles, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.ADAPTER), ByteString.EMPTY, 13, null);
                    }
                };
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Signature extends Message<Signature, Builder> {
                public static final ProtoAdapter<Signature> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
                public final String value_;

                /* JADX WARN: Multi-variable type inference failed */
                public Signature() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                public /* synthetic */ Signature(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Signature(String str, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.value_ = str;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Signature)) {
                        return false;
                    }
                    Signature signature = (Signature) other;
                    return Intrinsics.areEqual(unknownFields(), signature.unknownFields()) && Intrinsics.areEqual(this.value_, signature.value_);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.value_;
                    int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                    this.hashCode = iHashCode2;
                    return iHashCode2;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Signature{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Signature copy$default(Signature signature, String str, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = signature.value_;
                    }
                    if ((i & 2) != 0) {
                        byteString = signature.unknownFields();
                    }
                    return signature.copy(str, byteString);
                }

                public final Signature copy(String value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Signature(value_, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Signature, Builder> {
                    public String value_;

                    public final Builder value_(String value_) {
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Signature build() {
                        return new Signature(this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Signature build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Signature.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Signature>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return value.copy(null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Builder;", "value_", "", "choices", "", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Choice", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Selection extends Message<Selection, Builder> {
                public static final ProtoAdapter<Selection> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
                public final List<Choice> choices;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
                public final String value_;

                public Selection() {
                    this(null, null, null, 7, null);
                }

                public /* synthetic */ Selection(String str, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Selection(String str, List<Choice> choices, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(choices, "choices");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.value_ = str;
                    this.choices = Internal.immutableCopyOf("choices", choices);
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.value_ = this.value_;
                    builder.choices = this.choices;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Selection)) {
                        return false;
                    }
                    Selection selection = (Selection) other;
                    return Intrinsics.areEqual(unknownFields(), selection.unknownFields()) && Intrinsics.areEqual(this.value_, selection.value_) && Intrinsics.areEqual(this.choices, selection.choices);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.value_;
                    int iHashCode2 = ((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + this.choices.hashCode();
                    this.hashCode = iHashCode2;
                    return iHashCode2;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    if (!this.choices.isEmpty()) {
                        arrayList.add("choices=" + this.choices);
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Selection{", "}", 0, null, null, 56, null);
                }

                /* JADX WARN: Multi-variable type inference failed */
                public static /* synthetic */ Selection copy$default(Selection selection, String str, List list, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = selection.value_;
                    }
                    if ((i & 2) != 0) {
                        list = selection.choices;
                    }
                    if ((i & 4) != 0) {
                        byteString = selection.unknownFields();
                    }
                    return selection.copy(str, list, byteString);
                }

                public final Selection copy(String value_, List<Choice> choices, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(choices, "choices");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Selection(value_, choices, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;", "()V", "choices", "", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice;", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Selection, Builder> {
                    public List<Choice> choices = CollectionsKt.emptyList();
                    public String value_;

                    public final Builder value_(String value_) {
                        this.value_ = value_;
                        return this;
                    }

                    public final Builder choices(List<Choice> choices) {
                        Intrinsics.checkNotNullParameter(choices, "choices");
                        Internal.checkElementsNotNull(choices);
                        this.choices = choices;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Selection build() {
                        return new Selection(this.value_, this.choices, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Selection build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Selection.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Selection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (value.value_ != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_);
                            }
                            return size + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.ADAPTER.asRepeated().encodedSizeWithTag(2, value.choices);
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.choices);
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.choices);
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            ArrayList arrayList = new ArrayList();
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection(strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 2) {
                                    arrayList.add(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.ADAPTER.decode(reader));
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return value.copy(null, Internal.m361redactElements(value.choices, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.ADAPTER), ByteString.EMPTY);
                        }
                    };
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Builder;", "style", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Style", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Choice extends Message<Choice, Builder> {
                    public static final ProtoAdapter<Choice> ADAPTER;

                    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                    public static final Companion INSTANCE = new Companion(null);
                    private static final long serialVersionUID = 0;

                    @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
                    public final Style style;

                    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
                    public final String value_;

                    public Choice() {
                        this(null, null, null, 7, null);
                    }

                    public /* synthetic */ Choice(Style style, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i & 1) != 0 ? Style.STYLE_INVALID : style, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public Choice(Style style, String value_, ByteString unknownFields) {
                        super(ADAPTER, unknownFields);
                        Intrinsics.checkNotNullParameter(style, "style");
                        Intrinsics.checkNotNullParameter(value_, "value_");
                        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                        this.style = style;
                        this.value_ = value_;
                    }

                    @Override // com.squareup.wire.Message
                    public Builder newBuilder() {
                        Builder builder = new Builder();
                        builder.style = this.style;
                        builder.value_ = this.value_;
                        builder.addUnknownFields(unknownFields());
                        return builder;
                    }

                    public boolean equals(Object other) {
                        if (other == this) {
                            return true;
                        }
                        if (!(other instanceof Choice)) {
                            return false;
                        }
                        Choice choice = (Choice) other;
                        return Intrinsics.areEqual(unknownFields(), choice.unknownFields()) && this.style == choice.style && Intrinsics.areEqual(this.value_, choice.value_);
                    }

                    public int hashCode() {
                        int i = this.hashCode;
                        if (i != 0) {
                            return i;
                        }
                        int iHashCode = (((unknownFields().hashCode() * 37) + this.style.hashCode()) * 37) + this.value_.hashCode();
                        this.hashCode = iHashCode;
                        return iHashCode;
                    }

                    @Override // com.squareup.wire.Message
                    public String toString() {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = arrayList;
                        arrayList2.add("style=" + this.style);
                        arrayList2.add("value_=" + Internal.sanitize(this.value_));
                        return CollectionsKt.joinToString$default(arrayList, ", ", "Choice{", "}", 0, null, null, 56, null);
                    }

                    public static /* synthetic */ Choice copy$default(Choice choice, Style style, String str, ByteString byteString, int i, Object obj) {
                        if ((i & 1) != 0) {
                            style = choice.style;
                        }
                        if ((i & 2) != 0) {
                            str = choice.value_;
                        }
                        if ((i & 4) != 0) {
                            byteString = choice.unknownFields();
                        }
                        return choice.copy(style, str, byteString);
                    }

                    public final Choice copy(Style style, String value_, ByteString unknownFields) {
                        Intrinsics.checkNotNullParameter(style, "style");
                        Intrinsics.checkNotNullParameter(value_, "value_");
                        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                        return new Choice(style, value_, unknownFields);
                    }

                    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice;", "()V", "style", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style;", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                    public static final class Builder extends Message.Builder<Choice, Builder> {
                        public Style style = Style.STYLE_INVALID;
                        public String value_ = "";

                        public final Builder style(Style style) {
                            Intrinsics.checkNotNullParameter(style, "style");
                            this.style = style;
                            return this;
                        }

                        public final Builder value_(String value_) {
                            Intrinsics.checkNotNullParameter(value_, "value_");
                            this.value_ = value_;
                            return this;
                        }

                        @Override // com.squareup.wire.Message.Builder
                        public Choice build() {
                            return new Choice(this.style, this.value_, buildUnknownFields());
                        }
                    }

                    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                    public static final class Companion {
                        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                            this();
                        }

                        private Companion() {
                        }

                        public final /* synthetic */ Choice build(Function1<? super Builder, Unit> body) {
                            Intrinsics.checkNotNullParameter(body, "body");
                            Builder builder = new Builder();
                            body.invoke(builder);
                            return builder.build();
                        }
                    }

                    static {
                        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Choice.class);
                        final Syntax syntax = Syntax.PROTO_3;
                        ADAPTER = new ProtoAdapter<Choice>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Companion$ADAPTER$1
                            @Override // com.squareup.wire.ProtoAdapter
                            public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice value) {
                                Intrinsics.checkNotNullParameter(value, "value");
                                int size = value.unknownFields().size();
                                if (value.style != QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.STYLE_INVALID) {
                                    size += QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.ADAPTER.encodedSizeWithTag(1, value.style);
                                }
                                return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.value_) : size;
                            }

                            @Override // com.squareup.wire.ProtoAdapter
                            public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice value) throws IOException {
                                Intrinsics.checkNotNullParameter(writer, "writer");
                                Intrinsics.checkNotNullParameter(value, "value");
                                if (value.style != QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.STYLE_INVALID) {
                                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                                }
                                if (!Intrinsics.areEqual(value.value_, "")) {
                                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                                }
                                writer.writeBytes(value.unknownFields());
                            }

                            @Override // com.squareup.wire.ProtoAdapter
                            public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice value) throws IOException {
                                Intrinsics.checkNotNullParameter(writer, "writer");
                                Intrinsics.checkNotNullParameter(value, "value");
                                writer.writeBytes(value.unknownFields());
                                if (!Intrinsics.areEqual(value.value_, "")) {
                                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                                }
                                if (value.style != QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.STYLE_INVALID) {
                                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                                }
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // com.squareup.wire.ProtoAdapter
                            public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice decode(ProtoReader reader) throws IOException {
                                Intrinsics.checkNotNullParameter(reader, "reader");
                                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style styleDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.STYLE_INVALID;
                                long jBeginMessage = reader.beginMessage();
                                String strDecode = "";
                                while (true) {
                                    int iNextTag = reader.nextTag();
                                    if (iNextTag == -1) {
                                        return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice(styleDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                    }
                                    if (iNextTag == 1) {
                                        try {
                                            styleDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.ADAPTER.decode(reader);
                                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                        }
                                    } else if (iNextTag == 2) {
                                        strDecode = ProtoAdapter.STRING.decode(reader);
                                    } else {
                                        reader.readUnknownField(iNextTag);
                                    }
                                }
                            }

                            @Override // com.squareup.wire.ProtoAdapter
                            public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice value) {
                                Intrinsics.checkNotNullParameter(value, "value");
                                return QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                            }
                        };
                    }

                    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
                    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
                    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STYLE_INVALID", "PRIMARY", "SECONDARY", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                    public static final class Style implements WireEnum {
                        private static final /* synthetic */ EnumEntries $ENTRIES;
                        private static final /* synthetic */ Style[] $VALUES;
                        public static final ProtoAdapter<Style> ADAPTER;

                        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                        public static final Companion INSTANCE;
                        public static final Style PRIMARY;
                        public static final Style SECONDARY;
                        public static final Style STYLE_INVALID;
                        private final int value;

                        private static final /* synthetic */ Style[] $values() {
                            return new Style[]{STYLE_INVALID, PRIMARY, SECONDARY};
                        }

                        @JvmStatic
                        public static final Style fromValue(int i) {
                            return INSTANCE.fromValue(i);
                        }

                        public static EnumEntries<Style> getEntries() {
                            return $ENTRIES;
                        }

                        public static Style valueOf(String str) {
                            return (Style) Enum.valueOf(Style.class, str);
                        }

                        public static Style[] values() {
                            return (Style[]) $VALUES.clone();
                        }

                        private Style(String str, int i, int i2) {
                            this.value = i2;
                        }

                        @Override // com.squareup.wire.WireEnum
                        public int getValue() {
                            return this.value;
                        }

                        static {
                            final Style style = new Style("STYLE_INVALID", 0, 0);
                            STYLE_INVALID = style;
                            PRIMARY = new Style("PRIMARY", 1, 1);
                            SECONDARY = new Style("SECONDARY", 2, 2);
                            Style[] styleArr$values = $values();
                            $VALUES = styleArr$values;
                            $ENTRIES = EnumEntriesKt.enumEntries(styleArr$values);
                            INSTANCE = new Companion(null);
                            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Style.class);
                            final Syntax syntax = Syntax.PROTO_3;
                            ADAPTER = new EnumAdapter<Style>(orCreateKotlinClass, syntax, style) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style$Companion$ADAPTER$1
                                {
                                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style style2 = style;
                                }

                                /* JADX INFO: Access modifiers changed from: protected */
                                @Override // com.squareup.wire.EnumAdapter
                                public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style fromValue(int value) {
                                    return QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection.Choice.Style.INSTANCE.fromValue(value);
                                }
                            };
                        }

                        /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection$Choice$Style;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                        public static final class Companion {
                            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                                this();
                            }

                            private Companion() {
                            }

                            @JvmStatic
                            public final Style fromValue(int value) {
                                if (value == 0) {
                                    return Style.STYLE_INVALID;
                                }
                                if (value == 1) {
                                    return Style.PRIMARY;
                                }
                                if (value != 2) {
                                    return null;
                                }
                                return Style.SECONDARY;
                            }
                        }
                    }
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Email extends Message<Email, Builder> {
                public static final ProtoAdapter<Email> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
                public final String value_;

                /* JADX WARN: Multi-variable type inference failed */
                public Email() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                public /* synthetic */ Email(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Email(String str, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.value_ = str;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Email)) {
                        return false;
                    }
                    Email email = (Email) other;
                    return Intrinsics.areEqual(unknownFields(), email.unknownFields()) && Intrinsics.areEqual(this.value_, email.value_);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.value_;
                    int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                    this.hashCode = iHashCode2;
                    return iHashCode2;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Email{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Email copy$default(Email email, String str, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = email.value_;
                    }
                    if ((i & 2) != 0) {
                        byteString = email.unknownFields();
                    }
                    return email.copy(str, byteString);
                }

                public final Email copy(String value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Email(value_, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Email, Builder> {
                    public String value_;

                    public final Builder value_(String value_) {
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Email build() {
                        return new Email(this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Email build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Email.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Email>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return value.copy(null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Text extends Message<Text, Builder> {
                public static final ProtoAdapter<Text> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
                public final String value_;

                /* JADX WARN: Multi-variable type inference failed */
                public Text() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                public /* synthetic */ Text(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Text(String str, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.value_ = str;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Text)) {
                        return false;
                    }
                    Text text = (Text) other;
                    return Intrinsics.areEqual(unknownFields(), text.unknownFields()) && Intrinsics.areEqual(this.value_, text.value_);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.value_;
                    int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                    this.hashCode = iHashCode2;
                    return iHashCode2;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Text{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Text copy$default(Text text, String str, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = text.value_;
                    }
                    if ((i & 2) != 0) {
                        byteString = text.unknownFields();
                    }
                    return text.copy(str, byteString);
                }

                public final Text copy(String value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Text(value_, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Text, Builder> {
                    public String value_;

                    public final Builder value_(String value_) {
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Text build() {
                        return new Text(this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Text build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Text.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Text>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return value.copy(null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Numeric extends Message<Numeric, Builder> {
                public static final ProtoAdapter<Numeric> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
                public final String value_;

                /* JADX WARN: Multi-variable type inference failed */
                public Numeric() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                public /* synthetic */ Numeric(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Numeric(String str, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.value_ = str;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Numeric)) {
                        return false;
                    }
                    Numeric numeric = (Numeric) other;
                    return Intrinsics.areEqual(unknownFields(), numeric.unknownFields()) && Intrinsics.areEqual(this.value_, numeric.value_);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.value_;
                    int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                    this.hashCode = iHashCode2;
                    return iHashCode2;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Numeric{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Numeric copy$default(Numeric numeric, String str, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = numeric.value_;
                    }
                    if ((i & 2) != 0) {
                        byteString = numeric.unknownFields();
                    }
                    return numeric.copy(str, byteString);
                }

                public final Numeric copy(String value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Numeric(value_, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Numeric, Builder> {
                    public String value_;

                    public final Builder value_(String value_) {
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Numeric build() {
                        return new Numeric(this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Numeric build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Numeric.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Numeric>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return value.copy(null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Phone extends Message<Phone, Builder> {
                public static final ProtoAdapter<Phone> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
                public final String value_;

                /* JADX WARN: Multi-variable type inference failed */
                public Phone() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                public /* synthetic */ Phone(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Phone(String str, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.value_ = str;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Phone)) {
                        return false;
                    }
                    Phone phone = (Phone) other;
                    return Intrinsics.areEqual(unknownFields(), phone.unknownFields()) && Intrinsics.areEqual(this.value_, phone.value_);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.value_;
                    int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                    this.hashCode = iHashCode2;
                    return iHashCode2;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Phone{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Phone copy$default(Phone phone, String str, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = phone.value_;
                    }
                    if ((i & 2) != 0) {
                        byteString = phone.unknownFields();
                    }
                    return phone.copy(str, byteString);
                }

                public final Phone copy(String value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Phone(value_, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Phone, Builder> {
                    public String value_;

                    public final Builder value_(String value_) {
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Phone build() {
                        return new Phone(this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Phone build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Phone.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Phone>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.value_ != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return value.copy(null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ@\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Builder;", LinkHeader.Parameters.Title, "", "description", "default_value", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;", "value_", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Value", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Toggle extends Message<Toggle, Builder> {
                public static final ProtoAdapter<Toggle> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value#ADAPTER", jsonName = "defaultValue", schemaIndex = 2, tag = 3)
                public final Value default_value;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
                public final String description;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
                public final String title;

                @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value#ADAPTER", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 4)
                public final Value value_;

                public Toggle() {
                    this(null, null, null, null, null, 31, null);
                }

                public /* synthetic */ Toggle(String str, String str2, Value value, Value value2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : value, (i & 8) != 0 ? null : value2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Toggle(String str, String str2, Value value, Value value2, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.title = str;
                    this.description = str2;
                    this.default_value = value;
                    this.value_ = value2;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.title = this.title;
                    builder.description = this.description;
                    builder.default_value = this.default_value;
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Toggle)) {
                        return false;
                    }
                    Toggle toggle = (Toggle) other;
                    return Intrinsics.areEqual(unknownFields(), toggle.unknownFields()) && Intrinsics.areEqual(this.title, toggle.title) && Intrinsics.areEqual(this.description, toggle.description) && this.default_value == toggle.default_value && this.value_ == toggle.value_;
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.title;
                    int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                    String str2 = this.description;
                    int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
                    Value value = this.default_value;
                    int iHashCode4 = (iHashCode3 + (value != null ? value.hashCode() : 0)) * 37;
                    Value value2 = this.value_;
                    int iHashCode5 = iHashCode4 + (value2 != null ? value2.hashCode() : 0);
                    this.hashCode = iHashCode5;
                    return iHashCode5;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.title != null) {
                        arrayList.add("title=" + this.title);
                    }
                    if (this.description != null) {
                        arrayList.add("description=" + this.description);
                    }
                    if (this.default_value != null) {
                        arrayList.add("default_value=" + this.default_value);
                    }
                    if (this.value_ != null) {
                        arrayList.add("value_=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Toggle{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Toggle copy$default(Toggle toggle, String str, String str2, Value value, Value value2, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = toggle.title;
                    }
                    if ((i & 2) != 0) {
                        str2 = toggle.description;
                    }
                    if ((i & 4) != 0) {
                        value = toggle.default_value;
                    }
                    if ((i & 8) != 0) {
                        value2 = toggle.value_;
                    }
                    if ((i & 16) != 0) {
                        byteString = toggle.unknownFields();
                    }
                    ByteString byteString2 = byteString;
                    Value value3 = value;
                    return toggle.copy(str, str2, value3, value2, byteString2);
                }

                public final Toggle copy(String title, String description, Value default_value, Value value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Toggle(title, description, default_value, value_, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;", "()V", "default_value", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;", "description", "", LinkHeader.Parameters.Title, "value_", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Toggle, Builder> {
                    public Value default_value;
                    public String description;
                    public String title;
                    public Value value_;

                    public final Builder title(String title) {
                        this.title = title;
                        return this;
                    }

                    public final Builder description(String description) {
                        this.description = description;
                        return this;
                    }

                    public final Builder default_value(Value default_value) {
                        this.default_value = default_value;
                        return this;
                    }

                    public final Builder value_(Value value_) {
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Toggle build() {
                        return new Toggle(this.title, this.description, this.default_value, this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Toggle build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Toggle.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Toggle>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (value.title != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.title);
                            }
                            if (value.description != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.description);
                            }
                            return size + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.encodedSizeWithTag(3, value.default_value) + QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.encodedSizeWithTag(4, value.value_);
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.title != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.title);
                            }
                            if (value.description != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                            }
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 4, value.value_);
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 4, value.value_);
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                            if (value.description != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                            }
                            if (value.title != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.title);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            String str = value.title;
                            String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                            String str2 = value.description;
                            return QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.copy$default(value, strRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, null, null, ByteString.EMPTY, 4, null);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            String strDecode2 = null;
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value valueDecode = null;
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value valueDecode2 = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle(strDecode, strDecode2, valueDecode, valueDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 2) {
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 3) {
                                    try {
                                        valueDecode = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    }
                                } else if (iNextTag == 4) {
                                    try {
                                        valueDecode2 = QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    }
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }

                /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
                /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "VALUE_INVALID", "ENABLED", "DISABLED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Value implements WireEnum {
                    private static final /* synthetic */ EnumEntries $ENTRIES;
                    private static final /* synthetic */ Value[] $VALUES;
                    public static final ProtoAdapter<Value> ADAPTER;

                    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                    public static final Companion INSTANCE;
                    public static final Value DISABLED;
                    public static final Value ENABLED;
                    public static final Value VALUE_INVALID;
                    private final int value;

                    private static final /* synthetic */ Value[] $values() {
                        return new Value[]{VALUE_INVALID, ENABLED, DISABLED};
                    }

                    @JvmStatic
                    public static final Value fromValue(int i) {
                        return INSTANCE.fromValue(i);
                    }

                    public static EnumEntries<Value> getEntries() {
                        return $ENTRIES;
                    }

                    public static Value valueOf(String str) {
                        return (Value) Enum.valueOf(Value.class, str);
                    }

                    public static Value[] values() {
                        return (Value[]) $VALUES.clone();
                    }

                    private Value(String str, int i, int i2) {
                        this.value = i2;
                    }

                    @Override // com.squareup.wire.WireEnum
                    public int getValue() {
                        return this.value;
                    }

                    static {
                        final Value value = new Value("VALUE_INVALID", 0, 0);
                        VALUE_INVALID = value;
                        ENABLED = new Value("ENABLED", 1, 1);
                        DISABLED = new Value("DISABLED", 2, 2);
                        Value[] valueArr$values = $values();
                        $VALUES = valueArr$values;
                        $ENTRIES = EnumEntriesKt.enumEntries(valueArr$values);
                        INSTANCE = new Companion(null);
                        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Value.class);
                        final Syntax syntax = Syntax.PROTO_3;
                        ADAPTER = new EnumAdapter<Value>(orCreateKotlinClass, syntax, value) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value$Companion$ADAPTER$1
                            {
                                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value value2 = value;
                            }

                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // com.squareup.wire.EnumAdapter
                            public QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value fromValue(int value2) {
                                return QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.INSTANCE.fromValue(value2);
                            }
                        };
                    }

                    /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                    public static final class Companion {
                        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                            this();
                        }

                        private Companion() {
                        }

                        @JvmStatic
                        public final Value fromValue(int value) {
                            if (value == 0) {
                                return Value.VALUE_INVALID;
                            }
                            if (value == 1) {
                                return Value.ENABLED;
                            }
                            if (value != 2) {
                                return null;
                            }
                            return Value.DISABLED;
                        }
                    }
                }
            }

            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ>\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText$Builder;", LinkHeader.Parameters.Title, "", "description", "submit_button", "skip_button", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class CustomText extends Message<CustomText, Builder> {
                public static final ProtoAdapter<CustomText> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
                public final String description;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "skipButton", schemaIndex = 3, tag = 4)
                public final String skip_button;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "submitButton", schemaIndex = 2, tag = 3)
                public final String submit_button;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
                public final String title;

                public CustomText() {
                    this(null, null, null, null, null, 31, null);
                }

                public /* synthetic */ CustomText(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CustomText(String title, String str, String str2, String str3, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(title, "title");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.title = title;
                    this.description = str;
                    this.submit_button = str2;
                    this.skip_button = str3;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.title = this.title;
                    builder.description = this.description;
                    builder.submit_button = this.submit_button;
                    builder.skip_button = this.skip_button;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof CustomText)) {
                        return false;
                    }
                    CustomText customText = (CustomText) other;
                    return Intrinsics.areEqual(unknownFields(), customText.unknownFields()) && Intrinsics.areEqual(this.title, customText.title) && Intrinsics.areEqual(this.description, customText.description) && Intrinsics.areEqual(this.submit_button, customText.submit_button) && Intrinsics.areEqual(this.skip_button, customText.skip_button);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = ((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37;
                    String str = this.description;
                    int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                    String str2 = this.submit_button;
                    int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
                    String str3 = this.skip_button;
                    int iHashCode4 = iHashCode3 + (str3 != null ? str3.hashCode() : 0);
                    this.hashCode = iHashCode4;
                    return iHashCode4;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add("title=" + Internal.sanitize(this.title));
                    if (this.description != null) {
                        arrayList2.add("description=" + this.description);
                    }
                    if (this.submit_button != null) {
                        arrayList2.add("submit_button=" + this.submit_button);
                    }
                    if (this.skip_button != null) {
                        arrayList2.add("skip_button=" + this.skip_button);
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "CustomText{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ CustomText copy$default(CustomText customText, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = customText.title;
                    }
                    if ((i & 2) != 0) {
                        str2 = customText.description;
                    }
                    if ((i & 4) != 0) {
                        str3 = customText.submit_button;
                    }
                    if ((i & 8) != 0) {
                        str4 = customText.skip_button;
                    }
                    if ((i & 16) != 0) {
                        byteString = customText.unknownFields();
                    }
                    ByteString byteString2 = byteString;
                    String str5 = str3;
                    return customText.copy(str, str2, str5, str4, byteString2);
                }

                public final CustomText copy(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(title, "title");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new CustomText(title, description, submit_button, skip_button, unknownFields);
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;", "()V", "description", "", "skip_button", "submit_button", LinkHeader.Parameters.Title, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<CustomText, Builder> {
                    public String description;
                    public String skip_button;
                    public String submit_button;
                    public String title = "";

                    public final Builder title(String title) {
                        Intrinsics.checkNotNullParameter(title, "title");
                        this.title = title;
                        return this;
                    }

                    public final Builder description(String description) {
                        this.description = description;
                        return this;
                    }

                    public final Builder submit_button(String submit_button) {
                        this.submit_button = submit_button;
                        return this;
                    }

                    public final Builder skip_button(String skip_button) {
                        this.skip_button = skip_button;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public CustomText build() {
                        return new CustomText(this.title, this.description, this.submit_button, this.skip_button, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ CustomText build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CustomText.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<CustomText>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$CustomText$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (!Intrinsics.areEqual(value.title, "")) {
                                size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                            }
                            if (value.description != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.description);
                            }
                            if (value.submit_button != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.submit_button);
                            }
                            return value.skip_button != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.skip_button) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (!Intrinsics.areEqual(value.title, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                            }
                            if (value.description != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                            }
                            if (value.submit_button != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.submit_button);
                            }
                            if (value.skip_button != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.skip_button);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.skip_button != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.skip_button);
                            }
                            if (value.submit_button != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.submit_button);
                            }
                            if (value.description != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                            }
                            if (Intrinsics.areEqual(value.title, "")) {
                                return;
                            }
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText redact(QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            String str = value.description;
                            String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                            String str2 = value.submit_button;
                            String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                            String str3 = value.skip_button;
                            return QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText.copy$default(value, null, strRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY, 1, null);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = "";
                            String strDecode2 = null;
                            String strDecode3 = null;
                            String strDecode4 = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new QueryCollectInputsResponse.SuccessfullyCompleted.Input.CustomText(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                } else if (iNextTag == 2) {
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 3) {
                                    strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 4) {
                                    strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INPUT_TYPE_INVALID", "SIGNATURE", "SELECTION", "EMAIL", "TEXT", "NUMERIC", "PHONE", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class InputType implements WireEnum {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ InputType[] $VALUES;
                public static final ProtoAdapter<InputType> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE;
                public static final InputType EMAIL;
                public static final InputType INPUT_TYPE_INVALID;
                public static final InputType NUMERIC;
                public static final InputType PHONE;
                public static final InputType SELECTION;
                public static final InputType SIGNATURE;
                public static final InputType TEXT;
                private final int value;

                private static final /* synthetic */ InputType[] $values() {
                    return new InputType[]{INPUT_TYPE_INVALID, SIGNATURE, SELECTION, EMAIL, TEXT, NUMERIC, PHONE};
                }

                @JvmStatic
                public static final InputType fromValue(int i) {
                    return INSTANCE.fromValue(i);
                }

                public static EnumEntries<InputType> getEntries() {
                    return $ENTRIES;
                }

                public static InputType valueOf(String str) {
                    return (InputType) Enum.valueOf(InputType.class, str);
                }

                public static InputType[] values() {
                    return (InputType[]) $VALUES.clone();
                }

                private InputType(String str, int i, int i2) {
                    this.value = i2;
                }

                @Override // com.squareup.wire.WireEnum
                public int getValue() {
                    return this.value;
                }

                static {
                    final InputType inputType = new InputType("INPUT_TYPE_INVALID", 0, 0);
                    INPUT_TYPE_INVALID = inputType;
                    SIGNATURE = new InputType("SIGNATURE", 1, 1);
                    SELECTION = new InputType("SELECTION", 2, 2);
                    EMAIL = new InputType("EMAIL", 3, 3);
                    TEXT = new InputType("TEXT", 4, 4);
                    NUMERIC = new InputType("NUMERIC", 5, 5);
                    PHONE = new InputType("PHONE", 6, 6);
                    InputType[] inputTypeArr$values = $values();
                    $VALUES = inputTypeArr$values;
                    $ENTRIES = EnumEntriesKt.enumEntries(inputTypeArr$values);
                    INSTANCE = new Companion(null);
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InputType.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new EnumAdapter<InputType>(orCreateKotlinClass, syntax, inputType) { // from class: com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType$Companion$ADAPTER$1
                        {
                            QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType inputType2 = inputType;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.squareup.wire.EnumAdapter
                        public QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType fromValue(int value) {
                            return QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.INSTANCE.fromValue(value);
                        }
                    };
                }

                /* JADX INFO: compiled from: QueryCollectInputsResponse.kt */
                @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    @JvmStatic
                    public final InputType fromValue(int value) {
                        switch (value) {
                            case 0:
                                return InputType.INPUT_TYPE_INVALID;
                            case 1:
                                return InputType.SIGNATURE;
                            case 2:
                                return InputType.SELECTION;
                            case 3:
                                return InputType.EMAIL;
                            case 4:
                                return InputType.TEXT;
                            case 5:
                                return InputType.NUMERIC;
                            case 6:
                                return InputType.PHONE;
                            default:
                                return null;
                        }
                    }
                }
            }
        }
    }
}
