package com.stripe.jvmcore.restclient;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RestConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\t\u0010\r\u001a\u00020\u0005HÆ\u0003J$\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/stripe/jvmcore/restclient/DefaultRestConfig;", "Lcom/stripe/jvmcore/restclient/RestConfig;", "timeoutMs", "", "maxAttempts", "", "(Ljava/lang/Long;I)V", "getMaxAttempts", "()I", "getTimeoutMs", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "copy", "(Ljava/lang/Long;I)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;", "equals", "", "other", "", "hashCode", "toString", "", "withMaxAttempts", "withTimeoutMs", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
final /* data */ class DefaultRestConfig implements RestConfig {
    private final int maxAttempts;
    private final Long timeoutMs;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultRestConfig() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ DefaultRestConfig copy$default(DefaultRestConfig defaultRestConfig, Long l, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            l = defaultRestConfig.timeoutMs;
        }
        if ((i2 & 2) != 0) {
            i = defaultRestConfig.maxAttempts;
        }
        return defaultRestConfig.copy(l, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getTimeoutMs() {
        return this.timeoutMs;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMaxAttempts() {
        return this.maxAttempts;
    }

    public final DefaultRestConfig copy(Long timeoutMs, int maxAttempts) {
        return new DefaultRestConfig(timeoutMs, maxAttempts);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DefaultRestConfig)) {
            return false;
        }
        DefaultRestConfig defaultRestConfig = (DefaultRestConfig) other;
        return Intrinsics.areEqual(this.timeoutMs, defaultRestConfig.timeoutMs) && this.maxAttempts == defaultRestConfig.maxAttempts;
    }

    public int hashCode() {
        Long l = this.timeoutMs;
        return ((l == null ? 0 : l.hashCode()) * 31) + Integer.hashCode(this.maxAttempts);
    }

    public String toString() {
        return "DefaultRestConfig(timeoutMs=" + this.timeoutMs + ", maxAttempts=" + this.maxAttempts + ')';
    }

    public DefaultRestConfig(Long l, int i) {
        this.timeoutMs = l;
        this.maxAttempts = i;
        if (getMaxAttempts() <= 0) {
            throw new IllegalArgumentException("maxAttempts must be greater than zero.".toString());
        }
    }

    public /* synthetic */ DefaultRestConfig(Long l, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : l, (i2 & 2) != 0 ? 1 : i);
    }

    @Override // com.stripe.jvmcore.restclient.RestConfig
    public Long getTimeoutMs() {
        return this.timeoutMs;
    }

    @Override // com.stripe.jvmcore.restclient.RestConfig
    public int getMaxAttempts() {
        return this.maxAttempts;
    }

    @Override // com.stripe.jvmcore.restclient.RestConfig
    public RestConfig withTimeoutMs(long timeoutMs) {
        return copy$default(this, Long.valueOf(timeoutMs), 0, 2, null);
    }

    @Override // com.stripe.jvmcore.restclient.RestConfig
    public RestConfig withMaxAttempts(int maxAttempts) {
        return copy$default(this, null, maxAttempts, 1, null);
    }
}
