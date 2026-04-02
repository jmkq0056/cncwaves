package com.stripe.proto.api.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions;
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

/* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;", "card_present", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "CardPresent", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatePaymentIntentPaymentMethodOptions extends Message<UpdatePaymentIntentPaymentMethodOptions, Builder> {
    public static final ProtoAdapter<UpdatePaymentIntentPaymentMethodOptions> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions$CardPresent#ADAPTER", jsonName = "cardPresent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CardPresent card_present;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdatePaymentIntentPaymentMethodOptions() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ UpdatePaymentIntentPaymentMethodOptions(CardPresent cardPresent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cardPresent, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatePaymentIntentPaymentMethodOptions(CardPresent cardPresent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.card_present = cardPresent;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.card_present = this.card_present;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdatePaymentIntentPaymentMethodOptions)) {
            return false;
        }
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions = (UpdatePaymentIntentPaymentMethodOptions) other;
        return Intrinsics.areEqual(unknownFields(), updatePaymentIntentPaymentMethodOptions.unknownFields()) && Intrinsics.areEqual(this.card_present, updatePaymentIntentPaymentMethodOptions.card_present);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CardPresent cardPresent = this.card_present;
        int iHashCode2 = iHashCode + (cardPresent != null ? cardPresent.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdatePaymentIntentPaymentMethodOptions{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UpdatePaymentIntentPaymentMethodOptions copy$default(UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions, CardPresent cardPresent, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            cardPresent = updatePaymentIntentPaymentMethodOptions.card_present;
        }
        if ((i & 2) != 0) {
            byteString = updatePaymentIntentPaymentMethodOptions.unknownFields();
        }
        return updatePaymentIntentPaymentMethodOptions.copy(cardPresent, byteString);
    }

    public final UpdatePaymentIntentPaymentMethodOptions copy(CardPresent card_present, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdatePaymentIntentPaymentMethodOptions(card_present, unknownFields);
    }

    /* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "()V", "card_present", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdatePaymentIntentPaymentMethodOptions, Builder> {
        public CardPresent card_present;

        public final Builder card_present(CardPresent card_present) {
            this.card_present = card_present;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdatePaymentIntentPaymentMethodOptions build() {
            return new UpdatePaymentIntentPaymentMethodOptions(this.card_present, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdatePaymentIntentPaymentMethodOptions build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdatePaymentIntentPaymentMethodOptions.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdatePaymentIntentPaymentMethodOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdatePaymentIntentPaymentMethodOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.card_present != null ? size + UpdatePaymentIntentPaymentMethodOptions.CardPresent.ADAPTER.encodedSizeWithTag(1, value.card_present) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdatePaymentIntentPaymentMethodOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.card_present != null) {
                    UpdatePaymentIntentPaymentMethodOptions.CardPresent.ADAPTER.encodeWithTag(writer, 1, value.card_present);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdatePaymentIntentPaymentMethodOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.card_present != null) {
                    UpdatePaymentIntentPaymentMethodOptions.CardPresent.ADAPTER.encodeWithTag(writer, 1, value.card_present);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdatePaymentIntentPaymentMethodOptions redact(UpdatePaymentIntentPaymentMethodOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                UpdatePaymentIntentPaymentMethodOptions.CardPresent cardPresent = value.card_present;
                return value.copy(cardPresent != null ? UpdatePaymentIntentPaymentMethodOptions.CardPresent.ADAPTER.redact(cardPresent) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdatePaymentIntentPaymentMethodOptions decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                UpdatePaymentIntentPaymentMethodOptions.CardPresent cardPresentDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UpdatePaymentIntentPaymentMethodOptions(cardPresentDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        cardPresentDecode = UpdatePaymentIntentPaymentMethodOptions.CardPresent.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ-\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;", "request_dynamic_currency_conversion", "", "dynamic_currency_conversion_selected", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardPresent extends Message<CardPresent, Builder> {
        public static final ProtoAdapter<CardPresent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "dynamicCurrencyConversionSelected", schemaIndex = 1, tag = 2)
        public final Boolean dynamic_currency_conversion_selected;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "requestDynamicCurrencyConversion", schemaIndex = 0, tag = 1)
        public final String request_dynamic_currency_conversion;

        public CardPresent() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ CardPresent(String str, Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardPresent(String str, Boolean bool, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.request_dynamic_currency_conversion = str;
            this.dynamic_currency_conversion_selected = bool;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.request_dynamic_currency_conversion = this.request_dynamic_currency_conversion;
            builder.dynamic_currency_conversion_selected = this.dynamic_currency_conversion_selected;
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
            return Intrinsics.areEqual(unknownFields(), cardPresent.unknownFields()) && Intrinsics.areEqual(this.request_dynamic_currency_conversion, cardPresent.request_dynamic_currency_conversion) && Intrinsics.areEqual(this.dynamic_currency_conversion_selected, cardPresent.dynamic_currency_conversion_selected);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.request_dynamic_currency_conversion;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            Boolean bool = this.dynamic_currency_conversion_selected;
            int iHashCode3 = iHashCode2 + (bool != null ? bool.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.request_dynamic_currency_conversion != null) {
                arrayList.add("request_dynamic_currency_conversion=" + this.request_dynamic_currency_conversion);
            }
            if (this.dynamic_currency_conversion_selected != null) {
                arrayList.add("dynamic_currency_conversion_selected=" + this.dynamic_currency_conversion_selected);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "CardPresent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CardPresent copy$default(CardPresent cardPresent, String str, Boolean bool, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cardPresent.request_dynamic_currency_conversion;
            }
            if ((i & 2) != 0) {
                bool = cardPresent.dynamic_currency_conversion_selected;
            }
            if ((i & 4) != 0) {
                byteString = cardPresent.unknownFields();
            }
            return cardPresent.copy(str, bool, byteString);
        }

        public final CardPresent copy(String request_dynamic_currency_conversion, Boolean dynamic_currency_conversion_selected, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CardPresent(request_dynamic_currency_conversion, dynamic_currency_conversion_selected, unknownFields);
        }

        /* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptions.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "()V", "dynamic_currency_conversion_selected", "", "Ljava/lang/Boolean;", "request_dynamic_currency_conversion", "", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CardPresent, Builder> {
            public Boolean dynamic_currency_conversion_selected;
            public String request_dynamic_currency_conversion;

            public final Builder request_dynamic_currency_conversion(String request_dynamic_currency_conversion) {
                this.request_dynamic_currency_conversion = request_dynamic_currency_conversion;
                return this;
            }

            public final Builder dynamic_currency_conversion_selected(Boolean dynamic_currency_conversion_selected) {
                this.dynamic_currency_conversion_selected = dynamic_currency_conversion_selected;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CardPresent build() {
                return new CardPresent(this.request_dynamic_currency_conversion, this.dynamic_currency_conversion_selected, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
            ADAPTER = new ProtoAdapter<CardPresent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions$CardPresent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdatePaymentIntentPaymentMethodOptions.CardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.request_dynamic_currency_conversion != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.request_dynamic_currency_conversion);
                    }
                    return value.dynamic_currency_conversion_selected != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.dynamic_currency_conversion_selected) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdatePaymentIntentPaymentMethodOptions.CardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.request_dynamic_currency_conversion != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.request_dynamic_currency_conversion);
                    }
                    if (value.dynamic_currency_conversion_selected != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.dynamic_currency_conversion_selected);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdatePaymentIntentPaymentMethodOptions.CardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.dynamic_currency_conversion_selected != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.dynamic_currency_conversion_selected);
                    }
                    if (value.request_dynamic_currency_conversion != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.request_dynamic_currency_conversion);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdatePaymentIntentPaymentMethodOptions.CardPresent redact(UpdatePaymentIntentPaymentMethodOptions.CardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.request_dynamic_currency_conversion;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    Boolean bool = value.dynamic_currency_conversion_selected;
                    return value.copy(strRedact, bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdatePaymentIntentPaymentMethodOptions.CardPresent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    Boolean boolDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdatePaymentIntentPaymentMethodOptions.CardPresent(strDecode, boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else if (iNextTag == 2) {
                            boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
