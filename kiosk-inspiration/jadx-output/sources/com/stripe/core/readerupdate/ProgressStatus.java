package com.stripe.core.readerupdate;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProgressStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/readerupdate/ProgressStatus;", "", "()V", "Error", "Progress", "Start", "Success", "Lcom/stripe/core/readerupdate/ProgressStatus$Error;", "Lcom/stripe/core/readerupdate/ProgressStatus$Progress;", "Lcom/stripe/core/readerupdate/ProgressStatus$Start;", "Lcom/stripe/core/readerupdate/ProgressStatus$Success;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ProgressStatus {
    public /* synthetic */ ProgressStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ProgressStatus.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/ProgressStatus$Start;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "asset", "Lcom/stripe/core/readerupdate/Update;", "(Lcom/stripe/core/readerupdate/Update;)V", "getAsset", "()Lcom/stripe/core/readerupdate/Update;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Start extends ProgressStatus {
        private final Update asset;

        public static /* synthetic */ Start copy$default(Start start, Update update, int i, Object obj) {
            if ((i & 1) != 0) {
                update = start.asset;
            }
            return start.copy(update);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Update getAsset() {
            return this.asset;
        }

        public final Start copy(Update asset) {
            Intrinsics.checkNotNullParameter(asset, "asset");
            return new Start(asset);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Start) && Intrinsics.areEqual(this.asset, ((Start) other).asset);
        }

        public int hashCode() {
            return this.asset.hashCode();
        }

        public String toString() {
            return "Start(asset=" + this.asset + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Start(Update asset) {
            super(null);
            Intrinsics.checkNotNullParameter(asset, "asset");
            this.asset = asset;
        }

        public final Update getAsset() {
            return this.asset;
        }
    }

    private ProgressStatus() {
    }

    /* JADX INFO: compiled from: ProgressStatus.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/ProgressStatus$Success;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "asset", "Lcom/stripe/core/readerupdate/Update;", "(Lcom/stripe/core/readerupdate/Update;)V", "getAsset", "()Lcom/stripe/core/readerupdate/Update;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Success extends ProgressStatus {
        private final Update asset;

        public static /* synthetic */ Success copy$default(Success success, Update update, int i, Object obj) {
            if ((i & 1) != 0) {
                update = success.asset;
            }
            return success.copy(update);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Update getAsset() {
            return this.asset;
        }

        public final Success copy(Update asset) {
            Intrinsics.checkNotNullParameter(asset, "asset");
            return new Success(asset);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.asset, ((Success) other).asset);
        }

        public int hashCode() {
            return this.asset.hashCode();
        }

        public String toString() {
            return "Success(asset=" + this.asset + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(Update asset) {
            super(null);
            Intrinsics.checkNotNullParameter(asset, "asset");
            this.asset = asset;
        }

        public final Update getAsset() {
            return this.asset;
        }
    }

    /* JADX INFO: compiled from: ProgressStatus.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/core/readerupdate/ProgressStatus$Error;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "asset", "Lcom/stripe/core/readerupdate/Update;", "exception", "", "(Lcom/stripe/core/readerupdate/Update;Ljava/lang/Throwable;)V", "getAsset", "()Lcom/stripe/core/readerupdate/Update;", "getException", "()Ljava/lang/Throwable;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Error extends ProgressStatus {
        private final Update asset;
        private final Throwable exception;

        public static /* synthetic */ Error copy$default(Error error, Update update, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                update = error.asset;
            }
            if ((i & 2) != 0) {
                th = error.exception;
            }
            return error.copy(update, th);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Update getAsset() {
            return this.asset;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Throwable getException() {
            return this.exception;
        }

        public final Error copy(Update asset, Throwable exception) {
            Intrinsics.checkNotNullParameter(asset, "asset");
            Intrinsics.checkNotNullParameter(exception, "exception");
            return new Error(asset, exception);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Error)) {
                return false;
            }
            Error error = (Error) other;
            return Intrinsics.areEqual(this.asset, error.asset) && Intrinsics.areEqual(this.exception, error.exception);
        }

        public int hashCode() {
            return (this.asset.hashCode() * 31) + this.exception.hashCode();
        }

        public String toString() {
            return "Error(asset=" + this.asset + ", exception=" + this.exception + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(Update asset, Throwable exception) {
            super(null);
            Intrinsics.checkNotNullParameter(asset, "asset");
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.asset = asset;
            this.exception = exception;
        }

        public final Update getAsset() {
            return this.asset;
        }

        public final Throwable getException() {
            return this.exception;
        }
    }

    /* JADX INFO: compiled from: ProgressStatus.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/ProgressStatus$Progress;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "value", "", "(F)V", "getValue", "()F", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Progress extends ProgressStatus {
        private final float value;

        public static /* synthetic */ Progress copy$default(Progress progress, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                f = progress.value;
            }
            return progress.copy(f);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final float getValue() {
            return this.value;
        }

        public final Progress copy(float value) {
            return new Progress(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Progress) && Float.compare(this.value, ((Progress) other).value) == 0;
        }

        public int hashCode() {
            return Float.hashCode(this.value);
        }

        public String toString() {
            return "Progress(value=" + this.value + ')';
        }

        public Progress(float f) {
            super(null);
            this.value = f;
        }

        public final float getValue() {
            return this.value;
        }
    }
}
