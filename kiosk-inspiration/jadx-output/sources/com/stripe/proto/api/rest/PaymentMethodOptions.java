package com.stripe.proto.api.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.api.rest.PaymentMethodOptions;
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

/* JADX INFO: compiled from: PaymentMethodOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;", "card_present", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "card", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "wechat_pay", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Card", "CardPresent", "Companion", "WechatPay", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodOptions extends Message<PaymentMethodOptions, Builder> {
    public static final ProtoAdapter<PaymentMethodOptions> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.PaymentMethodOptions$Card#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Card card;

    @WireField(adapter = "com.stripe.proto.api.rest.PaymentMethodOptions$CardPresent#ADAPTER", jsonName = "cardPresent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CardPresent card_present;

    @WireField(adapter = "com.stripe.proto.api.rest.PaymentMethodOptions$WechatPay#ADAPTER", jsonName = "wechatPay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final WechatPay wechat_pay;

    public PaymentMethodOptions() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ PaymentMethodOptions(CardPresent cardPresent, Card card, WechatPay wechatPay, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cardPresent, (i & 2) != 0 ? null : card, (i & 4) != 0 ? null : wechatPay, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodOptions(CardPresent cardPresent, Card card, WechatPay wechatPay, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.card_present = cardPresent;
        this.card = card;
        this.wechat_pay = wechatPay;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.card_present = this.card_present;
        builder.card = this.card;
        builder.wechat_pay = this.wechat_pay;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentMethodOptions)) {
            return false;
        }
        PaymentMethodOptions paymentMethodOptions = (PaymentMethodOptions) other;
        return Intrinsics.areEqual(unknownFields(), paymentMethodOptions.unknownFields()) && Intrinsics.areEqual(this.card_present, paymentMethodOptions.card_present) && Intrinsics.areEqual(this.card, paymentMethodOptions.card) && Intrinsics.areEqual(this.wechat_pay, paymentMethodOptions.wechat_pay);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CardPresent cardPresent = this.card_present;
        int iHashCode2 = (iHashCode + (cardPresent != null ? cardPresent.hashCode() : 0)) * 37;
        Card card = this.card;
        int iHashCode3 = (iHashCode2 + (card != null ? card.hashCode() : 0)) * 37;
        WechatPay wechatPay = this.wechat_pay;
        int iHashCode4 = iHashCode3 + (wechatPay != null ? wechatPay.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        if (this.card != null) {
            arrayList.add("card=" + this.card);
        }
        if (this.wechat_pay != null) {
            arrayList.add("wechat_pay=" + this.wechat_pay);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentMethodOptions{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaymentMethodOptions copy$default(PaymentMethodOptions paymentMethodOptions, CardPresent cardPresent, Card card, WechatPay wechatPay, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            cardPresent = paymentMethodOptions.card_present;
        }
        if ((i & 2) != 0) {
            card = paymentMethodOptions.card;
        }
        if ((i & 4) != 0) {
            wechatPay = paymentMethodOptions.wechat_pay;
        }
        if ((i & 8) != 0) {
            byteString = paymentMethodOptions.unknownFields();
        }
        return paymentMethodOptions.copy(cardPresent, card, wechatPay, byteString);
    }

    public final PaymentMethodOptions copy(CardPresent card_present, Card card, WechatPay wechat_pay, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentMethodOptions(card_present, card, wechat_pay, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "()V", "card", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "card_present", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "wechat_pay", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentMethodOptions, Builder> {
        public Card card;
        public CardPresent card_present;
        public WechatPay wechat_pay;

        public final Builder card_present(CardPresent card_present) {
            this.card_present = card_present;
            return this;
        }

        public final Builder card(Card card) {
            this.card = card;
            return this;
        }

        public final Builder wechat_pay(WechatPay wechat_pay) {
            this.wechat_pay = wechat_pay;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentMethodOptions build() {
            return new PaymentMethodOptions(this.card_present, this.card, this.wechat_pay, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentMethodOptions build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentMethodOptions.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentMethodOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.PaymentMethodOptions$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentMethodOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.card_present != null) {
                    size += PaymentMethodOptions.CardPresent.ADAPTER.encodedSizeWithTag(1, value.card_present);
                }
                if (value.card != null) {
                    size += PaymentMethodOptions.Card.ADAPTER.encodedSizeWithTag(2, value.card);
                }
                return value.wechat_pay != null ? size + PaymentMethodOptions.WechatPay.ADAPTER.encodedSizeWithTag(3, value.wechat_pay) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentMethodOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.card_present != null) {
                    PaymentMethodOptions.CardPresent.ADAPTER.encodeWithTag(writer, 1, value.card_present);
                }
                if (value.card != null) {
                    PaymentMethodOptions.Card.ADAPTER.encodeWithTag(writer, 2, value.card);
                }
                if (value.wechat_pay != null) {
                    PaymentMethodOptions.WechatPay.ADAPTER.encodeWithTag(writer, 3, value.wechat_pay);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentMethodOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.wechat_pay != null) {
                    PaymentMethodOptions.WechatPay.ADAPTER.encodeWithTag(writer, 3, value.wechat_pay);
                }
                if (value.card != null) {
                    PaymentMethodOptions.Card.ADAPTER.encodeWithTag(writer, 2, value.card);
                }
                if (value.card_present != null) {
                    PaymentMethodOptions.CardPresent.ADAPTER.encodeWithTag(writer, 1, value.card_present);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethodOptions redact(PaymentMethodOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethodOptions.CardPresent cardPresent = value.card_present;
                PaymentMethodOptions.CardPresent cardPresentRedact = cardPresent != null ? PaymentMethodOptions.CardPresent.ADAPTER.redact(cardPresent) : null;
                PaymentMethodOptions.Card card = value.card;
                PaymentMethodOptions.Card cardRedact = card != null ? PaymentMethodOptions.Card.ADAPTER.redact(card) : null;
                PaymentMethodOptions.WechatPay wechatPay = value.wechat_pay;
                return value.copy(cardPresentRedact, cardRedact, wechatPay != null ? PaymentMethodOptions.WechatPay.ADAPTER.redact(wechatPay) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethodOptions decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentMethodOptions.CardPresent cardPresentDecode = null;
                PaymentMethodOptions.Card cardDecode = null;
                PaymentMethodOptions.WechatPay wechatPayDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PaymentMethodOptions(cardPresentDecode, cardDecode, wechatPayDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        cardPresentDecode = PaymentMethodOptions.CardPresent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        cardDecode = PaymentMethodOptions.Card.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        wechatPayDecode = PaymentMethodOptions.WechatPay.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0019\u001a\u001bBW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ]\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0007H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;", "request_extended_authorization", "", "request_incremental_authorization_support", "capture_method", "", "routing", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;", "dynamic_currency_conversion_selected", "request_partial_authorization", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "RoutingParameters", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardPresent extends Message<CardPresent, Builder> {
        public static final ProtoAdapter<CardPresent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "captureMethod", schemaIndex = 2, tag = 3)
        public final String capture_method;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "dynamicCurrencyConversionSelected", schemaIndex = 4, tag = 5)
        public final Boolean dynamic_currency_conversion_selected;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "requestExtendedAuthorization", schemaIndex = 0, tag = 1)
        public final Boolean request_extended_authorization;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "requestIncrementalAuthorizationSupport", schemaIndex = 1, tag = 2)
        public final Boolean request_incremental_authorization_support;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "requestPartialAuthorization", schemaIndex = 5, tag = 6)
        public final String request_partial_authorization;

        @WireField(adapter = "com.stripe.proto.api.rest.PaymentMethodOptions$CardPresent$RoutingParameters#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final RoutingParameters routing;

        public CardPresent() {
            this(null, null, null, null, null, null, null, 127, null);
        }

        public /* synthetic */ CardPresent(Boolean bool, Boolean bool2, String str, RoutingParameters routingParameters, Boolean bool3, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : bool2, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : routingParameters, (i & 16) != 0 ? null : bool3, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardPresent(Boolean bool, Boolean bool2, String str, RoutingParameters routingParameters, Boolean bool3, String str2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.request_extended_authorization = bool;
            this.request_incremental_authorization_support = bool2;
            this.capture_method = str;
            this.routing = routingParameters;
            this.dynamic_currency_conversion_selected = bool3;
            this.request_partial_authorization = str2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.request_extended_authorization = this.request_extended_authorization;
            builder.request_incremental_authorization_support = this.request_incremental_authorization_support;
            builder.capture_method = this.capture_method;
            builder.routing = this.routing;
            builder.dynamic_currency_conversion_selected = this.dynamic_currency_conversion_selected;
            builder.request_partial_authorization = this.request_partial_authorization;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CardPresent)) {
                return false;
            }
            CardPresent cardPresent = (CardPresent) other;
            return Intrinsics.areEqual(unknownFields(), cardPresent.unknownFields()) && Intrinsics.areEqual(this.request_extended_authorization, cardPresent.request_extended_authorization) && Intrinsics.areEqual(this.request_incremental_authorization_support, cardPresent.request_incremental_authorization_support) && Intrinsics.areEqual(this.capture_method, cardPresent.capture_method) && Intrinsics.areEqual(this.routing, cardPresent.routing) && Intrinsics.areEqual(this.dynamic_currency_conversion_selected, cardPresent.dynamic_currency_conversion_selected) && Intrinsics.areEqual(this.request_partial_authorization, cardPresent.request_partial_authorization);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Boolean bool = this.request_extended_authorization;
            int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
            Boolean bool2 = this.request_incremental_authorization_support;
            int iHashCode3 = (iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
            String str = this.capture_method;
            int iHashCode4 = (iHashCode3 + (str != null ? str.hashCode() : 0)) * 37;
            RoutingParameters routingParameters = this.routing;
            int iHashCode5 = (iHashCode4 + (routingParameters != null ? routingParameters.hashCode() : 0)) * 37;
            Boolean bool3 = this.dynamic_currency_conversion_selected;
            int iHashCode6 = (iHashCode5 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
            String str2 = this.request_partial_authorization;
            int iHashCode7 = iHashCode6 + (str2 != null ? str2.hashCode() : 0);
            this.hashCode = iHashCode7;
            return iHashCode7;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.request_extended_authorization != null) {
                arrayList.add("request_extended_authorization=" + this.request_extended_authorization);
            }
            if (this.request_incremental_authorization_support != null) {
                arrayList.add("request_incremental_authorization_support=" + this.request_incremental_authorization_support);
            }
            if (this.capture_method != null) {
                arrayList.add("capture_method=" + this.capture_method);
            }
            if (this.routing != null) {
                arrayList.add("routing=" + this.routing);
            }
            if (this.dynamic_currency_conversion_selected != null) {
                arrayList.add("dynamic_currency_conversion_selected=" + this.dynamic_currency_conversion_selected);
            }
            if (this.request_partial_authorization != null) {
                arrayList.add("request_partial_authorization=" + this.request_partial_authorization);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "CardPresent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CardPresent copy$default(CardPresent cardPresent, Boolean bool, Boolean bool2, String str, RoutingParameters routingParameters, Boolean bool3, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = cardPresent.request_extended_authorization;
            }
            if ((i & 2) != 0) {
                bool2 = cardPresent.request_incremental_authorization_support;
            }
            if ((i & 4) != 0) {
                str = cardPresent.capture_method;
            }
            if ((i & 8) != 0) {
                routingParameters = cardPresent.routing;
            }
            if ((i & 16) != 0) {
                bool3 = cardPresent.dynamic_currency_conversion_selected;
            }
            if ((i & 32) != 0) {
                str2 = cardPresent.request_partial_authorization;
            }
            if ((i & 64) != 0) {
                byteString = cardPresent.unknownFields();
            }
            String str3 = str2;
            ByteString byteString2 = byteString;
            Boolean bool4 = bool3;
            String str4 = str;
            return cardPresent.copy(bool, bool2, str4, routingParameters, bool4, str3, byteString2);
        }

        public final CardPresent copy(Boolean request_extended_authorization, Boolean request_incremental_authorization_support, String capture_method, RoutingParameters routing, Boolean dynamic_currency_conversion_selected, String request_partial_authorization, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CardPresent(request_extended_authorization, request_incremental_authorization_support, capture_method, routing, dynamic_currency_conversion_selected, request_partial_authorization, unknownFields);
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000fJ\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000fJ\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0016\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "()V", "capture_method", "", "dynamic_currency_conversion_selected", "", "Ljava/lang/Boolean;", "request_extended_authorization", "request_incremental_authorization_support", "request_partial_authorization", "routing", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CardPresent, Builder> {
            public String capture_method;
            public Boolean dynamic_currency_conversion_selected;
            public Boolean request_extended_authorization;
            public Boolean request_incremental_authorization_support;
            public String request_partial_authorization;
            public RoutingParameters routing;

            public final Builder request_extended_authorization(Boolean request_extended_authorization) {
                this.request_extended_authorization = request_extended_authorization;
                return this;
            }

            public final Builder request_incremental_authorization_support(Boolean request_incremental_authorization_support) {
                this.request_incremental_authorization_support = request_incremental_authorization_support;
                return this;
            }

            public final Builder capture_method(String capture_method) {
                this.capture_method = capture_method;
                return this;
            }

            public final Builder routing(RoutingParameters routing) {
                this.routing = routing;
                return this;
            }

            public final Builder dynamic_currency_conversion_selected(Boolean dynamic_currency_conversion_selected) {
                this.dynamic_currency_conversion_selected = dynamic_currency_conversion_selected;
                return this;
            }

            public final Builder request_partial_authorization(String request_partial_authorization) {
                this.request_partial_authorization = request_partial_authorization;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CardPresent build() {
                return new CardPresent(this.request_extended_authorization, this.request_incremental_authorization_support, this.capture_method, this.routing, this.dynamic_currency_conversion_selected, this.request_partial_authorization, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CardPresent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardPresent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CardPresent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.PaymentMethodOptions$CardPresent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PaymentMethodOptions.CardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.request_extended_authorization != null) {
                        size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(1, value.request_extended_authorization);
                    }
                    if (value.request_incremental_authorization_support != null) {
                        size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.request_incremental_authorization_support);
                    }
                    if (value.capture_method != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.capture_method);
                    }
                    if (value.routing != null) {
                        size += PaymentMethodOptions.CardPresent.RoutingParameters.ADAPTER.encodedSizeWithTag(4, value.routing);
                    }
                    if (value.dynamic_currency_conversion_selected != null) {
                        size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(5, value.dynamic_currency_conversion_selected);
                    }
                    return value.request_partial_authorization != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.request_partial_authorization) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PaymentMethodOptions.CardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.request_extended_authorization != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.request_extended_authorization);
                    }
                    if (value.request_incremental_authorization_support != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.request_incremental_authorization_support);
                    }
                    if (value.capture_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.capture_method);
                    }
                    if (value.routing != null) {
                        PaymentMethodOptions.CardPresent.RoutingParameters.ADAPTER.encodeWithTag(writer, 4, value.routing);
                    }
                    if (value.dynamic_currency_conversion_selected != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.dynamic_currency_conversion_selected);
                    }
                    if (value.request_partial_authorization != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.request_partial_authorization);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.request_partial_authorization != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.request_partial_authorization);
                    }
                    if (value.dynamic_currency_conversion_selected != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.dynamic_currency_conversion_selected);
                    }
                    if (value.routing != null) {
                        PaymentMethodOptions.CardPresent.RoutingParameters.ADAPTER.encodeWithTag(writer, 4, value.routing);
                    }
                    if (value.capture_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.capture_method);
                    }
                    if (value.request_incremental_authorization_support != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.request_incremental_authorization_support);
                    }
                    if (value.request_extended_authorization != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.request_extended_authorization);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.CardPresent redact(PaymentMethodOptions.CardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Boolean bool = value.request_extended_authorization;
                    Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                    Boolean bool2 = value.request_incremental_authorization_support;
                    Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                    String str = value.capture_method;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    PaymentMethodOptions.CardPresent.RoutingParameters routingParameters = value.routing;
                    PaymentMethodOptions.CardPresent.RoutingParameters routingParametersRedact = routingParameters != null ? PaymentMethodOptions.CardPresent.RoutingParameters.ADAPTER.redact(routingParameters) : null;
                    Boolean bool3 = value.dynamic_currency_conversion_selected;
                    Boolean boolRedact3 = bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null;
                    String str2 = value.request_partial_authorization;
                    return value.copy(boolRedact, boolRedact2, strRedact, routingParametersRedact, boolRedact3, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.CardPresent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Boolean boolDecode = null;
                    Boolean boolDecode2 = null;
                    String strDecode = null;
                    PaymentMethodOptions.CardPresent.RoutingParameters routingParametersDecode = null;
                    Boolean boolDecode3 = null;
                    String strDecode2 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                    break;
                                case 2:
                                    boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                    break;
                                case 3:
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 4:
                                    routingParametersDecode = PaymentMethodOptions.CardPresent.RoutingParameters.ADAPTER.decode(reader);
                                    break;
                                case 5:
                                    boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                    break;
                                case 6:
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new PaymentMethodOptions.CardPresent(boolDecode, boolDecode2, strDecode, routingParametersDecode, boolDecode3, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters$Builder;", "requested_priority", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class RoutingParameters extends Message<RoutingParameters, Builder> {
            public static final ProtoAdapter<RoutingParameters> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "requestedPriority", schemaIndex = 0, tag = 1)
            public final String requested_priority;

            /* JADX WARN: Multi-variable type inference failed */
            public RoutingParameters() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ RoutingParameters(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RoutingParameters(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.requested_priority = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.requested_priority = this.requested_priority;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof RoutingParameters)) {
                    return false;
                }
                RoutingParameters routingParameters = (RoutingParameters) other;
                return Intrinsics.areEqual(unknownFields(), routingParameters.unknownFields()) && Intrinsics.areEqual(this.requested_priority, routingParameters.requested_priority);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.requested_priority;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.requested_priority != null) {
                    arrayList.add("requested_priority=" + this.requested_priority);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "RoutingParameters{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ RoutingParameters copy$default(RoutingParameters routingParameters, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = routingParameters.requested_priority;
                }
                if ((i & 2) != 0) {
                    byteString = routingParameters.unknownFields();
                }
                return routingParameters.copy(str, byteString);
            }

            public final RoutingParameters copy(String requested_priority, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new RoutingParameters(requested_priority, unknownFields);
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;", "()V", "requested_priority", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<RoutingParameters, Builder> {
                public String requested_priority;

                public final Builder requested_priority(String requested_priority) {
                    this.requested_priority = requested_priority;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public RoutingParameters build() {
                    return new RoutingParameters(this.requested_priority, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ RoutingParameters build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RoutingParameters.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<RoutingParameters>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.PaymentMethodOptions$CardPresent$RoutingParameters$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PaymentMethodOptions.CardPresent.RoutingParameters value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size() + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.requested_priority);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PaymentMethodOptions.CardPresent.RoutingParameters value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.requested_priority);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardPresent.RoutingParameters value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.requested_priority);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresent.RoutingParameters redact(PaymentMethodOptions.CardPresent.RoutingParameters value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.requested_priority;
                        return value.copy(str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresent.RoutingParameters decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PaymentMethodOptions.CardPresent.RoutingParameters(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J!\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card$Builder;", "moto", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Card extends Message<Card, Builder> {
        public static final ProtoAdapter<Card> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 0, tag = 1)
        public final Boolean moto;

        /* JADX WARN: Multi-variable type inference failed */
        public Card() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Card(Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Card(Boolean bool, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.moto = bool;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.moto = this.moto;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Card)) {
                return false;
            }
            Card card = (Card) other;
            return Intrinsics.areEqual(unknownFields(), card.unknownFields()) && Intrinsics.areEqual(this.moto, card.moto);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Boolean bool = this.moto;
            int iHashCode2 = iHashCode + (bool != null ? bool.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.moto != null) {
                arrayList.add("moto=" + this.moto);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Card{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Card copy$default(Card card, Boolean bool, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = card.moto;
            }
            if ((i & 2) != 0) {
                byteString = card.unknownFields();
            }
            return card.copy(bool, byteString);
        }

        public final Card copy(Boolean moto, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Card(moto, unknownFields);
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "()V", "moto", "", "Ljava/lang/Boolean;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Card, Builder> {
            public Boolean moto;

            public final Builder moto(Boolean moto) {
                this.moto = moto;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Card build() {
                return new Card(this.moto, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Card build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Card.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Card>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.PaymentMethodOptions$Card$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PaymentMethodOptions.Card value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.moto != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(1, value.moto) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PaymentMethodOptions.Card value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.moto != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.moto);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PaymentMethodOptions.Card value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.moto != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.moto);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.Card redact(PaymentMethodOptions.Card value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Boolean bool = value.moto;
                    return value.copy(bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.Card decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Boolean boolDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new PaymentMethodOptions.Card(boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;", "client", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WechatPay extends Message<WechatPay, Builder> {
        public static final ProtoAdapter<WechatPay> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
        public final String client;

        /* JADX WARN: Multi-variable type inference failed */
        public WechatPay() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ WechatPay(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WechatPay(String str, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.client = str;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.client = this.client;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof WechatPay)) {
                return false;
            }
            WechatPay wechatPay = (WechatPay) other;
            return Intrinsics.areEqual(unknownFields(), wechatPay.unknownFields()) && Intrinsics.areEqual(this.client, wechatPay.client);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.client;
            int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.client != null) {
                arrayList.add("client=" + this.client);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "WechatPay{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ WechatPay copy$default(WechatPay wechatPay, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wechatPay.client;
            }
            if ((i & 2) != 0) {
                byteString = wechatPay.unknownFields();
            }
            return wechatPay.copy(str, byteString);
        }

        public final WechatPay copy(String client, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new WechatPay(client, unknownFields);
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;", "()V", "client", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<WechatPay, Builder> {
            public String client;

            public final Builder client(String client) {
                this.client = client;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public WechatPay build() {
                return new WechatPay(this.client, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ WechatPay build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WechatPay.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<WechatPay>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.PaymentMethodOptions$WechatPay$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PaymentMethodOptions.WechatPay value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.client != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.client) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PaymentMethodOptions.WechatPay value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.client != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.client);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PaymentMethodOptions.WechatPay value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.client != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.client);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.WechatPay redact(PaymentMethodOptions.WechatPay value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.client;
                    return value.copy(str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.WechatPay decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new PaymentMethodOptions.WechatPay(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
}
