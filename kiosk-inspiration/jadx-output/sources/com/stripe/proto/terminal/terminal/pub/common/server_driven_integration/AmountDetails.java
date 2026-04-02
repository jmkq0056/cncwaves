package com.stripe.proto.terminal.terminal.pub.common.server_driven_integration;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails;
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

/* JADX INFO: compiled from: AmountDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0018\u0019\u001a\u001bB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ9\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$Builder;", "tip", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;", "surcharge", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;", "amount_discount", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;Ljava/lang/Long;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "SurchargeDetails", "TipDetails", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AmountDetails extends Message<AmountDetails, Builder> {
    public static final ProtoAdapter<AmountDetails> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountDiscount", schemaIndex = 2, tag = 3)
    public final Long amount_discount;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails$SurchargeDetails#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final SurchargeDetails surcharge;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails$TipDetails#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TipDetails tip;

    public AmountDetails() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ AmountDetails(TipDetails tipDetails, SurchargeDetails surchargeDetails, Long l, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tipDetails, (i & 2) != 0 ? null : surchargeDetails, (i & 4) != 0 ? null : l, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AmountDetails(TipDetails tipDetails, SurchargeDetails surchargeDetails, Long l, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tip = tipDetails;
        this.surcharge = surchargeDetails;
        this.amount_discount = l;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.tip = this.tip;
        builder.surcharge = this.surcharge;
        builder.amount_discount = this.amount_discount;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AmountDetails)) {
            return false;
        }
        AmountDetails amountDetails = (AmountDetails) other;
        return Intrinsics.areEqual(unknownFields(), amountDetails.unknownFields()) && Intrinsics.areEqual(this.tip, amountDetails.tip) && Intrinsics.areEqual(this.surcharge, amountDetails.surcharge) && Intrinsics.areEqual(this.amount_discount, amountDetails.amount_discount);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        TipDetails tipDetails = this.tip;
        int iHashCode2 = (iHashCode + (tipDetails != null ? tipDetails.hashCode() : 0)) * 37;
        SurchargeDetails surchargeDetails = this.surcharge;
        int iHashCode3 = (iHashCode2 + (surchargeDetails != null ? surchargeDetails.hashCode() : 0)) * 37;
        Long l = this.amount_discount;
        int iHashCode4 = iHashCode3 + (l != null ? l.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.tip != null) {
            arrayList.add("tip=" + this.tip);
        }
        if (this.surcharge != null) {
            arrayList.add("surcharge=" + this.surcharge);
        }
        if (this.amount_discount != null) {
            arrayList.add("amount_discount=" + this.amount_discount);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AmountDetails{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AmountDetails copy$default(AmountDetails amountDetails, TipDetails tipDetails, SurchargeDetails surchargeDetails, Long l, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            tipDetails = amountDetails.tip;
        }
        if ((i & 2) != 0) {
            surchargeDetails = amountDetails.surcharge;
        }
        if ((i & 4) != 0) {
            l = amountDetails.amount_discount;
        }
        if ((i & 8) != 0) {
            byteString = amountDetails.unknownFields();
        }
        return amountDetails.copy(tipDetails, surchargeDetails, l, byteString);
    }

    public final AmountDetails copy(TipDetails tip, SurchargeDetails surcharge, Long amount_discount, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AmountDetails(tip, surcharge, amount_discount, unknownFields);
    }

    /* JADX INFO: compiled from: AmountDetails.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;", "()V", "amount_discount", "", "Ljava/lang/Long;", "surcharge", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;", "tip", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AmountDetails, Builder> {
        public Long amount_discount;
        public SurchargeDetails surcharge;
        public TipDetails tip;

        public final Builder tip(TipDetails tip) {
            this.tip = tip;
            return this;
        }

        public final Builder surcharge(SurchargeDetails surcharge) {
            this.surcharge = surcharge;
            return this;
        }

        public final Builder amount_discount(Long amount_discount) {
            this.amount_discount = amount_discount;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AmountDetails build() {
            return new AmountDetails(this.tip, this.surcharge, this.amount_discount, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AmountDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AmountDetails build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AmountDetails.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AmountDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AmountDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.tip != null) {
                    size += AmountDetails.TipDetails.ADAPTER.encodedSizeWithTag(1, value.tip);
                }
                if (value.surcharge != null) {
                    size += AmountDetails.SurchargeDetails.ADAPTER.encodedSizeWithTag(2, value.surcharge);
                }
                return value.amount_discount != null ? size + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(3, value.amount_discount) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AmountDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.tip != null) {
                    AmountDetails.TipDetails.ADAPTER.encodeWithTag(writer, 1, value.tip);
                }
                if (value.surcharge != null) {
                    AmountDetails.SurchargeDetails.ADAPTER.encodeWithTag(writer, 2, value.surcharge);
                }
                if (value.amount_discount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 3, value.amount_discount);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AmountDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.amount_discount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 3, value.amount_discount);
                }
                if (value.surcharge != null) {
                    AmountDetails.SurchargeDetails.ADAPTER.encodeWithTag(writer, 2, value.surcharge);
                }
                if (value.tip != null) {
                    AmountDetails.TipDetails.ADAPTER.encodeWithTag(writer, 1, value.tip);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AmountDetails redact(AmountDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                AmountDetails.TipDetails tipDetails = value.tip;
                AmountDetails.TipDetails tipDetailsRedact = tipDetails != null ? AmountDetails.TipDetails.ADAPTER.redact(tipDetails) : null;
                AmountDetails.SurchargeDetails surchargeDetails = value.surcharge;
                AmountDetails.SurchargeDetails surchargeDetailsRedact = surchargeDetails != null ? AmountDetails.SurchargeDetails.ADAPTER.redact(surchargeDetails) : null;
                Long l = value.amount_discount;
                return value.copy(tipDetailsRedact, surchargeDetailsRedact, l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AmountDetails decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                AmountDetails.TipDetails tipDetailsDecode = null;
                AmountDetails.SurchargeDetails surchargeDetailsDecode = null;
                Long lDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AmountDetails(tipDetailsDecode, surchargeDetailsDecode, lDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        tipDetailsDecode = AmountDetails.TipDetails.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        surchargeDetailsDecode = AmountDetails.SurchargeDetails.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: AmountDetails.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J!\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TipDetails extends Message<TipDetails, Builder> {
        public static final ProtoAdapter<TipDetails> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 0, tag = 1)
        public final Long amount;

        /* JADX WARN: Multi-variable type inference failed */
        public TipDetails() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ TipDetails(Long l, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : l, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TipDetails(Long l, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.amount = l;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.amount = this.amount;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TipDetails)) {
                return false;
            }
            TipDetails tipDetails = (TipDetails) other;
            return Intrinsics.areEqual(unknownFields(), tipDetails.unknownFields()) && Intrinsics.areEqual(this.amount, tipDetails.amount);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Long l = this.amount;
            int iHashCode2 = iHashCode + (l != null ? l.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.amount != null) {
                arrayList.add("amount=" + this.amount);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "TipDetails{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ TipDetails copy$default(TipDetails tipDetails, Long l, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                l = tipDetails.amount;
            }
            if ((i & 2) != 0) {
                byteString = tipDetails.unknownFields();
            }
            return tipDetails.copy(l, byteString);
        }

        public final TipDetails copy(Long amount, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TipDetails(amount, unknownFields);
        }

        /* JADX INFO: compiled from: AmountDetails.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0002H\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TipDetails, Builder> {
            public Long amount;

            public final Builder amount(Long amount) {
                this.amount = amount;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TipDetails build() {
                return new TipDetails(this.amount, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AmountDetails.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$TipDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TipDetails build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TipDetails.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TipDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails$TipDetails$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AmountDetails.TipDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.amount != null ? size + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.amount) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AmountDetails.TipDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.amount != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AmountDetails.TipDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.amount != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AmountDetails.TipDetails redact(AmountDetails.TipDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Long l = value.amount;
                    return value.copy(l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AmountDetails.TipDetails decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Long lDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AmountDetails.TipDetails(lDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: AmountDetails.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J!\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SurchargeDetails extends Message<SurchargeDetails, Builder> {
        public static final ProtoAdapter<SurchargeDetails> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 0, tag = 1)
        public final Long amount;

        /* JADX WARN: Multi-variable type inference failed */
        public SurchargeDetails() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ SurchargeDetails(Long l, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : l, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SurchargeDetails(Long l, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.amount = l;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.amount = this.amount;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SurchargeDetails)) {
                return false;
            }
            SurchargeDetails surchargeDetails = (SurchargeDetails) other;
            return Intrinsics.areEqual(unknownFields(), surchargeDetails.unknownFields()) && Intrinsics.areEqual(this.amount, surchargeDetails.amount);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Long l = this.amount;
            int iHashCode2 = iHashCode + (l != null ? l.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.amount != null) {
                arrayList.add("amount=" + this.amount);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SurchargeDetails{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ SurchargeDetails copy$default(SurchargeDetails surchargeDetails, Long l, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                l = surchargeDetails.amount;
            }
            if ((i & 2) != 0) {
                byteString = surchargeDetails.unknownFields();
            }
            return surchargeDetails.copy(l, byteString);
        }

        public final SurchargeDetails copy(Long amount, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SurchargeDetails(amount, unknownFields);
        }

        /* JADX INFO: compiled from: AmountDetails.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0002H\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SurchargeDetails, Builder> {
            public Long amount;

            public final Builder amount(Long amount) {
                this.amount = amount;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SurchargeDetails build() {
                return new SurchargeDetails(this.amount, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AmountDetails.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails$SurchargeDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SurchargeDetails build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SurchargeDetails.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SurchargeDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails$SurchargeDetails$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AmountDetails.SurchargeDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.amount != null ? size + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.amount) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AmountDetails.SurchargeDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.amount != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AmountDetails.SurchargeDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.amount != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AmountDetails.SurchargeDetails redact(AmountDetails.SurchargeDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Long l = value.amount;
                    return value.copy(l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AmountDetails.SurchargeDetails decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Long lDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AmountDetails.SurchargeDetails(lDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
