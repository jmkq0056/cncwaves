package com.stripe.discoverreaders;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiscoverOperationState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/discoverreaders/DiscoverOperationState;", "", "()V", "Idle", "Ongoing", "Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;", "Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class DiscoverOperationState {
    public /* synthetic */ DiscoverOperationState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private DiscoverOperationState() {
    }

    /* JADX INFO: compiled from: DiscoverOperationState.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/discoverreaders/DiscoverOperationState$Idle;", "Lcom/stripe/discoverreaders/DiscoverOperationState;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Idle extends DiscoverOperationState {
        public static final Idle INSTANCE = new Idle();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Idle)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1623347508;
        }

        public String toString() {
            return "Idle";
        }

        private Idle() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: DiscoverOperationState.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/discoverreaders/DiscoverOperationState$Ongoing;", "Lcom/stripe/discoverreaders/DiscoverOperationState;", "discoverOperation", "Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;", "(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V", "getDiscoverOperation", "()Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Ongoing extends DiscoverOperationState {
        private final CancelableDiscoverReadersOperation discoverOperation;

        public static /* synthetic */ Ongoing copy$default(Ongoing ongoing, CancelableDiscoverReadersOperation cancelableDiscoverReadersOperation, int i, Object obj) {
            if ((i & 1) != 0) {
                cancelableDiscoverReadersOperation = ongoing.discoverOperation;
            }
            return ongoing.copy(cancelableDiscoverReadersOperation);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CancelableDiscoverReadersOperation getDiscoverOperation() {
            return this.discoverOperation;
        }

        public final Ongoing copy(CancelableDiscoverReadersOperation discoverOperation) {
            Intrinsics.checkNotNullParameter(discoverOperation, "discoverOperation");
            return new Ongoing(discoverOperation);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Ongoing) && Intrinsics.areEqual(this.discoverOperation, ((Ongoing) other).discoverOperation);
        }

        public int hashCode() {
            return this.discoverOperation.hashCode();
        }

        public String toString() {
            return "Ongoing(discoverOperation=" + this.discoverOperation + ')';
        }

        public final CancelableDiscoverReadersOperation getDiscoverOperation() {
            return this.discoverOperation;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ongoing(CancelableDiscoverReadersOperation discoverOperation) {
            super(null);
            Intrinsics.checkNotNullParameter(discoverOperation, "discoverOperation");
            this.discoverOperation = discoverOperation;
        }
    }
}
