package com.stripe.paymentcollection.manualentry;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryCollectionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "", "()V", "Failure", "Success", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ManualEntryCollectionResult {
    public /* synthetic */ ManualEntryCollectionResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ManualEntryCollectionResult.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "reason", "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;", "(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V", "getReason", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Failure extends ManualEntryCollectionResult {
        private final ManualEntryFailureReason reason;

        public static /* synthetic */ Failure copy$default(Failure failure, ManualEntryFailureReason manualEntryFailureReason, int i, Object obj) {
            if ((i & 1) != 0) {
                manualEntryFailureReason = failure.reason;
            }
            return failure.copy(manualEntryFailureReason);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ManualEntryFailureReason getReason() {
            return this.reason;
        }

        public final Failure copy(ManualEntryFailureReason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new Failure(reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Failure) && this.reason == ((Failure) other).reason;
        }

        public int hashCode() {
            return this.reason.hashCode();
        }

        public String toString() {
            return "Failure(reason=" + this.reason + ')';
        }

        public final ManualEntryFailureReason getReason() {
            return this.reason;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(ManualEntryFailureReason reason) {
            super(null);
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
        }
    }

    private ManualEntryCollectionResult() {
    }

    /* JADX INFO: compiled from: ManualEntryCollectionResult.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;", "(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;)V", "getData", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Success extends ManualEntryCollectionResult {
        private final ManualEntryResultModel data;

        public static /* synthetic */ Success copy$default(Success success, ManualEntryResultModel manualEntryResultModel, int i, Object obj) {
            if ((i & 1) != 0) {
                manualEntryResultModel = success.data;
            }
            return success.copy(manualEntryResultModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ManualEntryResultModel getData() {
            return this.data;
        }

        public final Success copy(ManualEntryResultModel data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new Success(data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.data, ((Success) other).data);
        }

        public int hashCode() {
            return this.data.hashCode();
        }

        public String toString() {
            return "Success(data=" + this.data + ')';
        }

        public final ManualEntryResultModel getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(ManualEntryResultModel data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }
    }
}
