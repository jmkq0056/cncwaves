package com.stripe.jvmcore.batchdispatcher;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: BatchDispatcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\bJ\u001c\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H¦@¢\u0006\u0002\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "T", "", "dispatch", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "batch", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Result", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Dispatcher<T> {
    Object dispatch(List<? extends T> list, Continuation<? super Result> continuation);

    /* JADX INFO: compiled from: BatchDispatcher.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "", "()V", "Drop", "Retry", "Success", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Success;", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class Result {
        public /* synthetic */ Result(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Result() {
        }

        /* JADX INFO: compiled from: BatchDispatcher.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Success;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends Result {
            public static final Success INSTANCE = new Success();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Success)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1088183638;
            }

            public String toString() {
                return "Success";
            }

            private Success() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: BatchDispatcher.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Retry extends Result {
            public static final Retry INSTANCE = new Retry();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Retry)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1432681713;
            }

            public String toString() {
                return "Retry";
            }

            private Retry() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: BatchDispatcher.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Drop extends Result {
            public static final Drop INSTANCE = new Drop();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Drop)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1061758376;
            }

            public String toString() {
                return "Drop";
            }

            private Drop() {
                super(null);
            }
        }
    }
}
