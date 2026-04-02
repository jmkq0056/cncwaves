package com.stripe.stripeterminal.external.models;

import com.stripe.hardware.emv.ApplicationId;
import com.stripe.hardware.emv.ApplicationIdKt;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.misc.CardBrand;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 =2\u00060\u0001j\u0002`\u0002:\u0002<=Bs\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0001\u0010\b\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012Bg\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0002\u0010\u0013J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u0004HÆ\u0003J\t\u0010'\u001a\u00020\u0004HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fHÆ\u0003Ji\u0010-\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fHÆ\u0001J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\u0004HÖ\u0001J\t\u00103\u001a\u00020\u0006HÖ\u0001J&\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:HÁ\u0001¢\u0006\u0002\b;R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0015R\u001c\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0017\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015R\u001e\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010$¨\u0006>"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "brand", "", "expMonth", "expYear", "last4", "readMethod", "cardholderName", "receiptDetails", "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;", "preferredLocales", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Ljava/util/List;)V", "getBrand", "()Ljava/lang/String;", "getCardholderName$annotations", "()V", "getCardholderName", "getExpMonth$annotations", "getExpMonth", "()I", "getExpYear$annotations", "getExpYear", "getLast4", "getPreferredLocales", "()Ljava/util/List;", "getReadMethod", "getReceiptDetails$annotations", "getReceiptDetails", "()Lcom/stripe/stripeterminal/external/models/ReceiptDetails;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class OfflineCardPresentDetails implements java.io.Serializable {
    private final String brand;
    private final String cardholderName;
    private final int expMonth;
    private final int expYear;
    private final String last4;
    private final List<String> preferredLocales;
    private final String readMethod;
    private final ReceiptDetails receiptDetails;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE)};

    public OfflineCardPresentDetails() {
        this((String) null, 0, 0, (String) null, (String) null, (String) null, (ReceiptDetails) null, (List) null, 255, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineCardPresentDetails copy$default(OfflineCardPresentDetails offlineCardPresentDetails, String str, int i, int i2, String str2, String str3, String str4, ReceiptDetails receiptDetails, List list, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = offlineCardPresentDetails.brand;
        }
        if ((i3 & 2) != 0) {
            i = offlineCardPresentDetails.expMonth;
        }
        if ((i3 & 4) != 0) {
            i2 = offlineCardPresentDetails.expYear;
        }
        if ((i3 & 8) != 0) {
            str2 = offlineCardPresentDetails.last4;
        }
        if ((i3 & 16) != 0) {
            str3 = offlineCardPresentDetails.readMethod;
        }
        if ((i3 & 32) != 0) {
            str4 = offlineCardPresentDetails.cardholderName;
        }
        if ((i3 & 64) != 0) {
            receiptDetails = offlineCardPresentDetails.receiptDetails;
        }
        if ((i3 & 128) != 0) {
            list = offlineCardPresentDetails.preferredLocales;
        }
        ReceiptDetails receiptDetails2 = receiptDetails;
        List list2 = list;
        String str5 = str3;
        String str6 = str4;
        return offlineCardPresentDetails.copy(str, i, i2, str2, str5, str6, receiptDetails2, list2);
    }

    public static /* synthetic */ void getCardholderName$annotations() {
    }

    public static /* synthetic */ void getExpMonth$annotations() {
    }

    public static /* synthetic */ void getExpYear$annotations() {
    }

    @SerialName("receipt")
    public static /* synthetic */ void getReceiptDetails$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBrand() {
        return this.brand;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getExpMonth() {
        return this.expMonth;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getExpYear() {
        return this.expYear;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLast4() {
        return this.last4;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getReadMethod() {
        return this.readMethod;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCardholderName() {
        return this.cardholderName;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final ReceiptDetails getReceiptDetails() {
        return this.receiptDetails;
    }

    public final List<String> component8() {
        return this.preferredLocales;
    }

    public final OfflineCardPresentDetails copy(String brand, int expMonth, int expYear, String last4, String readMethod, String cardholderName, ReceiptDetails receiptDetails, List<String> preferredLocales) {
        Intrinsics.checkNotNullParameter(preferredLocales, "preferredLocales");
        return new OfflineCardPresentDetails(brand, expMonth, expYear, last4, readMethod, cardholderName, receiptDetails, preferredLocales);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineCardPresentDetails)) {
            return false;
        }
        OfflineCardPresentDetails offlineCardPresentDetails = (OfflineCardPresentDetails) other;
        return Intrinsics.areEqual(this.brand, offlineCardPresentDetails.brand) && this.expMonth == offlineCardPresentDetails.expMonth && this.expYear == offlineCardPresentDetails.expYear && Intrinsics.areEqual(this.last4, offlineCardPresentDetails.last4) && Intrinsics.areEqual(this.readMethod, offlineCardPresentDetails.readMethod) && Intrinsics.areEqual(this.cardholderName, offlineCardPresentDetails.cardholderName) && Intrinsics.areEqual(this.receiptDetails, offlineCardPresentDetails.receiptDetails) && Intrinsics.areEqual(this.preferredLocales, offlineCardPresentDetails.preferredLocales);
    }

    public int hashCode() {
        String str = this.brand;
        int iHashCode = (((((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.expMonth)) * 31) + Integer.hashCode(this.expYear)) * 31;
        String str2 = this.last4;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.readMethod;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.cardholderName;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ReceiptDetails receiptDetails = this.receiptDetails;
        return ((iHashCode4 + (receiptDetails != null ? receiptDetails.hashCode() : 0)) * 31) + this.preferredLocales.hashCode();
    }

    public String toString() {
        return "OfflineCardPresentDetails(brand=" + this.brand + ", expMonth=" + this.expMonth + ", expYear=" + this.expYear + ", last4=" + this.last4 + ", readMethod=" + this.readMethod + ", cardholderName=" + this.cardholderName + ", receiptDetails=" + this.receiptDetails + ", preferredLocales=" + this.preferredLocales + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ OfflineCardPresentDetails(int i, String str, int i2, int i3, String str2, String str3, String str4, @SerialName("receipt") ReceiptDetails receiptDetails, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.brand = null;
        } else {
            this.brand = str;
        }
        if ((i & 2) == 0) {
            this.expMonth = 0;
        } else {
            this.expMonth = i2;
        }
        if ((i & 4) == 0) {
            this.expYear = 0;
        } else {
            this.expYear = i3;
        }
        if ((i & 8) == 0) {
            this.last4 = null;
        } else {
            this.last4 = str2;
        }
        if ((i & 16) == 0) {
            this.readMethod = null;
        } else {
            this.readMethod = str3;
        }
        if ((i & 32) == 0) {
            this.cardholderName = null;
        } else {
            this.cardholderName = str4;
        }
        if ((i & 64) == 0) {
            this.receiptDetails = null;
        } else {
            this.receiptDetails = receiptDetails;
        }
        if ((i & 128) == 0) {
            this.preferredLocales = CollectionsKt.emptyList();
        } else {
            this.preferredLocales = list;
        }
    }

    public OfflineCardPresentDetails(String str, int i, int i2, String str2, String str3, String str4, ReceiptDetails receiptDetails, List<String> preferredLocales) {
        Intrinsics.checkNotNullParameter(preferredLocales, "preferredLocales");
        this.brand = str;
        this.expMonth = i;
        this.expYear = i2;
        this.last4 = str2;
        this.readMethod = str3;
        this.cardholderName = str4;
        this.receiptDetails = receiptDetails;
        this.preferredLocales = preferredLocales;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(OfflineCardPresentDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.brand != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.brand);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.expMonth != 0) {
            output.encodeIntElement(serialDesc, 1, self.expMonth);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.expYear != 0) {
            output.encodeIntElement(serialDesc, 2, self.expYear);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.last4 != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.last4);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.readMethod != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.readMethod);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.cardholderName != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.cardholderName);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.receiptDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, ReceiptDetails$$serializer.INSTANCE, self.receiptDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 7) && Intrinsics.areEqual(self.preferredLocales, CollectionsKt.emptyList())) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 7, kSerializerArr[7], self.preferredLocales);
    }

    public final String getBrand() {
        return this.brand;
    }

    public final int getExpMonth() {
        return this.expMonth;
    }

    public final int getExpYear() {
        return this.expYear;
    }

    public final String getLast4() {
        return this.last4;
    }

    public final String getReadMethod() {
        return this.readMethod;
    }

    public final String getCardholderName() {
        return this.cardholderName;
    }

    public final ReceiptDetails getReceiptDetails() {
        return this.receiptDetails;
    }

    public /* synthetic */ OfflineCardPresentDetails(String str, int i, int i2, String str2, String str3, String str4, ReceiptDetails receiptDetails, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : str2, (i3 & 16) != 0 ? null : str3, (i3 & 32) != 0 ? null : str4, (i3 & 64) != 0 ? null : receiptDetails, (i3 & 128) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<String> getPreferredLocales() {
        return this.preferredLocales;
    }

    /* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\rHÆ\u0001R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;", "", "()V", "serializedName", "", "Lcom/stripe/misc/CardBrand;", "getSerializedName", "(Lcom/stripe/misc/CardBrand;)Ljava/lang/String;", "fromEmvDataAndReadMethod", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "emvData", "readMethod", "serializer", "Lkotlinx/serialization/KSerializer;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CardBrand.values().length];
                try {
                    iArr[CardBrand.AMEX.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CardBrand.DINERS_CLUB.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CardBrand.DISCOVER.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CardBrand.EFTPOS_AU.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CardBrand.JCB.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[CardBrand.GIROCARD.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[CardBrand.MASTERCARD.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[CardBrand.UNIONPAY.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[CardBrand.UNKNOWN.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[CardBrand.VISA.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<OfflineCardPresentDetails> serializer() {
            return OfflineCardPresentDetails$$serializer.INSTANCE;
        }

        public final OfflineCardPresentDetails fromEmvDataAndReadMethod(String emvData, String readMethod) {
            CardBrand cardBrandForApplication;
            String first;
            Integer intOrNull;
            String second;
            Integer intOrNull2;
            Intrinsics.checkNotNullParameter(emvData, "emvData");
            TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(emvData);
            if (tlvMap == null) {
                return null;
            }
            Companion companion = OfflineCardPresentDetails.INSTANCE;
            ApplicationId applicationId = tlvMap.getApplicationId();
            if (applicationId == null || (cardBrandForApplication = ApplicationIdKt.getCardBrandForApplication(applicationId)) == null) {
                cardBrandForApplication = CardBrand.UNKNOWN;
            }
            String serializedName = companion.getSerializedName(cardBrandForApplication);
            Pair<String, String> expMonthAndYear = tlvMap.getExpMonthAndYear();
            int iIntValue = 0;
            int iIntValue2 = (expMonthAndYear == null || (second = expMonthAndYear.getSecond()) == null || (intOrNull2 = StringsKt.toIntOrNull(second)) == null) ? 0 : intOrNull2.intValue();
            Pair<String, String> expMonthAndYear2 = tlvMap.getExpMonthAndYear();
            if (expMonthAndYear2 != null && (first = expMonthAndYear2.getFirst()) != null && (intOrNull = StringsKt.toIntOrNull(first)) != null) {
                iIntValue = intOrNull.intValue() + 2000;
            }
            int i = iIntValue;
            String last4 = tlvMap.getLast4();
            String cardholderName = tlvMap.getCardholderName();
            ReceiptDetails receiptDetailsFromEmvData$public_release = ReceiptDetails.INSTANCE.fromEmvData$public_release(emvData);
            TlvMap tlvMap2 = TlvMap.INSTANCE.toTlvMap(emvData);
            List<String> languagePreferences = tlvMap2 != null ? tlvMap2.getLanguagePreferences() : null;
            if (languagePreferences == null) {
                languagePreferences = CollectionsKt.emptyList();
            }
            return new OfflineCardPresentDetails(serializedName, iIntValue2, i, last4, readMethod, cardholderName, receiptDetailsFromEmvData$public_release, languagePreferences);
        }

        private final String getSerializedName(CardBrand cardBrand) {
            switch (WhenMappings.$EnumSwitchMapping$0[cardBrand.ordinal()]) {
                case 1:
                    return "amex";
                case 2:
                    return "diners";
                case 3:
                    return "discover";
                case 4:
                    return "eftpos_au";
                case 5:
                    return "jcb";
                case 6:
                    return "girocard";
                case 7:
                    return "mastercard";
                case 8:
                    return "unionpay";
                case 9:
                    return "unknown";
                case 10:
                    return "visa";
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }
}
