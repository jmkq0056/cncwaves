package com.stripe.proto.api.sdk;

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
import com.stripe.proto.api.sdk.QueryCollectSourceResponse;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.proto.model.sdk.SystemContext;
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

/* JADX INFO: compiled from: QueryCollectSourceResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0019\u001a\u001bB=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\nH\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "source_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "source_status", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$SourceRequestStatus;", "num_of_canceled_payments", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$SourceRequestStatus;ILokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "SourceRequestStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryCollectSourceResponse extends Message<QueryCollectSourceResponse, Builder> {
    public static final ProtoAdapter<QueryCollectSourceResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "numOfCanceledPayments", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int num_of_canceled_payments;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", jsonName = "sourceMethod", oneofName = "source_result", schemaIndex = 1, tag = 2)
    public final PaymentMethod source_method;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryCollectSourceResponse$SourceRequestStatus#ADAPTER", jsonName = "sourceStatus", oneofName = "source_result", schemaIndex = 2, tag = 3)
    public final SourceRequestStatus source_status;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public QueryCollectSourceResponse() {
        this(null, null, null, 0, null, 31, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ QueryCollectSourceResponse(SystemContext systemContext, PaymentMethod paymentMethod, SourceRequestStatus sourceRequestStatus, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : systemContext, (i2 & 2) != 0 ? null : paymentMethod, (i2 & 4) != 0 ? null : sourceRequestStatus, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryCollectSourceResponse(SystemContext systemContext, PaymentMethod paymentMethod, SourceRequestStatus sourceRequestStatus, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.source_method = paymentMethod;
        this.source_status = sourceRequestStatus;
        this.num_of_canceled_payments = i;
        if (Internal.countNonNull(paymentMethod, sourceRequestStatus) > 1) {
            throw new IllegalArgumentException("At most one of source_method, source_status may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.source_method = this.source_method;
        builder.source_status = this.source_status;
        builder.num_of_canceled_payments = this.num_of_canceled_payments;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof QueryCollectSourceResponse)) {
            return false;
        }
        QueryCollectSourceResponse queryCollectSourceResponse = (QueryCollectSourceResponse) other;
        return Intrinsics.areEqual(unknownFields(), queryCollectSourceResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, queryCollectSourceResponse.system_context) && Intrinsics.areEqual(this.source_method, queryCollectSourceResponse.source_method) && this.source_status == queryCollectSourceResponse.source_status && this.num_of_canceled_payments == queryCollectSourceResponse.num_of_canceled_payments;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37;
        PaymentMethod paymentMethod = this.source_method;
        int iHashCode3 = (iHashCode2 + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        SourceRequestStatus sourceRequestStatus = this.source_status;
        int iHashCode4 = ((iHashCode3 + (sourceRequestStatus != null ? sourceRequestStatus.hashCode() : 0)) * 37) + Integer.hashCode(this.num_of_canceled_payments);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        if (this.source_method != null) {
            arrayList.add("source_method=" + this.source_method);
        }
        if (this.source_status != null) {
            arrayList.add("source_status=" + this.source_status);
        }
        arrayList.add("num_of_canceled_payments=" + this.num_of_canceled_payments);
        return CollectionsKt.joinToString$default(arrayList, ", ", "QueryCollectSourceResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ QueryCollectSourceResponse copy$default(QueryCollectSourceResponse queryCollectSourceResponse, SystemContext systemContext, PaymentMethod paymentMethod, SourceRequestStatus sourceRequestStatus, int i, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            systemContext = queryCollectSourceResponse.system_context;
        }
        if ((i2 & 2) != 0) {
            paymentMethod = queryCollectSourceResponse.source_method;
        }
        if ((i2 & 4) != 0) {
            sourceRequestStatus = queryCollectSourceResponse.source_status;
        }
        if ((i2 & 8) != 0) {
            i = queryCollectSourceResponse.num_of_canceled_payments;
        }
        if ((i2 & 16) != 0) {
            byteString = queryCollectSourceResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        SourceRequestStatus sourceRequestStatus2 = sourceRequestStatus;
        return queryCollectSourceResponse.copy(systemContext, paymentMethod, sourceRequestStatus2, i, byteString2);
    }

    public final QueryCollectSourceResponse copy(SystemContext system_context, PaymentMethod source_method, SourceRequestStatus source_status, int num_of_canceled_payments, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new QueryCollectSourceResponse(system_context, source_method, source_status, num_of_canceled_payments, unknownFields);
    }

    /* JADX INFO: compiled from: QueryCollectSourceResponse.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse;", "()V", "num_of_canceled_payments", "", "source_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "source_status", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$SourceRequestStatus;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<QueryCollectSourceResponse, Builder> {
        public int num_of_canceled_payments;
        public PaymentMethod source_method;
        public SourceRequestStatus source_status;
        public SystemContext system_context;

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder num_of_canceled_payments(int num_of_canceled_payments) {
            this.num_of_canceled_payments = num_of_canceled_payments;
            return this;
        }

        public final Builder source_method(PaymentMethod source_method) {
            this.source_method = source_method;
            this.source_status = null;
            return this;
        }

        public final Builder source_status(SourceRequestStatus source_status) {
            this.source_status = source_status;
            this.source_method = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public QueryCollectSourceResponse build() {
            return new QueryCollectSourceResponse(this.system_context, this.source_method, this.source_status, this.num_of_canceled_payments, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: QueryCollectSourceResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ QueryCollectSourceResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryCollectSourceResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<QueryCollectSourceResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryCollectSourceResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(QueryCollectSourceResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                int iEncodedSizeWithTag = size + PaymentMethod.ADAPTER.encodedSizeWithTag(2, value.source_method) + QueryCollectSourceResponse.SourceRequestStatus.ADAPTER.encodedSizeWithTag(3, value.source_status);
                return value.num_of_canceled_payments != 0 ? iEncodedSizeWithTag + ProtoAdapter.UINT32.encodedSizeWithTag(4, Integer.valueOf(value.num_of_canceled_payments)) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, QueryCollectSourceResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (value.num_of_canceled_payments != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 4, Integer.valueOf(value.num_of_canceled_payments));
                }
                PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.source_method);
                QueryCollectSourceResponse.SourceRequestStatus.ADAPTER.encodeWithTag(writer, 3, value.source_status);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, QueryCollectSourceResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                QueryCollectSourceResponse.SourceRequestStatus.ADAPTER.encodeWithTag(writer, 3, value.source_status);
                PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.source_method);
                if (value.num_of_canceled_payments != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 4, Integer.valueOf(value.num_of_canceled_payments));
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public QueryCollectSourceResponse redact(QueryCollectSourceResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                PaymentMethod paymentMethod = value.source_method;
                return QueryCollectSourceResponse.copy$default(value, systemContextRedact, paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null, null, 0, ByteString.EMPTY, 12, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public QueryCollectSourceResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentMethod paymentMethodDecode = null;
                QueryCollectSourceResponse.SourceRequestStatus sourceRequestStatusDecode = null;
                int iIntValue = 0;
                SystemContext systemContextDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new QueryCollectSourceResponse(systemContextDecode, paymentMethodDecode, sourceRequestStatusDecode, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        systemContextDecode = SystemContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            sourceRequestStatusDecode = QueryCollectSourceResponse.SourceRequestStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 4) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: QueryCollectSourceResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$SourceRequestStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SOURCE_PENDING", "SOURCE_CANCELED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SourceRequestStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SourceRequestStatus[] $VALUES;
        public static final ProtoAdapter<SourceRequestStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final SourceRequestStatus SOURCE_CANCELED;
        public static final SourceRequestStatus SOURCE_PENDING;
        private final int value;

        private static final /* synthetic */ SourceRequestStatus[] $values() {
            return new SourceRequestStatus[]{SOURCE_PENDING, SOURCE_CANCELED};
        }

        @JvmStatic
        public static final SourceRequestStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<SourceRequestStatus> getEntries() {
            return $ENTRIES;
        }

        public static SourceRequestStatus valueOf(String str) {
            return (SourceRequestStatus) Enum.valueOf(SourceRequestStatus.class, str);
        }

        public static SourceRequestStatus[] values() {
            return (SourceRequestStatus[]) $VALUES.clone();
        }

        private SourceRequestStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final SourceRequestStatus sourceRequestStatus = new SourceRequestStatus("SOURCE_PENDING", 0, 0);
            SOURCE_PENDING = sourceRequestStatus;
            SOURCE_CANCELED = new SourceRequestStatus("SOURCE_CANCELED", 1, 1);
            SourceRequestStatus[] sourceRequestStatusArr$values = $values();
            $VALUES = sourceRequestStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(sourceRequestStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SourceRequestStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<SourceRequestStatus>(orCreateKotlinClass, syntax, sourceRequestStatus) { // from class: com.stripe.proto.api.sdk.QueryCollectSourceResponse$SourceRequestStatus$Companion$ADAPTER$1
                {
                    QueryCollectSourceResponse.SourceRequestStatus sourceRequestStatus2 = sourceRequestStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public QueryCollectSourceResponse.SourceRequestStatus fromValue(int value) {
                    return QueryCollectSourceResponse.SourceRequestStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: QueryCollectSourceResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$SourceRequestStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryCollectSourceResponse$SourceRequestStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final SourceRequestStatus fromValue(int value) {
                if (value == 0) {
                    return SourceRequestStatus.SOURCE_PENDING;
                }
                if (value != 1) {
                    return null;
                }
                return SourceRequestStatus.SOURCE_CANCELED;
            }
        }
    }
}
