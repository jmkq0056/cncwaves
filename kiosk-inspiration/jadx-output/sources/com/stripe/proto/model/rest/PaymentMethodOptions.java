package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
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
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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

/* JADX INFO: compiled from: PaymentMethodOptions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0014\u0015\u0016\u0017\u0018B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$Builder;", "card", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;", "card_present", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "CardOptions", "CardPresentOptions", "Companion", "RoutingPriority", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodOptions extends Message<PaymentMethodOptions, Builder> {
    public static final ProtoAdapter<PaymentMethodOptions> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$CardOptions#ADAPTER", schemaIndex = 0, tag = 1)
    public final CardOptions card;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions#ADAPTER", jsonName = "cardPresent", schemaIndex = 1, tag = 2)
    public final CardPresentOptions card_present;

    public PaymentMethodOptions() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ PaymentMethodOptions(CardOptions cardOptions, CardPresentOptions cardPresentOptions, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cardOptions, (i & 2) != 0 ? null : cardPresentOptions, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodOptions(CardOptions cardOptions, CardPresentOptions cardPresentOptions, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.card = cardOptions;
        this.card_present = cardPresentOptions;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.card = this.card;
        builder.card_present = this.card_present;
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
        return Intrinsics.areEqual(unknownFields(), paymentMethodOptions.unknownFields()) && Intrinsics.areEqual(this.card, paymentMethodOptions.card) && Intrinsics.areEqual(this.card_present, paymentMethodOptions.card_present);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CardOptions cardOptions = this.card;
        int iHashCode2 = (iHashCode + (cardOptions != null ? cardOptions.hashCode() : 0)) * 37;
        CardPresentOptions cardPresentOptions = this.card_present;
        int iHashCode3 = iHashCode2 + (cardPresentOptions != null ? cardPresentOptions.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.card != null) {
            arrayList.add("card=" + this.card);
        }
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentMethodOptions{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaymentMethodOptions copy$default(PaymentMethodOptions paymentMethodOptions, CardOptions cardOptions, CardPresentOptions cardPresentOptions, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            cardOptions = paymentMethodOptions.card;
        }
        if ((i & 2) != 0) {
            cardPresentOptions = paymentMethodOptions.card_present;
        }
        if ((i & 4) != 0) {
            byteString = paymentMethodOptions.unknownFields();
        }
        return paymentMethodOptions.copy(cardOptions, cardPresentOptions, byteString);
    }

    public final PaymentMethodOptions copy(CardOptions card, CardPresentOptions card_present, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentMethodOptions(card, card_present, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "()V", "card", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;", "card_present", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentMethodOptions, Builder> {
        public CardOptions card;
        public CardPresentOptions card_present;

        public final Builder card(CardOptions card) {
            this.card = card;
            return this;
        }

        public final Builder card_present(CardPresentOptions card_present) {
            this.card_present = card_present;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentMethodOptions build() {
            return new PaymentMethodOptions(this.card, this.card_present, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<PaymentMethodOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentMethodOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + PaymentMethodOptions.CardOptions.ADAPTER.encodedSizeWithTag(1, value.card) + PaymentMethodOptions.CardPresentOptions.ADAPTER.encodedSizeWithTag(2, value.card_present);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentMethodOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethodOptions.CardOptions.ADAPTER.encodeWithTag(writer, 1, value.card);
                PaymentMethodOptions.CardPresentOptions.ADAPTER.encodeWithTag(writer, 2, value.card_present);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentMethodOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                PaymentMethodOptions.CardPresentOptions.ADAPTER.encodeWithTag(writer, 2, value.card_present);
                PaymentMethodOptions.CardOptions.ADAPTER.encodeWithTag(writer, 1, value.card);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethodOptions redact(PaymentMethodOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethodOptions.CardOptions cardOptions = value.card;
                PaymentMethodOptions.CardOptions cardOptionsRedact = cardOptions != null ? PaymentMethodOptions.CardOptions.ADAPTER.redact(cardOptions) : null;
                PaymentMethodOptions.CardPresentOptions cardPresentOptions = value.card_present;
                return value.copy(cardOptionsRedact, cardPresentOptions != null ? PaymentMethodOptions.CardPresentOptions.ADAPTER.redact(cardPresentOptions) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethodOptions decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentMethodOptions.CardOptions cardOptionsDecode = null;
                PaymentMethodOptions.CardPresentOptions cardPresentOptionsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PaymentMethodOptions(cardOptionsDecode, cardPresentOptionsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        cardOptionsDecode = PaymentMethodOptions.CardOptions.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        cardPresentOptionsDecode = PaymentMethodOptions.CardPresentOptions.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Builder;", "request_three_d_secure", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Request3dSecureType", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardOptions extends Message<CardOptions, Builder> {
        public static final ProtoAdapter<CardOptions> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$CardOptions$Request3dSecureType#ADAPTER", jsonName = "requestThreeDSecure", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Request3dSecureType request_three_d_secure;

        /* JADX WARN: Multi-variable type inference failed */
        public CardOptions() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ CardOptions(Request3dSecureType request3dSecureType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Request3dSecureType.automatic : request3dSecureType, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardOptions(Request3dSecureType request_three_d_secure, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(request_three_d_secure, "request_three_d_secure");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.request_three_d_secure = request_three_d_secure;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.request_three_d_secure = this.request_three_d_secure;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CardOptions)) {
                return false;
            }
            CardOptions cardOptions = (CardOptions) other;
            return Intrinsics.areEqual(unknownFields(), cardOptions.unknownFields()) && this.request_three_d_secure == cardOptions.request_three_d_secure;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.request_three_d_secure.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("request_three_d_secure=" + this.request_three_d_secure);
            return CollectionsKt.joinToString$default(arrayList, ", ", "CardOptions{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CardOptions copy$default(CardOptions cardOptions, Request3dSecureType request3dSecureType, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                request3dSecureType = cardOptions.request_three_d_secure;
            }
            if ((i & 2) != 0) {
                byteString = cardOptions.unknownFields();
            }
            return cardOptions.copy(request3dSecureType, byteString);
        }

        public final CardOptions copy(Request3dSecureType request_three_d_secure, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(request_three_d_secure, "request_three_d_secure");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CardOptions(request_three_d_secure, unknownFields);
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;", "()V", "request_three_d_secure", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CardOptions, Builder> {
            public Request3dSecureType request_three_d_secure = Request3dSecureType.automatic;

            public final Builder request_three_d_secure(Request3dSecureType request_three_d_secure) {
                Intrinsics.checkNotNullParameter(request_three_d_secure, "request_three_d_secure");
                this.request_three_d_secure = request_three_d_secure;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CardOptions build() {
                return new CardOptions(this.request_three_d_secure, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CardOptions build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardOptions.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CardOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$CardOptions$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PaymentMethodOptions.CardOptions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.request_three_d_secure != PaymentMethodOptions.CardOptions.Request3dSecureType.automatic ? size + PaymentMethodOptions.CardOptions.Request3dSecureType.ADAPTER.encodedSizeWithTag(1, value.request_three_d_secure) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PaymentMethodOptions.CardOptions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.request_three_d_secure != PaymentMethodOptions.CardOptions.Request3dSecureType.automatic) {
                        PaymentMethodOptions.CardOptions.Request3dSecureType.ADAPTER.encodeWithTag(writer, 1, value.request_three_d_secure);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardOptions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.request_three_d_secure != PaymentMethodOptions.CardOptions.Request3dSecureType.automatic) {
                        PaymentMethodOptions.CardOptions.Request3dSecureType.ADAPTER.encodeWithTag(writer, 1, value.request_three_d_secure);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.CardOptions decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    PaymentMethodOptions.CardOptions.Request3dSecureType request3dSecureTypeDecode = PaymentMethodOptions.CardOptions.Request3dSecureType.automatic;
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new PaymentMethodOptions.CardOptions(request3dSecureTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                request3dSecureTypeDecode = PaymentMethodOptions.CardOptions.Request3dSecureType.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.CardOptions redact(PaymentMethodOptions.CardOptions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return PaymentMethodOptions.CardOptions.copy$default(value, null, ByteString.EMPTY, 1, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "automatic", "any", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Request3dSecureType implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Request3dSecureType[] $VALUES;
            public static final ProtoAdapter<Request3dSecureType> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final Request3dSecureType any;
            public static final Request3dSecureType automatic;
            private final int value;

            private static final /* synthetic */ Request3dSecureType[] $values() {
                return new Request3dSecureType[]{automatic, any};
            }

            @JvmStatic
            public static final Request3dSecureType fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<Request3dSecureType> getEntries() {
                return $ENTRIES;
            }

            public static Request3dSecureType valueOf(String str) {
                return (Request3dSecureType) Enum.valueOf(Request3dSecureType.class, str);
            }

            public static Request3dSecureType[] values() {
                return (Request3dSecureType[]) $VALUES.clone();
            }

            private Request3dSecureType(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final Request3dSecureType request3dSecureType = new Request3dSecureType("automatic", 0, 0);
                automatic = request3dSecureType;
                any = new Request3dSecureType("any", 1, 1);
                Request3dSecureType[] request3dSecureTypeArr$values = $values();
                $VALUES = request3dSecureTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(request3dSecureTypeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Request3dSecureType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<Request3dSecureType>(orCreateKotlinClass, syntax, request3dSecureType) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$CardOptions$Request3dSecureType$Companion$ADAPTER$1
                    {
                        PaymentMethodOptions.CardOptions.Request3dSecureType request3dSecureType2 = request3dSecureType;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public PaymentMethodOptions.CardOptions.Request3dSecureType fromValue(int value) {
                        return PaymentMethodOptions.CardOptions.Request3dSecureType.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final Request3dSecureType fromValue(int value) {
                    if (value == 0) {
                        return Request3dSecureType.automatic;
                    }
                    if (value != 1) {
                        return null;
                    }
                    return Request3dSecureType.any;
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "domestic", "international", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RoutingPriority implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RoutingPriority[] $VALUES;
        public static final ProtoAdapter<RoutingPriority> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final RoutingPriority domestic;
        public static final RoutingPriority international;
        private final int value;

        private static final /* synthetic */ RoutingPriority[] $values() {
            return new RoutingPriority[]{domestic, international};
        }

        @JvmStatic
        public static final RoutingPriority fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<RoutingPriority> getEntries() {
            return $ENTRIES;
        }

        public static RoutingPriority valueOf(String str) {
            return (RoutingPriority) Enum.valueOf(RoutingPriority.class, str);
        }

        public static RoutingPriority[] values() {
            return (RoutingPriority[]) $VALUES.clone();
        }

        private RoutingPriority(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final RoutingPriority routingPriority = new RoutingPriority("domestic", 0, 0);
            domestic = routingPriority;
            international = new RoutingPriority("international", 1, 1);
            RoutingPriority[] routingPriorityArr$values = $values();
            $VALUES = routingPriorityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(routingPriorityArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RoutingPriority.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<RoutingPriority>(orCreateKotlinClass, syntax, routingPriority) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$RoutingPriority$Companion$ADAPTER$1
                {
                    PaymentMethodOptions.RoutingPriority routingPriority2 = routingPriority;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public PaymentMethodOptions.RoutingPriority fromValue(int value) {
                    return PaymentMethodOptions.RoutingPriority.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final RoutingPriority fromValue(int value) {
                if (value == 0) {
                    return RoutingPriority.domestic;
                }
                if (value != 1) {
                    return null;
                }
                return RoutingPriority.international;
            }
        }
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001c\u001d\u001e\u001f Bc\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Ji\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0006H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;", "routing", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;", "request_dynamic_currency_conversion", "", "dynamic_currency_conversion", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "request_extended_authorization", "", "request_incremental_authorization_support", "surcharge", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "request_partial_authorization", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "DynamicCurrencyConversionDetails", "RoutingOptions", "Surcharge", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardPresentOptions extends Message<CardPresentOptions, Builder> {
        public static final ProtoAdapter<CardPresentOptions> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails#ADAPTER", jsonName = "dynamicCurrencyConversion", schemaIndex = 2, tag = 3)
        public final DynamicCurrencyConversionDetails dynamic_currency_conversion;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "requestDynamicCurrencyConversion", schemaIndex = 1, tag = 2)
        public final String request_dynamic_currency_conversion;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "requestExtendedAuthorization", schemaIndex = 3, tag = 4)
        public final Boolean request_extended_authorization;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "requestIncrementalAuthorizationSupport", schemaIndex = 4, tag = 5)
        public final Boolean request_incremental_authorization_support;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "requestPartialAuthorization", schemaIndex = 6, tag = 7)
        public final String request_partial_authorization;

        @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$RoutingOptions#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final RoutingOptions routing;

        @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$Surcharge#ADAPTER", schemaIndex = 5, tag = 6)
        public final Surcharge surcharge;

        public CardPresentOptions() {
            this(null, null, null, null, null, null, null, null, 255, null);
        }

        public /* synthetic */ CardPresentOptions(RoutingOptions routingOptions, String str, DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, Boolean bool, Boolean bool2, Surcharge surcharge, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : routingOptions, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : dynamicCurrencyConversionDetails, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : bool2, (i & 32) != 0 ? null : surcharge, (i & 64) != 0 ? null : str2, (i & 128) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardPresentOptions(RoutingOptions routingOptions, String str, DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, Boolean bool, Boolean bool2, Surcharge surcharge, String str2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.routing = routingOptions;
            this.request_dynamic_currency_conversion = str;
            this.dynamic_currency_conversion = dynamicCurrencyConversionDetails;
            this.request_extended_authorization = bool;
            this.request_incremental_authorization_support = bool2;
            this.surcharge = surcharge;
            this.request_partial_authorization = str2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.routing = this.routing;
            builder.request_dynamic_currency_conversion = this.request_dynamic_currency_conversion;
            builder.dynamic_currency_conversion = this.dynamic_currency_conversion;
            builder.request_extended_authorization = this.request_extended_authorization;
            builder.request_incremental_authorization_support = this.request_incremental_authorization_support;
            builder.surcharge = this.surcharge;
            builder.request_partial_authorization = this.request_partial_authorization;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CardPresentOptions)) {
                return false;
            }
            CardPresentOptions cardPresentOptions = (CardPresentOptions) other;
            return Intrinsics.areEqual(unknownFields(), cardPresentOptions.unknownFields()) && Intrinsics.areEqual(this.routing, cardPresentOptions.routing) && Intrinsics.areEqual(this.request_dynamic_currency_conversion, cardPresentOptions.request_dynamic_currency_conversion) && Intrinsics.areEqual(this.dynamic_currency_conversion, cardPresentOptions.dynamic_currency_conversion) && Intrinsics.areEqual(this.request_extended_authorization, cardPresentOptions.request_extended_authorization) && Intrinsics.areEqual(this.request_incremental_authorization_support, cardPresentOptions.request_incremental_authorization_support) && Intrinsics.areEqual(this.surcharge, cardPresentOptions.surcharge) && Intrinsics.areEqual(this.request_partial_authorization, cardPresentOptions.request_partial_authorization);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            RoutingOptions routingOptions = this.routing;
            int iHashCode2 = (iHashCode + (routingOptions != null ? routingOptions.hashCode() : 0)) * 37;
            String str = this.request_dynamic_currency_conversion;
            int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = this.dynamic_currency_conversion;
            int iHashCode4 = (iHashCode3 + (dynamicCurrencyConversionDetails != null ? dynamicCurrencyConversionDetails.hashCode() : 0)) * 37;
            Boolean bool = this.request_extended_authorization;
            int iHashCode5 = (iHashCode4 + (bool != null ? bool.hashCode() : 0)) * 37;
            Boolean bool2 = this.request_incremental_authorization_support;
            int iHashCode6 = (iHashCode5 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
            Surcharge surcharge = this.surcharge;
            int iHashCode7 = (iHashCode6 + (surcharge != null ? surcharge.hashCode() : 0)) * 37;
            String str2 = this.request_partial_authorization;
            int iHashCode8 = iHashCode7 + (str2 != null ? str2.hashCode() : 0);
            this.hashCode = iHashCode8;
            return iHashCode8;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.routing != null) {
                arrayList.add("routing=" + this.routing);
            }
            if (this.request_dynamic_currency_conversion != null) {
                arrayList.add("request_dynamic_currency_conversion=" + this.request_dynamic_currency_conversion);
            }
            if (this.dynamic_currency_conversion != null) {
                arrayList.add("dynamic_currency_conversion=" + this.dynamic_currency_conversion);
            }
            if (this.request_extended_authorization != null) {
                arrayList.add("request_extended_authorization=" + this.request_extended_authorization);
            }
            if (this.request_incremental_authorization_support != null) {
                arrayList.add("request_incremental_authorization_support=" + this.request_incremental_authorization_support);
            }
            if (this.surcharge != null) {
                arrayList.add("surcharge=" + this.surcharge);
            }
            if (this.request_partial_authorization != null) {
                arrayList.add("request_partial_authorization=" + this.request_partial_authorization);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "CardPresentOptions{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CardPresentOptions copy$default(CardPresentOptions cardPresentOptions, RoutingOptions routingOptions, String str, DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, Boolean bool, Boolean bool2, Surcharge surcharge, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                routingOptions = cardPresentOptions.routing;
            }
            if ((i & 2) != 0) {
                str = cardPresentOptions.request_dynamic_currency_conversion;
            }
            if ((i & 4) != 0) {
                dynamicCurrencyConversionDetails = cardPresentOptions.dynamic_currency_conversion;
            }
            if ((i & 8) != 0) {
                bool = cardPresentOptions.request_extended_authorization;
            }
            if ((i & 16) != 0) {
                bool2 = cardPresentOptions.request_incremental_authorization_support;
            }
            if ((i & 32) != 0) {
                surcharge = cardPresentOptions.surcharge;
            }
            if ((i & 64) != 0) {
                str2 = cardPresentOptions.request_partial_authorization;
            }
            if ((i & 128) != 0) {
                byteString = cardPresentOptions.unknownFields();
            }
            String str3 = str2;
            ByteString byteString2 = byteString;
            Boolean bool3 = bool2;
            Surcharge surcharge2 = surcharge;
            return cardPresentOptions.copy(routingOptions, str, dynamicCurrencyConversionDetails, bool, bool3, surcharge2, str3, byteString2);
        }

        public final CardPresentOptions copy(RoutingOptions routing, String request_dynamic_currency_conversion, DynamicCurrencyConversionDetails dynamic_currency_conversion, Boolean request_extended_authorization, Boolean request_incremental_authorization_support, Surcharge surcharge, String request_partial_authorization, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CardPresentOptions(routing, request_dynamic_currency_conversion, dynamic_currency_conversion, request_extended_authorization, request_incremental_authorization_support, surcharge, request_partial_authorization, unknownFields);
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0012J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0012J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "()V", "dynamic_currency_conversion", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "request_dynamic_currency_conversion", "", "request_extended_authorization", "", "Ljava/lang/Boolean;", "request_incremental_authorization_support", "request_partial_authorization", "routing", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;", "surcharge", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CardPresentOptions, Builder> {
            public DynamicCurrencyConversionDetails dynamic_currency_conversion;
            public String request_dynamic_currency_conversion;
            public Boolean request_extended_authorization;
            public Boolean request_incremental_authorization_support;
            public String request_partial_authorization;
            public RoutingOptions routing;
            public Surcharge surcharge;

            public final Builder routing(RoutingOptions routing) {
                this.routing = routing;
                return this;
            }

            public final Builder request_dynamic_currency_conversion(String request_dynamic_currency_conversion) {
                this.request_dynamic_currency_conversion = request_dynamic_currency_conversion;
                return this;
            }

            public final Builder dynamic_currency_conversion(DynamicCurrencyConversionDetails dynamic_currency_conversion) {
                this.dynamic_currency_conversion = dynamic_currency_conversion;
                return this;
            }

            public final Builder request_extended_authorization(Boolean request_extended_authorization) {
                this.request_extended_authorization = request_extended_authorization;
                return this;
            }

            public final Builder request_incremental_authorization_support(Boolean request_incremental_authorization_support) {
                this.request_incremental_authorization_support = request_incremental_authorization_support;
                return this;
            }

            public final Builder surcharge(Surcharge surcharge) {
                this.surcharge = surcharge;
                return this;
            }

            public final Builder request_partial_authorization(String request_partial_authorization) {
                this.request_partial_authorization = request_partial_authorization;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CardPresentOptions build() {
                return new CardPresentOptions(this.routing, this.request_dynamic_currency_conversion, this.dynamic_currency_conversion, this.request_extended_authorization, this.request_incremental_authorization_support, this.surcharge, this.request_partial_authorization, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CardPresentOptions build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardPresentOptions.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CardPresentOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PaymentMethodOptions.CardPresentOptions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.routing != null) {
                        size += PaymentMethodOptions.CardPresentOptions.RoutingOptions.ADAPTER.encodedSizeWithTag(1, value.routing);
                    }
                    return size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.request_dynamic_currency_conversion) + PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails.ADAPTER.encodedSizeWithTag(3, value.dynamic_currency_conversion) + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(4, value.request_extended_authorization) + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(5, value.request_incremental_authorization_support) + PaymentMethodOptions.CardPresentOptions.Surcharge.ADAPTER.encodedSizeWithTag(6, value.surcharge) + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.request_partial_authorization);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PaymentMethodOptions.CardPresentOptions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.routing != null) {
                        PaymentMethodOptions.CardPresentOptions.RoutingOptions.ADAPTER.encodeWithTag(writer, 1, value.routing);
                    }
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.request_dynamic_currency_conversion);
                    PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails.ADAPTER.encodeWithTag(writer, 3, value.dynamic_currency_conversion);
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.request_extended_authorization);
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.request_incremental_authorization_support);
                    PaymentMethodOptions.CardPresentOptions.Surcharge.ADAPTER.encodeWithTag(writer, 6, value.surcharge);
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.request_partial_authorization);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardPresentOptions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.request_partial_authorization);
                    PaymentMethodOptions.CardPresentOptions.Surcharge.ADAPTER.encodeWithTag(writer, 6, value.surcharge);
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.request_incremental_authorization_support);
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.request_extended_authorization);
                    PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails.ADAPTER.encodeWithTag(writer, 3, value.dynamic_currency_conversion);
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.request_dynamic_currency_conversion);
                    if (value.routing != null) {
                        PaymentMethodOptions.CardPresentOptions.RoutingOptions.ADAPTER.encodeWithTag(writer, 1, value.routing);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.CardPresentOptions redact(PaymentMethodOptions.CardPresentOptions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    PaymentMethodOptions.CardPresentOptions.RoutingOptions routingOptions = value.routing;
                    PaymentMethodOptions.CardPresentOptions.RoutingOptions routingOptionsRedact = routingOptions != null ? PaymentMethodOptions.CardPresentOptions.RoutingOptions.ADAPTER.redact(routingOptions) : null;
                    String str = value.request_dynamic_currency_conversion;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = value.dynamic_currency_conversion;
                    PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetailsRedact = dynamicCurrencyConversionDetails != null ? PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails.ADAPTER.redact(dynamicCurrencyConversionDetails) : null;
                    Boolean bool = value.request_extended_authorization;
                    Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                    Boolean bool2 = value.request_incremental_authorization_support;
                    Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                    PaymentMethodOptions.CardPresentOptions.Surcharge surcharge = value.surcharge;
                    PaymentMethodOptions.CardPresentOptions.Surcharge surchargeRedact = surcharge != null ? PaymentMethodOptions.CardPresentOptions.Surcharge.ADAPTER.redact(surcharge) : null;
                    String str2 = value.request_partial_authorization;
                    return value.copy(routingOptionsRedact, strRedact, dynamicCurrencyConversionDetailsRedact, boolRedact, boolRedact2, surchargeRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethodOptions.CardPresentOptions decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    PaymentMethodOptions.CardPresentOptions.RoutingOptions routingOptionsDecode = null;
                    String strDecode = null;
                    PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetailsDecode = null;
                    Boolean boolDecode = null;
                    Boolean boolDecode2 = null;
                    PaymentMethodOptions.CardPresentOptions.Surcharge surchargeDecode = null;
                    String strDecode2 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    routingOptionsDecode = PaymentMethodOptions.CardPresentOptions.RoutingOptions.ADAPTER.decode(reader);
                                    break;
                                case 2:
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 3:
                                    dynamicCurrencyConversionDetailsDecode = PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails.ADAPTER.decode(reader);
                                    break;
                                case 4:
                                    boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                    break;
                                case 5:
                                    boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                    break;
                                case 6:
                                    surchargeDecode = PaymentMethodOptions.CardPresentOptions.Surcharge.ADAPTER.decode(reader);
                                    break;
                                case 7:
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new PaymentMethodOptions.CardPresentOptions(routingOptionsDecode, strDecode, dynamicCurrencyConversionDetailsDecode, boolDecode, boolDecode2, surchargeDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ,\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;", "requested_priority", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "computed_priority", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class RoutingOptions extends Message<RoutingOptions, Builder> {
            public static final ProtoAdapter<RoutingOptions> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$RoutingPriority#ADAPTER", jsonName = "computedPriority", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
            public final List<RoutingPriority> computed_priority;

            @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$RoutingPriority#ADAPTER", jsonName = "requestedPriority", schemaIndex = 0, tag = 1)
            public final RoutingPriority requested_priority;

            public RoutingOptions() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ RoutingOptions(RoutingPriority routingPriority, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : routingPriority, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RoutingOptions(RoutingPriority routingPriority, List<? extends RoutingPriority> computed_priority, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(computed_priority, "computed_priority");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.requested_priority = routingPriority;
                this.computed_priority = Internal.immutableCopyOf("computed_priority", computed_priority);
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.requested_priority = this.requested_priority;
                builder.computed_priority = this.computed_priority;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof RoutingOptions)) {
                    return false;
                }
                RoutingOptions routingOptions = (RoutingOptions) other;
                return Intrinsics.areEqual(unknownFields(), routingOptions.unknownFields()) && this.requested_priority == routingOptions.requested_priority && Intrinsics.areEqual(this.computed_priority, routingOptions.computed_priority);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                RoutingPriority routingPriority = this.requested_priority;
                int iHashCode2 = ((iHashCode + (routingPriority != null ? routingPriority.hashCode() : 0)) * 37) + this.computed_priority.hashCode();
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.requested_priority != null) {
                    arrayList.add("requested_priority=" + this.requested_priority);
                }
                if (!this.computed_priority.isEmpty()) {
                    arrayList.add("computed_priority=" + this.computed_priority);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "RoutingOptions{", "}", 0, null, null, 56, null);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ RoutingOptions copy$default(RoutingOptions routingOptions, RoutingPriority routingPriority, List list, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    routingPriority = routingOptions.requested_priority;
                }
                if ((i & 2) != 0) {
                    list = routingOptions.computed_priority;
                }
                if ((i & 4) != 0) {
                    byteString = routingOptions.unknownFields();
                }
                return routingOptions.copy(routingPriority, list, byteString);
            }

            public final RoutingOptions copy(RoutingPriority requested_priority, List<? extends RoutingPriority> computed_priority, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(computed_priority, "computed_priority");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new RoutingOptions(requested_priority, computed_priority, unknownFields);
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;", "()V", "computed_priority", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "requested_priority", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<RoutingOptions, Builder> {
                public List<? extends RoutingPriority> computed_priority = CollectionsKt.emptyList();
                public RoutingPriority requested_priority;

                public final Builder requested_priority(RoutingPriority requested_priority) {
                    this.requested_priority = requested_priority;
                    return this;
                }

                public final Builder computed_priority(List<? extends RoutingPriority> computed_priority) {
                    Intrinsics.checkNotNullParameter(computed_priority, "computed_priority");
                    Internal.checkElementsNotNull(computed_priority);
                    this.computed_priority = computed_priority;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public RoutingOptions build() {
                    return new RoutingOptions(this.requested_priority, this.computed_priority, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ RoutingOptions build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RoutingOptions.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<RoutingOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$RoutingOptions$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PaymentMethodOptions.CardPresentOptions.RoutingOptions value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size() + PaymentMethodOptions.RoutingPriority.ADAPTER.encodedSizeWithTag(1, value.requested_priority) + PaymentMethodOptions.RoutingPriority.ADAPTER.asRepeated().encodedSizeWithTag(2, value.computed_priority);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PaymentMethodOptions.CardPresentOptions.RoutingOptions value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        PaymentMethodOptions.RoutingPriority.ADAPTER.encodeWithTag(writer, 1, value.requested_priority);
                        PaymentMethodOptions.RoutingPriority.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.computed_priority);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardPresentOptions.RoutingOptions value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        PaymentMethodOptions.RoutingPriority.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.computed_priority);
                        PaymentMethodOptions.RoutingPriority.ADAPTER.encodeWithTag(writer, 1, value.requested_priority);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresentOptions.RoutingOptions decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        ArrayList arrayList = new ArrayList();
                        long jBeginMessage = reader.beginMessage();
                        PaymentMethodOptions.RoutingPriority routingPriorityDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PaymentMethodOptions.CardPresentOptions.RoutingOptions(routingPriorityDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    routingPriorityDecode = PaymentMethodOptions.RoutingPriority.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 2) {
                                try {
                                    PaymentMethodOptions.RoutingPriority.ADAPTER.tryDecode(reader, arrayList);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresentOptions.RoutingOptions redact(PaymentMethodOptions.CardPresentOptions.RoutingOptions value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PaymentMethodOptions.CardPresentOptions.RoutingOptions.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eBo\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Ju\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\n\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "transaction_fx_rate", "", "transaction_markup_percent", "cardholder_rate", "reference_fx_rate", "reference_markup_percent", "fx_as_of", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Float;", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class DynamicCurrencyConversionDetails extends Message<DynamicCurrencyConversionDetails, Builder> {
            public static final ProtoAdapter<DynamicCurrencyConversionDetails> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 0, tag = 1)
            public final Long amount;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "cardholderRate", schemaIndex = 4, tag = 5)
            public final Float cardholder_rate;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
            public final String currency;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "fxAsOf", schemaIndex = 7, tag = 8)
            public final Float fx_as_of;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "referenceFxRate", schemaIndex = 5, tag = 6)
            public final Float reference_fx_rate;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "referenceMarkupPercent", schemaIndex = 6, tag = 7)
            public final Float reference_markup_percent;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "transactionFxRate", schemaIndex = 2, tag = 3)
            public final Float transaction_fx_rate;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "transactionMarkupPercent", schemaIndex = 3, tag = 4)
            public final Float transaction_markup_percent;

            public DynamicCurrencyConversionDetails() {
                this(null, null, null, null, null, null, null, null, null, 511, null);
            }

            public /* synthetic */ DynamicCurrencyConversionDetails(Long l, String str, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : f, (i & 8) != 0 ? null : f2, (i & 16) != 0 ? null : f3, (i & 32) != 0 ? null : f4, (i & 64) != 0 ? null : f5, (i & 128) != 0 ? null : f6, (i & 256) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DynamicCurrencyConversionDetails(Long l, String str, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.amount = l;
                this.currency = str;
                this.transaction_fx_rate = f;
                this.transaction_markup_percent = f2;
                this.cardholder_rate = f3;
                this.reference_fx_rate = f4;
                this.reference_markup_percent = f5;
                this.fx_as_of = f6;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.amount = this.amount;
                builder.currency = this.currency;
                builder.transaction_fx_rate = this.transaction_fx_rate;
                builder.transaction_markup_percent = this.transaction_markup_percent;
                builder.cardholder_rate = this.cardholder_rate;
                builder.reference_fx_rate = this.reference_fx_rate;
                builder.reference_markup_percent = this.reference_markup_percent;
                builder.fx_as_of = this.fx_as_of;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof DynamicCurrencyConversionDetails)) {
                    return false;
                }
                DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = (DynamicCurrencyConversionDetails) other;
                return Intrinsics.areEqual(unknownFields(), dynamicCurrencyConversionDetails.unknownFields()) && Intrinsics.areEqual(this.amount, dynamicCurrencyConversionDetails.amount) && Intrinsics.areEqual(this.currency, dynamicCurrencyConversionDetails.currency) && Intrinsics.areEqual(this.transaction_fx_rate, dynamicCurrencyConversionDetails.transaction_fx_rate) && Intrinsics.areEqual(this.transaction_markup_percent, dynamicCurrencyConversionDetails.transaction_markup_percent) && Intrinsics.areEqual(this.cardholder_rate, dynamicCurrencyConversionDetails.cardholder_rate) && Intrinsics.areEqual(this.reference_fx_rate, dynamicCurrencyConversionDetails.reference_fx_rate) && Intrinsics.areEqual(this.reference_markup_percent, dynamicCurrencyConversionDetails.reference_markup_percent) && Intrinsics.areEqual(this.fx_as_of, dynamicCurrencyConversionDetails.fx_as_of);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                Long l = this.amount;
                int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
                String str = this.currency;
                int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
                Float f = this.transaction_fx_rate;
                int iHashCode4 = (iHashCode3 + (f != null ? f.hashCode() : 0)) * 37;
                Float f2 = this.transaction_markup_percent;
                int iHashCode5 = (iHashCode4 + (f2 != null ? f2.hashCode() : 0)) * 37;
                Float f3 = this.cardholder_rate;
                int iHashCode6 = (iHashCode5 + (f3 != null ? f3.hashCode() : 0)) * 37;
                Float f4 = this.reference_fx_rate;
                int iHashCode7 = (iHashCode6 + (f4 != null ? f4.hashCode() : 0)) * 37;
                Float f5 = this.reference_markup_percent;
                int iHashCode8 = (iHashCode7 + (f5 != null ? f5.hashCode() : 0)) * 37;
                Float f6 = this.fx_as_of;
                int iHashCode9 = iHashCode8 + (f6 != null ? f6.hashCode() : 0);
                this.hashCode = iHashCode9;
                return iHashCode9;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.amount != null) {
                    arrayList.add("amount=" + this.amount);
                }
                if (this.currency != null) {
                    arrayList.add("currency=" + this.currency);
                }
                if (this.transaction_fx_rate != null) {
                    arrayList.add("transaction_fx_rate=" + this.transaction_fx_rate);
                }
                if (this.transaction_markup_percent != null) {
                    arrayList.add("transaction_markup_percent=" + this.transaction_markup_percent);
                }
                if (this.cardholder_rate != null) {
                    arrayList.add("cardholder_rate=" + this.cardholder_rate);
                }
                if (this.reference_fx_rate != null) {
                    arrayList.add("reference_fx_rate=" + this.reference_fx_rate);
                }
                if (this.reference_markup_percent != null) {
                    arrayList.add("reference_markup_percent=" + this.reference_markup_percent);
                }
                if (this.fx_as_of != null) {
                    arrayList.add("fx_as_of=" + this.fx_as_of);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "DynamicCurrencyConversionDetails{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ DynamicCurrencyConversionDetails copy$default(DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, Long l, String str, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    l = dynamicCurrencyConversionDetails.amount;
                }
                if ((i & 2) != 0) {
                    str = dynamicCurrencyConversionDetails.currency;
                }
                if ((i & 4) != 0) {
                    f = dynamicCurrencyConversionDetails.transaction_fx_rate;
                }
                if ((i & 8) != 0) {
                    f2 = dynamicCurrencyConversionDetails.transaction_markup_percent;
                }
                if ((i & 16) != 0) {
                    f3 = dynamicCurrencyConversionDetails.cardholder_rate;
                }
                if ((i & 32) != 0) {
                    f4 = dynamicCurrencyConversionDetails.reference_fx_rate;
                }
                if ((i & 64) != 0) {
                    f5 = dynamicCurrencyConversionDetails.reference_markup_percent;
                }
                if ((i & 128) != 0) {
                    f6 = dynamicCurrencyConversionDetails.fx_as_of;
                }
                if ((i & 256) != 0) {
                    byteString = dynamicCurrencyConversionDetails.unknownFields();
                }
                Float f7 = f6;
                ByteString byteString2 = byteString;
                Float f8 = f4;
                Float f9 = f5;
                Float f10 = f3;
                Float f11 = f;
                return dynamicCurrencyConversionDetails.copy(l, str, f11, f2, f10, f8, f9, f7, byteString2);
            }

            public final DynamicCurrencyConversionDetails copy(Long amount, String currency, Float transaction_fx_rate, Float transaction_markup_percent, Float cardholder_rate, Float reference_fx_rate, Float reference_markup_percent, Float fx_as_of, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new DynamicCurrencyConversionDetails(amount, currency, transaction_fx_rate, transaction_markup_percent, cardholder_rate, reference_fx_rate, reference_markup_percent, fx_as_of, unknownFields);
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0013J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0015\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0013J\u0015\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0013J\u0015\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0013J\u0015\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0013J\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0013R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\r\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "cardholder_rate", "", "Ljava/lang/Float;", FirebaseAnalytics.Param.CURRENCY, "", "fx_as_of", "reference_fx_rate", "reference_markup_percent", "transaction_fx_rate", "transaction_markup_percent", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;", "build", "(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<DynamicCurrencyConversionDetails, Builder> {
                public Long amount;
                public Float cardholder_rate;
                public String currency;
                public Float fx_as_of;
                public Float reference_fx_rate;
                public Float reference_markup_percent;
                public Float transaction_fx_rate;
                public Float transaction_markup_percent;

                public final Builder amount(Long amount) {
                    this.amount = amount;
                    return this;
                }

                public final Builder currency(String currency) {
                    this.currency = currency;
                    return this;
                }

                public final Builder transaction_fx_rate(Float transaction_fx_rate) {
                    this.transaction_fx_rate = transaction_fx_rate;
                    return this;
                }

                public final Builder transaction_markup_percent(Float transaction_markup_percent) {
                    this.transaction_markup_percent = transaction_markup_percent;
                    return this;
                }

                public final Builder cardholder_rate(Float cardholder_rate) {
                    this.cardholder_rate = cardholder_rate;
                    return this;
                }

                public final Builder reference_fx_rate(Float reference_fx_rate) {
                    this.reference_fx_rate = reference_fx_rate;
                    return this;
                }

                public final Builder reference_markup_percent(Float reference_markup_percent) {
                    this.reference_markup_percent = reference_markup_percent;
                    return this;
                }

                public final Builder fx_as_of(Float fx_as_of) {
                    this.fx_as_of = fx_as_of;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public DynamicCurrencyConversionDetails build() {
                    return new DynamicCurrencyConversionDetails(this.amount, this.currency, this.transaction_fx_rate, this.transaction_markup_percent, this.cardholder_rate, this.reference_fx_rate, this.reference_markup_percent, this.fx_as_of, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ DynamicCurrencyConversionDetails build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionDetails.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<DynamicCurrencyConversionDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.amount != null) {
                            size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.amount);
                        }
                        if (value.currency != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.currency);
                        }
                        if (value.transaction_fx_rate != null) {
                            size += ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(3, value.transaction_fx_rate);
                        }
                        if (value.transaction_markup_percent != null) {
                            size += ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(4, value.transaction_markup_percent);
                        }
                        if (value.cardholder_rate != null) {
                            size += ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(5, value.cardholder_rate);
                        }
                        int iEncodedSizeWithTag = size + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(6, value.reference_fx_rate) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(7, value.reference_markup_percent);
                        return value.fx_as_of != null ? iEncodedSizeWithTag + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(8, value.fx_as_of) : iEncodedSizeWithTag;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.amount != null) {
                            ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                        }
                        if (value.currency != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.currency);
                        }
                        if (value.transaction_fx_rate != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 3, value.transaction_fx_rate);
                        }
                        if (value.transaction_markup_percent != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 4, value.transaction_markup_percent);
                        }
                        if (value.cardholder_rate != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 5, value.cardholder_rate);
                        }
                        ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 6, value.reference_fx_rate);
                        ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 7, value.reference_markup_percent);
                        if (value.fx_as_of != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 8, value.fx_as_of);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.fx_as_of != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 8, value.fx_as_of);
                        }
                        ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 7, value.reference_markup_percent);
                        ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 6, value.reference_fx_rate);
                        if (value.cardholder_rate != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 5, value.cardholder_rate);
                        }
                        if (value.transaction_markup_percent != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 4, value.transaction_markup_percent);
                        }
                        if (value.transaction_fx_rate != null) {
                            ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 3, value.transaction_fx_rate);
                        }
                        if (value.currency != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.currency);
                        }
                        if (value.amount != null) {
                            ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails redact(PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        Long l = value.amount;
                        Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                        String str = value.currency;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        Float f = value.transaction_fx_rate;
                        Float fRedact = f != null ? ProtoAdapter.FLOAT_VALUE.redact(f) : null;
                        Float f2 = value.transaction_markup_percent;
                        Float fRedact2 = f2 != null ? ProtoAdapter.FLOAT_VALUE.redact(f2) : null;
                        Float f3 = value.cardholder_rate;
                        Float fRedact3 = f3 != null ? ProtoAdapter.FLOAT_VALUE.redact(f3) : null;
                        Float f4 = value.reference_fx_rate;
                        Float fRedact4 = f4 != null ? ProtoAdapter.FLOAT_VALUE.redact(f4) : null;
                        Float f5 = value.reference_markup_percent;
                        Float fRedact5 = f5 != null ? ProtoAdapter.FLOAT_VALUE.redact(f5) : null;
                        Float f6 = value.fx_as_of;
                        return value.copy(lRedact, strRedact, fRedact, fRedact2, fRedact3, fRedact4, fRedact5, f6 != null ? ProtoAdapter.FLOAT_VALUE.redact(f6) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        Long lDecode = null;
                        String strDecode = null;
                        Float fDecode = null;
                        Float fDecode2 = null;
                        Float fDecode3 = null;
                        Float fDecode4 = null;
                        Float fDecode5 = null;
                        Float fDecode6 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                switch (iNextTag) {
                                    case 1:
                                        lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                        break;
                                    case 2:
                                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 3:
                                        fDecode = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                        break;
                                    case 4:
                                        fDecode2 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                        break;
                                    case 5:
                                        fDecode3 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                        break;
                                    case 6:
                                        fDecode4 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                        break;
                                    case 7:
                                        fDecode5 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                        break;
                                    case 8:
                                        fDecode6 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                        break;
                                    default:
                                        reader.readUnknownField(iNextTag);
                                        break;
                                }
                            } else {
                                return new PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails(lDecode, strDecode, fDecode, fDecode2, fDecode3, fDecode4, fDecode5, fDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ-\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge$Builder;", "maximum_amount", "", NotificationCompat.CATEGORY_STATUS, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Surcharge extends Message<Surcharge, Builder> {
            public static final ProtoAdapter<Surcharge> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "maximumAmount", schemaIndex = 0, tag = 1)
            public final Long maximum_amount;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
            public final String status;

            public Surcharge() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ Surcharge(Long l, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Surcharge(Long l, String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.maximum_amount = l;
                this.status = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.maximum_amount = this.maximum_amount;
                builder.status = this.status;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Surcharge)) {
                    return false;
                }
                Surcharge surcharge = (Surcharge) other;
                return Intrinsics.areEqual(unknownFields(), surcharge.unknownFields()) && Intrinsics.areEqual(this.maximum_amount, surcharge.maximum_amount) && Intrinsics.areEqual(this.status, surcharge.status);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                Long l = this.maximum_amount;
                int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
                String str = this.status;
                int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode3;
                return iHashCode3;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.maximum_amount != null) {
                    arrayList.add("maximum_amount=" + this.maximum_amount);
                }
                if (this.status != null) {
                    arrayList.add("status=" + this.status);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Surcharge{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Surcharge copy$default(Surcharge surcharge, Long l, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    l = surcharge.maximum_amount;
                }
                if ((i & 2) != 0) {
                    str = surcharge.status;
                }
                if ((i & 4) != 0) {
                    byteString = surcharge.unknownFields();
                }
                return surcharge.copy(l, str, byteString);
            }

            public final Surcharge copy(Long maximum_amount, String status, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Surcharge(maximum_amount, status, unknownFields);
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "()V", "maximum_amount", "", "Ljava/lang/Long;", NotificationCompat.CATEGORY_STATUS, "", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Surcharge, Builder> {
                public Long maximum_amount;
                public String status;

                public final Builder maximum_amount(Long maximum_amount) {
                    this.maximum_amount = maximum_amount;
                    return this;
                }

                public final Builder status(String status) {
                    this.status = status;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Surcharge build() {
                    return new Surcharge(this.maximum_amount, this.status, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PaymentMethodOptions.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Surcharge build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Surcharge.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Surcharge>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethodOptions$CardPresentOptions$Surcharge$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PaymentMethodOptions.CardPresentOptions.Surcharge value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.maximum_amount != null) {
                            size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.maximum_amount);
                        }
                        return value.status != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.status) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PaymentMethodOptions.CardPresentOptions.Surcharge value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.maximum_amount != null) {
                            ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.maximum_amount);
                        }
                        if (value.status != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.status);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PaymentMethodOptions.CardPresentOptions.Surcharge value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.status != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.status);
                        }
                        if (value.maximum_amount != null) {
                            ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.maximum_amount);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresentOptions.Surcharge redact(PaymentMethodOptions.CardPresentOptions.Surcharge value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        Long l = value.maximum_amount;
                        Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                        String str = value.status;
                        return value.copy(lRedact, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PaymentMethodOptions.CardPresentOptions.Surcharge decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        Long lDecode = null;
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PaymentMethodOptions.CardPresentOptions.Surcharge(lDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                            } else if (iNextTag == 2) {
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
}
