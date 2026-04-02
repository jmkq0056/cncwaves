package com.stripe.stripeterminal.internal.common.callable;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.ConnectionStatus;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProxyTerminalListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;", "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onConnectionStatusChange", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "onPaymentStatusChange", "Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "setListener", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyTerminalListener implements TerminalListener {
    private TerminalListener listener;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public ProxyTerminalListener(TerminalListener listener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.listener = listener;
        this.logger = logger;
    }

    @Override // com.stripe.stripeterminal.external.callable.TerminalListener
    public void onConnectionStatusChange(ConnectionStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        try {
            this.logger.d("onConnectionStatusChange(" + status + ')', new Pair[0]);
            this.listener.onConnectionStatusChange(status);
        } catch (Exception e) {
            this.logger.e("Unexpected failure in TerminalListener.onConnectionStatusChange", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.TerminalListener
    public void onPaymentStatusChange(PaymentStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        try {
            this.logger.d("onPaymentStatusChange(" + status + ')', new Pair[0]);
            this.listener.onPaymentStatusChange(status);
        } catch (Exception e) {
            this.logger.e("Unexpected failure in TerminalListener.onPaymentStatusChange", e, new Pair[0]);
        }
    }

    public final void setListener(TerminalListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }
}
