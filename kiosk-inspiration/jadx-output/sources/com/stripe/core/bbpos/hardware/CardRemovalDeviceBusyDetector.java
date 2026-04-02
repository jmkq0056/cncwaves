package com.stripe.core.bbpos.hardware;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardRemovalDeviceBusyDetector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u000bR\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;", "", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "consecutiveDeviceBusyCount", "", "isPollingCardRemoval", "", "onCardRemovalDetectionEnd", "", "onCardRemovalDetectionStart", "onReturnCheckCardResult", "shouldFakeCardEmptyOnDeviceBusy", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardRemovalDeviceBusyDetector {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int MAX_CONSECUTIVE_DEVICE_BUSY_COUNT = 15;
    private int consecutiveDeviceBusyCount;
    private boolean isPollingCardRemoval;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public CardRemovalDeviceBusyDetector(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public final void onCardRemovalDetectionStart() {
        this.consecutiveDeviceBusyCount = 0;
        this.isPollingCardRemoval = true;
    }

    public final void onCardRemovalDetectionEnd() {
        this.isPollingCardRemoval = false;
    }

    public final boolean shouldFakeCardEmptyOnDeviceBusy() {
        if (this.isPollingCardRemoval) {
            int i = this.consecutiveDeviceBusyCount + 1;
            this.consecutiveDeviceBusyCount = i;
            if (i >= 15) {
                this.logger.e("Error detecting card removal. Always receiving DEVICE_BUSY.", new Pair[0]);
                return true;
            }
        }
        return false;
    }

    public final void onReturnCheckCardResult() {
        this.consecutiveDeviceBusyCount = 0;
    }

    /* JADX INFO: compiled from: CardRemovalDeviceBusyDetector.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector$Companion;", "", "()V", "MAX_CONSECUTIVE_DEVICE_BUSY_COUNT", "", "getMAX_CONSECUTIVE_DEVICE_BUSY_COUNT$hardware_release$annotations", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getMAX_CONSECUTIVE_DEVICE_BUSY_COUNT$hardware_release$annotations() {
        }

        private Companion() {
        }
    }
}
