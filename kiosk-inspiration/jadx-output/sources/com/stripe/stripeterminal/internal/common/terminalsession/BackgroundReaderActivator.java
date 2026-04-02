package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundActivationResult;
import dagger.Lazy;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BackgroundReaderActivator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;", "", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "lazyTerminalSession", "Ldagger/Lazy;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Ldagger/Lazy;)V", "activateInBackground", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "Companion", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BackgroundReaderActivator {
    private static final Companion Companion = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(BackgroundReaderActivator.class);
    private final Lazy<TerminalSession> lazyTerminalSession;
    private final SessionTokenRepository sessionTokenRepository;
    private final TerminalStatusManager statusManager;

    @Inject
    public BackgroundReaderActivator(TerminalStatusManager statusManager, SessionTokenRepository sessionTokenRepository, Lazy<TerminalSession> lazyTerminalSession) {
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        Intrinsics.checkNotNullParameter(lazyTerminalSession, "lazyTerminalSession");
        this.statusManager = statusManager;
        this.sessionTokenRepository = sessionTokenRepository;
        this.lazyTerminalSession = lazyTerminalSession;
    }

    public final BackgroundActivationResult activateInBackground(Reader reader, ConnectionConfiguration config) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(config, "config");
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (!Intrinsics.areEqual(connectedReader != null ? connectedReader.getSerialNumber() : null, reader.getSerialNumber())) {
            LOGGER.i("Reader no longer connected", new Pair[0]);
            return BackgroundActivationResult.ActivationCanceled.INSTANCE;
        }
        if (this.statusManager.getPaymentStatus() != PaymentStatus.READY) {
            LOGGER.i("Reader busy", new Pair[0]);
            return BackgroundActivationResult.CannotBeAttempted.INSTANCE;
        }
        try {
            this.lazyTerminalSession.get().activateReader$terminalsession_release(reader, config);
            String stripeSessionToken = this.sessionTokenRepository.getStripeSessionToken();
            if (stripeSessionToken != null && !StringsKt.isBlank(stripeSessionToken)) {
                LOGGER.i("Reader activated in background", new Pair[0]);
                return BackgroundActivationResult.ActivationCompleted.INSTANCE;
            }
            LOGGER.i("Reader remains unactivated", new Pair[0]);
            return BackgroundActivationResult.CannotBeAttempted.INSTANCE;
        } catch (TerminalException e) {
            LOGGER.e("Reader could not be activated in background", e, new Pair[0]);
            return new BackgroundActivationResult.ActivationFailed(e);
        }
    }

    /* JADX INFO: compiled from: BackgroundReaderActivator.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator$Companion;", "", "()V", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
