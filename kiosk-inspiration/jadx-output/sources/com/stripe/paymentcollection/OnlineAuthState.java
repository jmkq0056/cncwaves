package com.stripe.paymentcollection;

import com.stripe.transaction.ChargeAttempt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OnlineAuthState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0007\b\t\n\u000b\fB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0006\r\u000e\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState;", "", "onlineAuthType", "Lcom/stripe/paymentcollection/OnlineAuthType;", "(Lcom/stripe/paymentcollection/OnlineAuthType;)V", "getOnlineAuthType", "()Lcom/stripe/paymentcollection/OnlineAuthType;", "Cancelled", "ConfirmationResponseReceived", "ConfirmationStarted", "ReadyToStartConfirmation", "SecondGenAcResponseReceived", "SecondGenAcStarted", "Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;", "Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class OnlineAuthState {
    private final OnlineAuthType onlineAuthType;

    public /* synthetic */ OnlineAuthState(OnlineAuthType onlineAuthType, DefaultConstructorMarker defaultConstructorMarker) {
        this(onlineAuthType);
    }

    /* JADX INFO: compiled from: OnlineAuthState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;", "Lcom/stripe/paymentcollection/OnlineAuthState;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReadyToStartConfirmation extends OnlineAuthState {
        public static final ReadyToStartConfirmation INSTANCE = new ReadyToStartConfirmation();

        private ReadyToStartConfirmation() {
            super(OnlineAuthType.UNKNOWN, null);
        }
    }

    private OnlineAuthState(OnlineAuthType onlineAuthType) {
        this.onlineAuthType = onlineAuthType;
    }

    public OnlineAuthType getOnlineAuthType() {
        return this.onlineAuthType;
    }

    /* JADX INFO: compiled from: OnlineAuthState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;", "Lcom/stripe/paymentcollection/OnlineAuthState;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConfirmationStarted extends OnlineAuthState {
        public static final ConfirmationStarted INSTANCE = new ConfirmationStarted();

        private ConfirmationStarted() {
            super(OnlineAuthType.CONFIRMATION, null);
        }
    }

    /* JADX INFO: compiled from: OnlineAuthState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;", "Lcom/stripe/paymentcollection/OnlineAuthState;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SecondGenAcStarted extends OnlineAuthState {
        public static final SecondGenAcStarted INSTANCE = new SecondGenAcStarted();

        private SecondGenAcStarted() {
            super(OnlineAuthType.SECOND_GEN_AC, null);
        }
    }

    /* JADX INFO: compiled from: OnlineAuthState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;", "Lcom/stripe/paymentcollection/OnlineAuthState;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Cancelled extends OnlineAuthState {
        public static final Cancelled INSTANCE = new Cancelled();

        private Cancelled() {
            super(OnlineAuthType.UNKNOWN, null);
        }
    }

    /* JADX INFO: compiled from: OnlineAuthState.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u000b\f\rB\u0019\b\u0004\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0001\u0003\u000e\u000f\u0010¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;", "Lcom/stripe/paymentcollection/OnlineAuthState;", "onlineAuthResponse", "", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "getOnlineAuthResponse", "()Ljava/lang/String;", "Failed", "NeedSecondGenAc", "Success", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class ConfirmationResponseReceived extends OnlineAuthState {
        private final ChargeAttempt chargeAttempt;
        private final String onlineAuthResponse;

        public /* synthetic */ ConfirmationResponseReceived(String str, ChargeAttempt chargeAttempt, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, chargeAttempt);
        }

        public String getOnlineAuthResponse() {
            return this.onlineAuthResponse;
        }

        public ChargeAttempt getChargeAttempt() {
            return this.chargeAttempt;
        }

        private ConfirmationResponseReceived(String str, ChargeAttempt chargeAttempt) {
            super(OnlineAuthType.CONFIRMATION, null);
            this.onlineAuthResponse = str;
            this.chargeAttempt = chargeAttempt;
        }

        /* JADX INFO: compiled from: OnlineAuthState.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;", "onlineAuthResponse", "", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "getOnlineAuthResponse", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NeedSecondGenAc extends ConfirmationResponseReceived {
            private final ChargeAttempt chargeAttempt;
            private final String onlineAuthResponse;

            public static /* synthetic */ NeedSecondGenAc copy$default(NeedSecondGenAc needSecondGenAc, String str, ChargeAttempt chargeAttempt, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = needSecondGenAc.onlineAuthResponse;
                }
                if ((i & 2) != 0) {
                    chargeAttempt = needSecondGenAc.chargeAttempt;
                }
                return needSecondGenAc.copy(str, chargeAttempt);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getOnlineAuthResponse() {
                return this.onlineAuthResponse;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            public final NeedSecondGenAc copy(String onlineAuthResponse, ChargeAttempt chargeAttempt) {
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                return new NeedSecondGenAc(onlineAuthResponse, chargeAttempt);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof NeedSecondGenAc)) {
                    return false;
                }
                NeedSecondGenAc needSecondGenAc = (NeedSecondGenAc) other;
                return Intrinsics.areEqual(this.onlineAuthResponse, needSecondGenAc.onlineAuthResponse) && Intrinsics.areEqual(this.chargeAttempt, needSecondGenAc.chargeAttempt);
            }

            public int hashCode() {
                String str = this.onlineAuthResponse;
                return ((str == null ? 0 : str.hashCode()) * 31) + this.chargeAttempt.hashCode();
            }

            public String toString() {
                return "NeedSecondGenAc(onlineAuthResponse=" + this.onlineAuthResponse + ", chargeAttempt=" + this.chargeAttempt + ')';
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.ConfirmationResponseReceived
            public String getOnlineAuthResponse() {
                return this.onlineAuthResponse;
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.ConfirmationResponseReceived
            public ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NeedSecondGenAc(String str, ChargeAttempt chargeAttempt) {
                super(str, chargeAttempt, null);
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                this.onlineAuthResponse = str;
                this.chargeAttempt = chargeAttempt;
            }
        }

        /* JADX INFO: compiled from: OnlineAuthState.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;", "onlineAuthResponse", "", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "getOnlineAuthResponse", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends ConfirmationResponseReceived {
            private final ChargeAttempt chargeAttempt;
            private final String onlineAuthResponse;

            public static /* synthetic */ Success copy$default(Success success, String str, ChargeAttempt chargeAttempt, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = success.onlineAuthResponse;
                }
                if ((i & 2) != 0) {
                    chargeAttempt = success.chargeAttempt;
                }
                return success.copy(str, chargeAttempt);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getOnlineAuthResponse() {
                return this.onlineAuthResponse;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            public final Success copy(String onlineAuthResponse, ChargeAttempt chargeAttempt) {
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                return new Success(onlineAuthResponse, chargeAttempt);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Success)) {
                    return false;
                }
                Success success = (Success) other;
                return Intrinsics.areEqual(this.onlineAuthResponse, success.onlineAuthResponse) && Intrinsics.areEqual(this.chargeAttempt, success.chargeAttempt);
            }

            public int hashCode() {
                String str = this.onlineAuthResponse;
                return ((str == null ? 0 : str.hashCode()) * 31) + this.chargeAttempt.hashCode();
            }

            public String toString() {
                return "Success(onlineAuthResponse=" + this.onlineAuthResponse + ", chargeAttempt=" + this.chargeAttempt + ')';
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.ConfirmationResponseReceived
            public String getOnlineAuthResponse() {
                return this.onlineAuthResponse;
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.ConfirmationResponseReceived
            public ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(String str, ChargeAttempt chargeAttempt) {
                super(str, chargeAttempt, null);
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                this.onlineAuthResponse = str;
                this.chargeAttempt = chargeAttempt;
            }
        }

        /* JADX INFO: compiled from: OnlineAuthState.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;", "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;", "reason", "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;", "onlineAuthResponse", "", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "getOnlineAuthResponse", "()Ljava/lang/String;", "getReason", "()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Failed extends ConfirmationResponseReceived {
            private final ChargeAttempt chargeAttempt;
            private final String onlineAuthResponse;
            private final OnlineAuthFailureReason reason;

            public static /* synthetic */ Failed copy$default(Failed failed, OnlineAuthFailureReason onlineAuthFailureReason, String str, ChargeAttempt chargeAttempt, int i, Object obj) {
                if ((i & 1) != 0) {
                    onlineAuthFailureReason = failed.reason;
                }
                if ((i & 2) != 0) {
                    str = failed.onlineAuthResponse;
                }
                if ((i & 4) != 0) {
                    chargeAttempt = failed.chargeAttempt;
                }
                return failed.copy(onlineAuthFailureReason, str, chargeAttempt);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final OnlineAuthFailureReason getReason() {
                return this.reason;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getOnlineAuthResponse() {
                return this.onlineAuthResponse;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            public final Failed copy(OnlineAuthFailureReason reason, String onlineAuthResponse, ChargeAttempt chargeAttempt) {
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                return new Failed(reason, onlineAuthResponse, chargeAttempt);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Failed)) {
                    return false;
                }
                Failed failed = (Failed) other;
                return this.reason == failed.reason && Intrinsics.areEqual(this.onlineAuthResponse, failed.onlineAuthResponse) && Intrinsics.areEqual(this.chargeAttempt, failed.chargeAttempt);
            }

            public int hashCode() {
                int iHashCode = this.reason.hashCode() * 31;
                String str = this.onlineAuthResponse;
                return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.chargeAttempt.hashCode();
            }

            public String toString() {
                return "Failed(reason=" + this.reason + ", onlineAuthResponse=" + this.onlineAuthResponse + ", chargeAttempt=" + this.chargeAttempt + ')';
            }

            public final OnlineAuthFailureReason getReason() {
                return this.reason;
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.ConfirmationResponseReceived
            public String getOnlineAuthResponse() {
                return this.onlineAuthResponse;
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.ConfirmationResponseReceived
            public ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(OnlineAuthFailureReason reason, String str, ChargeAttempt chargeAttempt) {
                super(str, chargeAttempt, null);
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                this.reason = reason;
                this.onlineAuthResponse = str;
                this.chargeAttempt = chargeAttempt;
            }
        }
    }

    /* JADX INFO: compiled from: OnlineAuthState.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;", "Lcom/stripe/paymentcollection/OnlineAuthState;", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "Failed", "Success", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class SecondGenAcResponseReceived extends OnlineAuthState {
        private final ChargeAttempt chargeAttempt;

        public /* synthetic */ SecondGenAcResponseReceived(ChargeAttempt chargeAttempt, DefaultConstructorMarker defaultConstructorMarker) {
            this(chargeAttempt);
        }

        public ChargeAttempt getChargeAttempt() {
            return this.chargeAttempt;
        }

        private SecondGenAcResponseReceived(ChargeAttempt chargeAttempt) {
            super(OnlineAuthType.SECOND_GEN_AC, null);
            this.chargeAttempt = chargeAttempt;
        }

        /* JADX INFO: compiled from: OnlineAuthState.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends SecondGenAcResponseReceived {
            private final ChargeAttempt chargeAttempt;

            public static /* synthetic */ Success copy$default(Success success, ChargeAttempt chargeAttempt, int i, Object obj) {
                if ((i & 1) != 0) {
                    chargeAttempt = success.chargeAttempt;
                }
                return success.copy(chargeAttempt);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            public final Success copy(ChargeAttempt chargeAttempt) {
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                return new Success(chargeAttempt);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.chargeAttempt, ((Success) other).chargeAttempt);
            }

            public int hashCode() {
                return this.chargeAttempt.hashCode();
            }

            public String toString() {
                return "Success(chargeAttempt=" + this.chargeAttempt + ')';
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.SecondGenAcResponseReceived
            public ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(ChargeAttempt chargeAttempt) {
                super(chargeAttempt, null);
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                this.chargeAttempt = chargeAttempt;
            }
        }

        /* JADX INFO: compiled from: OnlineAuthState.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;", "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;", "reason", "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "getReason", "()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Failed extends SecondGenAcResponseReceived {
            private final ChargeAttempt chargeAttempt;
            private final OnlineAuthFailureReason reason;

            public static /* synthetic */ Failed copy$default(Failed failed, OnlineAuthFailureReason onlineAuthFailureReason, ChargeAttempt chargeAttempt, int i, Object obj) {
                if ((i & 1) != 0) {
                    onlineAuthFailureReason = failed.reason;
                }
                if ((i & 2) != 0) {
                    chargeAttempt = failed.chargeAttempt;
                }
                return failed.copy(onlineAuthFailureReason, chargeAttempt);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final OnlineAuthFailureReason getReason() {
                return this.reason;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            public final Failed copy(OnlineAuthFailureReason reason, ChargeAttempt chargeAttempt) {
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                return new Failed(reason, chargeAttempt);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Failed)) {
                    return false;
                }
                Failed failed = (Failed) other;
                return this.reason == failed.reason && Intrinsics.areEqual(this.chargeAttempt, failed.chargeAttempt);
            }

            public int hashCode() {
                return (this.reason.hashCode() * 31) + this.chargeAttempt.hashCode();
            }

            public String toString() {
                return "Failed(reason=" + this.reason + ", chargeAttempt=" + this.chargeAttempt + ')';
            }

            public final OnlineAuthFailureReason getReason() {
                return this.reason;
            }

            @Override // com.stripe.paymentcollection.OnlineAuthState.SecondGenAcResponseReceived
            public ChargeAttempt getChargeAttempt() {
                return this.chargeAttempt;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(OnlineAuthFailureReason reason, ChargeAttempt chargeAttempt) {
                super(chargeAttempt, null);
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
                this.reason = reason;
                this.chargeAttempt = chargeAttempt;
            }
        }
    }
}
