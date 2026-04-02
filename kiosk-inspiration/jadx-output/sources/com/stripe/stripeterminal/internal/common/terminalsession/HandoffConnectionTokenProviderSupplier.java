package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandoffConnectionTokenProviderSupplier.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0002\u0005\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;", "", "replaceConnectionTokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "userProvided", "HandoffClientAvailable", "HandoffClientNotAvailable", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface HandoffConnectionTokenProviderSupplier {
    ConnectionTokenProvider replaceConnectionTokenProvider(ConnectionTokenProvider userProvided);

    /* JADX INFO: compiled from: HandoffConnectionTokenProviderSupplier.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier$HandoffClientNotAvailable;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;", "()V", "replaceConnectionTokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "userProvided", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HandoffClientNotAvailable implements HandoffConnectionTokenProviderSupplier {
        public static final HandoffClientNotAvailable INSTANCE = new HandoffClientNotAvailable();

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.HandoffConnectionTokenProviderSupplier
        public ConnectionTokenProvider replaceConnectionTokenProvider(ConnectionTokenProvider userProvided) {
            Intrinsics.checkNotNullParameter(userProvided, "userProvided");
            return userProvided;
        }

        private HandoffClientNotAvailable() {
        }
    }

    /* JADX INFO: compiled from: HandoffConnectionTokenProviderSupplier.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier$HandoffClientAvailable;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;", "handoffConnectionTokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "sentinelClass", "Ljava/lang/Class;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Ljava/lang/Class;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "replaceConnectionTokenProvider", "userProvided", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HandoffClientAvailable implements HandoffConnectionTokenProviderSupplier {
        private final ConnectionTokenProvider handoffConnectionTokenProvider;
        private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
        private final Class<?> sentinelClass;

        public HandoffClientAvailable(ConnectionTokenProvider handoffConnectionTokenProvider, Class<?> sentinelClass, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
            Intrinsics.checkNotNullParameter(handoffConnectionTokenProvider, "handoffConnectionTokenProvider");
            Intrinsics.checkNotNullParameter(sentinelClass, "sentinelClass");
            Intrinsics.checkNotNullParameter(logger, "logger");
            this.handoffConnectionTokenProvider = handoffConnectionTokenProvider;
            this.sentinelClass = sentinelClass;
            this.logger = logger;
        }

        @Override // com.stripe.stripeterminal.internal.common.terminalsession.HandoffConnectionTokenProviderSupplier
        public ConnectionTokenProvider replaceConnectionTokenProvider(ConnectionTokenProvider userProvided) {
            Intrinsics.checkNotNullParameter(userProvided, "userProvided");
            if (!this.sentinelClass.isInstance(userProvided)) {
                return userProvided;
            }
            this.logger.i("replaceConnectionTokenProvider", TuplesKt.to("useHandoffConnectionTokenProvider", true));
            return this.handoffConnectionTokenProvider;
        }
    }
}
