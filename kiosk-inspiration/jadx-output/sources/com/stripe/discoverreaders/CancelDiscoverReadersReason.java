package com.stripe.discoverreaders;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: CancelDiscoverReadersReason.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "", "()V", "ConnectReaderInProgress", "DiscoveryCompleted", "MerchantRequestedCancellation", "NewDiscoverReadersQueued", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class CancelDiscoverReadersReason {
    public /* synthetic */ CancelDiscoverReadersReason(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CancelDiscoverReadersReason() {
    }

    /* JADX INFO: compiled from: CancelDiscoverReadersReason.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class MerchantRequestedCancellation extends CancelDiscoverReadersReason {
        public static final MerchantRequestedCancellation INSTANCE = new MerchantRequestedCancellation();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MerchantRequestedCancellation)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -136201935;
        }

        public String toString() {
            return "MerchantRequestedCancellation";
        }

        private MerchantRequestedCancellation() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: CancelDiscoverReadersReason.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class DiscoveryCompleted extends CancelDiscoverReadersReason {
        public static final DiscoveryCompleted INSTANCE = new DiscoveryCompleted();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DiscoveryCompleted)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1479756557;
        }

        public String toString() {
            return "DiscoveryCompleted";
        }

        private DiscoveryCompleted() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: CancelDiscoverReadersReason.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ConnectReaderInProgress extends CancelDiscoverReadersReason {
        public static final ConnectReaderInProgress INSTANCE = new ConnectReaderInProgress();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ConnectReaderInProgress)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1252994777;
        }

        public String toString() {
            return "ConnectReaderInProgress";
        }

        private ConnectReaderInProgress() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: CancelDiscoverReadersReason.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class NewDiscoverReadersQueued extends CancelDiscoverReadersReason {
        public static final NewDiscoverReadersQueued INSTANCE = new NewDiscoverReadersQueued();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NewDiscoverReadersQueued)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 36238066;
        }

        public String toString() {
            return "NewDiscoverReadersQueued";
        }

        private NewDiscoverReadersQueued() {
            super(null);
        }
    }
}
