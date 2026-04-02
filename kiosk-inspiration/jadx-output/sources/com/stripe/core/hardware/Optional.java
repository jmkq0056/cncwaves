package com.stripe.core.hardware;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Optional.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000 \u0006*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0003\u0005\u0006\u0007J\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0004\u0082\u0001\u0002\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/Optional;", "V", "", "getOrNull", "()Ljava/lang/Object;", "Absent", "Companion", "Present", "Lcom/stripe/core/hardware/Optional$Absent;", "Lcom/stripe/core/hardware/Optional$Present;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Optional<V> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: Optional.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\b\u0000¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/core/hardware/Optional$Absent;", "V", "Lcom/stripe/core/hardware/Optional;", "()V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Absent<V> implements Optional<V> {
    }

    /* JADX INFO: compiled from: Optional.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u0001HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/stripe/core/hardware/Optional$Present;", "V", "Lcom/stripe/core/hardware/Optional;", "value", "(Ljava/lang/Object;)V", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional$Present;", "equals", "", "other", "", "hashCode", "", "toString", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Present<V> implements Optional<V> {
        private final V value;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Present copy$default(Present present, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = present.value;
            }
            return present.copy(obj);
        }

        public final V component1() {
            return this.value;
        }

        public final Present<V> copy(V value) {
            return new Present<>(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Present) && Intrinsics.areEqual(this.value, ((Present) other).value);
        }

        public int hashCode() {
            V v = this.value;
            if (v == null) {
                return 0;
            }
            return v.hashCode();
        }

        public String toString() {
            return "Present(value=" + this.value + ')';
        }

        public Present(V v) {
            this.value = v;
        }

        public final V getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: Optional.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u0005J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0007\"\u0004\b\u0001\u0010\u00052\b\u0010\b\u001a\u0004\u0018\u0001H\u0005¢\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00050\u000b\"\u0004\b\u0001\u0010\u00052\u0006\u0010\b\u001a\u0002H\u0005¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lcom/stripe/core/hardware/Optional$Companion;", "", "()V", "absent", "Lcom/stripe/core/hardware/Optional$Absent;", "V", "fromNullable", "Lcom/stripe/core/hardware/Optional;", "value", "(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional;", "of", "Lcom/stripe/core/hardware/Optional$Present;", "(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional$Present;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final <V> Optional<V> fromNullable(V value) {
            return value != null ? new Present(value) : new Absent();
        }

        public final <V> Present<V> of(V value) {
            return new Present<>(value);
        }

        public final <V> Absent<V> absent() {
            return new Absent<>();
        }
    }

    default V getOrNull() {
        if (this instanceof Present) {
            return (V) ((Present) this).getValue();
        }
        if (this instanceof Absent) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }
}
