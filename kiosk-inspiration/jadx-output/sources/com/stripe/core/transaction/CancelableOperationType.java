package com.stripe.core.transaction;

import kotlin.Metadata;

/* JADX INFO: compiled from: CancelableOperationType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001aÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType;", "", "CollectData", "CollectInputs", "CollectPaymentMethod", "CollectRefundPaymentMethod", "CollectSetupIntentPaymentMethod", "ConfirmPaymentIntent", "ConfirmRefund", "ConfirmSetupIntent", "HandlePaymentIntentNextActions", "ReadReusableCard", "SetReaderDisplay", "Unknown", "Lcom/stripe/core/transaction/CancelableOperationType$CollectData;", "Lcom/stripe/core/transaction/CancelableOperationType$CollectInputs;", "Lcom/stripe/core/transaction/CancelableOperationType$CollectPaymentMethod;", "Lcom/stripe/core/transaction/CancelableOperationType$CollectRefundPaymentMethod;", "Lcom/stripe/core/transaction/CancelableOperationType$CollectSetupIntentPaymentMethod;", "Lcom/stripe/core/transaction/CancelableOperationType$ConfirmPaymentIntent;", "Lcom/stripe/core/transaction/CancelableOperationType$ConfirmRefund;", "Lcom/stripe/core/transaction/CancelableOperationType$ConfirmSetupIntent;", "Lcom/stripe/core/transaction/CancelableOperationType$HandlePaymentIntentNextActions;", "Lcom/stripe/core/transaction/CancelableOperationType$ReadReusableCard;", "Lcom/stripe/core/transaction/CancelableOperationType$SetReaderDisplay;", "Lcom/stripe/core/transaction/CancelableOperationType$Unknown;", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CancelableOperationType {

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$Unknown;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Unknown implements CancelableOperationType {
        public static final Unknown INSTANCE = new Unknown();

        private Unknown() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$CollectPaymentMethod;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CollectPaymentMethod implements CancelableOperationType {
        public static final CollectPaymentMethod INSTANCE = new CollectPaymentMethod();

        private CollectPaymentMethod() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$CollectRefundPaymentMethod;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CollectRefundPaymentMethod implements CancelableOperationType {
        public static final CollectRefundPaymentMethod INSTANCE = new CollectRefundPaymentMethod();

        private CollectRefundPaymentMethod() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$CollectSetupIntentPaymentMethod;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CollectSetupIntentPaymentMethod implements CancelableOperationType {
        public static final CollectSetupIntentPaymentMethod INSTANCE = new CollectSetupIntentPaymentMethod();

        private CollectSetupIntentPaymentMethod() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$ReadReusableCard;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReadReusableCard implements CancelableOperationType {
        public static final ReadReusableCard INSTANCE = new ReadReusableCard();

        private ReadReusableCard() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$CollectInputs;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CollectInputs implements CancelableOperationType {
        public static final CollectInputs INSTANCE = new CollectInputs();

        private CollectInputs() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$SetReaderDisplay;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SetReaderDisplay implements CancelableOperationType {
        public static final SetReaderDisplay INSTANCE = new SetReaderDisplay();

        private SetReaderDisplay() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$CollectData;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CollectData implements CancelableOperationType {
        public static final CollectData INSTANCE = new CollectData();

        private CollectData() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$ConfirmPaymentIntent;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConfirmPaymentIntent implements CancelableOperationType {
        public static final ConfirmPaymentIntent INSTANCE = new ConfirmPaymentIntent();

        private ConfirmPaymentIntent() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$ConfirmSetupIntent;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConfirmSetupIntent implements CancelableOperationType {
        public static final ConfirmSetupIntent INSTANCE = new ConfirmSetupIntent();

        private ConfirmSetupIntent() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$ConfirmRefund;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConfirmRefund implements CancelableOperationType {
        public static final ConfirmRefund INSTANCE = new ConfirmRefund();

        private ConfirmRefund() {
        }
    }

    /* JADX INFO: compiled from: CancelableOperationType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationType$HandlePaymentIntentNextActions;", "Lcom/stripe/core/transaction/CancelableOperationType;", "()V", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HandlePaymentIntentNextActions implements CancelableOperationType {
        public static final HandlePaymentIntentNextActions INSTANCE = new HandlePaymentIntentNextActions();

        private HandlePaymentIntentNextActions() {
        }
    }
}
