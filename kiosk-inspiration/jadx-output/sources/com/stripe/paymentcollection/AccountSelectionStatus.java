package com.stripe.paymentcollection;

import com.stripe.hardware.emv.AccountType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/stripe/paymentcollection/AccountSelectionStatus;", "", "()V", "AccountSelected", "NotRequested", "Requested", "Lcom/stripe/paymentcollection/AccountSelectionStatus$AccountSelected;", "Lcom/stripe/paymentcollection/AccountSelectionStatus$NotRequested;", "Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AccountSelectionStatus {
    public /* synthetic */ AccountSelectionStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AccountSelectionStatus() {
    }

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/AccountSelectionStatus$NotRequested;", "Lcom/stripe/paymentcollection/AccountSelectionStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotRequested extends AccountSelectionStatus {
        public static final NotRequested INSTANCE = new NotRequested();

        private NotRequested() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;", "Lcom/stripe/paymentcollection/AccountSelectionStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Requested extends AccountSelectionStatus {
        public static final Requested INSTANCE = new Requested();

        private Requested() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/AccountSelectionStatus$AccountSelected;", "Lcom/stripe/paymentcollection/AccountSelectionStatus;", "selectedAccount", "Lcom/stripe/hardware/emv/AccountType;", "(Lcom/stripe/hardware/emv/AccountType;)V", "getSelectedAccount", "()Lcom/stripe/hardware/emv/AccountType;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class AccountSelected extends AccountSelectionStatus {
        private final AccountType selectedAccount;

        public static /* synthetic */ AccountSelected copy$default(AccountSelected accountSelected, AccountType accountType, int i, Object obj) {
            if ((i & 1) != 0) {
                accountType = accountSelected.selectedAccount;
            }
            return accountSelected.copy(accountType);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AccountType getSelectedAccount() {
            return this.selectedAccount;
        }

        public final AccountSelected copy(AccountType selectedAccount) {
            return new AccountSelected(selectedAccount);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AccountSelected) && this.selectedAccount == ((AccountSelected) other).selectedAccount;
        }

        public int hashCode() {
            AccountType accountType = this.selectedAccount;
            if (accountType == null) {
                return 0;
            }
            return accountType.hashCode();
        }

        public String toString() {
            return "AccountSelected(selectedAccount=" + this.selectedAccount + ')';
        }

        public AccountSelected(AccountType accountType) {
            super(null);
            this.selectedAccount = accountType;
        }

        public final AccountType getSelectedAccount() {
            return this.selectedAccount;
        }
    }
}
