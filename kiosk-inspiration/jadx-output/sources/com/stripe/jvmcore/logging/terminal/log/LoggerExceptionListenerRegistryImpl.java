package com.stripe.jvmcore.logging.terminal.log;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.logging.terminal.contracts.LoggerExceptionListenerRegistry;
import com.stripe.loggingmodels.LoggerExceptionListener;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggerExceptionListenerRegistryImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0002\u0010\u0005J!\u0010\u0007\u001a\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\u000bH\u0002J \u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001c\u0010\u0013\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u0014\u001a\u00060\u0015j\u0002`\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "listeners", "", "(Ljava/util/Set;)V", "", "notifyAll", "", "action", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "onDispatchExceptionError", "fileName", "", "throwable", "", "batchSize", "", "onFileOutOfMemoryError", "outOfMemoryError", "Ljava/lang/OutOfMemoryError;", "Lcom/stripe/loggingmodels/OutOfMemoryError;", "registerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "unregisterListener", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LoggerExceptionListenerRegistryImpl implements LoggerExceptionListenerRegistry, LoggerExceptionListener {
    private final Set<LoggerExceptionListener> listeners;

    public LoggerExceptionListenerRegistryImpl(Set<? extends LoggerExceptionListener> listeners) {
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        this.listeners = CollectionsKt.toMutableSet(listeners);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerExceptionListenerRegistry
    public void registerListener(LoggerExceptionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerExceptionListenerRegistry
    public void unregisterListener(LoggerExceptionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    private final void notifyAll(Function1<? super LoggerExceptionListener, Unit> action) {
        Iterator<T> it = this.listeners.iterator();
        while (it.hasNext()) {
            action.invoke((LoggerExceptionListener) it.next());
        }
    }

    @Override // com.stripe.loggingmodels.LoggerExceptionListener
    public void onFileOutOfMemoryError(final String fileName, final OutOfMemoryError outOfMemoryError) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(outOfMemoryError, "outOfMemoryError");
        notifyAll(new Function1<LoggerExceptionListener, Unit>() { // from class: com.stripe.jvmcore.logging.terminal.log.LoggerExceptionListenerRegistryImpl.onFileOutOfMemoryError.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LoggerExceptionListener loggerExceptionListener) {
                invoke2(loggerExceptionListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LoggerExceptionListener notifyAll) {
                Intrinsics.checkNotNullParameter(notifyAll, "$this$notifyAll");
                notifyAll.onFileOutOfMemoryError(fileName, outOfMemoryError);
            }
        });
    }

    @Override // com.stripe.loggingmodels.LoggerExceptionListener
    public void onDispatchExceptionError(final String fileName, final Throwable throwable, final int batchSize) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        notifyAll(new Function1<LoggerExceptionListener, Unit>() { // from class: com.stripe.jvmcore.logging.terminal.log.LoggerExceptionListenerRegistryImpl.onDispatchExceptionError.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LoggerExceptionListener loggerExceptionListener) {
                invoke2(loggerExceptionListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LoggerExceptionListener notifyAll) {
                Intrinsics.checkNotNullParameter(notifyAll, "$this$notifyAll");
                notifyAll.onDispatchExceptionError(fileName, throwable, batchSize);
            }
        });
    }
}
