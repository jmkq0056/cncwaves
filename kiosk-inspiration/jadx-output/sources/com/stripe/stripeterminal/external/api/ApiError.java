package com.stripe.stripeterminal.external.api;

import com.stripe.stripeterminal.external.json.ApiErrorSerializer;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.serialization.InnerError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: ApiError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010!\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b\"J\u0013\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\f\u0010\bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\bR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\bR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ¨\u0006+"}, d2 = {"Lcom/stripe/stripeterminal/external/api/ApiError;", "", "error", "Lcom/stripe/stripeterminal/external/serialization/InnerError;", "(Lcom/stripe/stripeterminal/external/serialization/InnerError;)V", "charge", "", "getCharge", "()Ljava/lang/String;", "code", "getCode", "declineCode", "getDeclineCode", "docUrl", "getDocUrl", "getError$public_release", "()Lcom/stripe/stripeterminal/external/serialization/InnerError;", "message", "getMessage", "param", "getParam", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "getPaymentIntent", "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "getSetupIntent", "()Lcom/stripe/stripeterminal/external/models/SetupIntent;", "type", "Lcom/stripe/stripeterminal/external/api/ApiErrorType;", "getType", "()Lcom/stripe/stripeterminal/external/api/ApiErrorType;", "component1", "component1$public_release", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = ApiErrorSerializer.class)
public final /* data */ class ApiError {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String DEFAULT_MESSAGE = "Unknown API error";
    private final InnerError error;

    public static /* synthetic */ ApiError copy$default(ApiError apiError, InnerError innerError, int i, Object obj) {
        if ((i & 1) != 0) {
            innerError = apiError.error;
        }
        return apiError.copy(innerError);
    }

    /* JADX INFO: renamed from: component1$public_release, reason: from getter */
    public final InnerError getError() {
        return this.error;
    }

    public final ApiError copy(InnerError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return new ApiError(error);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ApiError) && Intrinsics.areEqual(this.error, ((ApiError) other).error);
    }

    public int hashCode() {
        return this.error.hashCode();
    }

    public String toString() {
        return "ApiError(error=" + this.error + ')';
    }

    public ApiError(InnerError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.error = error;
    }

    public final InnerError getError$public_release() {
        return this.error;
    }

    public final String getCharge() {
        return this.error.getCharge$public_release();
    }

    public final String getCode() {
        return this.error.getCode$public_release();
    }

    public final String getDeclineCode() {
        return this.error.getDeclineCode$public_release();
    }

    public final String getDocUrl() {
        return this.error.getDocUrl$public_release();
    }

    public final String getMessage() {
        String message$public_release = this.error.getMessage$public_release();
        return message$public_release == null ? DEFAULT_MESSAGE : message$public_release;
    }

    public final ApiErrorType getType() {
        return this.error.getType$public_release();
    }

    public final String getParam() {
        return this.error.getParam$public_release();
    }

    public final PaymentIntent getPaymentIntent() {
        return this.error.getPaymentIntent$public_release();
    }

    public final SetupIntent getSetupIntent() {
        return this.error.getSetupIntent$public_release();
    }

    /* JADX INFO: compiled from: ApiError.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/api/ApiError$Companion;", "", "()V", "DEFAULT_MESSAGE", "", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/api/ApiError;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<ApiError> serializer() {
            return ApiErrorSerializer.INSTANCE;
        }
    }
}
