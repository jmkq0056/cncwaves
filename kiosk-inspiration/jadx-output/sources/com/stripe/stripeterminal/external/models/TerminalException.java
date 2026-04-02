package com.stripe.stripeterminal.external.models;

import com.stripe.stripeterminal.external.api.ApiError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalException.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B/\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TerminalException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "errorMessage", "", "cause", "", "apiError", "Lcom/stripe/stripeterminal/external/api/ApiError;", "(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;)V", "getApiError", "()Lcom/stripe/stripeterminal/external/api/ApiError;", "getCause", "()Ljava/lang/Throwable;", "getErrorCode", "()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "getErrorMessage", "()Ljava/lang/String;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "getPaymentIntent", "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "getSetupIntent", "()Lcom/stripe/stripeterminal/external/models/SetupIntent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalException extends Exception {
    private final ApiError apiError;
    private final Throwable cause;
    private final TerminalErrorCode errorCode;
    private final String errorMessage;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TerminalException(TerminalErrorCode errorCode, String errorMessage) {
        this(errorCode, errorMessage, null, null, 12, null);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TerminalException(TerminalErrorCode errorCode, String errorMessage, Throwable th) {
        this(errorCode, errorMessage, th, null, 8, null);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }

    public /* synthetic */ TerminalException(TerminalErrorCode terminalErrorCode, String str, Throwable th, ApiError apiError, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(terminalErrorCode, str, (i & 4) != 0 ? null : th, (i & 8) != 0 ? null : apiError);
    }

    public final TerminalErrorCode getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public final ApiError getApiError() {
        return this.apiError;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalException(TerminalErrorCode errorCode, String errorMessage, Throwable th, ApiError apiError) {
        super(errorMessage, th);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.cause = th;
        this.apiError = apiError;
    }

    public final PaymentIntent getPaymentIntent() {
        ApiError apiError = this.apiError;
        if (apiError != null) {
            return apiError.getPaymentIntent();
        }
        return null;
    }

    public final SetupIntent getSetupIntent() {
        ApiError apiError = this.apiError;
        if (apiError != null) {
            return apiError.getSetupIntent();
        }
        return null;
    }
}
