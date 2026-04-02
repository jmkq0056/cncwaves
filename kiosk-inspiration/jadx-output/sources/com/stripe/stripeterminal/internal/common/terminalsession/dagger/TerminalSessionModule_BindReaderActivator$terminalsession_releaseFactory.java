package com.stripe.stripeterminal.internal.common.terminalsession.dagger;

import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import com.stripe.stripeterminal.internal.common.terminalsession.DefaultIpReaderActivator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory implements Factory<ReaderActivator> {
    private final Provider<DefaultIpReaderActivator> defaultIpReaderActivatorProvider;

    public TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory(Provider<DefaultIpReaderActivator> provider) {
        this.defaultIpReaderActivatorProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReaderActivator get() {
        return bindReaderActivator$terminalsession_release(this.defaultIpReaderActivatorProvider.get());
    }

    public static TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory create(Provider<DefaultIpReaderActivator> provider) {
        return new TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory(provider);
    }

    public static ReaderActivator bindReaderActivator$terminalsession_release(DefaultIpReaderActivator defaultIpReaderActivator) {
        return (ReaderActivator) Preconditions.checkNotNullFromProvides(TerminalSessionModule.INSTANCE.bindReaderActivator$terminalsession_release(defaultIpReaderActivator));
    }
}
