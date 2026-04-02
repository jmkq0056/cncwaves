package com.example.digitalkiosk.stripe.listeners;

import androidx.core.app.NotificationCompat;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.ConnectionStatus;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalEventListener.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/example/digitalkiosk/stripe/listeners/TerminalEventListener;", "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "<init>", "()V", "onConnectionStatusChange", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "onPaymentStatusChange", "Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TerminalEventListener implements TerminalListener {
    @Override // com.stripe.stripeterminal.external.callable.TerminalListener
    public void onConnectionStatusChange(ConnectionStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        super.onConnectionStatusChange(status);
    }

    @Override // com.stripe.stripeterminal.external.callable.TerminalListener
    public void onPaymentStatusChange(PaymentStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        super.onPaymentStatusChange(status);
    }
}
