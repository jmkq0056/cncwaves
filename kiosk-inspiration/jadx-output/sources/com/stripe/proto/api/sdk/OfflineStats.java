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
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: OfflineStats.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ:\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineStats;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OfflineStats$Builder;", "payments_count", "", "payment_amounts_by_currency", "", "", "", "setup_intents_count", "unknownFields", "Lokio/ByteString;", "(ILjava/util/Map;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineStats extends Message<OfflineStats, Builder> {
    public static final ProtoAdapter<OfflineStats> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "paymentAmountsByCurrency", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
    public final Map<String, Long> payment_amounts_by_currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "paymentsCount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int payments_count;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "setupIntentsCount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int setup_intents_count;

    public OfflineStats() {
        this(0, null, 0, null, 15, null);
    }

    public /* synthetic */ OfflineStats(int i, Map map, int i2, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? MapsKt.emptyMap() : map, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineStats(int i, Map<String, Long> payment_amounts_by_currency, int i2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payment_amounts_by_currency, "payment_amounts_by_currency");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payments_count = i;
        this.setup_intents_count = i2;
        this.payment_amounts_by_currency = Internal.immutableCopyOf("payment_amounts_by_currency", payment_amounts_by_currency);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payments_count = this.payments_count;
        builder.payment_amounts_by_currency = this.payment_amounts_by_currency;
        builder.setup_intents_count = this.setup_intents_count;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineStats)) {
            return false;
        }
        OfflineStats offlineStats = (OfflineStats) other;
        return Intrinsics.areEqual(unknownFields(), offlineStats.unknownFields()) && this.payments_count == offlineStats.payments_count && Intrinsics.areEqual(this.payment_amounts_by_currency, offlineStats.payment_amounts_by_currency) && this.setup_intents_count == offlineStats.setup_intents_count;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + Integer.hashCode(this.payments_count)) * 37) + this.payment_amounts_by_currency.hashCode()) * 37) + Integer.hashCode(this.setup_intents_count);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("payments_count=" + this.payments_count);
        if (!this.payment_amounts_by_currency.isEmpty()) {
            arrayList2.add("payment_amounts_by_currency=" + this.payment_amounts_by_currency);
        }
        arrayList2.add("setup_intents_count=" + this.setup_intents_count);
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineStats{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineStats copy$default(OfflineStats offlineStats, int i, Map map, int i2, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = offlineStats.payments_count;
        }
        if ((i3 & 2) != 0) {
            map = offlineStats.payment_amounts_by_currency;
        }
        if ((i3 & 4) != 0) {
            i2 = offlineStats.setup_intents_count;
        }
        if ((i3 & 8) != 0) {
            byteString = offlineStats.unknownFields();
        }
        return offlineStats.copy(i, map, i2, byteString);
    }

    public final OfflineStats copy(int payments_count, Map<String, Long> payment_amounts_by_currency, int setup_intents_count, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payment_amounts_by_currency, "payment_amounts_by_currency");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineStats(payments_count, payment_amounts_by_currency, setup_intents_count, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineStats.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineStats$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OfflineStats;", "()V", "payment_amounts_by_currency", "", "", "", "payments_count", "", "setup_intents_count", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineStats, Builder> {
        public Map<String, Long> payment_amounts_by_currency = MapsKt.emptyMap();
        public int payments_count;
        public int setup_intents_count;

        public final Builder payments_count(int payments_count) {
            this.payments_count = payments_count;
            return this;
        }

        public final Builder payment_amounts_by_currency(Map<String, Long> payment_amounts_by_currency) {
            Intrinsics.checkNotNullParameter(payment_amounts_by_currency, "payment_amounts_by_currency");
            this.payment_amounts_by_currency = payment_amounts_by_currency;
            return this;
        }

        public final Builder setup_intents_count(int setup_intents_count) {
            this.setup_intents_count = setup_intents_count;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineStats build() {
            return new OfflineStats(this.payments_count, this.payment_amounts_by_currency, this.setup_intents_count, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineStats.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineStats$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OfflineStats;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OfflineStats$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineStats build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineStats.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineStats>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OfflineStats$Companion$ADAPTER$1

            /* JADX INFO: renamed from: payment_amounts_by_currencyAdapter$delegate, reason: from kotlin metadata */
            private final Lazy payment_amounts_by_currencyAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Long>>>() { // from class: com.stripe.proto.api.sdk.OfflineStats$Companion$ADAPTER$1$payment_amounts_by_currencyAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends Long>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.INT64);
                }
            });

            private final ProtoAdapter<Map<String, Long>> getPayment_amounts_by_currencyAdapter() {
                return (ProtoAdapter) this.payment_amounts_by_currencyAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineStats value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.payments_count != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(1, Integer.valueOf(value.payments_count));
                }
                int iEncodedSizeWithTag = size + getPayment_amounts_by_currencyAdapter().encodedSizeWithTag(2, value.payment_amounts_by_currency);
                return value.setup_intents_count != 0 ? iEncodedSizeWithTag + ProtoAdapter.UINT32.encodedSizeWithTag(3, Integer.valueOf(value.setup_intents_count)) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineStats value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.payments_count != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.payments_count));
                }
                getPayment_amounts_by_currencyAdapter().encodeWithTag(writer, 2, value.payment_amounts_by_currency);
                if (value.setup_intents_count != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.setup_intents_count));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineStats value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.setup_intents_count != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.setup_intents_count));
                }
                getPayment_amounts_by_currencyAdapter().encodeWithTag(writer, 2, value.payment_amounts_by_currency);
                if (value.payments_count != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.payments_count));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineStats decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new OfflineStats(iIntValue, linkedHashMap, iIntValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        linkedHashMap.putAll(getPayment_amounts_by_currencyAdapter().decode(reader));
                    } else if (iNextTag == 3) {
                        iIntValue2 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineStats redact(OfflineStats value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return OfflineStats.copy$default(value, 0, null, 0, ByteString.EMPTY, 7, null);
            }
        };
    }
}
