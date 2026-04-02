package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.sdk.CancelSetupIntentResponse;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CancelSetupIntentResponseExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions;", "", "()V", "toResult", "Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult;", "Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;", "CancelSetupIntentResponseResult", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancelSetupIntentResponseExtensions {
    public static final CancelSetupIntentResponseExtensions INSTANCE = new CancelSetupIntentResponseExtensions();

    private CancelSetupIntentResponseExtensions() {
    }

    public final CancelSetupIntentResponseResult toResult(CancelSetupIntentResponse cancelSetupIntentResponse) {
        SetupIntent sdkSetupIntent;
        Intrinsics.checkNotNullParameter(cancelSetupIntentResponse, "<this>");
        com.stripe.proto.model.rest.SetupIntent setupIntent = cancelSetupIntentResponse.setup_intent;
        if (setupIntent != null && (sdkSetupIntent = ProtoConverter.INSTANCE.toSdkSetupIntent(setupIntent)) != null) {
            return new CancelSetupIntentResponseResult.Success(sdkSetupIntent);
        }
        return new CancelSetupIntentResponseResult.Error(TerminalExceptionExtensionsKt.convertJackRabbitErrorToTerminalException(cancelSetupIntentResponse.wrapped_error, cancelSetupIntentResponse.error));
    }

    /* JADX INFO: compiled from: CancelSetupIntentResponseExtensions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult;", "", "()V", "Error", "Success", "Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class CancelSetupIntentResponseResult {
        public /* synthetic */ CancelSetupIntentResponseResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: CancelSetupIntentResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Success;", "Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V", "getSetupIntent", "()Lcom/stripe/stripeterminal/external/models/SetupIntent;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends CancelSetupIntentResponseResult {
            private final SetupIntent setupIntent;

            public static /* synthetic */ Success copy$default(Success success, SetupIntent setupIntent, int i, Object obj) {
                if ((i & 1) != 0) {
                    setupIntent = success.setupIntent;
                }
                return success.copy(setupIntent);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final SetupIntent getSetupIntent() {
                return this.setupIntent;
            }

            public final Success copy(SetupIntent setupIntent) {
                Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
                return new Success(setupIntent);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.setupIntent, ((Success) other).setupIntent);
            }

            public int hashCode() {
                return this.setupIntent.hashCode();
            }

            public String toString() {
                return "Success(setupIntent=" + this.setupIntent + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(SetupIntent setupIntent) {
                super(null);
                Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
                this.setupIntent = setupIntent;
            }

            public final SetupIntent getSetupIntent() {
                return this.setupIntent;
            }
        }

        private CancelSetupIntentResponseResult() {
        }

        /* JADX INFO: compiled from: CancelSetupIntentResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends CancelSetupIntentResponseResult {
            private final TerminalException exception;

            public static /* synthetic */ Error copy$default(Error error, TerminalException terminalException, int i, Object obj) {
                if ((i & 1) != 0) {
                    terminalException = error.exception;
                }
                return error.copy(terminalException);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TerminalException getException() {
                return this.exception;
            }

            public final Error copy(TerminalException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                return new Error(exception);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.exception, ((Error) other).exception);
            }

            public int hashCode() {
                return this.exception.hashCode();
            }

            public String toString() {
                return "Error(exception=" + this.exception + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(TerminalException exception) {
                super(null);
                Intrinsics.checkNotNullParameter(exception, "exception");
                this.exception = exception;
            }

            public final TerminalException getException() {
                return this.exception;
            }
        }
    }
}
