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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.sdk.ChargeAmount;
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

/* JADX INFO: compiled from: CollectInteracRefundMethodRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ>\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest$Builder;", "charge_amount", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "enable_customer_cancellation", "", "charge_id", "", "payment_id", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/ChargeAmount;ZLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectInteracRefundMethodRequest extends Message<CollectInteracRefundMethodRequest, Builder> {
    public static final ProtoAdapter<CollectInteracRefundMethodRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.ChargeAmount#ADAPTER", jsonName = "chargeAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 3)
    public final ChargeAmount charge_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "chargeId", oneofName = OfflineStorageConstantsKt.ID, schemaIndex = 2, tag = 1)
    public final String charge_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCustomerCancellation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 4)
    public final boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentId", oneofName = OfflineStorageConstantsKt.ID, schemaIndex = 3, tag = 5)
    public final String payment_id;

    public CollectInteracRefundMethodRequest() {
        this(null, false, null, null, null, 31, null);
    }

    public /* synthetic */ CollectInteracRefundMethodRequest(ChargeAmount chargeAmount, boolean z, String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : chargeAmount, (i & 2) != 0 ? false : z, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectInteracRefundMethodRequest(ChargeAmount chargeAmount, boolean z, String str, String str2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge_amount = chargeAmount;
        this.enable_customer_cancellation = z;
        this.charge_id = str;
        this.payment_id = str2;
        if (Internal.countNonNull(str, str2) > 1) {
            throw new IllegalArgumentException("At most one of charge_id, payment_id may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge_amount = this.charge_amount;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.charge_id = this.charge_id;
        builder.payment_id = this.payment_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectInteracRefundMethodRequest)) {
            return false;
        }
        CollectInteracRefundMethodRequest collectInteracRefundMethodRequest = (CollectInteracRefundMethodRequest) other;
        return Intrinsics.areEqual(unknownFields(), collectInteracRefundMethodRequest.unknownFields()) && Intrinsics.areEqual(this.charge_amount, collectInteracRefundMethodRequest.charge_amount) && this.enable_customer_cancellation == collectInteracRefundMethodRequest.enable_customer_cancellation && Intrinsics.areEqual(this.charge_id, collectInteracRefundMethodRequest.charge_id) && Intrinsics.areEqual(this.payment_id, collectInteracRefundMethodRequest.payment_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ChargeAmount chargeAmount = this.charge_amount;
        int iHashCode2 = (((iHashCode + (chargeAmount != null ? chargeAmount.hashCode() : 0)) * 37) + Boolean.hashCode(this.enable_customer_cancellation)) * 37;
        String str = this.charge_id;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.payment_id;
        int iHashCode4 = iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.charge_amount != null) {
            arrayList.add("charge_amount=" + this.charge_amount);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        if (this.charge_id != null) {
            arrayList2.add("charge_id=" + Internal.sanitize(this.charge_id));
        }
        if (this.payment_id != null) {
            arrayList2.add("payment_id=" + Internal.sanitize(this.payment_id));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectInteracRefundMethodRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CollectInteracRefundMethodRequest copy$default(CollectInteracRefundMethodRequest collectInteracRefundMethodRequest, ChargeAmount chargeAmount, boolean z, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            chargeAmount = collectInteracRefundMethodRequest.charge_amount;
        }
        if ((i & 2) != 0) {
            z = collectInteracRefundMethodRequest.enable_customer_cancellation;
        }
        if ((i & 4) != 0) {
            str = collectInteracRefundMethodRequest.charge_id;
        }
        if ((i & 8) != 0) {
            str2 = collectInteracRefundMethodRequest.payment_id;
        }
        if ((i & 16) != 0) {
            byteString = collectInteracRefundMethodRequest.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str3 = str;
        return collectInteracRefundMethodRequest.copy(chargeAmount, z, str3, str2, byteString2);
    }

    public final CollectInteracRefundMethodRequest copy(ChargeAmount charge_amount, boolean enable_customer_cancellation, String charge_id, String payment_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectInteracRefundMethodRequest(charge_amount, enable_customer_cancellation, charge_id, payment_id, unknownFields);
    }

    /* JADX INFO: compiled from: CollectInteracRefundMethodRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", "()V", "charge_amount", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "charge_id", "", "enable_customer_cancellation", "", "payment_id", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectInteracRefundMethodRequest, Builder> {
        public ChargeAmount charge_amount;
        public String charge_id;
        public boolean enable_customer_cancellation;
        public String payment_id;

        public final Builder charge_amount(ChargeAmount charge_amount) {
            this.charge_amount = charge_amount;
            return this;
        }

        public final Builder enable_customer_cancellation(boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        public final Builder charge_id(String charge_id) {
            this.charge_id = charge_id;
            this.payment_id = null;
            return this;
        }

        public final Builder payment_id(String payment_id) {
            this.payment_id = payment_id;
            this.charge_id = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectInteracRefundMethodRequest build() {
            return new CollectInteracRefundMethodRequest(this.charge_amount, this.enable_customer_cancellation, this.charge_id, this.payment_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectInteracRefundMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectInteracRefundMethodRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectInteracRefundMethodRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectInteracRefundMethodRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInteracRefundMethodRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectInteracRefundMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.charge_amount != null) {
                    size += ChargeAmount.ADAPTER.encodedSizeWithTag(3, value.charge_amount);
                }
                if (value.enable_customer_cancellation) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.enable_customer_cancellation));
                }
                return size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.charge_id) + ProtoAdapter.STRING.encodedSizeWithTag(5, value.payment_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectInteracRefundMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.charge_amount != null) {
                    ChargeAmount.ADAPTER.encodeWithTag(writer, 3, value.charge_amount);
                }
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.enable_customer_cancellation));
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.payment_id);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectInteracRefundMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.payment_id);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.enable_customer_cancellation));
                }
                if (value.charge_amount != null) {
                    ChargeAmount.ADAPTER.encodeWithTag(writer, 3, value.charge_amount);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectInteracRefundMethodRequest redact(CollectInteracRefundMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ChargeAmount chargeAmount = value.charge_amount;
                return CollectInteracRefundMethodRequest.copy$default(value, chargeAmount != null ? ChargeAmount.ADAPTER.redact(chargeAmount) : null, false, null, null, ByteString.EMPTY, 14, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectInteracRefundMethodRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ChargeAmount chargeAmountDecode = null;
                String strDecode = null;
                boolean zBooleanValue = false;
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectInteracRefundMethodRequest(chargeAmountDecode, zBooleanValue, strDecode2, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        chargeAmountDecode = ChargeAmount.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 5) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
