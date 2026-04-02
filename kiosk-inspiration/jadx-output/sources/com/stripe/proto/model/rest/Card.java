package com.stripe.proto.model.rest;

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

/* JADX INFO: compiled from: Card.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBc\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJi\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\bH\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/rest/Card;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Card$Builder;", "last4", "", "brand", "country", "exp_month", "", "exp_year", "fingerprint", "funding", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Card;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Card extends Message<Card, Builder> {
    public static final ProtoAdapter<Card> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String brand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String country;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "expMonth", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 4)
    public final Integer exp_month;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "expYear", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 4, tag = 5)
    public final Integer exp_year;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 5, tag = 6)
    public final String fingerprint;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 6, tag = 7)
    public final String funding;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String last4;

    public Card() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ Card(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Card(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.last4 = str;
        this.brand = str2;
        this.country = str3;
        this.exp_month = num;
        this.exp_year = num2;
        this.fingerprint = str4;
        this.funding = str5;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.last4 = this.last4;
        builder.brand = this.brand;
        builder.country = this.country;
        builder.exp_month = this.exp_month;
        builder.exp_year = this.exp_year;
        builder.fingerprint = this.fingerprint;
        builder.funding = this.funding;
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
        return Intrinsics.areEqual(unknownFields(), card.unknownFields()) && Intrinsics.areEqual(this.last4, card.last4) && Intrinsics.areEqual(this.brand, card.brand) && Intrinsics.areEqual(this.country, card.country) && Intrinsics.areEqual(this.exp_month, card.exp_month) && Intrinsics.areEqual(this.exp_year, card.exp_year) && Intrinsics.areEqual(this.fingerprint, card.fingerprint) && Intrinsics.areEqual(this.funding, card.funding);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.last4;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.brand;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.country;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Integer num = this.exp_month;
        int iHashCode5 = (iHashCode4 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.exp_year;
        int iHashCode6 = (iHashCode5 + (num2 != null ? num2.hashCode() : 0)) * 37;
        String str4 = this.fingerprint;
        int iHashCode7 = (iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.funding;
        int iHashCode8 = iHashCode7 + (str5 != null ? str5.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.last4 != null) {
            arrayList.add("last4=" + this.last4);
        }
        if (this.brand != null) {
            arrayList.add("brand=" + this.brand);
        }
        if (this.country != null) {
            arrayList.add("country=" + this.country);
        }
        if (this.exp_month != null) {
            arrayList.add("exp_month=██");
        }
        if (this.exp_year != null) {
            arrayList.add("exp_year=██");
        }
        if (this.fingerprint != null) {
            arrayList.add("fingerprint=██");
        }
        if (this.funding != null) {
            arrayList.add("funding=" + this.funding);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Card{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Card copy$default(Card card, String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = card.last4;
        }
        if ((i & 2) != 0) {
            str2 = card.brand;
        }
        if ((i & 4) != 0) {
            str3 = card.country;
        }
        if ((i & 8) != 0) {
            num = card.exp_month;
        }
        if ((i & 16) != 0) {
            num2 = card.exp_year;
        }
        if ((i & 32) != 0) {
            str4 = card.fingerprint;
        }
        if ((i & 64) != 0) {
            str5 = card.funding;
        }
        if ((i & 128) != 0) {
            byteString = card.unknownFields();
        }
        String str6 = str5;
        ByteString byteString2 = byteString;
        Integer num3 = num2;
        String str7 = str4;
        return card.copy(str, str2, str3, num, num3, str7, str6, byteString2);
    }

    public final Card copy(String last4, String brand, String country, Integer exp_month, Integer exp_year, String fingerprint, String funding, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Card(last4, brand, country, exp_month, exp_year, fingerprint, funding, unknownFields);
    }

    /* JADX INFO: compiled from: Card.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000fJ\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/rest/Card$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Card;", "()V", "brand", "", "country", "exp_month", "", "Ljava/lang/Integer;", "exp_year", "fingerprint", "funding", "last4", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Card$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Card, Builder> {
        public String brand;
        public String country;
        public Integer exp_month;
        public Integer exp_year;
        public String fingerprint;
        public String funding;
        public String last4;

        public final Builder last4(String last4) {
            this.last4 = last4;
            return this;
        }

        public final Builder brand(String brand) {
            this.brand = brand;
            return this;
        }

        public final Builder country(String country) {
            this.country = country;
            return this;
        }

        public final Builder exp_month(Integer exp_month) {
            this.exp_month = exp_month;
            return this;
        }

        public final Builder exp_year(Integer exp_year) {
            this.exp_year = exp_year;
            return this;
        }

        public final Builder fingerprint(String fingerprint) {
            this.fingerprint = fingerprint;
            return this;
        }

        public final Builder funding(String funding) {
            this.funding = funding;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Card build() {
            return new Card(this.last4, this.brand, this.country, this.exp_month, this.exp_year, this.fingerprint, this.funding, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Card.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Card$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Card;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Card$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<Card>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Card$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Card value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.last4 != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.last4);
                }
                if (value.brand != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.brand);
                }
                if (value.country != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.country);
                }
                if (value.exp_month != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(4, value.exp_month);
                }
                if (value.exp_year != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(5, value.exp_year);
                }
                if (value.fingerprint != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.fingerprint);
                }
                return value.funding != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.funding) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Card value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.last4 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.last4);
                }
                if (value.brand != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.brand);
                }
                if (value.country != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.country);
                }
                if (value.exp_month != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 4, value.exp_month);
                }
                if (value.exp_year != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 5, value.exp_year);
                }
                if (value.fingerprint != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.fingerprint);
                }
                if (value.funding != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.funding);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Card value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.funding != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.funding);
                }
                if (value.fingerprint != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.fingerprint);
                }
                if (value.exp_year != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 5, value.exp_year);
                }
                if (value.exp_month != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 4, value.exp_month);
                }
                if (value.country != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.country);
                }
                if (value.brand != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.brand);
                }
                if (value.last4 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.last4);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Card redact(Card value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.last4;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.brand;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.country;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.funding;
                return value.copy(strRedact, strRedact2, strRedact3, null, null, null, str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Card decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Integer numDecode = null;
                Integer numDecode2 = null;
                String strDecode4 = null;
                String strDecode5 = null;
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
                                numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 5:
                                numDecode2 = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Card(strDecode, strDecode2, strDecode3, numDecode, numDecode2, strDecode4, strDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
