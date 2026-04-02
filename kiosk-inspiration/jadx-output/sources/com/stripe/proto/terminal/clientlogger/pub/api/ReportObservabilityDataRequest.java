package com.stripe.proto.terminal.clientlogger.pub.api;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReportObservabilityDataRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest$Builder;", "observability_data", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReportObservabilityDataRequest extends Message<ReportObservabilityDataRequest, Builder> {
    public static final ProtoAdapter<ReportObservabilityDataRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData#ADAPTER", jsonName = "observabilityData", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<ObservabilityData> observability_data;

    /* JADX WARN: Multi-variable type inference failed */
    public ReportObservabilityDataRequest() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ReportObservabilityDataRequest(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportObservabilityDataRequest(List<ObservabilityData> observability_data, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(observability_data, "observability_data");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.observability_data = Internal.immutableCopyOf("observability_data", observability_data);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.observability_data = this.observability_data;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReportObservabilityDataRequest)) {
            return false;
        }
        ReportObservabilityDataRequest reportObservabilityDataRequest = (ReportObservabilityDataRequest) other;
        return Intrinsics.areEqual(unknownFields(), reportObservabilityDataRequest.unknownFields()) && Intrinsics.areEqual(this.observability_data, reportObservabilityDataRequest.observability_data);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.observability_data.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.observability_data.isEmpty()) {
            arrayList.add("observability_data=" + this.observability_data);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReportObservabilityDataRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReportObservabilityDataRequest copy$default(ReportObservabilityDataRequest reportObservabilityDataRequest, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = reportObservabilityDataRequest.observability_data;
        }
        if ((i & 2) != 0) {
            byteString = reportObservabilityDataRequest.unknownFields();
        }
        return reportObservabilityDataRequest.copy(list, byteString);
    }

    public final ReportObservabilityDataRequest copy(List<ObservabilityData> observability_data, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(observability_data, "observability_data");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReportObservabilityDataRequest(observability_data, unknownFields);
    }

    /* JADX INFO: compiled from: ReportObservabilityDataRequest.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;", "()V", "observability_data", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReportObservabilityDataRequest, Builder> {
        public List<ObservabilityData> observability_data = CollectionsKt.emptyList();

        public final Builder observability_data(List<ObservabilityData> observability_data) {
            Intrinsics.checkNotNullParameter(observability_data, "observability_data");
            Internal.checkElementsNotNull(observability_data);
            this.observability_data = observability_data;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReportObservabilityDataRequest build() {
            return new ReportObservabilityDataRequest(this.observability_data, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReportObservabilityDataRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReportObservabilityDataRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReportObservabilityDataRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReportObservabilityDataRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.ReportObservabilityDataRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReportObservabilityDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ObservabilityData.ADAPTER.asRepeated().encodedSizeWithTag(1, value.observability_data);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReportObservabilityDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ObservabilityData.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.observability_data);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReportObservabilityDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ObservabilityData.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.observability_data);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReportObservabilityDataRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReportObservabilityDataRequest(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ObservabilityData.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReportObservabilityDataRequest redact(ReportObservabilityDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.observability_data, ObservabilityData.ADAPTER), ByteString.EMPTY);
            }
        };
    }
}
