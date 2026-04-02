package com.stripe.stripeterminal.external.models;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: CardDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 62\u00060\u0001j\u0002`\u0002:\u000256B_\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0004\u0012\b\b\u0001\u0010\t\u001a\u00020\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010BW\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010!\u001a\u00020\u0004HÆ\u0003J\t\u0010\"\u001a\u00020\u0004HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003JY\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0004HÖ\u0001J\t\u0010,\u001a\u00020\u0006HÖ\u0001J&\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203HÁ\u0001¢\u0006\u0002\b4R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0013R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0013¨\u00067"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "brand", "", "country", "expMonth", "expYear", "funding", "generatedFrom", "Lcom/stripe/stripeterminal/external/models/GeneratedFrom;", "last4", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/stripeterminal/external/models/GeneratedFrom;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/stripeterminal/external/models/GeneratedFrom;Ljava/lang/String;)V", "getBrand", "()Ljava/lang/String;", "getCountry", "getExpMonth$annotations", "()V", "getExpMonth", "()I", "getExpYear$annotations", "getExpYear", "getFunding", "getGeneratedFrom", "()Lcom/stripe/stripeterminal/external/models/GeneratedFrom;", "getLast4", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class CardDetails implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String brand;
    private final String country;
    private final int expMonth;
    private final int expYear;
    private final String funding;
    private final GeneratedFrom generatedFrom;
    private final String last4;

    public CardDetails() {
        this((String) null, (String) null, 0, 0, (String) null, (GeneratedFrom) null, (String) null, 127, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ CardDetails copy$default(CardDetails cardDetails, String str, String str2, int i, int i2, String str3, GeneratedFrom generatedFrom, String str4, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = cardDetails.brand;
        }
        if ((i3 & 2) != 0) {
            str2 = cardDetails.country;
        }
        if ((i3 & 4) != 0) {
            i = cardDetails.expMonth;
        }
        if ((i3 & 8) != 0) {
            i2 = cardDetails.expYear;
        }
        if ((i3 & 16) != 0) {
            str3 = cardDetails.funding;
        }
        if ((i3 & 32) != 0) {
            generatedFrom = cardDetails.generatedFrom;
        }
        if ((i3 & 64) != 0) {
            str4 = cardDetails.last4;
        }
        GeneratedFrom generatedFrom2 = generatedFrom;
        String str5 = str4;
        String str6 = str3;
        int i4 = i;
        return cardDetails.copy(str, str2, i4, i2, str6, generatedFrom2, str5);
    }

    public static /* synthetic */ void getExpMonth$annotations() {
    }

    public static /* synthetic */ void getExpYear$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBrand() {
        return this.brand;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getExpMonth() {
        return this.expMonth;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getExpYear() {
        return this.expYear;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFunding() {
        return this.funding;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final GeneratedFrom getGeneratedFrom() {
        return this.generatedFrom;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getLast4() {
        return this.last4;
    }

    public final CardDetails copy(String brand, String country, int expMonth, int expYear, String funding, GeneratedFrom generatedFrom, String last4) {
        return new CardDetails(brand, country, expMonth, expYear, funding, generatedFrom, last4);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardDetails)) {
            return false;
        }
        CardDetails cardDetails = (CardDetails) other;
        return Intrinsics.areEqual(this.brand, cardDetails.brand) && Intrinsics.areEqual(this.country, cardDetails.country) && this.expMonth == cardDetails.expMonth && this.expYear == cardDetails.expYear && Intrinsics.areEqual(this.funding, cardDetails.funding) && Intrinsics.areEqual(this.generatedFrom, cardDetails.generatedFrom) && Intrinsics.areEqual(this.last4, cardDetails.last4);
    }

    public int hashCode() {
        String str = this.brand;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.country;
        int iHashCode2 = (((((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + Integer.hashCode(this.expMonth)) * 31) + Integer.hashCode(this.expYear)) * 31;
        String str3 = this.funding;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        GeneratedFrom generatedFrom = this.generatedFrom;
        int iHashCode4 = (iHashCode3 + (generatedFrom == null ? 0 : generatedFrom.hashCode())) * 31;
        String str4 = this.last4;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "CardDetails(brand=" + this.brand + ", country=" + this.country + ", expMonth=" + this.expMonth + ", expYear=" + this.expYear + ", funding=" + this.funding + ", generatedFrom=" + this.generatedFrom + ", last4=" + this.last4 + ')';
    }

    /* JADX INFO: compiled from: CardDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CardDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CardDetails> serializer() {
            return CardDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CardDetails(int i, String str, String str2, int i2, int i3, String str3, GeneratedFrom generatedFrom, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.brand = null;
        } else {
            this.brand = str;
        }
        if ((i & 2) == 0) {
            this.country = null;
        } else {
            this.country = str2;
        }
        if ((i & 4) == 0) {
            this.expMonth = 0;
        } else {
            this.expMonth = i2;
        }
        if ((i & 8) == 0) {
            this.expYear = 0;
        } else {
            this.expYear = i3;
        }
        if ((i & 16) == 0) {
            this.funding = null;
        } else {
            this.funding = str3;
        }
        if ((i & 32) == 0) {
            this.generatedFrom = null;
        } else {
            this.generatedFrom = generatedFrom;
        }
        if ((i & 64) == 0) {
            this.last4 = null;
        } else {
            this.last4 = str4;
        }
    }

    public CardDetails(String str, String str2, int i, int i2, String str3, GeneratedFrom generatedFrom, String str4) {
        this.brand = str;
        this.country = str2;
        this.expMonth = i;
        this.expYear = i2;
        this.funding = str3;
        this.generatedFrom = generatedFrom;
        this.last4 = str4;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(CardDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.brand != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.brand);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.country != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.country);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.expMonth != 0) {
            output.encodeIntElement(serialDesc, 2, self.expMonth);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.expYear != 0) {
            output.encodeIntElement(serialDesc, 3, self.expYear);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.funding != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.funding);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.generatedFrom != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, GeneratedFrom$$serializer.INSTANCE, self.generatedFrom);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 6) && self.last4 == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.last4);
    }

    public /* synthetic */ CardDetails(String str, String str2, int i, int i2, String str3, GeneratedFrom generatedFrom, String str4, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2, (i3 & 16) != 0 ? null : str3, (i3 & 32) != 0 ? null : generatedFrom, (i3 & 64) != 0 ? null : str4);
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getCountry() {
        return this.country;
    }

    public final int getExpMonth() {
        return this.expMonth;
    }

    public final int getExpYear() {
        return this.expYear;
    }

    public final String getFunding() {
        return this.funding;
    }

    public final GeneratedFrom getGeneratedFrom() {
        return this.generatedFrom;
    }

    public final String getLast4() {
        return this.last4;
    }
}
