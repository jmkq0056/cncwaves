package com.stripe.stripeterminal.external.models;

import java.lang.annotation.Annotation;
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
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SetupError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 72\u00060\u0001j\u0002`\u0002:\u000267Bi\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012BU\b\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u000fHÆ\u0003Jg\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000fHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020\u0004HÖ\u0001J\t\u0010-\u001a\u00020\u0006HÖ\u0001J&\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204HÁ\u0001¢\u0006\u0002\b5R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u00068"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupError;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "code", "", "declineCode", "docUrl", "message", "param", "paymentMethod", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "paymentMethodType", "type", "Lcom/stripe/stripeterminal/external/models/SetupErrorType;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupErrorType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupErrorType;)V", "getCode", "()Ljava/lang/String;", "getDeclineCode", "getDocUrl", "getMessage", "getParam", "getPaymentMethod", "()Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "getPaymentMethodType", "getType", "()Lcom/stripe/stripeterminal/external/models/SetupErrorType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class SetupError implements java.io.Serializable {
    private final String code;
    private final String declineCode;
    private final String docUrl;
    private final String message;
    private final String param;
    private final PaymentMethod paymentMethod;
    private final String paymentMethodType;
    private final SetupErrorType type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.SetupErrorType", SetupErrorType.values(), new String[]{"api_connection_error", "api_error", "authentication_error", "card_error", "idempotency_error", "invalid_request_error", "rate_limit_error"}, new Annotation[][]{null, null, null, null, null, null, null}, null)};

    public static /* synthetic */ SetupError copy$default(SetupError setupError, String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, SetupErrorType setupErrorType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setupError.code;
        }
        if ((i & 2) != 0) {
            str2 = setupError.declineCode;
        }
        if ((i & 4) != 0) {
            str3 = setupError.docUrl;
        }
        if ((i & 8) != 0) {
            str4 = setupError.message;
        }
        if ((i & 16) != 0) {
            str5 = setupError.param;
        }
        if ((i & 32) != 0) {
            paymentMethod = setupError.paymentMethod;
        }
        if ((i & 64) != 0) {
            str6 = setupError.paymentMethodType;
        }
        if ((i & 128) != 0) {
            setupErrorType = setupError.type;
        }
        String str7 = str6;
        SetupErrorType setupErrorType2 = setupErrorType;
        String str8 = str5;
        PaymentMethod paymentMethod2 = paymentMethod;
        return setupError.copy(str, str2, str3, str4, str8, paymentMethod2, str7, setupErrorType2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeclineCode() {
        return this.declineCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDocUrl() {
        return this.docUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getParam() {
        return this.param;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final PaymentMethod getPaymentMethod() {
        return this.paymentMethod;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPaymentMethodType() {
        return this.paymentMethodType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final SetupErrorType getType() {
        return this.type;
    }

    public final SetupError copy(String code, String declineCode, String docUrl, String message, String param, PaymentMethod paymentMethod, String paymentMethodType, SetupErrorType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new SetupError(code, declineCode, docUrl, message, param, paymentMethod, paymentMethodType, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupError)) {
            return false;
        }
        SetupError setupError = (SetupError) other;
        return Intrinsics.areEqual(this.code, setupError.code) && Intrinsics.areEqual(this.declineCode, setupError.declineCode) && Intrinsics.areEqual(this.docUrl, setupError.docUrl) && Intrinsics.areEqual(this.message, setupError.message) && Intrinsics.areEqual(this.param, setupError.param) && Intrinsics.areEqual(this.paymentMethod, setupError.paymentMethod) && Intrinsics.areEqual(this.paymentMethodType, setupError.paymentMethodType) && this.type == setupError.type;
    }

    public int hashCode() {
        String str = this.code;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.declineCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.docUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.message;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.param;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        PaymentMethod paymentMethod = this.paymentMethod;
        int iHashCode6 = (iHashCode5 + (paymentMethod == null ? 0 : paymentMethod.hashCode())) * 31;
        String str6 = this.paymentMethodType;
        return ((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.type.hashCode();
    }

    public String toString() {
        return "SetupError(code=" + this.code + ", declineCode=" + this.declineCode + ", docUrl=" + this.docUrl + ", message=" + this.message + ", param=" + this.param + ", paymentMethod=" + this.paymentMethod + ", paymentMethodType=" + this.paymentMethodType + ", type=" + this.type + ')';
    }

    /* JADX INFO: compiled from: SetupError.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupError$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupError;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SetupError> serializer() {
            return SetupError$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SetupError(int i, String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, SetupErrorType setupErrorType, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, SetupError$$serializer.INSTANCE.getDescriptor());
        }
        this.code = str;
        this.declineCode = str2;
        this.docUrl = str3;
        this.message = str4;
        this.param = str5;
        this.paymentMethod = paymentMethod;
        this.paymentMethodType = str6;
        this.type = setupErrorType;
    }

    public SetupError(String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, SetupErrorType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.code = str;
        this.declineCode = str2;
        this.docUrl = str3;
        this.message = str4;
        this.param = str5;
        this.paymentMethod = paymentMethod;
        this.paymentMethodType = str6;
        this.type = type;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(SetupError self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.code);
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.declineCode);
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.docUrl);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.message);
        output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.param);
        output.encodeNullableSerializableElement(serialDesc, 5, PaymentMethod$$serializer.INSTANCE, self.paymentMethod);
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.paymentMethodType);
        output.encodeSerializableElement(serialDesc, 7, kSerializerArr[7], self.type);
    }

    public final String getCode() {
        return this.code;
    }

    public final String getDeclineCode() {
        return this.declineCode;
    }

    public final String getDocUrl() {
        return this.docUrl;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getParam() {
        return this.param;
    }

    public final PaymentMethod getPaymentMethod() {
        return this.paymentMethod;
    }

    public final String getPaymentMethodType() {
        return this.paymentMethodType;
    }

    public final SetupErrorType getType() {
        return this.type;
    }
}
