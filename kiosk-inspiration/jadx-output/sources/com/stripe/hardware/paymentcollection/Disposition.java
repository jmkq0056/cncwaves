package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Disposition.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/hardware/paymentcollection/Disposition;", "ResultType", "", "()V", "Canceled", "Completed", "Lcom/stripe/hardware/paymentcollection/Disposition$Canceled;", "Lcom/stripe/hardware/paymentcollection/Disposition$Completed;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Disposition<ResultType> {
    public /* synthetic */ Disposition(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private Disposition() {
    }

    /* JADX INFO: compiled from: Disposition.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0012B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0019\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/stripe/hardware/paymentcollection/Disposition$Canceled;", "ResultType", "Lcom/stripe/hardware/paymentcollection/Disposition;", "reason", "Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;", "(Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;)V", "getReason", "()Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Reason", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Canceled<ResultType> extends Disposition<ResultType> {
        private final Reason reason;

        public static /* synthetic */ Canceled copy$default(Canceled canceled, Reason reason, int i, Object obj) {
            if ((i & 1) != 0) {
                reason = canceled.reason;
            }
            return canceled.copy(reason);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Reason getReason() {
            return this.reason;
        }

        public final Canceled<ResultType> copy(Reason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new Canceled<>(reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Canceled) && this.reason == ((Canceled) other).reason;
        }

        public int hashCode() {
            return this.reason.hashCode();
        }

        public String toString() {
            return "Canceled(reason=" + this.reason + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Canceled(Reason reason) {
            super(null);
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
        }

        public final Reason getReason() {
            return this.reason;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: Disposition.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;", "", "(Ljava/lang/String;I)V", "USER_CANCELED", "TIMED_OUT", "RESET", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Reason {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Reason[] $VALUES;
            public static final Reason USER_CANCELED = new Reason("USER_CANCELED", 0);
            public static final Reason TIMED_OUT = new Reason("TIMED_OUT", 1);
            public static final Reason RESET = new Reason("RESET", 2);

            private static final /* synthetic */ Reason[] $values() {
                return new Reason[]{USER_CANCELED, TIMED_OUT, RESET};
            }

            public static EnumEntries<Reason> getEntries() {
                return $ENTRIES;
            }

            public static Reason valueOf(String str) {
                return (Reason) Enum.valueOf(Reason.class, str);
            }

            public static Reason[] values() {
                return (Reason[]) $VALUES.clone();
            }

            private Reason(String str, int i) {
            }

            static {
                Reason[] reasonArr$values = $values();
                $VALUES = reasonArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(reasonArr$values);
            }
        }
    }

    /* JADX INFO: compiled from: Disposition.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u0001HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/stripe/hardware/paymentcollection/Disposition$Completed;", "ResultType", "Lcom/stripe/hardware/paymentcollection/Disposition;", "result", "(Ljava/lang/Object;)V", "getResult", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/stripe/hardware/paymentcollection/Disposition$Completed;", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Completed<ResultType> extends Disposition<ResultType> {
        private final ResultType result;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Completed copy$default(Completed completed, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = completed.result;
            }
            return completed.copy(obj);
        }

        public final ResultType component1() {
            return this.result;
        }

        public final Completed<ResultType> copy(ResultType result) {
            return new Completed<>(result);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Completed) && Intrinsics.areEqual(this.result, ((Completed) other).result);
        }

        public int hashCode() {
            ResultType resulttype = this.result;
            if (resulttype == null) {
                return 0;
            }
            return resulttype.hashCode();
        }

        public String toString() {
            return "Completed(result=" + this.result + ')';
        }

        public Completed(ResultType resulttype) {
            super(null);
            this.result = resulttype;
        }

        public final ResultType getResult() {
            return this.result;
        }
    }
}
