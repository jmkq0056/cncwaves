package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.spos.sentry.http.ErrorReporter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_SentryFactory implements Factory<ErrorReporter> {
    private final Provider<Context> contextProvider;
    private final TerminalModule module;

    public TerminalModule_SentryFactory(TerminalModule terminalModule, Provider<Context> provider) {
        this.module = terminalModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ErrorReporter get() {
        return sentry(this.module, this.contextProvider.get());
    }

    public static TerminalModule_SentryFactory create(TerminalModule terminalModule, Provider<Context> provider) {
        return new TerminalModule_SentryFactory(terminalModule, provider);
    }

    public static ErrorReporter sentry(TerminalModule terminalModule, Context context) {
        return (ErrorReporter) Preconditions.checkNotNullFromProvides(terminalModule.sentry(context));
    }
}
