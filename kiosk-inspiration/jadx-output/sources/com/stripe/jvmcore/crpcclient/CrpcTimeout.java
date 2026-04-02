package com.stripe.jvmcore.crpcclient;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;

/* JADX INFO: compiled from: CrpcTimeout.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;", "", "Default", "Specified", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CrpcTimeout {

    /* JADX INFO: compiled from: CrpcTimeout.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;", "()V", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Default implements CrpcTimeout {
        public static final Default INSTANCE = new Default();

        private Default() {
        }
    }

    /* JADX INFO: compiled from: CrpcTimeout.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\b\u001a\u00020\u0003HÆ\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0006J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0019\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;", "timeout", "Lkotlin/time/Duration;", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getTimeout-UwyO8pc", "()J", "J", "component1", "component1-UwyO8pc", "copy", "copy-LRDsOJo", "(J)Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;", "equals", "", "other", "", "hashCode", "", "toString", "", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Specified implements CrpcTimeout {
        private final long timeout;

        public /* synthetic */ Specified(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* JADX INFO: renamed from: copy-LRDsOJo$default, reason: not valid java name */
        public static /* synthetic */ Specified m484copyLRDsOJo$default(Specified specified, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = specified.timeout;
            }
            return specified.m486copyLRDsOJo(j);
        }

        /* JADX INFO: renamed from: component1-UwyO8pc, reason: not valid java name and from getter */
        public final long getTimeout() {
            return this.timeout;
        }

        /* JADX INFO: renamed from: copy-LRDsOJo, reason: not valid java name */
        public final Specified m486copyLRDsOJo(long timeout) {
            return new Specified(timeout, null);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Specified) && Duration.m2184equalsimpl0(this.timeout, ((Specified) other).timeout);
        }

        public int hashCode() {
            return Duration.m2200hashCodeimpl(this.timeout);
        }

        public String toString() {
            return "Specified(timeout=" + ((Object) Duration.m2219toStringimpl(this.timeout)) + ')';
        }

        private Specified(long j) {
            this.timeout = j;
        }

        /* JADX INFO: renamed from: getTimeout-UwyO8pc, reason: not valid java name */
        public final long m487getTimeoutUwyO8pc() {
            return this.timeout;
        }
    }
}
