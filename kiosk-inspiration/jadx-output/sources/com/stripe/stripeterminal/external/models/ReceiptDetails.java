package com.stripe.stripeterminal.external.models;

import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.TlvMap;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: ReceiptDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ;2\u00060\u0001j\u0002`\u0002:\u0002:;B{\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011Bq\b\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0012J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006HÆ\u0003Ju\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\u0004HÖ\u0001J\t\u00101\u001a\u00020\u0006HÖ\u0001J&\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208HÁ\u0001¢\u0006\u0002\b9R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0014R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0014R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b \u0010\u0016\u001a\u0004\b!\u0010\u0014¨\u0006<"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReceiptDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "accountType", "", "authorizationCode", "authorizationResponseCode", "dedicatedFileName", "applicationPreferredName", "applicationCryptogram", "cvm", "tvr", "tsi", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccountType", "()Ljava/lang/String;", "getApplicationCryptogram$annotations", "()V", "getApplicationCryptogram", "getApplicationPreferredName", "getAuthorizationCode", "getAuthorizationResponseCode", "getCvm$annotations", "getCvm", "getDedicatedFileName", "getTsi$annotations", "getTsi", "getTvr$annotations", "getTvr", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class ReceiptDetails implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String accountType;
    private final String applicationCryptogram;
    private final String applicationPreferredName;
    private final String authorizationCode;
    private final String authorizationResponseCode;
    private final String cvm;
    private final String dedicatedFileName;
    private final String tsi;
    private final String tvr;

    public static /* synthetic */ ReceiptDetails copy$default(ReceiptDetails receiptDetails, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, Object obj) {
        if ((i & 1) != 0) {
            str = receiptDetails.accountType;
        }
        if ((i & 2) != 0) {
            str2 = receiptDetails.authorizationCode;
        }
        if ((i & 4) != 0) {
            str3 = receiptDetails.authorizationResponseCode;
        }
        if ((i & 8) != 0) {
            str4 = receiptDetails.dedicatedFileName;
        }
        if ((i & 16) != 0) {
            str5 = receiptDetails.applicationPreferredName;
        }
        if ((i & 32) != 0) {
            str6 = receiptDetails.applicationCryptogram;
        }
        if ((i & 64) != 0) {
            str7 = receiptDetails.cvm;
        }
        if ((i & 128) != 0) {
            str8 = receiptDetails.tvr;
        }
        if ((i & 256) != 0) {
            str9 = receiptDetails.tsi;
        }
        String str10 = str8;
        String str11 = str9;
        String str12 = str6;
        String str13 = str7;
        String str14 = str5;
        String str15 = str3;
        return receiptDetails.copy(str, str2, str15, str4, str14, str12, str13, str10, str11);
    }

    public static /* synthetic */ void getApplicationCryptogram$annotations() {
    }

    @SerialName("cardholderVerificationMethod")
    public static /* synthetic */ void getCvm$annotations() {
    }

    @SerialName("transactionStatusInformation")
    public static /* synthetic */ void getTsi$annotations() {
    }

    @SerialName("terminalVerificationResults")
    public static /* synthetic */ void getTvr$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAccountType() {
        return this.accountType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAuthorizationResponseCode() {
        return this.authorizationResponseCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDedicatedFileName() {
        return this.dedicatedFileName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getApplicationPreferredName() {
        return this.applicationPreferredName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getApplicationCryptogram() {
        return this.applicationCryptogram;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCvm() {
        return this.cvm;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTvr() {
        return this.tvr;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getTsi() {
        return this.tsi;
    }

    public final ReceiptDetails copy(String accountType, String authorizationCode, String authorizationResponseCode, String dedicatedFileName, String applicationPreferredName, String applicationCryptogram, String cvm, String tvr, String tsi) {
        return new ReceiptDetails(accountType, authorizationCode, authorizationResponseCode, dedicatedFileName, applicationPreferredName, applicationCryptogram, cvm, tvr, tsi);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReceiptDetails)) {
            return false;
        }
        ReceiptDetails receiptDetails = (ReceiptDetails) other;
        return Intrinsics.areEqual(this.accountType, receiptDetails.accountType) && Intrinsics.areEqual(this.authorizationCode, receiptDetails.authorizationCode) && Intrinsics.areEqual(this.authorizationResponseCode, receiptDetails.authorizationResponseCode) && Intrinsics.areEqual(this.dedicatedFileName, receiptDetails.dedicatedFileName) && Intrinsics.areEqual(this.applicationPreferredName, receiptDetails.applicationPreferredName) && Intrinsics.areEqual(this.applicationCryptogram, receiptDetails.applicationCryptogram) && Intrinsics.areEqual(this.cvm, receiptDetails.cvm) && Intrinsics.areEqual(this.tvr, receiptDetails.tvr) && Intrinsics.areEqual(this.tsi, receiptDetails.tsi);
    }

    public int hashCode() {
        String str = this.accountType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.authorizationCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.authorizationResponseCode;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.dedicatedFileName;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.applicationPreferredName;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.applicationCryptogram;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.cvm;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.tvr;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.tsi;
        return iHashCode8 + (str9 != null ? str9.hashCode() : 0);
    }

    public String toString() {
        return "ReceiptDetails(accountType=" + this.accountType + ", authorizationCode=" + this.authorizationCode + ", authorizationResponseCode=" + this.authorizationResponseCode + ", dedicatedFileName=" + this.dedicatedFileName + ", applicationPreferredName=" + this.applicationPreferredName + ", applicationCryptogram=" + this.applicationCryptogram + ", cvm=" + this.cvm + ", tvr=" + this.tvr + ", tsi=" + this.tsi + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ ReceiptDetails(int i, String str, String str2, String str3, String str4, String str5, String str6, @SerialName("cardholderVerificationMethod") String str7, @SerialName("terminalVerificationResults") String str8, @SerialName("transactionStatusInformation") String str9, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, ReceiptDetails$$serializer.INSTANCE.getDescriptor());
        }
        this.accountType = str;
        if ((i & 2) == 0) {
            this.authorizationCode = null;
        } else {
            this.authorizationCode = str2;
        }
        if ((i & 4) == 0) {
            this.authorizationResponseCode = null;
        } else {
            this.authorizationResponseCode = str3;
        }
        if ((i & 8) == 0) {
            this.dedicatedFileName = null;
        } else {
            this.dedicatedFileName = str4;
        }
        if ((i & 16) == 0) {
            this.applicationPreferredName = null;
        } else {
            this.applicationPreferredName = str5;
        }
        if ((i & 32) == 0) {
            this.applicationCryptogram = null;
        } else {
            this.applicationCryptogram = str6;
        }
        if ((i & 64) == 0) {
            this.cvm = null;
        } else {
            this.cvm = str7;
        }
        if ((i & 128) == 0) {
            this.tvr = null;
        } else {
            this.tvr = str8;
        }
        if ((i & 256) == 0) {
            this.tsi = null;
        } else {
            this.tsi = str9;
        }
    }

    public ReceiptDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.accountType = str;
        this.authorizationCode = str2;
        this.authorizationResponseCode = str3;
        this.dedicatedFileName = str4;
        this.applicationPreferredName = str5;
        this.applicationCryptogram = str6;
        this.cvm = str7;
        this.tvr = str8;
        this.tsi = str9;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(ReceiptDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.accountType);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.authorizationCode != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.authorizationCode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.authorizationResponseCode != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.authorizationResponseCode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.dedicatedFileName != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.dedicatedFileName);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.applicationPreferredName != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.applicationPreferredName);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.applicationCryptogram != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.applicationCryptogram);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.cvm != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.cvm);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.tvr != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.tvr);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 8) && self.tsi == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 8, StringSerializer.INSTANCE, self.tsi);
    }

    public /* synthetic */ ReceiptDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9);
    }

    public final String getAccountType() {
        return this.accountType;
    }

    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    public final String getAuthorizationResponseCode() {
        return this.authorizationResponseCode;
    }

    public final String getDedicatedFileName() {
        return this.dedicatedFileName;
    }

    public final String getApplicationPreferredName() {
        return this.applicationPreferredName;
    }

    public final String getApplicationCryptogram() {
        return this.applicationCryptogram;
    }

    public final String getCvm() {
        return this.cvm;
    }

    public final String getTvr() {
        return this.tvr;
    }

    public final String getTsi() {
        return this.tsi;
    }

    /* JADX INFO: compiled from: ReceiptDetails.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\tHÆ\u0001¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReceiptDetails$Companion;", "", "()V", "fromEmvData", "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;", "emvData", "", "fromEmvData$public_release", "serializer", "Lkotlinx/serialization/KSerializer;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<ReceiptDetails> serializer() {
            return ReceiptDetails$$serializer.INSTANCE;
        }

        public final ReceiptDetails fromEmvData$public_release(String emvData) {
            Intrinsics.checkNotNullParameter(emvData, "emvData");
            TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(emvData);
            String lowerCase = null;
            if (tlvMap == null) {
                return null;
            }
            String str = tlvMap.get(TlvMap.TAG_ACCOUNT_TYPE);
            if (str != null) {
                lowerCase = AccountType.INSTANCE.fromEmvValue(str).name().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            }
            return new ReceiptDetails(lowerCase, null, tlvMap.get(TlvMap.TAG_AUTH_RESPONSE_CODE), tlvMap.getDedicatedFileName(), tlvMap.getApplicationName(), tlvMap.get(TlvMap.TAG_APPLICATION_CRYPTOGRAM), tlvMap.getCardholderVerificationMethod(), tlvMap.get(TlvMap.TAG_TERMINAL_VERIFICATION_RESULTS), tlvMap.get(TlvMap.TAG_TRANSACTION_STATUS_INFORMATION));
        }
    }
}
