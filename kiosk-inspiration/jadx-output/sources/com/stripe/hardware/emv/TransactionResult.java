package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/stripe/hardware/emv/TransactionResult;", "", "result", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "tlvBlob", "", "(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V", "getResult", "()Lcom/stripe/hardware/emv/TransactionResult$Result;", "getTlvBlob$annotations", "()V", "getTlvBlob", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Result", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TransactionResult {
    private final Result result;
    private final String tlvBlob;

    public static /* synthetic */ TransactionResult copy$default(TransactionResult transactionResult, Result result, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            result = transactionResult.result;
        }
        if ((i & 2) != 0) {
            str = transactionResult.tlvBlob;
        }
        return transactionResult.copy(result, str);
    }

    public static /* synthetic */ void getTlvBlob$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Result getResult() {
        return this.result;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTlvBlob() {
        return this.tlvBlob;
    }

    public final TransactionResult copy(Result result, String tlvBlob) {
        Intrinsics.checkNotNullParameter(result, "result");
        return new TransactionResult(result, tlvBlob);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionResult)) {
            return false;
        }
        TransactionResult transactionResult = (TransactionResult) other;
        return this.result == transactionResult.result && Intrinsics.areEqual(this.tlvBlob, transactionResult.tlvBlob);
    }

    public int hashCode() {
        int iHashCode = this.result.hashCode() * 31;
        String str = this.tlvBlob;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "TransactionResult(result=" + this.result + ", tlvBlob=██)";
    }

    public TransactionResult(Result result, String str) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
        this.tlvBlob = str;
    }

    public final Result getResult() {
        return this.result;
    }

    public final String getTlvBlob() {
        return this.tlvBlob;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TransactionResult.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/hardware/emv/TransactionResult$Result;", "", "(Ljava/lang/String;I)V", "APPROVED", "CONTACTLESS_LIMIT_EXCEEDED", "DECLINED", "TERMINATED", "TIMEOUT", "CANCELED", "EMPTY_CANDIDATE_LIST", "CARD_BLOCKED", "DEVICE_FAILURE", "ICC_CARD_REMOVED", "CHECK_MOBILE_DEVICE", "INSERT_OR_SWIPE_REQUIRED", "MULTIPLE_CARDS_DETECTED", "MOBILE_WALLET_TOO_MANY_TAPS", "CARD_STILL_INSERTED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Result {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Result[] $VALUES;
        public static final Result APPROVED = new Result("APPROVED", 0);
        public static final Result CONTACTLESS_LIMIT_EXCEEDED = new Result("CONTACTLESS_LIMIT_EXCEEDED", 1);
        public static final Result DECLINED = new Result("DECLINED", 2);
        public static final Result TERMINATED = new Result("TERMINATED", 3);
        public static final Result TIMEOUT = new Result("TIMEOUT", 4);
        public static final Result CANCELED = new Result("CANCELED", 5);
        public static final Result EMPTY_CANDIDATE_LIST = new Result("EMPTY_CANDIDATE_LIST", 6);
        public static final Result CARD_BLOCKED = new Result("CARD_BLOCKED", 7);
        public static final Result DEVICE_FAILURE = new Result("DEVICE_FAILURE", 8);
        public static final Result ICC_CARD_REMOVED = new Result("ICC_CARD_REMOVED", 9);
        public static final Result CHECK_MOBILE_DEVICE = new Result("CHECK_MOBILE_DEVICE", 10);
        public static final Result INSERT_OR_SWIPE_REQUIRED = new Result("INSERT_OR_SWIPE_REQUIRED", 11);
        public static final Result MULTIPLE_CARDS_DETECTED = new Result("MULTIPLE_CARDS_DETECTED", 12);
        public static final Result MOBILE_WALLET_TOO_MANY_TAPS = new Result("MOBILE_WALLET_TOO_MANY_TAPS", 13);
        public static final Result CARD_STILL_INSERTED = new Result("CARD_STILL_INSERTED", 14);

        private static final /* synthetic */ Result[] $values() {
            return new Result[]{APPROVED, CONTACTLESS_LIMIT_EXCEEDED, DECLINED, TERMINATED, TIMEOUT, CANCELED, EMPTY_CANDIDATE_LIST, CARD_BLOCKED, DEVICE_FAILURE, ICC_CARD_REMOVED, CHECK_MOBILE_DEVICE, INSERT_OR_SWIPE_REQUIRED, MULTIPLE_CARDS_DETECTED, MOBILE_WALLET_TOO_MANY_TAPS, CARD_STILL_INSERTED};
        }

        public static EnumEntries<Result> getEntries() {
            return $ENTRIES;
        }

        public static Result valueOf(String str) {
            return (Result) Enum.valueOf(Result.class, str);
        }

        public static Result[] values() {
            return (Result[]) $VALUES.clone();
        }

        private Result(String str, int i) {
        }

        static {
            Result[] resultArr$values = $values();
            $VALUES = resultArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(resultArr$values);
        }
    }
}
