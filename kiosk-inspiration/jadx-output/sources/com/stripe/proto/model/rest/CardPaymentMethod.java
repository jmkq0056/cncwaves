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
import com.stripe.proto.model.rest.CardPaymentMethod;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003 !\"B\u0093\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u0099\u0001\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\tH\u0016J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\b\u0010\u001f\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/proto/model/rest/CardPaymentMethod;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;", "brand", "", "checks", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;", "country", "exp_month", "", "exp_year", "fingerprint", "funding", "generated_from", "Lcom/stripe/proto/model/rest/GeneratedFrom;", "last4", "three_d_secure_usage", "Lcom/stripe/proto/model/rest/ThreeDSecure;", "wallet", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/GeneratedFrom;Ljava/lang/String;Lcom/stripe/proto/model/rest/ThreeDSecure;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/GeneratedFrom;Ljava/lang/String;Lcom/stripe/proto/model/rest/ThreeDSecure;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPaymentMethod;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Checks", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardPaymentMethod extends Message<CardPaymentMethod, Builder> {
    public static final ProtoAdapter<CardPaymentMethod> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String brand;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPaymentMethod$Checks#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Checks checks;

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

    @WireField(adapter = "com.stripe.proto.model.rest.GeneratedFrom#ADAPTER", jsonName = "generatedFrom", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final GeneratedFrom generated_from;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 8, tag = 9)
    public final String last4;

    @WireField(adapter = "com.stripe.proto.model.rest.ThreeDSecure#ADAPTER", jsonName = "threeDSecureUsage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final ThreeDSecure three_d_secure_usage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 10, tag = 11)
    public final String wallet;

    public CardPaymentMethod() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public /* synthetic */ CardPaymentMethod(String str, Checks checks, String str2, Integer num, Integer num2, String str3, String str4, GeneratedFrom generatedFrom, String str5, ThreeDSecure threeDSecure, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : checks, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : generatedFrom, (i & 256) != 0 ? null : str5, (i & 512) != 0 ? null : threeDSecure, (i & 1024) != 0 ? null : str6, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardPaymentMethod(String str, Checks checks, String str2, Integer num, Integer num2, String str3, String str4, GeneratedFrom generatedFrom, String str5, ThreeDSecure threeDSecure, String str6, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.brand = str;
        this.checks = checks;
        this.country = str2;
        this.exp_month = num;
        this.exp_year = num2;
        this.fingerprint = str3;
        this.funding = str4;
        this.generated_from = generatedFrom;
        this.last4 = str5;
        this.three_d_secure_usage = threeDSecure;
        this.wallet = str6;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.brand = this.brand;
        builder.checks = this.checks;
        builder.country = this.country;
        builder.exp_month = this.exp_month;
        builder.exp_year = this.exp_year;
        builder.fingerprint = this.fingerprint;
        builder.funding = this.funding;
        builder.generated_from = this.generated_from;
        builder.last4 = this.last4;
        builder.three_d_secure_usage = this.three_d_secure_usage;
        builder.wallet = this.wallet;
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
        return Intrinsics.areEqual(unknownFields(), cardPaymentMethod.unknownFields()) && Intrinsics.areEqual(this.brand, cardPaymentMethod.brand) && Intrinsics.areEqual(this.checks, cardPaymentMethod.checks) && Intrinsics.areEqual(this.country, cardPaymentMethod.country) && Intrinsics.areEqual(this.exp_month, cardPaymentMethod.exp_month) && Intrinsics.areEqual(this.exp_year, cardPaymentMethod.exp_year) && Intrinsics.areEqual(this.fingerprint, cardPaymentMethod.fingerprint) && Intrinsics.areEqual(this.funding, cardPaymentMethod.funding) && Intrinsics.areEqual(this.generated_from, cardPaymentMethod.generated_from) && Intrinsics.areEqual(this.last4, cardPaymentMethod.last4) && Intrinsics.areEqual(this.three_d_secure_usage, cardPaymentMethod.three_d_secure_usage) && Intrinsics.areEqual(this.wallet, cardPaymentMethod.wallet);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.brand;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Checks checks = this.checks;
        int iHashCode3 = (iHashCode2 + (checks != null ? checks.hashCode() : 0)) * 37;
        String str2 = this.country;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Integer num = this.exp_month;
        int iHashCode5 = (iHashCode4 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.exp_year;
        int iHashCode6 = (iHashCode5 + (num2 != null ? num2.hashCode() : 0)) * 37;
        String str3 = this.fingerprint;
        int iHashCode7 = (iHashCode6 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.funding;
        int iHashCode8 = (iHashCode7 + (str4 != null ? str4.hashCode() : 0)) * 37;
        GeneratedFrom generatedFrom = this.generated_from;
        int iHashCode9 = (iHashCode8 + (generatedFrom != null ? generatedFrom.hashCode() : 0)) * 37;
        String str5 = this.last4;
        int iHashCode10 = (iHashCode9 + (str5 != null ? str5.hashCode() : 0)) * 37;
        ThreeDSecure threeDSecure = this.three_d_secure_usage;
        int iHashCode11 = (iHashCode10 + (threeDSecure != null ? threeDSecure.hashCode() : 0)) * 37;
        String str6 = this.wallet;
        int iHashCode12 = iHashCode11 + (str6 != null ? str6.hashCode() : 0);
        this.hashCode = iHashCode12;
        return iHashCode12;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.brand != null) {
            arrayList.add("brand=" + this.brand);
        }
        if (this.checks != null) {
            arrayList.add("checks=" + this.checks);
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
        if (this.generated_from != null) {
            arrayList.add("generated_from=" + this.generated_from);
        }
        if (this.last4 != null) {
            arrayList.add("last4=" + this.last4);
        }
        if (this.three_d_secure_usage != null) {
            arrayList.add("three_d_secure_usage=" + this.three_d_secure_usage);
        }
        if (this.wallet != null) {
            arrayList.add("wallet=" + this.wallet);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CardPaymentMethod{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CardPaymentMethod copy$default(CardPaymentMethod cardPaymentMethod, String str, Checks checks, String str2, Integer num, Integer num2, String str3, String str4, GeneratedFrom generatedFrom, String str5, ThreeDSecure threeDSecure, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cardPaymentMethod.brand;
        }
        if ((i & 2) != 0) {
            checks = cardPaymentMethod.checks;
        }
        if ((i & 4) != 0) {
            str2 = cardPaymentMethod.country;
        }
        if ((i & 8) != 0) {
            num = cardPaymentMethod.exp_month;
        }
        if ((i & 16) != 0) {
            num2 = cardPaymentMethod.exp_year;
        }
        if ((i & 32) != 0) {
            str3 = cardPaymentMethod.fingerprint;
        }
        if ((i & 64) != 0) {
            str4 = cardPaymentMethod.funding;
        }
        if ((i & 128) != 0) {
            generatedFrom = cardPaymentMethod.generated_from;
        }
        if ((i & 256) != 0) {
            str5 = cardPaymentMethod.last4;
        }
        if ((i & 512) != 0) {
            threeDSecure = cardPaymentMethod.three_d_secure_usage;
        }
        if ((i & 1024) != 0) {
            str6 = cardPaymentMethod.wallet;
        }
        if ((i & 2048) != 0) {
            byteString = cardPaymentMethod.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        ThreeDSecure threeDSecure2 = threeDSecure;
        String str9 = str4;
        GeneratedFrom generatedFrom2 = generatedFrom;
        Integer num3 = num2;
        String str10 = str3;
        return cardPaymentMethod.copy(str, checks, str2, num, num3, str10, str9, generatedFrom2, str8, threeDSecure2, str7, byteString2);
    }

    public final CardPaymentMethod copy(String brand, Checks checks, String country, Integer exp_month, Integer exp_year, String fingerprint, String funding, GeneratedFrom generated_from, String last4, ThreeDSecure three_d_secure_usage, String wallet, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CardPaymentMethod(brand, checks, country, exp_month, exp_year, fingerprint, funding, generated_from, last4, three_d_secure_usage, wallet, unknownFields);
    }

    /* JADX INFO: compiled from: CardPaymentMethod.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0016J\u0015\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0016J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/CardPaymentMethod;", "()V", "brand", "", "checks", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;", "country", "exp_month", "", "Ljava/lang/Integer;", "exp_year", "fingerprint", "funding", "generated_from", "Lcom/stripe/proto/model/rest/GeneratedFrom;", "last4", "three_d_secure_usage", "Lcom/stripe/proto/model/rest/ThreeDSecure;", "wallet", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CardPaymentMethod, Builder> {
        public String brand;
        public Checks checks;
        public String country;
        public Integer exp_month;
        public Integer exp_year;
        public String fingerprint;
        public String funding;
        public GeneratedFrom generated_from;
        public String last4;
        public ThreeDSecure three_d_secure_usage;
        public String wallet;

        public final Builder brand(String brand) {
            this.brand = brand;
            return this;
        }

        public final Builder checks(Checks checks) {
            this.checks = checks;
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

        public final Builder generated_from(GeneratedFrom generated_from) {
            this.generated_from = generated_from;
            return this;
        }

        public final Builder last4(String last4) {
            this.last4 = last4;
            return this;
        }

        public final Builder three_d_secure_usage(ThreeDSecure three_d_secure_usage) {
            this.three_d_secure_usage = three_d_secure_usage;
            return this;
        }

        public final Builder wallet(String wallet) {
            this.wallet = wallet;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CardPaymentMethod build() {
            return new CardPaymentMethod(this.brand, this.checks, this.country, this.exp_month, this.exp_year, this.fingerprint, this.funding, this.generated_from, this.last4, this.three_d_secure_usage, this.wallet, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CardPaymentMethod.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/CardPaymentMethod;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<CardPaymentMethod>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.CardPaymentMethod$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CardPaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.brand != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.brand);
                }
                if (value.checks != null) {
                    size += CardPaymentMethod.Checks.ADAPTER.encodedSizeWithTag(2, value.checks);
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
                if (value.funding != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.funding);
                }
                if (value.generated_from != null) {
                    size += GeneratedFrom.ADAPTER.encodedSizeWithTag(8, value.generated_from);
                }
                if (value.last4 != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.last4);
                }
                if (value.three_d_secure_usage != null) {
                    size += ThreeDSecure.ADAPTER.encodedSizeWithTag(10, value.three_d_secure_usage);
                }
                return value.wallet != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.wallet) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CardPaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.brand != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.brand);
                }
                if (value.checks != null) {
                    CardPaymentMethod.Checks.ADAPTER.encodeWithTag(writer, 2, value.checks);
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
                if (value.generated_from != null) {
                    GeneratedFrom.ADAPTER.encodeWithTag(writer, 8, value.generated_from);
                }
                if (value.last4 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.last4);
                }
                if (value.three_d_secure_usage != null) {
                    ThreeDSecure.ADAPTER.encodeWithTag(writer, 10, value.three_d_secure_usage);
                }
                if (value.wallet != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.wallet);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CardPaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.wallet != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.wallet);
                }
                if (value.three_d_secure_usage != null) {
                    ThreeDSecure.ADAPTER.encodeWithTag(writer, 10, value.three_d_secure_usage);
                }
                if (value.last4 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.last4);
                }
                if (value.generated_from != null) {
                    GeneratedFrom.ADAPTER.encodeWithTag(writer, 8, value.generated_from);
                }
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
                if (value.checks != null) {
                    CardPaymentMethod.Checks.ADAPTER.encodeWithTag(writer, 2, value.checks);
                }
                if (value.brand != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.brand);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CardPaymentMethod redact(CardPaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.brand;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                CardPaymentMethod.Checks checks = value.checks;
                CardPaymentMethod.Checks checksRedact = checks != null ? CardPaymentMethod.Checks.ADAPTER.redact(checks) : null;
                String str2 = value.country;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.funding;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                GeneratedFrom generatedFrom = value.generated_from;
                GeneratedFrom generatedFromRedact = generatedFrom != null ? GeneratedFrom.ADAPTER.redact(generatedFrom) : null;
                String str4 = value.last4;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                ThreeDSecure threeDSecure = value.three_d_secure_usage;
                ThreeDSecure threeDSecureRedact = threeDSecure != null ? ThreeDSecure.ADAPTER.redact(threeDSecure) : null;
                String str5 = value.wallet;
                return value.copy(strRedact, checksRedact, strRedact2, null, null, null, strRedact3, generatedFromRedact, strRedact4, threeDSecureRedact, str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CardPaymentMethod decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                CardPaymentMethod.Checks checksDecode = null;
                String strDecode2 = null;
                Integer numDecode = null;
                Integer numDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                GeneratedFrom generatedFromDecode = null;
                String strDecode5 = null;
                ThreeDSecure threeDSecureDecode = null;
                String strDecode6 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                checksDecode = CardPaymentMethod.Checks.ADAPTER.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 5:
                                numDecode2 = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                generatedFromDecode = GeneratedFrom.ADAPTER.decode(reader);
                                break;
                            case 9:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                threeDSecureDecode = ThreeDSecure.ADAPTER.decode(reader);
                                break;
                            case 11:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new CardPaymentMethod(strDecode, checksDecode, strDecode2, numDecode, numDecode2, strDecode3, strDecode4, generatedFromDecode, strDecode5, threeDSecureDecode, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: CardPaymentMethod.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ4\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;", "address_line1_check", "", "address_postal_code_check", "cvc_check", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Checks extends Message<Checks, Builder> {
        public static final ProtoAdapter<Checks> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "addressLine1Check", schemaIndex = 0, tag = 1)
        public final String address_line1_check;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "addressPostalCodeCheck", schemaIndex = 1, tag = 2)
        public final String address_postal_code_check;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "cvcCheck", schemaIndex = 2, tag = 3)
        public final String cvc_check;

        public Checks() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ Checks(String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Checks(String str, String str2, String str3, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.address_line1_check = str;
            this.address_postal_code_check = str2;
            this.cvc_check = str3;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.address_line1_check = this.address_line1_check;
            builder.address_postal_code_check = this.address_postal_code_check;
            builder.cvc_check = this.cvc_check;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Checks)) {
                return false;
            }
            Checks checks = (Checks) other;
            return Intrinsics.areEqual(unknownFields(), checks.unknownFields()) && Intrinsics.areEqual(this.address_line1_check, checks.address_line1_check) && Intrinsics.areEqual(this.address_postal_code_check, checks.address_postal_code_check) && Intrinsics.areEqual(this.cvc_check, checks.cvc_check);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.address_line1_check;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.address_postal_code_check;
            int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.cvc_check;
            int iHashCode4 = iHashCode3 + (str3 != null ? str3.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.address_line1_check != null) {
                arrayList.add("address_line1_check=" + this.address_line1_check);
            }
            if (this.address_postal_code_check != null) {
                arrayList.add("address_postal_code_check=" + this.address_postal_code_check);
            }
            if (this.cvc_check != null) {
                arrayList.add("cvc_check=" + this.cvc_check);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Checks{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Checks copy$default(Checks checks, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = checks.address_line1_check;
            }
            if ((i & 2) != 0) {
                str2 = checks.address_postal_code_check;
            }
            if ((i & 4) != 0) {
                str3 = checks.cvc_check;
            }
            if ((i & 8) != 0) {
                byteString = checks.unknownFields();
            }
            return checks.copy(str, str2, str3, byteString);
        }

        public final Checks copy(String address_line1_check, String address_postal_code_check, String cvc_check, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Checks(address_line1_check, address_postal_code_check, cvc_check, unknownFields);
        }

        /* JADX INFO: compiled from: CardPaymentMethod.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;", "()V", "address_line1_check", "", "address_postal_code_check", "cvc_check", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Checks, Builder> {
            public String address_line1_check;
            public String address_postal_code_check;
            public String cvc_check;

            public final Builder address_line1_check(String address_line1_check) {
                this.address_line1_check = address_line1_check;
                return this;
            }

            public final Builder address_postal_code_check(String address_postal_code_check) {
                this.address_postal_code_check = address_postal_code_check;
                return this;
            }

            public final Builder cvc_check(String cvc_check) {
                this.cvc_check = cvc_check;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Checks build() {
                return new Checks(this.address_line1_check, this.address_postal_code_check, this.cvc_check, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CardPaymentMethod.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Checks build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Checks.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Checks>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.CardPaymentMethod$Checks$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CardPaymentMethod.Checks value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.address_line1_check != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.address_line1_check);
                    }
                    if (value.address_postal_code_check != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.address_postal_code_check);
                    }
                    return value.cvc_check != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.cvc_check) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CardPaymentMethod.Checks value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.address_line1_check != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.address_line1_check);
                    }
                    if (value.address_postal_code_check != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.address_postal_code_check);
                    }
                    if (value.cvc_check != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.cvc_check);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CardPaymentMethod.Checks value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.cvc_check != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.cvc_check);
                    }
                    if (value.address_postal_code_check != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.address_postal_code_check);
                    }
                    if (value.address_line1_check != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.address_line1_check);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CardPaymentMethod.Checks redact(CardPaymentMethod.Checks value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.address_line1_check;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    String str2 = value.address_postal_code_check;
                    String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                    String str3 = value.cvc_check;
                    return value.copy(strRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CardPaymentMethod.Checks decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    String strDecode2 = null;
                    String strDecode3 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CardPaymentMethod.Checks(strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
