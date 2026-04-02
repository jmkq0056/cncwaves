package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposControllerListener;
import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.hardware.emv.ConfigurationListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory implements Factory<BbposControllerListener.Factory> {
    private final Provider<BbposReaderInfoFactory> bbposReaderInfoFactoryProvider;
    private final Provider<ConfigurationListener> configurationListenerProvider;
    private final Provider<Boolean> debugLogsShouldBeSentToSplunkProvider;
    private final Provider<ReaderStatusListener> readerStatusListenerProvider;

    public BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory(Provider<ReaderStatusListener> provider, Provider<ConfigurationListener> provider2, Provider<BbposReaderInfoFactory> provider3, Provider<Boolean> provider4) {
        this.readerStatusListenerProvider = provider;
        this.configurationListenerProvider = provider2;
        this.bbposReaderInfoFactoryProvider = provider3;
        this.debugLogsShouldBeSentToSplunkProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BbposControllerListener.Factory get() {
        return provideBbposControllerListenerFactory(this.readerStatusListenerProvider.get(), this.configurationListenerProvider.get(), this.bbposReaderInfoFactoryProvider.get(), this.debugLogsShouldBeSentToSplunkProvider);
    }

    public static BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory create(Provider<ReaderStatusListener> provider, Provider<ConfigurationListener> provider2, Provider<BbposReaderInfoFactory> provider3, Provider<Boolean> provider4) {
        return new BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory(provider, provider2, provider3, provider4);
    }

    public static BbposControllerListener.Factory provideBbposControllerListenerFactory(ReaderStatusListener readerStatusListener, ConfigurationListener configurationListener, BbposReaderInfoFactory bbposReaderInfoFactory, Provider<Boolean> provider) {
        return (BbposControllerListener.Factory) Preconditions.checkNotNullFromProvides(BbposControllerListenerModule.INSTANCE.provideBbposControllerListenerFactory(readerStatusListener, configurationListener, bbposReaderInfoFactory, provider));
    }
}
