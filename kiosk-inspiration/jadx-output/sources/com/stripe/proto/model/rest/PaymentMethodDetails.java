package com.stripe.proto.model.rest;

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

/* JADX INFO: compiled from: PaymentMethodDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010JX\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;", "type", "", "card_present", "Lcom/stripe/proto/model/rest/CardPresent;", "interac_present", "card", "Lcom/stripe/proto/model/rest/Card;", "wechat_pay", "Lcom/stripe/proto/model/rest/WechatPay;", "affirm", "Lcom/stripe/proto/model/rest/Affirm;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodDetails extends Message<PaymentMethodDetails, Builder> {
    public static final ProtoAdapter<PaymentMethodDetails> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.Affirm#ADAPTER", oneofName = "details_object", schemaIndex = 5, tag = 7)
    public final Affirm affirm;

    @WireField(adapter = "com.stripe.proto.model.rest.Card#ADAPTER", oneofName = "details_object", schemaIndex = 3, tag = 5)
    public final Card card;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER", jsonName = "cardPresent", oneofName = "details_object", schemaIndex = 1, tag = 3)
    public final CardPresent card_present;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER", jsonName = "interacPresent", oneofName = "details_object", schemaIndex = 2, tag = 4)
    public final CardPresent interac_present;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 2)
    public final String type;

    @WireField(adapter = "com.stripe.proto.model.rest.WechatPay#ADAPTER", jsonName = "wechatPay", oneofName = "details_object", schemaIndex = 4, tag = 6)
    public final WechatPay wechat_pay;

    public PaymentMethodDetails() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ PaymentMethodDetails(String str, CardPresent cardPresent, CardPresent cardPresent2, Card card, WechatPay wechatPay, Affirm affirm, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : cardPresent, (i & 4) != 0 ? null : cardPresent2, (i & 8) != 0 ? null : card, (i & 16) != 0 ? null : wechatPay, (i & 32) != 0 ? null : affirm, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodDetails(String str, CardPresent cardPresent, CardPresent cardPresent2, Card card, WechatPay wechatPay, Affirm affirm, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = str;
        this.card_present = cardPresent;
        this.interac_present = cardPresent2;
        this.card = card;
        this.wechat_pay = wechatPay;
        this.affirm = affirm;
        if (Internal.countNonNull(cardPresent, cardPresent2, card, wechatPay, affirm) > 1) {
            throw new IllegalArgumentException("At most one of card_present, interac_present, card, wechat_pay, affirm may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.card_present = this.card_present;
        builder.interac_present = this.interac_present;
        builder.card = this.card;
        builder.wechat_pay = this.wechat_pay;
        builder.affirm = this.affirm;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentMethodDetails)) {
            return false;
        }
        PaymentMethodDetails paymentMethodDetails = (PaymentMethodDetails) other;
        return Intrinsics.areEqual(unknownFields(), paymentMethodDetails.unknownFields()) && Intrinsics.areEqual(this.type, paymentMethodDetails.type) && Intrinsics.areEqual(this.card_present, paymentMethodDetails.card_present) && Intrinsics.areEqual(this.interac_present, paymentMethodDetails.interac_present) && Intrinsics.areEqual(this.card, paymentMethodDetails.card) && Intrinsics.areEqual(this.wechat_pay, paymentMethodDetails.wechat_pay) && Intrinsics.areEqual(this.affirm, paymentMethodDetails.affirm);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        CardPresent cardPresent = this.card_present;
        int iHashCode3 = (iHashCode2 + (cardPresent != null ? cardPresent.hashCode() : 0)) * 37;
        CardPresent cardPresent2 = this.interac_present;
        int iHashCode4 = (iHashCode3 + (cardPresent2 != null ? cardPresent2.hashCode() : 0)) * 37;
        Card card = this.card;
        int iHashCode5 = (iHashCode4 + (card != null ? card.hashCode() : 0)) * 37;
        WechatPay wechatPay = this.wechat_pay;
        int iHashCode6 = (iHashCode5 + (wechatPay != null ? wechatPay.hashCode() : 0)) * 37;
        Affirm affirm = this.affirm;
        int iHashCode7 = iHashCode6 + (affirm != null ? affirm.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.type != null) {
            arrayList.add("type=" + this.type);
        }
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        if (this.interac_present != null) {
            arrayList.add("interac_present=" + this.interac_present);
        }
        if (this.card != null) {
            arrayList.add("card=" + this.card);
        }
        if (this.wechat_pay != null) {
            arrayList.add("wechat_pay=" + this.wechat_pay);
        }
        if (this.affirm != null) {
            arrayList.add("affirm=" + this.affirm);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentMethodDetails{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaymentMethodDetails copy$default(PaymentMethodDetails paymentMethodDetails, String str, CardPresent cardPresent, CardPresent cardPresent2, Card card, WechatPay wechatPay, Affirm affirm, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paymentMethodDetails.type;
        }
        if ((i & 2) != 0) {
            cardPresent = paymentMethodDetails.card_present;
        }
        if ((i & 4) != 0) {
            cardPresent2 = paymentMethodDetails.interac_present;
        }
        if ((i & 8) != 0) {
            card = paymentMethodDetails.card;
        }
        if ((i & 16) != 0) {
            wechatPay = paymentMethodDetails.wechat_pay;
        }
        if ((i & 32) != 0) {
            affirm = paymentMethodDetails.affirm;
        }
        if ((i & 64) != 0) {
            byteString = paymentMethodDetails.unknownFields();
        }
        Affirm affirm2 = affirm;
        ByteString byteString2 = byteString;
        WechatPay wechatPay2 = wechatPay;
        CardPresent cardPresent3 = cardPresent2;
        return paymentMethodDetails.copy(str, cardPresent, cardPresent3, card, wechatPay2, affirm2, byteString2);
    }

    public final PaymentMethodDetails copy(String type, CardPresent card_present, CardPresent interac_present, Card card, WechatPay wechat_pay, Affirm affirm, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentMethodDetails(type, card_present, interac_present, card, wechat_pay, affirm, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentMethodDetails.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "()V", "affirm", "Lcom/stripe/proto/model/rest/Affirm;", "card", "Lcom/stripe/proto/model/rest/Card;", "card_present", "Lcom/stripe/proto/model/rest/CardPresent;", "interac_present", "type", "", "wechat_pay", "Lcom/stripe/proto/model/rest/WechatPay;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentMethodDetails, Builder> {
        public Affirm affirm;
        public Card card;
        public CardPresent card_present;
        public CardPresent interac_present;
        public String type;
        public WechatPay wechat_pay;

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        public final Builder card_present(CardPresent card_present) {
            this.card_present = card_present;
            this.interac_present = null;
            this.card = null;
            this.wechat_pay = null;
            this.affirm = null;
            return this;
        }

        public final Builder interac_present(CardPresent interac_present) {
            this.interac_present = interac_present;
            this.card_present = null;
            this.card = null;
            this.wechat_pay = null;
            this.affirm = null;
            return this;
        }

        public final Builder card(Card card) {
            this.card = card;
            this.card_present = null;
            this.interac_present = null;
            this.wechat_pay = null;
            this.affirm = null;
            return this;
        }

        public final Builder wechat_pay(WechatPay wechat_pay) {
            this.wechat_pay = wechat_pay;
            this.card_present = null;
            this.interac_present = null;
            this.card = null;
            this.affirm = null;
            return this;
        }

        public final Builder affirm(Affirm affirm) {
            this.affirm = affirm;
            this.card_present = null;
            this.interac_present = null;
            this.card = null;
            this.wechat_pay = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentMethodDetails build() {
            return new PaymentMethodDetails(this.type, this.card_present, this.interac_present, this.card, this.wechat_pay, this.affirm, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentMethodDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentMethodDetails build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentMethodDetails.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentMethodDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodDetails$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentMethodDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.type);
                }
                return size + CardPresent.ADAPTER.encodedSizeWithTag(3, value.card_present) + CardPresent.ADAPTER.encodedSizeWithTag(4, value.interac_present) + Card.ADAPTER.encodedSizeWithTag(5, value.card) + WechatPay.ADAPTER.encodedSizeWithTag(6, value.wechat_pay) + Affirm.ADAPTER.encodedSizeWithTag(7, value.affirm);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentMethodDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.type);
                }
                CardPresent.ADAPTER.encodeWithTag(writer, 3, value.card_present);
                CardPresent.ADAPTER.encodeWithTag(writer, 4, value.interac_present);
                Card.ADAPTER.encodeWithTag(writer, 5, value.card);
                WechatPay.ADAPTER.encodeWithTag(writer, 6, value.wechat_pay);
                Affirm.ADAPTER.encodeWithTag(writer, 7, value.affirm);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentMethodDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Affirm.ADAPTER.encodeWithTag(writer, 7, value.affirm);
                WechatPay.ADAPTER.encodeWithTag(writer, 6, value.wechat_pay);
                Card.ADAPTER.encodeWithTag(writer, 5, value.card);
                CardPresent.ADAPTER.encodeWithTag(writer, 4, value.interac_present);
                CardPresent.ADAPTER.encodeWithTag(writer, 3, value.card_present);
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.type);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethodDetails redact(PaymentMethodDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.type;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                CardPresent cardPresent = value.card_present;
                CardPresent cardPresentRedact = cardPresent != null ? CardPresent.ADAPTER.redact(cardPresent) : null;
                CardPresent cardPresent2 = value.interac_present;
                CardPresent cardPresentRedact2 = cardPresent2 != null ? CardPresent.ADAPTER.redact(cardPresent2) : null;
                Card card = value.card;
                Card cardRedact = card != null ? Card.ADAPTER.redact(card) : null;
                WechatPay wechatPay = value.wechat_pay;
                WechatPay wechatPayRedact = wechatPay != null ? WechatPay.ADAPTER.redact(wechatPay) : null;
                Affirm affirm = value.affirm;
                return value.copy(strRedact, cardPresentRedact, cardPresentRedact2, cardRedact, wechatPayRedact, affirm != null ? Affirm.ADAPTER.redact(affirm) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethodDetails decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                CardPresent cardPresentDecode = null;
                CardPresent cardPresentDecode2 = null;
                Card cardDecode = null;
                WechatPay wechatPayDecode = null;
                Affirm affirmDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                cardPresentDecode = CardPresent.ADAPTER.decode(reader);
                                break;
                            case 4:
                                cardPresentDecode2 = CardPresent.ADAPTER.decode(reader);
                                break;
                            case 5:
                                cardDecode = Card.ADAPTER.decode(reader);
                                break;
                            case 6:
                                wechatPayDecode = WechatPay.ADAPTER.decode(reader);
                                break;
                            case 7:
                                affirmDecode = Affirm.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new PaymentMethodDetails(strDecode, cardPresentDecode, cardPresentDecode2, cardDecode, wechatPayDecode, affirmDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
