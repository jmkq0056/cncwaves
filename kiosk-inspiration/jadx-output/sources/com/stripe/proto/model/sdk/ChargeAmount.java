package com.stripe.proto.model.sdk;

import com.google.firebase.analytics.FirebaseAnalytics;
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

/* JADX INFO: compiled from: ChargeAmount.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/sdk/ChargeAmount;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;", "charge_amount", "", "tip_amount", FirebaseAnalytics.Param.CURRENCY, "", "cashback_amount", "unknownFields", "Lokio/ByteString;", "(JJLjava/lang/String;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ChargeAmount extends Message<ChargeAmount, Builder> {
    public static final ProtoAdapter<ChargeAmount> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "cashbackAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long cashback_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "chargeAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long charge_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "tipAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long tip_amount;

    public ChargeAmount() {
        this(0L, 0L, null, 0L, null, 31, null);
    }

    public /* synthetic */ ChargeAmount(long j, long j2, String str, long j3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? 0L : j3, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChargeAmount(long j, long j2, String currency, long j3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge_amount = j;
        this.tip_amount = j2;
        this.currency = currency;
        this.cashback_amount = j3;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge_amount = this.charge_amount;
        builder.tip_amount = this.tip_amount;
        builder.currency = this.currency;
        builder.cashback_amount = this.cashback_amount;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ChargeAmount)) {
            return false;
        }
        ChargeAmount chargeAmount = (ChargeAmount) other;
        return Intrinsics.areEqual(unknownFields(), chargeAmount.unknownFields()) && this.charge_amount == chargeAmount.charge_amount && this.tip_amount == chargeAmount.tip_amount && Intrinsics.areEqual(this.currency, chargeAmount.currency) && this.cashback_amount == chargeAmount.cashback_amount;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + Long.hashCode(this.charge_amount)) * 37) + Long.hashCode(this.tip_amount)) * 37) + this.currency.hashCode()) * 37) + Long.hashCode(this.cashback_amount);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("charge_amount=" + this.charge_amount);
        arrayList2.add("tip_amount=" + this.tip_amount);
        arrayList2.add("currency=" + Internal.sanitize(this.currency));
        arrayList2.add("cashback_amount=" + this.cashback_amount);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ChargeAmount{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ChargeAmount copy$default(ChargeAmount chargeAmount, long j, long j2, String str, long j3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = chargeAmount.charge_amount;
        }
        long j4 = j;
        if ((i & 2) != 0) {
            j2 = chargeAmount.tip_amount;
        }
        long j5 = j2;
        if ((i & 4) != 0) {
            str = chargeAmount.currency;
        }
        return chargeAmount.copy(j4, j5, str, (i & 8) != 0 ? chargeAmount.cashback_amount : j3, (i & 16) != 0 ? chargeAmount.unknownFields() : byteString);
    }

    public final ChargeAmount copy(long charge_amount, long tip_amount, String currency, long cashback_amount, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ChargeAmount(charge_amount, tip_amount, currency, cashback_amount, unknownFields);
    }

    /* JADX INFO: compiled from: ChargeAmount.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "()V", "cashback_amount", "", "charge_amount", FirebaseAnalytics.Param.CURRENCY, "", "tip_amount", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ChargeAmount, Builder> {
        public long cashback_amount;
        public long charge_amount;
        public String currency = "";
        public long tip_amount;

        public final Builder charge_amount(long charge_amount) {
            this.charge_amount = charge_amount;
            return this;
        }

        public final Builder tip_amount(long tip_amount) {
            this.tip_amount = tip_amount;
            return this;
        }

        public final Builder currency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.currency = currency;
            return this;
        }

        public final Builder cashback_amount(long cashback_amount) {
            this.cashback_amount = cashback_amount;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ChargeAmount build() {
            return new ChargeAmount(this.charge_amount, this.tip_amount, this.currency, this.cashback_amount, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ChargeAmount.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/ChargeAmount$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ChargeAmount build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ChargeAmount.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ChargeAmount>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.ChargeAmount$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ChargeAmount value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.charge_amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.charge_amount));
                }
                if (value.tip_amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.tip_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.currency);
                }
                return value.cashback_amount != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.cashback_amount)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ChargeAmount value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.charge_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.charge_amount));
                }
                if (value.tip_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.tip_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.currency);
                }
                if (value.cashback_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.cashback_amount));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ChargeAmount value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.cashback_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.cashback_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.currency);
                }
                if (value.tip_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.tip_amount));
                }
                if (value.charge_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.charge_amount));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ChargeAmount redact(ChargeAmount value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ChargeAmount.copy$default(value, 0L, 0L, null, 0L, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ChargeAmount decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ChargeAmount(jLongValue, jLongValue2, strDecode, jLongValue3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        jLongValue3 = ProtoAdapter.INT64.decode(reader).longValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
