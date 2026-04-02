package com.stripe.stripeterminal.external.serialization;

import com.stripe.stripeterminal.external.api.ApiErrorType;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntent$$serializer;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntent$$serializer;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: InnerError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 E2\u00060\u0001j\u0002`\u0002:\u0002DEBs\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014B_\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0015J\u0010\u0010#\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b$J\u0010\u0010%\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b&J\u0010\u0010'\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b(J\u0010\u0010)\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b*J\u0010\u0010+\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b,J\u0010\u0010-\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b.J\u0010\u0010/\u001a\u0004\u0018\u00010\rHÀ\u0003¢\u0006\u0002\b0J\u0010\u00101\u001a\u0004\u0018\u00010\u000fHÀ\u0003¢\u0006\u0002\b2J\u0010\u00103\u001a\u0004\u0018\u00010\u0011HÀ\u0003¢\u0006\u0002\b4Ju\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u000109HÖ\u0003J\t\u0010:\u001a\u00020\u0004HÖ\u0001J\t\u0010;\u001a\u00020\u0006HÖ\u0001J&\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00002\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BHÁ\u0001¢\u0006\u0002\bCR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0016\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0016\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0016\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u0006F"}, d2 = {"Lcom/stripe/stripeterminal/external/serialization/InnerError;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "charge", "", "code", "declineCode", "docUrl", "message", "param", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "type", "Lcom/stripe/stripeterminal/external/api/ApiErrorType;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;)V", "getCharge$public_release", "()Ljava/lang/String;", "getCode$public_release", "getDeclineCode$public_release", "getDocUrl$public_release", "getMessage$public_release", "getParam$public_release", "getPaymentIntent$public_release", "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "getSetupIntent$public_release", "()Lcom/stripe/stripeterminal/external/models/SetupIntent;", "getType$public_release", "()Lcom/stripe/stripeterminal/external/api/ApiErrorType;", "component1", "component1$public_release", "component2", "component2$public_release", "component3", "component3$public_release", "component4", "component4$public_release", "component5", "component5$public_release", "component6", "component6$public_release", "component7", "component7$public_release", "component8", "component8$public_release", "component9", "component9$public_release", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class InnerError implements java.io.Serializable {
    private final String charge;
    private final String code;
    private final String declineCode;
    private final String docUrl;
    private final String message;
    private final String param;
    private final PaymentIntent paymentIntent;
    private final SetupIntent setupIntent;
    private final ApiErrorType type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, ApiErrorType.INSTANCE.serializer()};

    public static /* synthetic */ InnerError copy$default(InnerError innerError, String str, String str2, String str3, String str4, String str5, String str6, PaymentIntent paymentIntent, SetupIntent setupIntent, ApiErrorType apiErrorType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = innerError.charge;
        }
        if ((i & 2) != 0) {
            str2 = innerError.code;
        }
        if ((i & 4) != 0) {
            str3 = innerError.declineCode;
        }
        if ((i & 8) != 0) {
            str4 = innerError.docUrl;
        }
        if ((i & 16) != 0) {
            str5 = innerError.message;
        }
        if ((i & 32) != 0) {
            str6 = innerError.param;
        }
        if ((i & 64) != 0) {
            paymentIntent = innerError.paymentIntent;
        }
        if ((i & 128) != 0) {
            setupIntent = innerError.setupIntent;
        }
        if ((i & 256) != 0) {
            apiErrorType = innerError.type;
        }
        SetupIntent setupIntent2 = setupIntent;
        ApiErrorType apiErrorType2 = apiErrorType;
        String str7 = str6;
        PaymentIntent paymentIntent2 = paymentIntent;
        String str8 = str5;
        String str9 = str3;
        return innerError.copy(str, str2, str9, str4, str8, str7, paymentIntent2, setupIntent2, apiErrorType2);
    }

    /* JADX INFO: renamed from: component1$public_release, reason: from getter */
    public final String getCharge() {
        return this.charge;
    }

    /* JADX INFO: renamed from: component2$public_release, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component3$public_release, reason: from getter */
    public final String getDeclineCode() {
        return this.declineCode;
    }

    /* JADX INFO: renamed from: component4$public_release, reason: from getter */
    public final String getDocUrl() {
        return this.docUrl;
    }

    /* JADX INFO: renamed from: component5$public_release, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component6$public_release, reason: from getter */
    public final String getParam() {
        return this.param;
    }

    /* JADX INFO: renamed from: component7$public_release, reason: from getter */
    public final PaymentIntent getPaymentIntent() {
        return this.paymentIntent;
    }

    /* JADX INFO: renamed from: component8$public_release, reason: from getter */
    public final SetupIntent getSetupIntent() {
        return this.setupIntent;
    }

    /* JADX INFO: renamed from: component9$public_release, reason: from getter */
    public final ApiErrorType getType() {
        return this.type;
    }

    public final InnerError copy(String charge, String code, String declineCode, String docUrl, String message, String param, PaymentIntent paymentIntent, SetupIntent setupIntent, ApiErrorType type) {
        return new InnerError(charge, code, declineCode, docUrl, message, param, paymentIntent, setupIntent, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InnerError)) {
            return false;
        }
        InnerError innerError = (InnerError) other;
        return Intrinsics.areEqual(this.charge, innerError.charge) && Intrinsics.areEqual(this.code, innerError.code) && Intrinsics.areEqual(this.declineCode, innerError.declineCode) && Intrinsics.areEqual(this.docUrl, innerError.docUrl) && Intrinsics.areEqual(this.message, innerError.message) && Intrinsics.areEqual(this.param, innerError.param) && Intrinsics.areEqual(this.paymentIntent, innerError.paymentIntent) && Intrinsics.areEqual(this.setupIntent, innerError.setupIntent) && this.type == innerError.type;
    }

    public int hashCode() {
        String str = this.charge;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.code;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.declineCode;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.docUrl;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.message;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.param;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        PaymentIntent paymentIntent = this.paymentIntent;
        int iHashCode7 = (iHashCode6 + (paymentIntent == null ? 0 : paymentIntent.hashCode())) * 31;
        SetupIntent setupIntent = this.setupIntent;
        int iHashCode8 = (iHashCode7 + (setupIntent == null ? 0 : setupIntent.hashCode())) * 31;
        ApiErrorType apiErrorType = this.type;
        return iHashCode8 + (apiErrorType != null ? apiErrorType.hashCode() : 0);
    }

    public String toString() {
        return "InnerError(charge=" + this.charge + ", code=" + this.code + ", declineCode=" + this.declineCode + ", docUrl=" + this.docUrl + ", message=" + this.message + ", param=" + this.param + ", paymentIntent=" + this.paymentIntent + ", setupIntent=" + this.setupIntent + ", type=" + this.type + ')';
    }

    /* JADX INFO: compiled from: InnerError.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/serialization/InnerError$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/serialization/InnerError;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<InnerError> serializer() {
            return InnerError$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ InnerError(int i, String str, String str2, String str3, String str4, String str5, String str6, PaymentIntent paymentIntent, SetupIntent setupIntent, ApiErrorType apiErrorType, SerializationConstructorMarker serializationConstructorMarker) {
        if (511 != (i & 511)) {
            PluginExceptionsKt.throwMissingFieldException(i, 511, InnerError$$serializer.INSTANCE.getDescriptor());
        }
        this.charge = str;
        this.code = str2;
        this.declineCode = str3;
        this.docUrl = str4;
        this.message = str5;
        this.param = str6;
        this.paymentIntent = paymentIntent;
        this.setupIntent = setupIntent;
        this.type = apiErrorType;
    }

    public InnerError(String str, String str2, String str3, String str4, String str5, String str6, PaymentIntent paymentIntent, SetupIntent setupIntent, ApiErrorType apiErrorType) {
        this.charge = str;
        this.code = str2;
        this.declineCode = str3;
        this.docUrl = str4;
        this.message = str5;
        this.param = str6;
        this.paymentIntent = paymentIntent;
        this.setupIntent = setupIntent;
        this.type = apiErrorType;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(InnerError self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.charge);
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.code);
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.declineCode);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.docUrl);
        output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.message);
        output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.param);
        output.encodeNullableSerializableElement(serialDesc, 6, PaymentIntent$$serializer.INSTANCE, self.paymentIntent);
        output.encodeNullableSerializableElement(serialDesc, 7, SetupIntent$$serializer.INSTANCE, self.setupIntent);
        output.encodeNullableSerializableElement(serialDesc, 8, kSerializerArr[8], self.type);
    }

    public final String getCharge$public_release() {
        return this.charge;
    }

    public final String getCode$public_release() {
        return this.code;
    }

    public final String getDeclineCode$public_release() {
        return this.declineCode;
    }

    public final String getDocUrl$public_release() {
        return this.docUrl;
    }

    public final String getMessage$public_release() {
        return this.message;
    }

    public final String getParam$public_release() {
        return this.param;
    }

    public final PaymentIntent getPaymentIntent$public_release() {
        return this.paymentIntent;
    }

    public final SetupIntent getSetupIntent$public_release() {
        return this.setupIntent;
    }

    public final ApiErrorType getType$public_release() {
        return this.type;
    }
}
