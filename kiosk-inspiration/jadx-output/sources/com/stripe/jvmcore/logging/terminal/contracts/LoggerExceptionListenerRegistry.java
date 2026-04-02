package com.stripe.jvmcore.logging.terminal.contracts;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.loggingmodels.LoggerExceptionListener;
import kotlin.Metadata;

/* JADX INFO: compiled from: LoggerExceptionListenerRegistry.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;", "", "registerListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "unregisterListener", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LoggerExceptionListenerRegistry {
    void registerListener(LoggerExceptionListener listener);

    void unregisterListener(LoggerExceptionListener listener);
}
