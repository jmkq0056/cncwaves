package com.stripe.proto.model.sdk;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: CardPaymentMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ8\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/sdk/CardPaymentMethod;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;", "masked_pan", "", "expiration_date", "card_brand", "Lcom/stripe/proto/model/sdk/CreditCardBrand;", "card_entry_method", "Lcom/stripe/proto/model/sdk/CardEntryMethod;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/CreditCardBrand;Lcom/stripe/proto/model/sdk/CardEntryMethod;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardPaymentMethod extends Message<CardPaymentMethod, Builder> {
    public static final ProtoAdapter<CardPaymentMethod> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.CreditCardBrand#ADAPTER", jsonName = "cardBrand", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final CreditCardBrand card_brand;

    @WireField(adapter = "com.stripe.proto.model.sdk.CardEntryMethod#ADAPTER", jsonName = "cardEntryMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final CardEntryMethod card_entry_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "expirationDate", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String expiration_date;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "maskedPan", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String masked_pan;

    public CardPaymentMethod() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ CardPaymentMethod(String str, String str2, CreditCardBrand creditCardBrand, CardEntryMethod cardEntryMethod, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? CreditCardBrand.INVALID_CREDIT_CARD_BRAND : creditCardBrand, (i & 8) != 0 ? CardEntryMethod.INVALID_ENTRY_METHOD : cardEntryMethod, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardPaymentMethod(String masked_pan, String expiration_date, CreditCardBrand card_brand, CardEntryMethod card_entry_method, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(masked_pan, "masked_pan");
        Intrinsics.checkNotNullParameter(expiration_date, "expiration_date");
        Intrinsics.checkNotNullParameter(card_brand, "card_brand");
        Intrinsics.checkNotNullParameter(card_entry_method, "card_entry_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.masked_pan = masked_pan;
        this.expiration_date = expiration_date;
        this.card_brand = card_brand;
        this.card_entry_method = card_entry_method;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.masked_pan = this.masked_pan;
        builder.expiration_date = this.expiration_date;
        builder.card_brand = this.card_brand;
        builder.card_entry_method = this.card_entry_method;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CardPaymentMethod)) {
            return false;
        }
        CardPaymentMethod cardPaymentMethod = (CardPaymentMethod) other;
        return Intrinsics.areEqual(unknownFields(), cardPaymentMethod.unknownFields()) && Intrinsics.areEqual(this.masked_pan, cardPaymentMethod.masked_pan) && Intrinsics.areEqual(this.expiration_date, cardPaymentMethod.expiration_date) && this.card_brand == cardPaymentMethod.card_brand && this.card_entry_method == cardPaymentMethod.card_entry_method;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.masked_pan.hashCode()) * 37) + this.expiration_date.hashCode()) * 37) + this.card_brand.hashCode()) * 37) + this.card_entry_method.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("masked_pan=██");
        arrayList2.add("expiration_date=██");
        arrayList2.add("card_brand=" + this.card_brand);
        arrayList2.add("card_entry_method=" + this.card_entry_method);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CardPaymentMethod{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CardPaymentMethod copy$default(CardPaymentMethod cardPaymentMethod, String str, String str2, CreditCardBrand creditCardBrand, CardEntryMethod cardEntryMethod, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cardPaymentMethod.masked_pan;
        }
        if ((i & 2) != 0) {
            str2 = cardPaymentMethod.expiration_date;
        }
        if ((i & 4) != 0) {
            creditCardBrand = cardPaymentMethod.card_brand;
        }
        if ((i & 8) != 0) {
            cardEntryMethod = cardPaymentMethod.card_entry_method;
        }
        if ((i & 16) != 0) {
            byteString = cardPaymentMethod.unknownFields();
        }
        ByteString byteString2 = byteString;
        CreditCardBrand creditCardBrand2 = creditCardBrand;
        return cardPaymentMethod.copy(str, str2, creditCardBrand2, cardEntryMethod, byteString2);
    }

    public final CardPaymentMethod copy(String masked_pan, String expiration_date, CreditCardBrand card_brand, CardEntryMethod card_entry_method, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(masked_pan, "masked_pan");
        Intrinsics.checkNotNullParameter(expiration_date, "expiration_date");
        Intrinsics.checkNotNullParameter(card_brand, "card_brand");
        Intrinsics.checkNotNullParameter(card_entry_method, "card_entry_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CardPaymentMethod(masked_pan, expiration_date, card_brand, card_entry_method, unknownFields);
    }

    /* JADX INFO: compiled from: CardPaymentMethod.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/CardPaymentMethod;", "()V", "card_brand", "Lcom/stripe/proto/model/sdk/CreditCardBrand;", "card_entry_method", "Lcom/stripe/proto/model/sdk/CardEntryMethod;", "expiration_date", "", "masked_pan", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CardPaymentMethod, Builder> {
        public String masked_pan = "";
        public String expiration_date = "";
        public CreditCardBrand card_brand = CreditCardBrand.INVALID_CREDIT_CARD_BRAND;
        public CardEntryMethod card_entry_method = CardEntryMethod.INVALID_ENTRY_METHOD;

        public final Builder masked_pan(String masked_pan) {
            Intrinsics.checkNotNullParameter(masked_pan, "masked_pan");
            this.masked_pan = masked_pan;
            return this;
        }

        public final Builder expiration_date(String expiration_date) {
            Intrinsics.checkNotNullParameter(expiration_date, "expiration_date");
            this.expiration_date = expiration_date;
            return this;
        }

        public final Builder card_brand(CreditCardBrand card_brand) {
            Intrinsics.checkNotNullParameter(card_brand, "card_brand");
            this.card_brand = card_brand;
            return this;
        }

        public final Builder card_entry_method(CardEntryMethod card_entry_method) {
            Intrinsics.checkNotNullParameter(card_entry_method, "card_entry_method");
            this.card_entry_method = card_entry_method;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CardPaymentMethod build() {
            return new CardPaymentMethod(this.masked_pan, this.expiration_date, this.card_brand, this.card_entry_method, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CardPaymentMethod.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/CardPaymentMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/CardPaymentMethod;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/CardPaymentMethod$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CardPaymentMethod build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardPaymentMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CardPaymentMethod>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.CardPaymentMethod$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CardPaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.masked_pan, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.masked_pan);
                }
                if (!Intrinsics.areEqual(value.expiration_date, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.expiration_date);
                }
                if (value.card_brand != CreditCardBrand.INVALID_CREDIT_CARD_BRAND) {
                    size += CreditCardBrand.ADAPTER.encodedSizeWithTag(3, value.card_brand);
                }
                return value.card_entry_method != CardEntryMethod.INVALID_ENTRY_METHOD ? size + CardEntryMethod.ADAPTER.encodedSizeWithTag(4, value.card_entry_method) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CardPaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.masked_pan, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.masked_pan);
                }
                if (!Intrinsics.areEqual(value.expiration_date, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.expiration_date);
                }
                if (value.card_brand != CreditCardBrand.INVALID_CREDIT_CARD_BRAND) {
                    CreditCardBrand.ADAPTER.encodeWithTag(writer, 3, value.card_brand);
                }
                if (value.card_entry_method != CardEntryMethod.INVALID_ENTRY_METHOD) {
                    CardEntryMethod.ADAPTER.encodeWithTag(writer, 4, value.card_entry_method);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CardPaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.card_entry_method != CardEntryMethod.INVALID_ENTRY_METHOD) {
                    CardEntryMethod.ADAPTER.encodeWithTag(writer, 4, value.card_entry_method);
                }
                if (value.card_brand != CreditCardBrand.INVALID_CREDIT_CARD_BRAND) {
                    CreditCardBrand.ADAPTER.encodeWithTag(writer, 3, value.card_brand);
                }
                if (!Intrinsics.areEqual(value.expiration_date, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.expiration_date);
                }
                if (Intrinsics.areEqual(value.masked_pan, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.masked_pan);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CardPaymentMethod decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CreditCardBrand creditCardBrandDecode = CreditCardBrand.INVALID_CREDIT_CARD_BRAND;
                CardEntryMethod cardEntryMethod = CardEntryMethod.INVALID_ENTRY_METHOD;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                CardEntryMethod cardEntryMethodDecode = cardEntryMethod;
                while (true) {
                    CreditCardBrand creditCardBrand = creditCardBrandDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CardPaymentMethod(strDecode, strDecode2, creditCardBrand, cardEntryMethodDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            try {
                                creditCardBrandDecode = CreditCardBrand.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 4) {
                            try {
                                cardEntryMethodDecode = CardEntryMethod.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CardPaymentMethod redact(CardPaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CardPaymentMethod.copy$default(value, "", "", null, null, ByteString.EMPTY, 12, null);
            }
        };
    }
}
