package com.stripe.jvmcore.restclient;

import kotlin.Metadata;

/* JADX INFO: compiled from: RestConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\bf\u0018\u0000 \f2\u00020\u0001:\u0001\fJ\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestConfig;", "", "maxAttempts", "", "getMaxAttempts", "()I", "timeoutMs", "", "getTimeoutMs", "()Ljava/lang/Long;", "withMaxAttempts", "withTimeoutMs", "Companion", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface RestConfig {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    int getMaxAttempts();

    Long getTimeoutMs();

    RestConfig withMaxAttempts(int maxAttempts);

    RestConfig withTimeoutMs(long timeoutMs);

    /* JADX INFO: compiled from: RestConfig.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0096\u0001J\u0011\u0010\f\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH\u0096\u0001R\u0012\u0010\u0003\u001a\u00020\u0004X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestConfig$Companion;", "Lcom/stripe/jvmcore/restclient/RestConfig;", "()V", "maxAttempts", "", "getMaxAttempts", "()I", "timeoutMs", "", "getTimeoutMs", "()Ljava/lang/Long;", "withMaxAttempts", "withTimeoutMs", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion implements RestConfig {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ DefaultRestConfig $$delegate_0 = new DefaultRestConfig(null, 0, 3, null);

        @Override // com.stripe.jvmcore.restclient.RestConfig
        public int getMaxAttempts() {
            return this.$$delegate_0.getMaxAttempts();
        }

        @Override // com.stripe.jvmcore.restclient.RestConfig
        public Long getTimeoutMs() {
            return this.$$delegate_0.getTimeoutMs();
        }

        @Override // com.stripe.jvmcore.restclient.RestConfig
        public RestConfig withMaxAttempts(int maxAttempts) {
            return this.$$delegate_0.withMaxAttempts(maxAttempts);
        }

        @Override // com.stripe.jvmcore.restclient.RestConfig
        public RestConfig withTimeoutMs(long timeoutMs) {
            return this.$$delegate_0.withTimeoutMs(timeoutMs);
        }

        private Companion() {
        }
    }
}
