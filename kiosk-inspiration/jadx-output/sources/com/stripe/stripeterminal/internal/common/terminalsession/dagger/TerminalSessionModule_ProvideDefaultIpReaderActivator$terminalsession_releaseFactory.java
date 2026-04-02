package com.stripe.stripeterminal.internal.common.terminalsession.dagger;

import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundReaderActivator;
import com.stripe.stripeterminal.internal.common.terminalsession.DefaultIpReaderActivator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalSessionModule_ProvideDefaultIpReaderActivator$terminalsession_releaseFactory implements Factory<DefaultIpReaderActivator> {
    private final Provider<BackgroundReaderActivator> backgroundReaderActivatorProvider;

    public TerminalSessionModule_ProvideDefaultIpReaderActivator$terminalsession_releaseFactory(Provider<BackgroundReaderActivator> provider) {
        this.backgroundReaderActivatorProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultIpReaderActivator get() {
        return provideDefaultIpReaderActivator$terminalsession_release(this.backgroundReaderActivatorProvider.get());
    }

    public static TerminalSessionModule_ProvideDefaultIpReaderActivator$terminalsession_releaseFactory create(Provider<BackgroundReaderActivator> provider) {
        return new TerminalSessionModule_ProvideDefaultIpReaderActivator$terminalsession_releaseFactory(provider);
    }

    public static DefaultIpReaderActivator provideDefaultIpReaderActivator$terminalsession_release(BackgroundReaderActivator backgroundReaderActivator) {
        return (DefaultIpReaderActivator) Preconditions.checkNotNullFromProvides(TerminalSessionModule.INSTANCE.provideDefaultIpReaderActivator$terminalsession_release(backgroundReaderActivator));
    }
}
