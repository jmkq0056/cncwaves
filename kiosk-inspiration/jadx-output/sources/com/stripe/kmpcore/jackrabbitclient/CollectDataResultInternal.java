package com.stripe.kmpcore.jackrabbitclient;

import com.stripe.proto.api.sdk.QueryCollectDataResponse;
import com.stripe.proto.model.rest.ReaderCollectedData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectDataResultInternal.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;", "", "Failure", "Success", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CollectDataResultInternal {

    /* JADX INFO: compiled from: CollectDataResultInternal.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;", "readerCollectedData", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "(Lcom/stripe/proto/model/rest/ReaderCollectedData;)V", "getReaderCollectedData", "()Lcom/stripe/proto/model/rest/ReaderCollectedData;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Success implements CollectDataResultInternal {
        private final ReaderCollectedData readerCollectedData;

        public static /* synthetic */ Success copy$default(Success success, ReaderCollectedData readerCollectedData, int i, Object obj) {
            if ((i & 1) != 0) {
                readerCollectedData = success.readerCollectedData;
            }
            return success.copy(readerCollectedData);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ReaderCollectedData getReaderCollectedData() {
            return this.readerCollectedData;
        }

        public final Success copy(ReaderCollectedData readerCollectedData) {
            Intrinsics.checkNotNullParameter(readerCollectedData, "readerCollectedData");
            return new Success(readerCollectedData);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.readerCollectedData, ((Success) other).readerCollectedData);
        }

        public int hashCode() {
            return this.readerCollectedData.hashCode();
        }

        public String toString() {
            return "Success(readerCollectedData=" + this.readerCollectedData + ')';
        }

        public Success(ReaderCollectedData readerCollectedData) {
            Intrinsics.checkNotNullParameter(readerCollectedData, "readerCollectedData");
            this.readerCollectedData = readerCollectedData;
        }

        public final ReaderCollectedData getReaderCollectedData() {
            return this.readerCollectedData;
        }
    }

    /* JADX INFO: compiled from: CollectDataResultInternal.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;", "ApplicationError", "UnexpectedError", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Failure extends CollectDataResultInternal {

        /* JADX INFO: compiled from: CollectDataResultInternal.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure;", "errorResponse", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", "(Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;)V", "getErrorResponse", "()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ApplicationError implements Failure {
            private final QueryCollectDataResponse.QueryCollectDataResponseError errorResponse;

            public static /* synthetic */ ApplicationError copy$default(ApplicationError applicationError, QueryCollectDataResponse.QueryCollectDataResponseError queryCollectDataResponseError, int i, Object obj) {
                if ((i & 1) != 0) {
                    queryCollectDataResponseError = applicationError.errorResponse;
                }
                return applicationError.copy(queryCollectDataResponseError);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final QueryCollectDataResponse.QueryCollectDataResponseError getErrorResponse() {
                return this.errorResponse;
            }

            public final ApplicationError copy(QueryCollectDataResponse.QueryCollectDataResponseError errorResponse) {
                Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
                return new ApplicationError(errorResponse);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ApplicationError) && Intrinsics.areEqual(this.errorResponse, ((ApplicationError) other).errorResponse);
            }

            public int hashCode() {
                return this.errorResponse.hashCode();
            }

            public String toString() {
                return "ApplicationError(errorResponse=" + this.errorResponse + ')';
            }

            public ApplicationError(QueryCollectDataResponse.QueryCollectDataResponseError errorResponse) {
                Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
                this.errorResponse = errorResponse;
            }

            public final QueryCollectDataResponse.QueryCollectDataResponseError getErrorResponse() {
                return this.errorResponse;
            }
        }

        /* JADX INFO: compiled from: CollectDataResultInternal.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnexpectedError implements Failure {
            public static final UnexpectedError INSTANCE = new UnexpectedError();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnexpectedError)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -186990178;
            }

            public String toString() {
                return "UnexpectedError";
            }

            private UnexpectedError() {
            }
        }
    }
}
