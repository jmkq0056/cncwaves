package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: CategorizedUsageEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent$Builder;", "usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "data_usage_category_payment", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageCategoryPayment;", "data_usage_category_asset_download", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageCategoryAssetDownload;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageCategoryPayment;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageCategoryAssetDownload;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CategorizedUsageEvent extends Message<CategorizedUsageEvent, Builder> {
    public static final ProtoAdapter<CategorizedUsageEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageCategoryAssetDownload#ADAPTER", jsonName = "dataUsageCategoryAssetDownload", oneofName = "category", schemaIndex = 2, tag = 3)
    public final DataUsageCategoryAssetDownload data_usage_category_asset_download;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageCategoryPayment#ADAPTER", jsonName = "dataUsageCategoryPayment", oneofName = "category", schemaIndex = 1, tag = 2)
    public final DataUsageCategoryPayment data_usage_category_payment;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageAmount#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DataUsageAmount usage;

    public CategorizedUsageEvent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CategorizedUsageEvent(DataUsageAmount dataUsageAmount, DataUsageCategoryPayment dataUsageCategoryPayment, DataUsageCategoryAssetDownload dataUsageCategoryAssetDownload, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : dataUsageAmount, (i & 2) != 0 ? null : dataUsageCategoryPayment, (i & 4) != 0 ? null : dataUsageCategoryAssetDownload, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategorizedUsageEvent(DataUsageAmount dataUsageAmount, DataUsageCategoryPayment dataUsageCategoryPayment, DataUsageCategoryAssetDownload dataUsageCategoryAssetDownload, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.usage = dataUsageAmount;
        this.data_usage_category_payment = dataUsageCategoryPayment;
        this.data_usage_category_asset_download = dataUsageCategoryAssetDownload;
        if (Internal.countNonNull(dataUsageCategoryPayment, dataUsageCategoryAssetDownload) > 1) {
            throw new IllegalArgumentException("At most one of data_usage_category_payment, data_usage_category_asset_download may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.usage = this.usage;
        builder.data_usage_category_payment = this.data_usage_category_payment;
        builder.data_usage_category_asset_download = this.data_usage_category_asset_download;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CategorizedUsageEvent)) {
            return false;
        }
        CategorizedUsageEvent categorizedUsageEvent = (CategorizedUsageEvent) other;
        return Intrinsics.areEqual(unknownFields(), categorizedUsageEvent.unknownFields()) && Intrinsics.areEqual(this.usage, categorizedUsageEvent.usage) && Intrinsics.areEqual(this.data_usage_category_payment, categorizedUsageEvent.data_usage_category_payment) && Intrinsics.areEqual(this.data_usage_category_asset_download, categorizedUsageEvent.data_usage_category_asset_download);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DataUsageAmount dataUsageAmount = this.usage;
        int iHashCode2 = (iHashCode + (dataUsageAmount != null ? dataUsageAmount.hashCode() : 0)) * 37;
        DataUsageCategoryPayment dataUsageCategoryPayment = this.data_usage_category_payment;
        int iHashCode3 = (iHashCode2 + (dataUsageCategoryPayment != null ? dataUsageCategoryPayment.hashCode() : 0)) * 37;
        DataUsageCategoryAssetDownload dataUsageCategoryAssetDownload = this.data_usage_category_asset_download;
        int iHashCode4 = iHashCode3 + (dataUsageCategoryAssetDownload != null ? dataUsageCategoryAssetDownload.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.usage != null) {
            arrayList.add("usage=" + this.usage);
        }
        if (this.data_usage_category_payment != null) {
            arrayList.add("data_usage_category_payment=" + this.data_usage_category_payment);
        }
        if (this.data_usage_category_asset_download != null) {
            arrayList.add("data_usage_category_asset_download=" + this.data_usage_category_asset_download);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CategorizedUsageEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CategorizedUsageEvent copy$default(CategorizedUsageEvent categorizedUsageEvent, DataUsageAmount dataUsageAmount, DataUsageCategoryPayment dataUsageCategoryPayment, DataUsageCategoryAssetDownload dataUsageCategoryAssetDownload, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            dataUsageAmount = categorizedUsageEvent.usage;
        }
        if ((i & 2) != 0) {
            dataUsageCategoryPayment = categorizedUsageEvent.data_usage_category_payment;
        }
        if ((i & 4) != 0) {
            dataUsageCategoryAssetDownload = categorizedUsageEvent.data_usage_category_asset_download;
        }
        if ((i & 8) != 0) {
            byteString = categorizedUsageEvent.unknownFields();
        }
        return categorizedUsageEvent.copy(dataUsageAmount, dataUsageCategoryPayment, dataUsageCategoryAssetDownload, byteString);
    }

    public final CategorizedUsageEvent copy(DataUsageAmount usage, DataUsageCategoryPayment data_usage_category_payment, DataUsageCategoryAssetDownload data_usage_category_asset_download, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CategorizedUsageEvent(usage, data_usage_category_payment, data_usage_category_asset_download, unknownFields);
    }

    /* JADX INFO: compiled from: CategorizedUsageEvent.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;", "()V", "data_usage_category_asset_download", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageCategoryAssetDownload;", "data_usage_category_payment", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageCategoryPayment;", "usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CategorizedUsageEvent, Builder> {
        public DataUsageCategoryAssetDownload data_usage_category_asset_download;
        public DataUsageCategoryPayment data_usage_category_payment;
        public DataUsageAmount usage;

        public final Builder usage(DataUsageAmount usage) {
            this.usage = usage;
            return this;
        }

        public final Builder data_usage_category_payment(DataUsageCategoryPayment data_usage_category_payment) {
            this.data_usage_category_payment = data_usage_category_payment;
            this.data_usage_category_asset_download = null;
            return this;
        }

        public final Builder data_usage_category_asset_download(DataUsageCategoryAssetDownload data_usage_category_asset_download) {
            this.data_usage_category_asset_download = data_usage_category_asset_download;
            this.data_usage_category_payment = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CategorizedUsageEvent build() {
            return new CategorizedUsageEvent(this.usage, this.data_usage_category_payment, this.data_usage_category_asset_download, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CategorizedUsageEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CategorizedUsageEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CategorizedUsageEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CategorizedUsageEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.CategorizedUsageEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CategorizedUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.usage != null) {
                    size += DataUsageAmount.ADAPTER.encodedSizeWithTag(1, value.usage);
                }
                return size + DataUsageCategoryPayment.ADAPTER.encodedSizeWithTag(2, value.data_usage_category_payment) + DataUsageCategoryAssetDownload.ADAPTER.encodedSizeWithTag(3, value.data_usage_category_asset_download);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CategorizedUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.usage != null) {
                    DataUsageAmount.ADAPTER.encodeWithTag(writer, 1, value.usage);
                }
                DataUsageCategoryPayment.ADAPTER.encodeWithTag(writer, 2, value.data_usage_category_payment);
                DataUsageCategoryAssetDownload.ADAPTER.encodeWithTag(writer, 3, value.data_usage_category_asset_download);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CategorizedUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DataUsageCategoryAssetDownload.ADAPTER.encodeWithTag(writer, 3, value.data_usage_category_asset_download);
                DataUsageCategoryPayment.ADAPTER.encodeWithTag(writer, 2, value.data_usage_category_payment);
                if (value.usage != null) {
                    DataUsageAmount.ADAPTER.encodeWithTag(writer, 1, value.usage);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CategorizedUsageEvent redact(CategorizedUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DataUsageAmount dataUsageAmount = value.usage;
                DataUsageAmount dataUsageAmountRedact = dataUsageAmount != null ? DataUsageAmount.ADAPTER.redact(dataUsageAmount) : null;
                DataUsageCategoryPayment dataUsageCategoryPayment = value.data_usage_category_payment;
                DataUsageCategoryPayment dataUsageCategoryPaymentRedact = dataUsageCategoryPayment != null ? DataUsageCategoryPayment.ADAPTER.redact(dataUsageCategoryPayment) : null;
                DataUsageCategoryAssetDownload dataUsageCategoryAssetDownload = value.data_usage_category_asset_download;
                return value.copy(dataUsageAmountRedact, dataUsageCategoryPaymentRedact, dataUsageCategoryAssetDownload != null ? DataUsageCategoryAssetDownload.ADAPTER.redact(dataUsageCategoryAssetDownload) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CategorizedUsageEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DataUsageAmount dataUsageAmountDecode = null;
                DataUsageCategoryPayment dataUsageCategoryPaymentDecode = null;
                DataUsageCategoryAssetDownload dataUsageCategoryAssetDownloadDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CategorizedUsageEvent(dataUsageAmountDecode, dataUsageCategoryPaymentDecode, dataUsageCategoryAssetDownloadDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        dataUsageAmountDecode = DataUsageAmount.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        dataUsageCategoryPaymentDecode = DataUsageCategoryPayment.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        dataUsageCategoryAssetDownloadDecode = DataUsageCategoryAssetDownload.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
