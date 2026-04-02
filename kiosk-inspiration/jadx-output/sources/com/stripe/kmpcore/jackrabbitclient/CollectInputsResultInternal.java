package com.stripe.kmpcore.jackrabbitclient;

import com.stripe.proto.api.sdk.QueryCollectInputsResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.HttpHeaders;

/* JADX INFO: compiled from: CollectInputsResultInternal.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;", "", "Failure", "Success", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CollectInputsResultInternal {

    /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;", "collectInputsSuccessfullyCompleted", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;)V", "getCollectInputsSuccessfullyCompleted", "()Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Success implements CollectInputsResultInternal {
        private final QueryCollectInputsResponse.SuccessfullyCompleted collectInputsSuccessfullyCompleted;

        public static /* synthetic */ Success copy$default(Success success, QueryCollectInputsResponse.SuccessfullyCompleted successfullyCompleted, int i, Object obj) {
            if ((i & 1) != 0) {
                successfullyCompleted = success.collectInputsSuccessfullyCompleted;
            }
            return success.copy(successfullyCompleted);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final QueryCollectInputsResponse.SuccessfullyCompleted getCollectInputsSuccessfullyCompleted() {
            return this.collectInputsSuccessfullyCompleted;
        }

        public final Success copy(QueryCollectInputsResponse.SuccessfullyCompleted collectInputsSuccessfullyCompleted) {
            Intrinsics.checkNotNullParameter(collectInputsSuccessfullyCompleted, "collectInputsSuccessfullyCompleted");
            return new Success(collectInputsSuccessfullyCompleted);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.collectInputsSuccessfullyCompleted, ((Success) other).collectInputsSuccessfullyCompleted);
        }

        public int hashCode() {
            return this.collectInputsSuccessfullyCompleted.hashCode();
        }

        public String toString() {
            return "Success(collectInputsSuccessfullyCompleted=" + this.collectInputsSuccessfullyCompleted + ')';
        }

        public Success(QueryCollectInputsResponse.SuccessfullyCompleted collectInputsSuccessfullyCompleted) {
            Intrinsics.checkNotNullParameter(collectInputsSuccessfullyCompleted, "collectInputsSuccessfullyCompleted");
            this.collectInputsSuccessfullyCompleted = collectInputsSuccessfullyCompleted;
        }

        public final QueryCollectInputsResponse.SuccessfullyCompleted getCollectInputsSuccessfullyCompleted() {
            return this.collectInputsSuccessfullyCompleted;
        }
    }

    /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0006\u0007\b\t\n\u000bR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\u0006\f\r\u000e\u000f\u0010\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;", "errorMessage", "", "getErrorMessage", "()Ljava/lang/String;", "ApplicationError", "CommunicationError", "InvalidParameter", "MerchantCancelled", HttpHeaders.TIMEOUT, "Unsupported", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Failure extends CollectInputsResultInternal {
        String getErrorMessage();

        /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "errorMessage", "", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Timeout implements Failure {
            private final String errorMessage;

            public static /* synthetic */ Timeout copy$default(Timeout timeout, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = timeout.errorMessage;
                }
                return timeout.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getErrorMessage() {
                return this.errorMessage;
            }

            public final Timeout copy(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new Timeout(errorMessage);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Timeout) && Intrinsics.areEqual(this.errorMessage, ((Timeout) other).errorMessage);
            }

            public int hashCode() {
                return this.errorMessage.hashCode();
            }

            public String toString() {
                return "Timeout(errorMessage=" + this.errorMessage + ')';
            }

            public Timeout(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.errorMessage = errorMessage;
            }

            @Override // com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal.Failure
            public String getErrorMessage() {
                return this.errorMessage;
            }
        }

        /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "errorMessage", "", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class MerchantCancelled implements Failure {
            private final String errorMessage;

            public static /* synthetic */ MerchantCancelled copy$default(MerchantCancelled merchantCancelled, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = merchantCancelled.errorMessage;
                }
                return merchantCancelled.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getErrorMessage() {
                return this.errorMessage;
            }

            public final MerchantCancelled copy(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new MerchantCancelled(errorMessage);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof MerchantCancelled) && Intrinsics.areEqual(this.errorMessage, ((MerchantCancelled) other).errorMessage);
            }

            public int hashCode() {
                return this.errorMessage.hashCode();
            }

            public String toString() {
                return "MerchantCancelled(errorMessage=" + this.errorMessage + ')';
            }

            public MerchantCancelled(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.errorMessage = errorMessage;
            }

            @Override // com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal.Failure
            public String getErrorMessage() {
                return this.errorMessage;
            }
        }

        /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "errorMessage", "", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ApplicationError implements Failure {
            private final String errorMessage;

            public static /* synthetic */ ApplicationError copy$default(ApplicationError applicationError, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = applicationError.errorMessage;
                }
                return applicationError.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getErrorMessage() {
                return this.errorMessage;
            }

            public final ApplicationError copy(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new ApplicationError(errorMessage);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ApplicationError) && Intrinsics.areEqual(this.errorMessage, ((ApplicationError) other).errorMessage);
            }

            public int hashCode() {
                return this.errorMessage.hashCode();
            }

            public String toString() {
                return "ApplicationError(errorMessage=" + this.errorMessage + ')';
            }

            public ApplicationError(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.errorMessage = errorMessage;
            }

            @Override // com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal.Failure
            public String getErrorMessage() {
                return this.errorMessage;
            }
        }

        /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "errorMessage", "", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidParameter implements Failure {
            private final String errorMessage;

            public static /* synthetic */ InvalidParameter copy$default(InvalidParameter invalidParameter, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = invalidParameter.errorMessage;
                }
                return invalidParameter.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getErrorMessage() {
                return this.errorMessage;
            }

            public final InvalidParameter copy(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new InvalidParameter(errorMessage);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof InvalidParameter) && Intrinsics.areEqual(this.errorMessage, ((InvalidParameter) other).errorMessage);
            }

            public int hashCode() {
                return this.errorMessage.hashCode();
            }

            public String toString() {
                return "InvalidParameter(errorMessage=" + this.errorMessage + ')';
            }

            public InvalidParameter(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.errorMessage = errorMessage;
            }

            @Override // com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal.Failure
            public String getErrorMessage() {
                return this.errorMessage;
            }
        }

        /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "errorMessage", "", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Unsupported implements Failure {
            private final String errorMessage;

            public static /* synthetic */ Unsupported copy$default(Unsupported unsupported, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = unsupported.errorMessage;
                }
                return unsupported.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getErrorMessage() {
                return this.errorMessage;
            }

            public final Unsupported copy(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new Unsupported(errorMessage);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Unsupported) && Intrinsics.areEqual(this.errorMessage, ((Unsupported) other).errorMessage);
            }

            public int hashCode() {
                return this.errorMessage.hashCode();
            }

            public String toString() {
                return "Unsupported(errorMessage=" + this.errorMessage + ')';
            }

            public Unsupported(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.errorMessage = errorMessage;
            }

            @Override // com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal.Failure
            public String getErrorMessage() {
                return this.errorMessage;
            }
        }

        /* JADX INFO: compiled from: CollectInputsResultInternal.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;", "errorMessage", "", "terminalErrorCode", "(Ljava/lang/String;Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "getTerminalErrorCode", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class CommunicationError implements Failure {
            private final String errorMessage;
            private final String terminalErrorCode;

            public static /* synthetic */ CommunicationError copy$default(CommunicationError communicationError, String str, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = communicationError.errorMessage;
                }
                if ((i & 2) != 0) {
                    str2 = communicationError.terminalErrorCode;
                }
                return communicationError.copy(str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getErrorMessage() {
                return this.errorMessage;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getTerminalErrorCode() {
                return this.terminalErrorCode;
            }

            public final CommunicationError copy(String errorMessage, String terminalErrorCode) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                Intrinsics.checkNotNullParameter(terminalErrorCode, "terminalErrorCode");
                return new CommunicationError(errorMessage, terminalErrorCode);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof CommunicationError)) {
                    return false;
                }
                CommunicationError communicationError = (CommunicationError) other;
                return Intrinsics.areEqual(this.errorMessage, communicationError.errorMessage) && Intrinsics.areEqual(this.terminalErrorCode, communicationError.terminalErrorCode);
            }

            public int hashCode() {
                return (this.errorMessage.hashCode() * 31) + this.terminalErrorCode.hashCode();
            }

            public String toString() {
                return "CommunicationError(errorMessage=" + this.errorMessage + ", terminalErrorCode=" + this.terminalErrorCode + ')';
            }

            public CommunicationError(String errorMessage, String terminalErrorCode) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                Intrinsics.checkNotNullParameter(terminalErrorCode, "terminalErrorCode");
                this.errorMessage = errorMessage;
                this.terminalErrorCode = terminalErrorCode;
            }

            @Override // com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal.Failure
            public String getErrorMessage() {
                return this.errorMessage;
            }

            public final String getTerminalErrorCode() {
                return this.terminalErrorCode;
            }
        }
    }
}
