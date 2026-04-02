package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.LoggerExceptionListenerRegistry;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.logging.terminal.log.LoggerExceptionListenerRegistryImpl;
import com.stripe.jvmcore.logging.terminal.log.TerminalLogExceptionListener;
import com.stripe.loggingmodels.LoggerExceptionListener;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoSet;
import dagger.multibindings.Multibinds;
import java.util.Set;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggerExceptionListenerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\t\u0012\u00070\u0007¢\u0006\u0002\b\b0\u0006H\u0001¢\u0006\u0002\b\tJ\r\u0010\n\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;", "", "()V", "provideLoggerExceptionListenerRegistryImpl", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;", "listeners", "", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "Lkotlin/jvm/JvmSuppressWildcards;", "provideLoggerExceptionListenerRegistryImpl$wiring", "provideTerminalLogExceptionListener", "provideTerminalLogExceptionListener$wiring", "Bindings", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class LoggerExceptionListenerModule {
    public static final LoggerExceptionListenerModule INSTANCE = new LoggerExceptionListenerModule();

    /* JADX INFO: compiled from: LoggerExceptionListenerModule.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0013\u0010\b\u001a\r\u0012\t\u0012\u00070\u0003¢\u0006\u0002\b\n0\tH'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule$Bindings;", "", "bindAsListener", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "impl", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;", "bindAsRegistry", "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;", "provideLoggerExceptionListeners", "", "Lkotlin/jvm/JvmSuppressWildcards;", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        LoggerExceptionListener bindAsListener(LoggerExceptionListenerRegistryImpl impl);

        @Binds
        LoggerExceptionListenerRegistry bindAsRegistry(LoggerExceptionListenerRegistryImpl impl);

        @Multibinds
        Set<LoggerExceptionListener> provideLoggerExceptionListeners();
    }

    private LoggerExceptionListenerModule() {
    }

    @Provides
    @Singleton
    public final LoggerExceptionListenerRegistryImpl provideLoggerExceptionListenerRegistryImpl$wiring(Set<LoggerExceptionListener> listeners) {
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        return new LoggerExceptionListenerRegistryImpl(listeners);
    }

    @Provides
    @IntoSet
    public final LoggerExceptionListener provideTerminalLogExceptionListener$wiring() {
        return new TerminalLogExceptionListener(Log.INSTANCE.getLogger(TerminalLogExceptionListener.class));
    }
}
