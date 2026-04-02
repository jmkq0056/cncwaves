package com.stripe.logwriter.dagger;

import com.stripe.logwriter.LogWriter;
import com.stripe.logwriter.ProxyLogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LogWriterModule_ProvideDefaultProxyLogWriterFactory implements Factory<ProxyLogWriter> {
    private final Provider<LogWriter> logWriterProvider;

    public LogWriterModule_ProvideDefaultProxyLogWriterFactory(Provider<LogWriter> provider) {
        this.logWriterProvider = provider;
    }

    @Override // javax.inject.Provider
    public ProxyLogWriter get() {
        return provideDefaultProxyLogWriter(this.logWriterProvider.get());
    }

    public static LogWriterModule_ProvideDefaultProxyLogWriterFactory create(Provider<LogWriter> provider) {
        return new LogWriterModule_ProvideDefaultProxyLogWriterFactory(provider);
    }

    public static ProxyLogWriter provideDefaultProxyLogWriter(LogWriter logWriter) {
        return (ProxyLogWriter) Preconditions.checkNotNullFromProvides(LogWriterModule.INSTANCE.provideDefaultProxyLogWriter(logWriter));
    }
}
