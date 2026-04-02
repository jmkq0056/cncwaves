package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LogFlusher;
import com.stripe.jvmcore.logging.terminal.log.LogUploader;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideLogFlusher$wiringFactory implements Factory<LogFlusher> {
    private final Provider<ScheduledExecutorService> executorServiceProvider;
    private final Provider<LogUploader> logUploaderProvider;
    private final Provider<LogWriter> logWriterProvider;

    public JvmCoreLogModule_ProvideLogFlusher$wiringFactory(Provider<LogUploader> provider, Provider<LogWriter> provider2, Provider<ScheduledExecutorService> provider3) {
        this.logUploaderProvider = provider;
        this.logWriterProvider = provider2;
        this.executorServiceProvider = provider3;
    }

    @Override // javax.inject.Provider
    public LogFlusher get() {
        return provideLogFlusher$wiring(this.logUploaderProvider.get(), this.logWriterProvider.get(), this.executorServiceProvider.get());
    }

    public static JvmCoreLogModule_ProvideLogFlusher$wiringFactory create(Provider<LogUploader> provider, Provider<LogWriter> provider2, Provider<ScheduledExecutorService> provider3) {
        return new JvmCoreLogModule_ProvideLogFlusher$wiringFactory(provider, provider2, provider3);
    }

    public static LogFlusher provideLogFlusher$wiring(LogUploader logUploader, LogWriter logWriter, ScheduledExecutorService scheduledExecutorService) {
        return (LogFlusher) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideLogFlusher$wiring(logUploader, logWriter, scheduledExecutorService));
    }
}
