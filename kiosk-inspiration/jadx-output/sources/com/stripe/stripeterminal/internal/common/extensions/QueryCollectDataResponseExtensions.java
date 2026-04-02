package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.sdk.QueryCollectDataResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.Error;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryCollectDataResponseExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;", "", "()V", "toResult", "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;", "QueryCollectDataResponseResult", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryCollectDataResponseExtensions {
    public static final QueryCollectDataResponseExtensions INSTANCE = new QueryCollectDataResponseExtensions();

    private QueryCollectDataResponseExtensions() {
    }

    public final QueryCollectDataResponseResult toResult(QueryCollectDataResponse queryCollectDataResponse) {
        Intrinsics.checkNotNullParameter(queryCollectDataResponse, "<this>");
        ReaderCollectedData readerCollectedData = queryCollectDataResponse.collected_data;
        if (readerCollectedData != null) {
            return new QueryCollectDataResponseResult.Success(readerCollectedData);
        }
        QueryCollectDataResponse.QueryCollectDataResponseError queryCollectDataResponseError = queryCollectDataResponse.error_response;
        Error error = null;
        ErrorWrapper errorWrapper = queryCollectDataResponseError != null ? queryCollectDataResponseError.wrapped_error : null;
        Error error2 = queryCollectDataResponse.error;
        if (error2 == null) {
            QueryCollectDataResponse.QueryCollectDataResponseError queryCollectDataResponseError2 = queryCollectDataResponse.error_response;
            if (queryCollectDataResponseError2 != null) {
                error = queryCollectDataResponseError2.error;
            }
        } else {
            error = error2;
        }
        return new QueryCollectDataResponseResult.Error(TerminalExceptionExtensionsKt.convertJackRabbitErrorToTerminalException(errorWrapper, error));
    }

    /* JADX INFO: compiled from: QueryCollectDataResponseExtensions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;", "", "()V", "Error", "Success", "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class QueryCollectDataResponseResult {
        public /* synthetic */ QueryCollectDataResponseResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: QueryCollectDataResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Success;", "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;", "collectedData", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "(Lcom/stripe/proto/model/rest/ReaderCollectedData;)V", "getCollectedData", "()Lcom/stripe/proto/model/rest/ReaderCollectedData;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends QueryCollectDataResponseResult {
            private final ReaderCollectedData collectedData;

            public static /* synthetic */ Success copy$default(Success success, ReaderCollectedData readerCollectedData, int i, Object obj) {
                if ((i & 1) != 0) {
                    readerCollectedData = success.collectedData;
                }
                return success.copy(readerCollectedData);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ReaderCollectedData getCollectedData() {
                return this.collectedData;
            }

            public final Success copy(ReaderCollectedData collectedData) {
                Intrinsics.checkNotNullParameter(collectedData, "collectedData");
                return new Success(collectedData);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.collectedData, ((Success) other).collectedData);
            }

            public int hashCode() {
                return this.collectedData.hashCode();
            }

            public String toString() {
                return "Success(collectedData=" + this.collectedData + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(ReaderCollectedData collectedData) {
                super(null);
                Intrinsics.checkNotNullParameter(collectedData, "collectedData");
                this.collectedData = collectedData;
            }

            public final ReaderCollectedData getCollectedData() {
                return this.collectedData;
            }
        }

        private QueryCollectDataResponseResult() {
        }

        /* JADX INFO: compiled from: QueryCollectDataResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends QueryCollectDataResponseResult {
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
