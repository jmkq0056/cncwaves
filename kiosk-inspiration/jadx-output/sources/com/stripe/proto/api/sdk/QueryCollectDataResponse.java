package com.stripe.proto.api.sdk;

import androidx.core.app.NotificationCompat;
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
import com.stripe.proto.api.sdk.QueryCollectDataResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.Error;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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

/* JADX INFO: compiled from: QueryCollectDataResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001a\u001b\u001c\u001dB?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ@\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u000fR\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;", "collected_data", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;", "error", "Lcom/stripe/proto/model/sdk/Error;", "error_response", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)V", "getError$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "QueryCollectDataResponseError", "QueryCollectDataStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryCollectDataResponse extends Message<QueryCollectDataResponse, Builder> {
    public static final ProtoAdapter<QueryCollectDataResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.ReaderCollectedData#ADAPTER", jsonName = "collectedData", oneofName = "collect_data_result", schemaIndex = 0, tag = 1)
    public final ReaderCollectedData collected_data;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", oneofName = "collect_data_result", schemaIndex = 2, tag = 3)
    public final Error error;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectDataResponse$QueryCollectDataResponseError#ADAPTER", jsonName = "errorResponse", oneofName = "collect_data_result", schemaIndex = 3, tag = 4)
    public final QueryCollectDataResponseError error_response;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectDataResponse$QueryCollectDataStatus#ADAPTER", oneofName = "collect_data_result", schemaIndex = 1, tag = 2)
    public final QueryCollectDataStatus status;

    public QueryCollectDataResponse() {
        this(null, null, null, null, null, 31, null);
    }

    @Deprecated(message = "error is deprecated")
    public static /* synthetic */ void getError$annotations() {
    }

    public /* synthetic */ QueryCollectDataResponse(ReaderCollectedData readerCollectedData, QueryCollectDataStatus queryCollectDataStatus, Error error, QueryCollectDataResponseError queryCollectDataResponseError, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : readerCollectedData, (i & 2) != 0 ? null : queryCollectDataStatus, (i & 4) != 0 ? null : error, (i & 8) != 0 ? null : queryCollectDataResponseError, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryCollectDataResponse(ReaderCollectedData readerCollectedData, QueryCollectDataStatus queryCollectDataStatus, Error error, QueryCollectDataResponseError queryCollectDataResponseError, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.collected_data = readerCollectedData;
        this.status = queryCollectDataStatus;
        this.error = error;
        this.error_response = queryCollectDataResponseError;
        if (Internal.countNonNull(readerCollectedData, queryCollectDataStatus, error, queryCollectDataResponseError, new Object[0]) > 1) {
            throw new IllegalArgumentException("At most one of collected_data, status, error, error_response may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.collected_data = this.collected_data;
        builder.status = this.status;
        builder.error = this.error;
        builder.error_response = this.error_response;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof QueryCollectDataResponse)) {
            return false;
        }
        QueryCollectDataResponse queryCollectDataResponse = (QueryCollectDataResponse) other;
        return Intrinsics.areEqual(unknownFields(), queryCollectDataResponse.unknownFields()) && Intrinsics.areEqual(this.collected_data, queryCollectDataResponse.collected_data) && this.status == queryCollectDataResponse.status && Intrinsics.areEqual(this.error, queryCollectDataResponse.error) && Intrinsics.areEqual(this.error_response, queryCollectDataResponse.error_response);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ReaderCollectedData readerCollectedData = this.collected_data;
        int iHashCode2 = (iHashCode + (readerCollectedData != null ? readerCollectedData.hashCode() : 0)) * 37;
        QueryCollectDataStatus queryCollectDataStatus = this.status;
        int iHashCode3 = (iHashCode2 + (queryCollectDataStatus != null ? queryCollectDataStatus.hashCode() : 0)) * 37;
        Error error = this.error;
        int iHashCode4 = (iHashCode3 + (error != null ? error.hashCode() : 0)) * 37;
        QueryCollectDataResponseError queryCollectDataResponseError = this.error_response;
        int iHashCode5 = iHashCode4 + (queryCollectDataResponseError != null ? queryCollectDataResponseError.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.collected_data != null) {
            arrayList.add("collected_data=" + this.collected_data);
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.error != null) {
            arrayList.add("error=" + this.error);
        }
        if (this.error_response != null) {
            arrayList.add("error_response=" + this.error_response);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "QueryCollectDataResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ QueryCollectDataResponse copy$default(QueryCollectDataResponse queryCollectDataResponse, ReaderCollectedData readerCollectedData, QueryCollectDataStatus queryCollectDataStatus, Error error, QueryCollectDataResponseError queryCollectDataResponseError, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            readerCollectedData = queryCollectDataResponse.collected_data;
        }
        if ((i & 2) != 0) {
            queryCollectDataStatus = queryCollectDataResponse.status;
        }
        if ((i & 4) != 0) {
            error = queryCollectDataResponse.error;
        }
        if ((i & 8) != 0) {
            queryCollectDataResponseError = queryCollectDataResponse.error_response;
        }
        if ((i & 16) != 0) {
            byteString = queryCollectDataResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        Error error2 = error;
        return queryCollectDataResponse.copy(readerCollectedData, queryCollectDataStatus, error2, queryCollectDataResponseError, byteString2);
    }

    public final QueryCollectDataResponse copy(ReaderCollectedData collected_data, QueryCollectDataStatus status, Error error, QueryCollectDataResponseError error_response, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new QueryCollectDataResponse(collected_data, status, error, error_response, unknownFields);
    }

    /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;", "()V", "collected_data", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "error", "Lcom/stripe/proto/model/sdk/Error;", "error_response", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<QueryCollectDataResponse, Builder> {
        public ReaderCollectedData collected_data;
        public Error error;
        public QueryCollectDataResponseError error_response;
        public QueryCollectDataStatus status;

        public final Builder collected_data(ReaderCollectedData collected_data) {
            this.collected_data = collected_data;
            this.status = null;
            this.error = null;
            this.error_response = null;
            return this;
        }

        public final Builder status(QueryCollectDataStatus status) {
            this.status = status;
            this.collected_data = null;
            this.error = null;
            this.error_response = null;
            return this;
        }

        @Deprecated(message = "error is deprecated")
        public final Builder error(Error error) {
            this.error = error;
            this.collected_data = null;
            this.status = null;
            this.error_response = null;
            return this;
        }

        public final Builder error_response(QueryCollectDataResponseError error_response) {
            this.error_response = error_response;
            this.collected_data = null;
            this.status = null;
            this.error = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public QueryCollectDataResponse build() {
            return new QueryCollectDataResponse(this.collected_data, this.status, this.error, this.error_response, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ QueryCollectDataResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryCollectDataResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<QueryCollectDataResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectDataResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(QueryCollectDataResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ReaderCollectedData.ADAPTER.encodedSizeWithTag(1, value.collected_data) + QueryCollectDataResponse.QueryCollectDataStatus.ADAPTER.encodedSizeWithTag(2, value.status) + Error.ADAPTER.encodedSizeWithTag(3, value.error) + QueryCollectDataResponse.QueryCollectDataResponseError.ADAPTER.encodedSizeWithTag(4, value.error_response);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, QueryCollectDataResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderCollectedData.ADAPTER.encodeWithTag(writer, 1, value.collected_data);
                QueryCollectDataResponse.QueryCollectDataStatus.ADAPTER.encodeWithTag(writer, 2, value.status);
                Error.ADAPTER.encodeWithTag(writer, 3, value.error);
                QueryCollectDataResponse.QueryCollectDataResponseError.ADAPTER.encodeWithTag(writer, 4, value.error_response);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, QueryCollectDataResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                QueryCollectDataResponse.QueryCollectDataResponseError.ADAPTER.encodeWithTag(writer, 4, value.error_response);
                Error.ADAPTER.encodeWithTag(writer, 3, value.error);
                QueryCollectDataResponse.QueryCollectDataStatus.ADAPTER.encodeWithTag(writer, 2, value.status);
                ReaderCollectedData.ADAPTER.encodeWithTag(writer, 1, value.collected_data);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public QueryCollectDataResponse redact(QueryCollectDataResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderCollectedData readerCollectedData = value.collected_data;
                ReaderCollectedData readerCollectedDataRedact = readerCollectedData != null ? ReaderCollectedData.ADAPTER.redact(readerCollectedData) : null;
                Error error = value.error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                QueryCollectDataResponse.QueryCollectDataResponseError queryCollectDataResponseError = value.error_response;
                return QueryCollectDataResponse.copy$default(value, readerCollectedDataRedact, null, errorRedact, queryCollectDataResponseError != null ? QueryCollectDataResponse.QueryCollectDataResponseError.ADAPTER.redact(queryCollectDataResponseError) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public QueryCollectDataResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ReaderCollectedData readerCollectedDataDecode = null;
                QueryCollectDataResponse.QueryCollectDataStatus queryCollectDataStatusDecode = null;
                Error errorDecode = null;
                QueryCollectDataResponse.QueryCollectDataResponseError queryCollectDataResponseErrorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new QueryCollectDataResponse(readerCollectedDataDecode, queryCollectDataStatusDecode, errorDecode, queryCollectDataResponseErrorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        readerCollectedDataDecode = ReaderCollectedData.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            queryCollectDataStatusDecode = QueryCollectDataResponse.QueryCollectDataStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        queryCollectDataResponseErrorDecode = QueryCollectDataResponse.QueryCollectDataResponseError.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PENDING", "CANCELED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class QueryCollectDataStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ QueryCollectDataStatus[] $VALUES;
        public static final ProtoAdapter<QueryCollectDataStatus> ADAPTER;
        public static final QueryCollectDataStatus CANCELED;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final QueryCollectDataStatus PENDING;
        private final int value;

        private static final /* synthetic */ QueryCollectDataStatus[] $values() {
            return new QueryCollectDataStatus[]{PENDING, CANCELED};
        }

        @JvmStatic
        public static final QueryCollectDataStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<QueryCollectDataStatus> getEntries() {
            return $ENTRIES;
        }

        public static QueryCollectDataStatus valueOf(String str) {
            return (QueryCollectDataStatus) Enum.valueOf(QueryCollectDataStatus.class, str);
        }

        public static QueryCollectDataStatus[] values() {
            return (QueryCollectDataStatus[]) $VALUES.clone();
        }

        private QueryCollectDataStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final QueryCollectDataStatus queryCollectDataStatus = new QueryCollectDataStatus("PENDING", 0, 0);
            PENDING = queryCollectDataStatus;
            CANCELED = new QueryCollectDataStatus("CANCELED", 1, 1);
            QueryCollectDataStatus[] queryCollectDataStatusArr$values = $values();
            $VALUES = queryCollectDataStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(queryCollectDataStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryCollectDataStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<QueryCollectDataStatus>(orCreateKotlinClass, syntax, queryCollectDataStatus) { // from class: com.stripe.proto.api.sdk.QueryCollectDataResponse$QueryCollectDataStatus$Companion$ADAPTER$1
                {
                    QueryCollectDataResponse.QueryCollectDataStatus queryCollectDataStatus2 = queryCollectDataStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public QueryCollectDataResponse.QueryCollectDataStatus fromValue(int value) {
                    return QueryCollectDataResponse.QueryCollectDataStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final QueryCollectDataStatus fromValue(int value) {
                if (value == 0) {
                    return QueryCollectDataStatus.PENDING;
                }
                if (value != 1) {
                    return null;
                }
                return QueryCollectDataStatus.CANCELED;
            }
        }
    }

    /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError$Builder;", "error", "Lcom/stripe/proto/model/sdk/Error;", "wrapped_error", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class QueryCollectDataResponseError extends Message<QueryCollectDataResponseError, Builder> {
        public static final ProtoAdapter<QueryCollectDataResponseError> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Error error;

        @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "wrappedError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final ErrorWrapper wrapped_error;

        public QueryCollectDataResponseError() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ QueryCollectDataResponseError(Error error, ErrorWrapper errorWrapper, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : error, (i & 2) != 0 ? null : errorWrapper, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public QueryCollectDataResponseError(Error error, ErrorWrapper errorWrapper, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.error = error;
            this.wrapped_error = errorWrapper;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.error = this.error;
            builder.wrapped_error = this.wrapped_error;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof QueryCollectDataResponseError)) {
                return false;
            }
            QueryCollectDataResponseError queryCollectDataResponseError = (QueryCollectDataResponseError) other;
            return Intrinsics.areEqual(unknownFields(), queryCollectDataResponseError.unknownFields()) && Intrinsics.areEqual(this.error, queryCollectDataResponseError.error) && Intrinsics.areEqual(this.wrapped_error, queryCollectDataResponseError.wrapped_error);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Error error = this.error;
            int iHashCode2 = (iHashCode + (error != null ? error.hashCode() : 0)) * 37;
            ErrorWrapper errorWrapper = this.wrapped_error;
            int iHashCode3 = iHashCode2 + (errorWrapper != null ? errorWrapper.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.error != null) {
                arrayList.add("error=" + this.error);
            }
            if (this.wrapped_error != null) {
                arrayList.add("wrapped_error=" + this.wrapped_error);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "QueryCollectDataResponseError{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ QueryCollectDataResponseError copy$default(QueryCollectDataResponseError queryCollectDataResponseError, Error error, ErrorWrapper errorWrapper, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                error = queryCollectDataResponseError.error;
            }
            if ((i & 2) != 0) {
                errorWrapper = queryCollectDataResponseError.wrapped_error;
            }
            if ((i & 4) != 0) {
                byteString = queryCollectDataResponseError.unknownFields();
            }
            return queryCollectDataResponseError.copy(error, errorWrapper, byteString);
        }

        public final QueryCollectDataResponseError copy(Error error, ErrorWrapper wrapped_error, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new QueryCollectDataResponseError(error, wrapped_error, unknownFields);
        }

        /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", "()V", "error", "Lcom/stripe/proto/model/sdk/Error;", "wrapped_error", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<QueryCollectDataResponseError, Builder> {
            public Error error;
            public ErrorWrapper wrapped_error;

            public final Builder error(Error error) {
                this.error = error;
                return this;
            }

            public final Builder wrapped_error(ErrorWrapper wrapped_error) {
                this.wrapped_error = wrapped_error;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public QueryCollectDataResponseError build() {
                return new QueryCollectDataResponseError(this.error, this.wrapped_error, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: QueryCollectDataResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ QueryCollectDataResponseError build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryCollectDataResponseError.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<QueryCollectDataResponseError>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectDataResponse$QueryCollectDataResponseError$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(QueryCollectDataResponse.QueryCollectDataResponseError value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.error != null) {
                        size += Error.ADAPTER.encodedSizeWithTag(1, value.error);
                    }
                    return value.wrapped_error != null ? size + ErrorWrapper.ADAPTER.encodedSizeWithTag(2, value.wrapped_error) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, QueryCollectDataResponse.QueryCollectDataResponseError value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.error != null) {
                        Error.ADAPTER.encodeWithTag(writer, 1, value.error);
                    }
                    if (value.wrapped_error != null) {
                        ErrorWrapper.ADAPTER.encodeWithTag(writer, 2, value.wrapped_error);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, QueryCollectDataResponse.QueryCollectDataResponseError value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.wrapped_error != null) {
                        ErrorWrapper.ADAPTER.encodeWithTag(writer, 2, value.wrapped_error);
                    }
                    if (value.error != null) {
                        Error.ADAPTER.encodeWithTag(writer, 1, value.error);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public QueryCollectDataResponse.QueryCollectDataResponseError redact(QueryCollectDataResponse.QueryCollectDataResponseError value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Error error = value.error;
                    Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                    ErrorWrapper errorWrapper = value.wrapped_error;
                    return value.copy(errorRedact, errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public QueryCollectDataResponse.QueryCollectDataResponseError decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Error errorDecode = null;
                    ErrorWrapper errorWrapperDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new QueryCollectDataResponse.QueryCollectDataResponseError(errorDecode, errorWrapperDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
}
