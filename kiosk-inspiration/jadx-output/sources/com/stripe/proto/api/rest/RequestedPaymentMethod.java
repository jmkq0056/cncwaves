package com.stripe.proto.api.rest;

import androidx.core.graphics.TypefaceCompat;
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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: RequestedPaymentMethod.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0019\u001a\u001b\u001c\u001dBW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJX\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;", "type", "", "card_present", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;", "interac_present", "card", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;", "billing_details", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;", "allow_redisplay", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "BillingDetails", "Builder", "Companion", "RequestedCard", "RequestedCardPresent", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestedPaymentMethod extends Message<RequestedPaymentMethod, Builder> {
    public static final ProtoAdapter<RequestedPaymentMethod> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "allowRedisplay", schemaIndex = 5, tag = 6)
    public final String allow_redisplay;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$BillingDetails#ADAPTER", jsonName = "billingDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final BillingDetails billing_details;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCard#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final RequestedCard card;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent#ADAPTER", jsonName = "cardPresent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RequestedCardPresent card_present;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent#ADAPTER", jsonName = "interacPresent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final RequestedCardPresent interac_present;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String type;

    public RequestedPaymentMethod() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ RequestedPaymentMethod(String str, RequestedCardPresent requestedCardPresent, RequestedCardPresent requestedCardPresent2, RequestedCard requestedCard, BillingDetails billingDetails, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : requestedCardPresent, (i & 4) != 0 ? null : requestedCardPresent2, (i & 8) != 0 ? null : requestedCard, (i & 16) != 0 ? null : billingDetails, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestedPaymentMethod(String str, RequestedCardPresent requestedCardPresent, RequestedCardPresent requestedCardPresent2, RequestedCard requestedCard, BillingDetails billingDetails, String str2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = str;
        this.card_present = requestedCardPresent;
        this.interac_present = requestedCardPresent2;
        this.card = requestedCard;
        this.billing_details = billingDetails;
        this.allow_redisplay = str2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.card_present = this.card_present;
        builder.interac_present = this.interac_present;
        builder.card = this.card;
        builder.billing_details = this.billing_details;
        builder.allow_redisplay = this.allow_redisplay;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RequestedPaymentMethod)) {
            return false;
        }
        RequestedPaymentMethod requestedPaymentMethod = (RequestedPaymentMethod) other;
        return Intrinsics.areEqual(unknownFields(), requestedPaymentMethod.unknownFields()) && Intrinsics.areEqual(this.type, requestedPaymentMethod.type) && Intrinsics.areEqual(this.card_present, requestedPaymentMethod.card_present) && Intrinsics.areEqual(this.interac_present, requestedPaymentMethod.interac_present) && Intrinsics.areEqual(this.card, requestedPaymentMethod.card) && Intrinsics.areEqual(this.billing_details, requestedPaymentMethod.billing_details) && Intrinsics.areEqual(this.allow_redisplay, requestedPaymentMethod.allow_redisplay);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        RequestedCardPresent requestedCardPresent = this.card_present;
        int iHashCode3 = (iHashCode2 + (requestedCardPresent != null ? requestedCardPresent.hashCode() : 0)) * 37;
        RequestedCardPresent requestedCardPresent2 = this.interac_present;
        int iHashCode4 = (iHashCode3 + (requestedCardPresent2 != null ? requestedCardPresent2.hashCode() : 0)) * 37;
        RequestedCard requestedCard = this.card;
        int iHashCode5 = (iHashCode4 + (requestedCard != null ? requestedCard.hashCode() : 0)) * 37;
        BillingDetails billingDetails = this.billing_details;
        int iHashCode6 = (iHashCode5 + (billingDetails != null ? billingDetails.hashCode() : 0)) * 37;
        String str2 = this.allow_redisplay;
        int iHashCode7 = iHashCode6 + (str2 != null ? str2.hashCode() : 0);
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
        if (this.billing_details != null) {
            arrayList.add("billing_details=" + this.billing_details);
        }
        if (this.allow_redisplay != null) {
            arrayList.add("allow_redisplay=" + this.allow_redisplay);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RequestedPaymentMethod{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RequestedPaymentMethod copy$default(RequestedPaymentMethod requestedPaymentMethod, String str, RequestedCardPresent requestedCardPresent, RequestedCardPresent requestedCardPresent2, RequestedCard requestedCard, BillingDetails billingDetails, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = requestedPaymentMethod.type;
        }
        if ((i & 2) != 0) {
            requestedCardPresent = requestedPaymentMethod.card_present;
        }
        if ((i & 4) != 0) {
            requestedCardPresent2 = requestedPaymentMethod.interac_present;
        }
        if ((i & 8) != 0) {
            requestedCard = requestedPaymentMethod.card;
        }
        if ((i & 16) != 0) {
            billingDetails = requestedPaymentMethod.billing_details;
        }
        if ((i & 32) != 0) {
            str2 = requestedPaymentMethod.allow_redisplay;
        }
        if ((i & 64) != 0) {
            byteString = requestedPaymentMethod.unknownFields();
        }
        String str3 = str2;
        ByteString byteString2 = byteString;
        BillingDetails billingDetails2 = billingDetails;
        RequestedCardPresent requestedCardPresent3 = requestedCardPresent2;
        return requestedPaymentMethod.copy(str, requestedCardPresent, requestedCardPresent3, requestedCard, billingDetails2, str3, byteString2);
    }

    public final RequestedPaymentMethod copy(String type, RequestedCardPresent card_present, RequestedCardPresent interac_present, RequestedCard card, BillingDetails billing_details, String allow_redisplay, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RequestedPaymentMethod(type, card_present, interac_present, card, billing_details, allow_redisplay, unknownFields);
    }

    /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "()V", "allow_redisplay", "", "billing_details", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;", "card", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;", "card_present", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;", "interac_present", "type", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RequestedPaymentMethod, Builder> {
        public String allow_redisplay;
        public BillingDetails billing_details;
        public RequestedCard card;
        public RequestedCardPresent card_present;
        public RequestedCardPresent interac_present;
        public String type;

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        public final Builder card_present(RequestedCardPresent card_present) {
            this.card_present = card_present;
            return this;
        }

        public final Builder interac_present(RequestedCardPresent interac_present) {
            this.interac_present = interac_present;
            return this;
        }

        public final Builder card(RequestedCard card) {
            this.card = card;
            return this;
        }

        public final Builder billing_details(BillingDetails billing_details) {
            this.billing_details = billing_details;
            return this;
        }

        public final Builder allow_redisplay(String allow_redisplay) {
            this.allow_redisplay = allow_redisplay;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RequestedPaymentMethod build() {
            return new RequestedPaymentMethod(this.type, this.card_present, this.interac_present, this.card, this.billing_details, this.allow_redisplay, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RequestedPaymentMethod build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestedPaymentMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RequestedPaymentMethod>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RequestedPaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.type);
                }
                if (value.card_present != null) {
                    size += RequestedPaymentMethod.RequestedCardPresent.ADAPTER.encodedSizeWithTag(2, value.card_present);
                }
                if (value.interac_present != null) {
                    size += RequestedPaymentMethod.RequestedCardPresent.ADAPTER.encodedSizeWithTag(3, value.interac_present);
                }
                if (value.card != null) {
                    size += RequestedPaymentMethod.RequestedCard.ADAPTER.encodedSizeWithTag(4, value.card);
                }
                if (value.billing_details != null) {
                    size += RequestedPaymentMethod.BillingDetails.ADAPTER.encodedSizeWithTag(5, value.billing_details);
                }
                return value.allow_redisplay != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.allow_redisplay) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RequestedPaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                }
                if (value.card_present != null) {
                    RequestedPaymentMethod.RequestedCardPresent.ADAPTER.encodeWithTag(writer, 2, value.card_present);
                }
                if (value.interac_present != null) {
                    RequestedPaymentMethod.RequestedCardPresent.ADAPTER.encodeWithTag(writer, 3, value.interac_present);
                }
                if (value.card != null) {
                    RequestedPaymentMethod.RequestedCard.ADAPTER.encodeWithTag(writer, 4, value.card);
                }
                if (value.billing_details != null) {
                    RequestedPaymentMethod.BillingDetails.ADAPTER.encodeWithTag(writer, 5, value.billing_details);
                }
                if (value.allow_redisplay != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.allow_redisplay);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RequestedPaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.allow_redisplay != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.allow_redisplay);
                }
                if (value.billing_details != null) {
                    RequestedPaymentMethod.BillingDetails.ADAPTER.encodeWithTag(writer, 5, value.billing_details);
                }
                if (value.card != null) {
                    RequestedPaymentMethod.RequestedCard.ADAPTER.encodeWithTag(writer, 4, value.card);
                }
                if (value.interac_present != null) {
                    RequestedPaymentMethod.RequestedCardPresent.ADAPTER.encodeWithTag(writer, 3, value.interac_present);
                }
                if (value.card_present != null) {
                    RequestedPaymentMethod.RequestedCardPresent.ADAPTER.encodeWithTag(writer, 2, value.card_present);
                }
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RequestedPaymentMethod redact(RequestedPaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.type;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = value.card_present;
                RequestedPaymentMethod.RequestedCardPresent requestedCardPresentRedact = requestedCardPresent != null ? RequestedPaymentMethod.RequestedCardPresent.ADAPTER.redact(requestedCardPresent) : null;
                RequestedPaymentMethod.RequestedCardPresent requestedCardPresent2 = value.interac_present;
                RequestedPaymentMethod.RequestedCardPresent requestedCardPresentRedact2 = requestedCardPresent2 != null ? RequestedPaymentMethod.RequestedCardPresent.ADAPTER.redact(requestedCardPresent2) : null;
                RequestedPaymentMethod.RequestedCard requestedCard = value.card;
                RequestedPaymentMethod.RequestedCard requestedCardRedact = requestedCard != null ? RequestedPaymentMethod.RequestedCard.ADAPTER.redact(requestedCard) : null;
                RequestedPaymentMethod.BillingDetails billingDetails = value.billing_details;
                RequestedPaymentMethod.BillingDetails billingDetailsRedact = billingDetails != null ? RequestedPaymentMethod.BillingDetails.ADAPTER.redact(billingDetails) : null;
                String str2 = value.allow_redisplay;
                return value.copy(strRedact, requestedCardPresentRedact, requestedCardPresentRedact2, requestedCardRedact, billingDetailsRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RequestedPaymentMethod decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                RequestedPaymentMethod.RequestedCardPresent requestedCardPresentDecode = null;
                RequestedPaymentMethod.RequestedCardPresent requestedCardPresentDecode2 = null;
                RequestedPaymentMethod.RequestedCard requestedCardDecode = null;
                RequestedPaymentMethod.BillingDetails billingDetailsDecode = null;
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                requestedCardPresentDecode = RequestedPaymentMethod.RequestedCardPresent.ADAPTER.decode(reader);
                                break;
                            case 3:
                                requestedCardPresentDecode2 = RequestedPaymentMethod.RequestedCardPresent.ADAPTER.decode(reader);
                                break;
                            case 4:
                                requestedCardDecode = RequestedPaymentMethod.RequestedCard.ADAPTER.decode(reader);
                                break;
                            case 5:
                                billingDetailsDecode = RequestedPaymentMethod.BillingDetails.ADAPTER.decode(reader);
                                break;
                            case 6:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new RequestedPaymentMethod(strDecode, requestedCardPresentDecode, requestedCardPresentDecode2, requestedCardDecode, billingDetailsDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004 !\"#BÃ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016JÄ\u0001\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\b\u0010\u001f\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;", "type", "", "read_method", "swipe_reason", "track_2", "emv_processing_method", "emv_data", "pin_block", "pin_block_ksn", "reader_", "track_2_key_type", "track_2_key_id", "track_2_ksn", "latitude", "longitude", "encrypted_pin_block", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "SchemeType", "StandardEncryptionType", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RequestedCardPresent extends Message<RequestedCardPresent, Builder> {
        public static final ProtoAdapter<RequestedCardPresent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "emvData", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 5, tag = 6)
        public final String emv_data;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "emvProcessingMethod", schemaIndex = 4, tag = 11)
        public final String emv_processing_method;

        @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType#ADAPTER", jsonName = "encryptedPinBlock", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
        public final StandardEncryptionType encrypted_pin_block;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 12, tag = 13)
        public final String latitude;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 13, tag = 14)
        public final String longitude;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "pinBlock", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 6, tag = 7)
        public final String pin_block;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "pinBlockKsn", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 7, tag = 4)
        public final String pin_block_ksn;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "readMethod", schemaIndex = 1, tag = 2)
        public final String read_method;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = OfflineStorageConstantsKt.READER, schemaIndex = 8, tag = 8)
        public final String reader_;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "swipeReason", schemaIndex = 2, tag = 3)
        public final String swipe_reason;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "track2", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 5)
        public final String track_2;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "track2KeyId", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 10, tag = 10)
        public final String track_2_key_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "track2KeyType", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 9, tag = 9)
        public final String track_2_key_type;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "track2Ksn", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 11, tag = 12)
        public final String track_2_ksn;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
        public final String type;

        public RequestedCardPresent() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
        }

        public /* synthetic */ RequestedCardPresent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, StandardEncryptionType standardEncryptionType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? null : str10, (i & 1024) != 0 ? null : str11, (i & 2048) != 0 ? null : str12, (i & 4096) != 0 ? null : str13, (i & 8192) != 0 ? null : str14, (i & 16384) != 0 ? null : standardEncryptionType, (i & 32768) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestedCardPresent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, StandardEncryptionType standardEncryptionType, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.type = str;
            this.read_method = str2;
            this.swipe_reason = str3;
            this.track_2 = str4;
            this.emv_processing_method = str5;
            this.emv_data = str6;
            this.pin_block = str7;
            this.pin_block_ksn = str8;
            this.reader_ = str9;
            this.track_2_key_type = str10;
            this.track_2_key_id = str11;
            this.track_2_ksn = str12;
            this.latitude = str13;
            this.longitude = str14;
            this.encrypted_pin_block = standardEncryptionType;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.type = this.type;
            builder.read_method = this.read_method;
            builder.swipe_reason = this.swipe_reason;
            builder.track_2 = this.track_2;
            builder.emv_processing_method = this.emv_processing_method;
            builder.emv_data = this.emv_data;
            builder.pin_block = this.pin_block;
            builder.pin_block_ksn = this.pin_block_ksn;
            builder.reader_ = this.reader_;
            builder.track_2_key_type = this.track_2_key_type;
            builder.track_2_key_id = this.track_2_key_id;
            builder.track_2_ksn = this.track_2_ksn;
            builder.latitude = this.latitude;
            builder.longitude = this.longitude;
            builder.encrypted_pin_block = this.encrypted_pin_block;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RequestedCardPresent)) {
                return false;
            }
            RequestedCardPresent requestedCardPresent = (RequestedCardPresent) other;
            return Intrinsics.areEqual(unknownFields(), requestedCardPresent.unknownFields()) && Intrinsics.areEqual(this.type, requestedCardPresent.type) && Intrinsics.areEqual(this.read_method, requestedCardPresent.read_method) && Intrinsics.areEqual(this.swipe_reason, requestedCardPresent.swipe_reason) && Intrinsics.areEqual(this.track_2, requestedCardPresent.track_2) && Intrinsics.areEqual(this.emv_processing_method, requestedCardPresent.emv_processing_method) && Intrinsics.areEqual(this.emv_data, requestedCardPresent.emv_data) && Intrinsics.areEqual(this.pin_block, requestedCardPresent.pin_block) && Intrinsics.areEqual(this.pin_block_ksn, requestedCardPresent.pin_block_ksn) && Intrinsics.areEqual(this.reader_, requestedCardPresent.reader_) && Intrinsics.areEqual(this.track_2_key_type, requestedCardPresent.track_2_key_type) && Intrinsics.areEqual(this.track_2_key_id, requestedCardPresent.track_2_key_id) && Intrinsics.areEqual(this.track_2_ksn, requestedCardPresent.track_2_ksn) && Intrinsics.areEqual(this.latitude, requestedCardPresent.latitude) && Intrinsics.areEqual(this.longitude, requestedCardPresent.longitude) && Intrinsics.areEqual(this.encrypted_pin_block, requestedCardPresent.encrypted_pin_block);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.type;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.read_method;
            int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.swipe_reason;
            int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
            String str4 = this.track_2;
            int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
            String str5 = this.emv_processing_method;
            int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
            String str6 = this.emv_data;
            int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
            String str7 = this.pin_block;
            int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
            String str8 = this.pin_block_ksn;
            int iHashCode9 = (iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 37;
            String str9 = this.reader_;
            int iHashCode10 = (iHashCode9 + (str9 != null ? str9.hashCode() : 0)) * 37;
            String str10 = this.track_2_key_type;
            int iHashCode11 = (iHashCode10 + (str10 != null ? str10.hashCode() : 0)) * 37;
            String str11 = this.track_2_key_id;
            int iHashCode12 = (iHashCode11 + (str11 != null ? str11.hashCode() : 0)) * 37;
            String str12 = this.track_2_ksn;
            int iHashCode13 = (iHashCode12 + (str12 != null ? str12.hashCode() : 0)) * 37;
            String str13 = this.latitude;
            int iHashCode14 = (iHashCode13 + (str13 != null ? str13.hashCode() : 0)) * 37;
            String str14 = this.longitude;
            int iHashCode15 = (iHashCode14 + (str14 != null ? str14.hashCode() : 0)) * 37;
            StandardEncryptionType standardEncryptionType = this.encrypted_pin_block;
            int iHashCode16 = iHashCode15 + (standardEncryptionType != null ? standardEncryptionType.hashCode() : 0);
            this.hashCode = iHashCode16;
            return iHashCode16;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.type != null) {
                arrayList.add("type=" + this.type);
            }
            if (this.read_method != null) {
                arrayList.add("read_method=" + this.read_method);
            }
            if (this.swipe_reason != null) {
                arrayList.add("swipe_reason=" + this.swipe_reason);
            }
            if (this.track_2 != null) {
                arrayList.add("track_2=██");
            }
            if (this.emv_processing_method != null) {
                arrayList.add("emv_processing_method=" + this.emv_processing_method);
            }
            if (this.emv_data != null) {
                arrayList.add("emv_data=██");
            }
            if (this.pin_block != null) {
                arrayList.add("pin_block=██");
            }
            if (this.pin_block_ksn != null) {
                arrayList.add("pin_block_ksn=██");
            }
            if (this.reader_ != null) {
                arrayList.add("reader_=" + this.reader_);
            }
            if (this.track_2_key_type != null) {
                arrayList.add("track_2_key_type=██");
            }
            if (this.track_2_key_id != null) {
                arrayList.add("track_2_key_id=██");
            }
            if (this.track_2_ksn != null) {
                arrayList.add("track_2_ksn=██");
            }
            if (this.latitude != null) {
                arrayList.add("latitude=" + this.latitude);
            }
            if (this.longitude != null) {
                arrayList.add("longitude=" + this.longitude);
            }
            if (this.encrypted_pin_block != null) {
                arrayList.add("encrypted_pin_block=" + this.encrypted_pin_block);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "RequestedCardPresent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ RequestedCardPresent copy$default(RequestedCardPresent requestedCardPresent, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, StandardEncryptionType standardEncryptionType, ByteString byteString, int i, Object obj) {
            String str15 = (i & 1) != 0 ? requestedCardPresent.type : str;
            return requestedCardPresent.copy(str15, (i & 2) != 0 ? requestedCardPresent.read_method : str2, (i & 4) != 0 ? requestedCardPresent.swipe_reason : str3, (i & 8) != 0 ? requestedCardPresent.track_2 : str4, (i & 16) != 0 ? requestedCardPresent.emv_processing_method : str5, (i & 32) != 0 ? requestedCardPresent.emv_data : str6, (i & 64) != 0 ? requestedCardPresent.pin_block : str7, (i & 128) != 0 ? requestedCardPresent.pin_block_ksn : str8, (i & 256) != 0 ? requestedCardPresent.reader_ : str9, (i & 512) != 0 ? requestedCardPresent.track_2_key_type : str10, (i & 1024) != 0 ? requestedCardPresent.track_2_key_id : str11, (i & 2048) != 0 ? requestedCardPresent.track_2_ksn : str12, (i & 4096) != 0 ? requestedCardPresent.latitude : str13, (i & 8192) != 0 ? requestedCardPresent.longitude : str14, (i & 16384) != 0 ? requestedCardPresent.encrypted_pin_block : standardEncryptionType, (i & 32768) != 0 ? requestedCardPresent.unknownFields() : byteString);
        }

        public final RequestedCardPresent copy(String type, String read_method, String swipe_reason, String track_2, String emv_processing_method, String emv_data, String pin_block, String pin_block_ksn, String reader_, String track_2_key_type, String track_2_key_id, String track_2_ksn, String latitude, String longitude, StandardEncryptionType encrypted_pin_block, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new RequestedCardPresent(type, read_method, swipe_reason, track_2, emv_processing_method, emv_data, pin_block, pin_block_ksn, reader_, track_2_key_type, track_2_key_id, track_2_ksn, latitude, longitude, encrypted_pin_block, unknownFields);
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;", "()V", "emv_data", "", "emv_processing_method", "encrypted_pin_block", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "latitude", "longitude", "pin_block", "pin_block_ksn", "read_method", "reader_", "swipe_reason", "track_2", "track_2_key_id", "track_2_key_type", "track_2_ksn", "type", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<RequestedCardPresent, Builder> {
            public String emv_data;
            public String emv_processing_method;
            public StandardEncryptionType encrypted_pin_block;
            public String latitude;
            public String longitude;
            public String pin_block;
            public String pin_block_ksn;
            public String read_method;
            public String reader_;
            public String swipe_reason;
            public String track_2;
            public String track_2_key_id;
            public String track_2_key_type;
            public String track_2_ksn;
            public String type;

            public final Builder type(String type) {
                this.type = type;
                return this;
            }

            public final Builder read_method(String read_method) {
                this.read_method = read_method;
                return this;
            }

            public final Builder swipe_reason(String swipe_reason) {
                this.swipe_reason = swipe_reason;
                return this;
            }

            public final Builder track_2(String track_2) {
                this.track_2 = track_2;
                return this;
            }

            public final Builder emv_processing_method(String emv_processing_method) {
                this.emv_processing_method = emv_processing_method;
                return this;
            }

            public final Builder emv_data(String emv_data) {
                this.emv_data = emv_data;
                return this;
            }

            public final Builder pin_block(String pin_block) {
                this.pin_block = pin_block;
                return this;
            }

            public final Builder pin_block_ksn(String pin_block_ksn) {
                this.pin_block_ksn = pin_block_ksn;
                return this;
            }

            public final Builder reader_(String reader_) {
                this.reader_ = reader_;
                return this;
            }

            public final Builder track_2_key_type(String track_2_key_type) {
                this.track_2_key_type = track_2_key_type;
                return this;
            }

            public final Builder track_2_key_id(String track_2_key_id) {
                this.track_2_key_id = track_2_key_id;
                return this;
            }

            public final Builder track_2_ksn(String track_2_ksn) {
                this.track_2_ksn = track_2_ksn;
                return this;
            }

            public final Builder latitude(String latitude) {
                this.latitude = latitude;
                return this;
            }

            public final Builder longitude(String longitude) {
                this.longitude = longitude;
                return this;
            }

            public final Builder encrypted_pin_block(StandardEncryptionType encrypted_pin_block) {
                this.encrypted_pin_block = encrypted_pin_block;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RequestedCardPresent build() {
                return new RequestedCardPresent(this.type, this.read_method, this.swipe_reason, this.track_2, this.emv_processing_method, this.emv_data, this.pin_block, this.pin_block_ksn, this.reader_, this.track_2_key_type, this.track_2_key_id, this.track_2_ksn, this.latitude, this.longitude, this.encrypted_pin_block, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ RequestedCardPresent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestedCardPresent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<RequestedCardPresent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RequestedPaymentMethod.RequestedCardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.type != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.type);
                    }
                    if (value.read_method != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.read_method);
                    }
                    if (value.swipe_reason != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.swipe_reason);
                    }
                    if (value.track_2 != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.track_2);
                    }
                    if (value.emv_processing_method != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.emv_processing_method);
                    }
                    if (value.emv_data != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.emv_data);
                    }
                    if (value.pin_block != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.pin_block);
                    }
                    if (value.pin_block_ksn != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.pin_block_ksn);
                    }
                    if (value.reader_ != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.reader_);
                    }
                    if (value.track_2_key_type != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.track_2_key_type);
                    }
                    if (value.track_2_key_id != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.track_2_key_id);
                    }
                    if (value.track_2_ksn != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(12, value.track_2_ksn);
                    }
                    if (value.latitude != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(13, value.latitude);
                    }
                    if (value.longitude != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(14, value.longitude);
                    }
                    return value.encrypted_pin_block != null ? size + RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.ADAPTER.encodedSizeWithTag(15, value.encrypted_pin_block) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, RequestedPaymentMethod.RequestedCardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                    }
                    if (value.read_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.read_method);
                    }
                    if (value.swipe_reason != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.swipe_reason);
                    }
                    if (value.track_2 != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.track_2);
                    }
                    if (value.emv_processing_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.emv_processing_method);
                    }
                    if (value.emv_data != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.emv_data);
                    }
                    if (value.pin_block != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.pin_block);
                    }
                    if (value.pin_block_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.pin_block_ksn);
                    }
                    if (value.reader_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.reader_);
                    }
                    if (value.track_2_key_type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.track_2_key_type);
                    }
                    if (value.track_2_key_id != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.track_2_key_id);
                    }
                    if (value.track_2_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.track_2_ksn);
                    }
                    if (value.latitude != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.latitude);
                    }
                    if (value.longitude != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.longitude);
                    }
                    if (value.encrypted_pin_block != null) {
                        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.ADAPTER.encodeWithTag(writer, 15, value.encrypted_pin_block);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, RequestedPaymentMethod.RequestedCardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.encrypted_pin_block != null) {
                        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.ADAPTER.encodeWithTag(writer, 15, value.encrypted_pin_block);
                    }
                    if (value.longitude != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.longitude);
                    }
                    if (value.latitude != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.latitude);
                    }
                    if (value.track_2_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.track_2_ksn);
                    }
                    if (value.track_2_key_id != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.track_2_key_id);
                    }
                    if (value.track_2_key_type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.track_2_key_type);
                    }
                    if (value.reader_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.reader_);
                    }
                    if (value.pin_block_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.pin_block_ksn);
                    }
                    if (value.pin_block != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.pin_block);
                    }
                    if (value.emv_data != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.emv_data);
                    }
                    if (value.emv_processing_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.emv_processing_method);
                    }
                    if (value.track_2 != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.track_2);
                    }
                    if (value.swipe_reason != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.swipe_reason);
                    }
                    if (value.read_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.read_method);
                    }
                    if (value.type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RequestedPaymentMethod.RequestedCardPresent redact(RequestedPaymentMethod.RequestedCardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.type;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    String str2 = value.read_method;
                    String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                    String str3 = value.swipe_reason;
                    String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                    String str4 = value.emv_processing_method;
                    String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                    String str5 = value.reader_;
                    String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                    String str6 = value.latitude;
                    String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                    String str7 = value.longitude;
                    String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                    RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType = value.encrypted_pin_block;
                    return value.copy(strRedact, strRedact2, strRedact3, null, strRedact4, null, null, null, strRedact5, null, null, null, strRedact6, strRedact7, standardEncryptionType != null ? RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.ADAPTER.redact(standardEncryptionType) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RequestedPaymentMethod.RequestedCardPresent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    String strDecode2 = null;
                    String strDecode3 = null;
                    String strDecode4 = null;
                    String strDecode5 = null;
                    String strDecode6 = null;
                    String strDecode7 = null;
                    String strDecode8 = null;
                    String strDecode9 = null;
                    String strDecode10 = null;
                    String strDecode11 = null;
                    String strDecode12 = null;
                    String strDecode13 = null;
                    RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionTypeDecode = null;
                    String strDecode14 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        String str = strDecode;
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    strDecode14 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 2:
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                    continue;
                                case 3:
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 4:
                                    strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 5:
                                    strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 6:
                                    strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 7:
                                    strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 8:
                                    strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 9:
                                    strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 10:
                                    strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 11:
                                    strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 12:
                                    strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 13:
                                    strDecode12 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 14:
                                    strDecode13 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 15:
                                    standardEncryptionTypeDecode = RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.ADAPTER.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                            strDecode = str;
                        } else {
                            return new RequestedPaymentMethod.RequestedCardPresent(strDecode14, str, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, strDecode12, strDecode13, standardEncryptionTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SCHEME_TYPE_INVALID", "dynamic_tr31", "dukpt", "ecka_ttpa", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class SchemeType implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ SchemeType[] $VALUES;
            public static final ProtoAdapter<SchemeType> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final SchemeType SCHEME_TYPE_INVALID;
            public static final SchemeType dukpt;
            public static final SchemeType dynamic_tr31;
            public static final SchemeType ecka_ttpa;
            private final int value;

            private static final /* synthetic */ SchemeType[] $values() {
                return new SchemeType[]{SCHEME_TYPE_INVALID, dynamic_tr31, dukpt, ecka_ttpa};
            }

            @JvmStatic
            public static final SchemeType fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<SchemeType> getEntries() {
                return $ENTRIES;
            }

            public static SchemeType valueOf(String str) {
                return (SchemeType) Enum.valueOf(SchemeType.class, str);
            }

            public static SchemeType[] values() {
                return (SchemeType[]) $VALUES.clone();
            }

            private SchemeType(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final SchemeType schemeType = new SchemeType("SCHEME_TYPE_INVALID", 0, 0);
                SCHEME_TYPE_INVALID = schemeType;
                dynamic_tr31 = new SchemeType("dynamic_tr31", 1, 1);
                dukpt = new SchemeType("dukpt", 2, 2);
                ecka_ttpa = new SchemeType("ecka_ttpa", 3, 3);
                SchemeType[] schemeTypeArr$values = $values();
                $VALUES = schemeTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(schemeTypeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SchemeType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<SchemeType>(orCreateKotlinClass, syntax, schemeType) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$SchemeType$Companion$ADAPTER$1
                    {
                        RequestedPaymentMethod.RequestedCardPresent.SchemeType schemeType2 = schemeType;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public RequestedPaymentMethod.RequestedCardPresent.SchemeType fromValue(int value) {
                        return RequestedPaymentMethod.RequestedCardPresent.SchemeType.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final SchemeType fromValue(int value) {
                    if (value == 0) {
                        return SchemeType.SCHEME_TYPE_INVALID;
                    }
                    if (value == 1) {
                        return SchemeType.dynamic_tr31;
                    }
                    if (value == 2) {
                        return SchemeType.dukpt;
                    }
                    if (value != 3) {
                        return null;
                    }
                    return SchemeType.ecka_ttpa;
                }
            }
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$Builder;", "scheme", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;", "ecka_ttpa", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;", "encrypted_value", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "TtpaEcka", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class StandardEncryptionType extends Message<StandardEncryptionType, Builder> {
            public static final ProtoAdapter<StandardEncryptionType> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka#ADAPTER", jsonName = "eckaTtpa", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final TtpaEcka ecka_ttpa;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "encryptedValue", schemaIndex = 2, tag = 3)
            public final String encrypted_value;

            @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$SchemeType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final SchemeType scheme;

            public StandardEncryptionType() {
                this(null, null, null, null, 15, null);
            }

            public /* synthetic */ StandardEncryptionType(SchemeType schemeType, TtpaEcka ttpaEcka, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? SchemeType.SCHEME_TYPE_INVALID : schemeType, (i & 2) != 0 ? null : ttpaEcka, (i & 4) != 0 ? null : str, (i & 8) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StandardEncryptionType(SchemeType scheme, TtpaEcka ttpaEcka, String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(scheme, "scheme");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.scheme = scheme;
                this.ecka_ttpa = ttpaEcka;
                this.encrypted_value = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.scheme = this.scheme;
                builder.ecka_ttpa = this.ecka_ttpa;
                builder.encrypted_value = this.encrypted_value;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof StandardEncryptionType)) {
                    return false;
                }
                StandardEncryptionType standardEncryptionType = (StandardEncryptionType) other;
                return Intrinsics.areEqual(unknownFields(), standardEncryptionType.unknownFields()) && this.scheme == standardEncryptionType.scheme && Intrinsics.areEqual(this.ecka_ttpa, standardEncryptionType.ecka_ttpa) && Intrinsics.areEqual(this.encrypted_value, standardEncryptionType.encrypted_value);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = ((unknownFields().hashCode() * 37) + this.scheme.hashCode()) * 37;
                TtpaEcka ttpaEcka = this.ecka_ttpa;
                int iHashCode2 = (iHashCode + (ttpaEcka != null ? ttpaEcka.hashCode() : 0)) * 37;
                String str = this.encrypted_value;
                int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode3;
                return iHashCode3;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("scheme=" + this.scheme);
                if (this.ecka_ttpa != null) {
                    arrayList2.add("ecka_ttpa=" + this.ecka_ttpa);
                }
                if (this.encrypted_value != null) {
                    arrayList2.add("encrypted_value=" + this.encrypted_value);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "StandardEncryptionType{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ StandardEncryptionType copy$default(StandardEncryptionType standardEncryptionType, SchemeType schemeType, TtpaEcka ttpaEcka, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    schemeType = standardEncryptionType.scheme;
                }
                if ((i & 2) != 0) {
                    ttpaEcka = standardEncryptionType.ecka_ttpa;
                }
                if ((i & 4) != 0) {
                    str = standardEncryptionType.encrypted_value;
                }
                if ((i & 8) != 0) {
                    byteString = standardEncryptionType.unknownFields();
                }
                return standardEncryptionType.copy(schemeType, ttpaEcka, str, byteString);
            }

            public final StandardEncryptionType copy(SchemeType scheme, TtpaEcka ecka_ttpa, String encrypted_value, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(scheme, "scheme");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new StandardEncryptionType(scheme, ecka_ttpa, encrypted_value, unknownFields);
            }

            /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
            @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "()V", "ecka_ttpa", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;", "encrypted_value", "", "scheme", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<StandardEncryptionType, Builder> {
                public TtpaEcka ecka_ttpa;
                public String encrypted_value;
                public SchemeType scheme = SchemeType.SCHEME_TYPE_INVALID;

                public final Builder scheme(SchemeType scheme) {
                    Intrinsics.checkNotNullParameter(scheme, "scheme");
                    this.scheme = scheme;
                    return this;
                }

                public final Builder ecka_ttpa(TtpaEcka ecka_ttpa) {
                    this.ecka_ttpa = ecka_ttpa;
                    return this;
                }

                public final Builder encrypted_value(String encrypted_value) {
                    this.encrypted_value = encrypted_value;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public StandardEncryptionType build() {
                    return new StandardEncryptionType(this.scheme, this.ecka_ttpa, this.encrypted_value, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ StandardEncryptionType build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StandardEncryptionType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<StandardEncryptionType>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.scheme != RequestedPaymentMethod.RequestedCardPresent.SchemeType.SCHEME_TYPE_INVALID) {
                            size += RequestedPaymentMethod.RequestedCardPresent.SchemeType.ADAPTER.encodedSizeWithTag(1, value.scheme);
                        }
                        if (value.ecka_ttpa != null) {
                            size += RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka.ADAPTER.encodedSizeWithTag(2, value.ecka_ttpa);
                        }
                        return value.encrypted_value != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.encrypted_value) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.scheme != RequestedPaymentMethod.RequestedCardPresent.SchemeType.SCHEME_TYPE_INVALID) {
                            RequestedPaymentMethod.RequestedCardPresent.SchemeType.ADAPTER.encodeWithTag(writer, 1, value.scheme);
                        }
                        if (value.ecka_ttpa != null) {
                            RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka.ADAPTER.encodeWithTag(writer, 2, value.ecka_ttpa);
                        }
                        if (value.encrypted_value != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.encrypted_value);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.encrypted_value != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.encrypted_value);
                        }
                        if (value.ecka_ttpa != null) {
                            RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka.ADAPTER.encodeWithTag(writer, 2, value.ecka_ttpa);
                        }
                        if (value.scheme != RequestedPaymentMethod.RequestedCardPresent.SchemeType.SCHEME_TYPE_INVALID) {
                            RequestedPaymentMethod.RequestedCardPresent.SchemeType.ADAPTER.encodeWithTag(writer, 1, value.scheme);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        RequestedPaymentMethod.RequestedCardPresent.SchemeType schemeTypeDecode = RequestedPaymentMethod.RequestedCardPresent.SchemeType.SCHEME_TYPE_INVALID;
                        long jBeginMessage = reader.beginMessage();
                        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka ttpaEckaDecode = null;
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType(schemeTypeDecode, ttpaEckaDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    schemeTypeDecode = RequestedPaymentMethod.RequestedCardPresent.SchemeType.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 2) {
                                ttpaEckaDecode = RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka.ADAPTER.decode(reader);
                            } else if (iNextTag == 3) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType redact(RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka ttpaEcka = value.ecka_ttpa;
                        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka ttpaEckaRedact = ttpaEcka != null ? RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka.ADAPTER.redact(ttpaEcka) : null;
                        String str = value.encrypted_value;
                        return RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.copy$default(value, null, ttpaEckaRedact, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY, 1, null);
                    }
                };
            }

            /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
            @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ4\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka$Builder;", "client_public_key", "", "server_public_key_hash", "installation_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class TtpaEcka extends Message<TtpaEcka, Builder> {
                public static final ProtoAdapter<TtpaEcka> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "clientPublicKey", schemaIndex = 0, tag = 1)
                public final String client_public_key;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "installationId", schemaIndex = 2, tag = 3)
                public final String installation_id;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "serverPublicKeyHash", schemaIndex = 1, tag = 2)
                public final String server_public_key_hash;

                public TtpaEcka() {
                    this(null, null, null, null, 15, null);
                }

                public /* synthetic */ TtpaEcka(String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public TtpaEcka(String str, String str2, String str3, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.client_public_key = str;
                    this.server_public_key_hash = str2;
                    this.installation_id = str3;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.client_public_key = this.client_public_key;
                    builder.server_public_key_hash = this.server_public_key_hash;
                    builder.installation_id = this.installation_id;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof TtpaEcka)) {
                        return false;
                    }
                    TtpaEcka ttpaEcka = (TtpaEcka) other;
                    return Intrinsics.areEqual(unknownFields(), ttpaEcka.unknownFields()) && Intrinsics.areEqual(this.client_public_key, ttpaEcka.client_public_key) && Intrinsics.areEqual(this.server_public_key_hash, ttpaEcka.server_public_key_hash) && Intrinsics.areEqual(this.installation_id, ttpaEcka.installation_id);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.client_public_key;
                    int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                    String str2 = this.server_public_key_hash;
                    int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
                    String str3 = this.installation_id;
                    int iHashCode4 = iHashCode3 + (str3 != null ? str3.hashCode() : 0);
                    this.hashCode = iHashCode4;
                    return iHashCode4;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.client_public_key != null) {
                        arrayList.add("client_public_key=" + this.client_public_key);
                    }
                    if (this.server_public_key_hash != null) {
                        arrayList.add("server_public_key_hash=" + this.server_public_key_hash);
                    }
                    if (this.installation_id != null) {
                        arrayList.add("installation_id=" + this.installation_id);
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "TtpaEcka{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ TtpaEcka copy$default(TtpaEcka ttpaEcka, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = ttpaEcka.client_public_key;
                    }
                    if ((i & 2) != 0) {
                        str2 = ttpaEcka.server_public_key_hash;
                    }
                    if ((i & 4) != 0) {
                        str3 = ttpaEcka.installation_id;
                    }
                    if ((i & 8) != 0) {
                        byteString = ttpaEcka.unknownFields();
                    }
                    return ttpaEcka.copy(str, str2, str3, byteString);
                }

                public final TtpaEcka copy(String client_public_key, String server_public_key_hash, String installation_id, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new TtpaEcka(client_public_key, server_public_key_hash, installation_id, unknownFields);
                }

                /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;", "()V", "client_public_key", "", "installation_id", "server_public_key_hash", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<TtpaEcka, Builder> {
                    public String client_public_key;
                    public String installation_id;
                    public String server_public_key_hash;

                    public final Builder client_public_key(String client_public_key) {
                        this.client_public_key = client_public_key;
                        return this;
                    }

                    public final Builder server_public_key_hash(String server_public_key_hash) {
                        this.server_public_key_hash = server_public_key_hash;
                        return this;
                    }

                    public final Builder installation_id(String installation_id) {
                        this.installation_id = installation_id;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public TtpaEcka build() {
                        return new TtpaEcka(this.client_public_key, this.server_public_key_hash, this.installation_id, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ TtpaEcka build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TtpaEcka.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<TtpaEcka>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (value.client_public_key != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.client_public_key);
                            }
                            if (value.server_public_key_hash != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.server_public_key_hash);
                            }
                            return value.installation_id != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.installation_id) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.client_public_key != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.client_public_key);
                            }
                            if (value.server_public_key_hash != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.server_public_key_hash);
                            }
                            if (value.installation_id != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.installation_id);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.installation_id != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.installation_id);
                            }
                            if (value.server_public_key_hash != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.server_public_key_hash);
                            }
                            if (value.client_public_key != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.client_public_key);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka redact(RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            String str = value.client_public_key;
                            String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                            String str2 = value.server_public_key_hash;
                            String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                            String str3 = value.installation_id;
                            return value.copy(strRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            String strDecode2 = null;
                            String strDecode3 = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka(strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 2) {
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 3) {
                                    strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
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

    /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJX\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard$Builder;", "dukpt_encrypted_number", "", "dukpt_encrypted_number_ksn", "exp_month", "exp_year", "dukpt_encrypted_cvc", "dukpt_encrypted_cvc_ksn", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RequestedCard extends Message<RequestedCard, Builder> {
        public static final ProtoAdapter<RequestedCard> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "dukptEncryptedCvc", schemaIndex = 4, tag = 5)
        public final String dukpt_encrypted_cvc;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "dukptEncryptedCvcKsn", schemaIndex = 5, tag = 6)
        public final String dukpt_encrypted_cvc_ksn;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "dukptEncryptedNumber", schemaIndex = 0, tag = 1)
        public final String dukpt_encrypted_number;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "dukptEncryptedNumberKsn", schemaIndex = 1, tag = 2)
        public final String dukpt_encrypted_number_ksn;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "expMonth", schemaIndex = 2, tag = 3)
        public final String exp_month;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "expYear", schemaIndex = 3, tag = 4)
        public final String exp_year;

        public RequestedCard() {
            this(null, null, null, null, null, null, null, 127, null);
        }

        public /* synthetic */ RequestedCard(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestedCard(String str, String str2, String str3, String str4, String str5, String str6, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.dukpt_encrypted_number = str;
            this.dukpt_encrypted_number_ksn = str2;
            this.exp_month = str3;
            this.exp_year = str4;
            this.dukpt_encrypted_cvc = str5;
            this.dukpt_encrypted_cvc_ksn = str6;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.dukpt_encrypted_number = this.dukpt_encrypted_number;
            builder.dukpt_encrypted_number_ksn = this.dukpt_encrypted_number_ksn;
            builder.exp_month = this.exp_month;
            builder.exp_year = this.exp_year;
            builder.dukpt_encrypted_cvc = this.dukpt_encrypted_cvc;
            builder.dukpt_encrypted_cvc_ksn = this.dukpt_encrypted_cvc_ksn;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RequestedCard)) {
                return false;
            }
            RequestedCard requestedCard = (RequestedCard) other;
            return Intrinsics.areEqual(unknownFields(), requestedCard.unknownFields()) && Intrinsics.areEqual(this.dukpt_encrypted_number, requestedCard.dukpt_encrypted_number) && Intrinsics.areEqual(this.dukpt_encrypted_number_ksn, requestedCard.dukpt_encrypted_number_ksn) && Intrinsics.areEqual(this.exp_month, requestedCard.exp_month) && Intrinsics.areEqual(this.exp_year, requestedCard.exp_year) && Intrinsics.areEqual(this.dukpt_encrypted_cvc, requestedCard.dukpt_encrypted_cvc) && Intrinsics.areEqual(this.dukpt_encrypted_cvc_ksn, requestedCard.dukpt_encrypted_cvc_ksn);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.dukpt_encrypted_number;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.dukpt_encrypted_number_ksn;
            int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.exp_month;
            int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
            String str4 = this.exp_year;
            int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
            String str5 = this.dukpt_encrypted_cvc;
            int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
            String str6 = this.dukpt_encrypted_cvc_ksn;
            int iHashCode7 = iHashCode6 + (str6 != null ? str6.hashCode() : 0);
            this.hashCode = iHashCode7;
            return iHashCode7;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.dukpt_encrypted_number != null) {
                arrayList.add("dukpt_encrypted_number=" + this.dukpt_encrypted_number);
            }
            if (this.dukpt_encrypted_number_ksn != null) {
                arrayList.add("dukpt_encrypted_number_ksn=" + this.dukpt_encrypted_number_ksn);
            }
            if (this.exp_month != null) {
                arrayList.add("exp_month=" + this.exp_month);
            }
            if (this.exp_year != null) {
                arrayList.add("exp_year=" + this.exp_year);
            }
            if (this.dukpt_encrypted_cvc != null) {
                arrayList.add("dukpt_encrypted_cvc=" + this.dukpt_encrypted_cvc);
            }
            if (this.dukpt_encrypted_cvc_ksn != null) {
                arrayList.add("dukpt_encrypted_cvc_ksn=" + this.dukpt_encrypted_cvc_ksn);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "RequestedCard{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ RequestedCard copy$default(RequestedCard requestedCard, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = requestedCard.dukpt_encrypted_number;
            }
            if ((i & 2) != 0) {
                str2 = requestedCard.dukpt_encrypted_number_ksn;
            }
            if ((i & 4) != 0) {
                str3 = requestedCard.exp_month;
            }
            if ((i & 8) != 0) {
                str4 = requestedCard.exp_year;
            }
            if ((i & 16) != 0) {
                str5 = requestedCard.dukpt_encrypted_cvc;
            }
            if ((i & 32) != 0) {
                str6 = requestedCard.dukpt_encrypted_cvc_ksn;
            }
            if ((i & 64) != 0) {
                byteString = requestedCard.unknownFields();
            }
            String str7 = str6;
            ByteString byteString2 = byteString;
            String str8 = str5;
            String str9 = str3;
            return requestedCard.copy(str, str2, str9, str4, str8, str7, byteString2);
        }

        public final RequestedCard copy(String dukpt_encrypted_number, String dukpt_encrypted_number_ksn, String exp_month, String exp_year, String dukpt_encrypted_cvc, String dukpt_encrypted_cvc_ksn, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new RequestedCard(dukpt_encrypted_number, dukpt_encrypted_number_ksn, exp_month, exp_year, dukpt_encrypted_cvc, dukpt_encrypted_cvc_ksn, unknownFields);
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;", "()V", "dukpt_encrypted_cvc", "", "dukpt_encrypted_cvc_ksn", "dukpt_encrypted_number", "dukpt_encrypted_number_ksn", "exp_month", "exp_year", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<RequestedCard, Builder> {
            public String dukpt_encrypted_cvc;
            public String dukpt_encrypted_cvc_ksn;
            public String dukpt_encrypted_number;
            public String dukpt_encrypted_number_ksn;
            public String exp_month;
            public String exp_year;

            public final Builder dukpt_encrypted_number(String dukpt_encrypted_number) {
                this.dukpt_encrypted_number = dukpt_encrypted_number;
                return this;
            }

            public final Builder dukpt_encrypted_number_ksn(String dukpt_encrypted_number_ksn) {
                this.dukpt_encrypted_number_ksn = dukpt_encrypted_number_ksn;
                return this;
            }

            public final Builder exp_month(String exp_month) {
                this.exp_month = exp_month;
                return this;
            }

            public final Builder exp_year(String exp_year) {
                this.exp_year = exp_year;
                return this;
            }

            public final Builder dukpt_encrypted_cvc(String dukpt_encrypted_cvc) {
                this.dukpt_encrypted_cvc = dukpt_encrypted_cvc;
                return this;
            }

            public final Builder dukpt_encrypted_cvc_ksn(String dukpt_encrypted_cvc_ksn) {
                this.dukpt_encrypted_cvc_ksn = dukpt_encrypted_cvc_ksn;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RequestedCard build() {
                return new RequestedCard(this.dukpt_encrypted_number, this.dukpt_encrypted_number_ksn, this.exp_month, this.exp_year, this.dukpt_encrypted_cvc, this.dukpt_encrypted_cvc_ksn, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ RequestedCard build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestedCard.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<RequestedCard>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCard$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RequestedPaymentMethod.RequestedCard value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.dukpt_encrypted_number != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.dukpt_encrypted_number);
                    }
                    if (value.dukpt_encrypted_number_ksn != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.dukpt_encrypted_number_ksn);
                    }
                    if (value.exp_month != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.exp_month);
                    }
                    if (value.exp_year != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.exp_year);
                    }
                    if (value.dukpt_encrypted_cvc != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.dukpt_encrypted_cvc);
                    }
                    return value.dukpt_encrypted_cvc_ksn != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.dukpt_encrypted_cvc_ksn) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, RequestedPaymentMethod.RequestedCard value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.dukpt_encrypted_number != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.dukpt_encrypted_number);
                    }
                    if (value.dukpt_encrypted_number_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.dukpt_encrypted_number_ksn);
                    }
                    if (value.exp_month != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.exp_month);
                    }
                    if (value.exp_year != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.exp_year);
                    }
                    if (value.dukpt_encrypted_cvc != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.dukpt_encrypted_cvc);
                    }
                    if (value.dukpt_encrypted_cvc_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.dukpt_encrypted_cvc_ksn);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, RequestedPaymentMethod.RequestedCard value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.dukpt_encrypted_cvc_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.dukpt_encrypted_cvc_ksn);
                    }
                    if (value.dukpt_encrypted_cvc != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.dukpt_encrypted_cvc);
                    }
                    if (value.exp_year != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.exp_year);
                    }
                    if (value.exp_month != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.exp_month);
                    }
                    if (value.dukpt_encrypted_number_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.dukpt_encrypted_number_ksn);
                    }
                    if (value.dukpt_encrypted_number != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.dukpt_encrypted_number);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RequestedPaymentMethod.RequestedCard redact(RequestedPaymentMethod.RequestedCard value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.dukpt_encrypted_number;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    String str2 = value.dukpt_encrypted_number_ksn;
                    String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                    String str3 = value.exp_month;
                    String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                    String str4 = value.exp_year;
                    String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                    String str5 = value.dukpt_encrypted_cvc;
                    String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                    String str6 = value.dukpt_encrypted_cvc_ksn;
                    return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RequestedPaymentMethod.RequestedCard decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    String strDecode2 = null;
                    String strDecode3 = null;
                    String strDecode4 = null;
                    String strDecode5 = null;
                    String strDecode6 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 2:
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 3:
                                    strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 4:
                                    strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 5:
                                    strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 6:
                                    strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new RequestedPaymentMethod.RequestedCard(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Builder;", "address", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Address", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BillingDetails extends Message<BillingDetails, Builder> {
        public static final ProtoAdapter<BillingDetails> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$BillingDetails$Address#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Address address;

        /* JADX WARN: Multi-variable type inference failed */
        public BillingDetails() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ BillingDetails(Address address, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : address, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BillingDetails(Address address, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.address = address;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.address = this.address;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof BillingDetails)) {
                return false;
            }
            BillingDetails billingDetails = (BillingDetails) other;
            return Intrinsics.areEqual(unknownFields(), billingDetails.unknownFields()) && Intrinsics.areEqual(this.address, billingDetails.address);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Address address = this.address;
            int iHashCode2 = iHashCode + (address != null ? address.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.address != null) {
                arrayList.add("address=" + this.address);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "BillingDetails{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ BillingDetails copy$default(BillingDetails billingDetails, Address address, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                address = billingDetails.address;
            }
            if ((i & 2) != 0) {
                byteString = billingDetails.unknownFields();
            }
            return billingDetails.copy(address, byteString);
        }

        public final BillingDetails copy(Address address, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new BillingDetails(address, unknownFields);
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;", "()V", "address", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<BillingDetails, Builder> {
            public Address address;

            public final Builder address(Address address) {
                this.address = address;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public BillingDetails build() {
                return new BillingDetails(this.address, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ BillingDetails build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BillingDetails.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<BillingDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$BillingDetails$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RequestedPaymentMethod.BillingDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.address != null ? size + RequestedPaymentMethod.BillingDetails.Address.ADAPTER.encodedSizeWithTag(1, value.address) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, RequestedPaymentMethod.BillingDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.address != null) {
                        RequestedPaymentMethod.BillingDetails.Address.ADAPTER.encodeWithTag(writer, 1, value.address);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, RequestedPaymentMethod.BillingDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.address != null) {
                        RequestedPaymentMethod.BillingDetails.Address.ADAPTER.encodeWithTag(writer, 1, value.address);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RequestedPaymentMethod.BillingDetails redact(RequestedPaymentMethod.BillingDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    RequestedPaymentMethod.BillingDetails.Address address = value.address;
                    return value.copy(address != null ? RequestedPaymentMethod.BillingDetails.Address.ADAPTER.redact(address) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RequestedPaymentMethod.BillingDetails decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    RequestedPaymentMethod.BillingDetails.Address addressDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new RequestedPaymentMethod.BillingDetails(addressDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            addressDecode = RequestedPaymentMethod.BillingDetails.Address.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address$Builder;", "postal_code", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Address extends Message<Address, Builder> {
            public static final ProtoAdapter<Address> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "postalCode", schemaIndex = 0, tag = 1)
            public final String postal_code;

            /* JADX WARN: Multi-variable type inference failed */
            public Address() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Address(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Address(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.postal_code = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.postal_code = this.postal_code;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Address)) {
                    return false;
                }
                Address address = (Address) other;
                return Intrinsics.areEqual(unknownFields(), address.unknownFields()) && Intrinsics.areEqual(this.postal_code, address.postal_code);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.postal_code;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.postal_code != null) {
                    arrayList.add("postal_code=" + this.postal_code);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Address{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Address copy$default(Address address, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = address.postal_code;
                }
                if ((i & 2) != 0) {
                    byteString = address.unknownFields();
                }
                return address.copy(str, byteString);
            }

            public final Address copy(String postal_code, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Address(postal_code, unknownFields);
            }

            /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;", "()V", "postal_code", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Address, Builder> {
                public String postal_code;

                public final Builder postal_code(String postal_code) {
                    this.postal_code = postal_code;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Address build() {
                    return new Address(this.postal_code, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: RequestedPaymentMethod.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Address build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Address.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Address>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RequestedPaymentMethod$BillingDetails$Address$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(RequestedPaymentMethod.BillingDetails.Address value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.postal_code != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.postal_code) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, RequestedPaymentMethod.BillingDetails.Address value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.postal_code != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.postal_code);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, RequestedPaymentMethod.BillingDetails.Address value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.postal_code != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.postal_code);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public RequestedPaymentMethod.BillingDetails.Address redact(RequestedPaymentMethod.BillingDetails.Address value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.postal_code;
                        return value.copy(str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public RequestedPaymentMethod.BillingDetails.Address decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new RequestedPaymentMethod.BillingDetails.Address(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
}
