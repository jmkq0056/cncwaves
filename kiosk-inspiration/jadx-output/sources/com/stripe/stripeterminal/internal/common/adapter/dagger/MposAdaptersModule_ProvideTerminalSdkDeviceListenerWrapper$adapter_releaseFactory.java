package com.stripe.stripeterminal.internal.common.adapter.dagger;

import com.stripe.core.bbpos.hardware.BbposControllerListener;
import com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.adapter.TerminalSdkDeviceListenerWrapper;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryFilter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory implements Factory<TerminalSdkDeviceListenerWrapper> {
    private final Provider<BbposControllerListener.Factory> baseControllerFactoryProvider;
    private final Provider<BbposPaymentCollectionListener.Factory> basePaymentCollectionFactoryProvider;
    private final Provider<BbposBluetoothDiscoveryFilter> discoveryFilterProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ReaderStatusListener> readerStatusListenerProvider;

    public MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory(Provider<BbposControllerListener.Factory> provider, Provider<BbposPaymentCollectionListener.Factory> provider2, Provider<ReaderStatusListener> provider3, Provider<BbposBluetoothDiscoveryFilter> provider4, Provider<LoggerFactory> provider5) {
        this.baseControllerFactoryProvider = provider;
        this.basePaymentCollectionFactoryProvider = provider2;
        this.readerStatusListenerProvider = provider3;
        this.discoveryFilterProvider = provider4;
        this.loggerFactoryProvider = provider5;
    }

    @Override // javax.inject.Provider
    public TerminalSdkDeviceListenerWrapper get() {
        return provideTerminalSdkDeviceListenerWrapper$adapter_release(this.baseControllerFactoryProvider.get(), this.basePaymentCollectionFactoryProvider.get(), this.readerStatusListenerProvider.get(), this.discoveryFilterProvider.get(), this.loggerFactoryProvider.get());
    }

    public static MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory create(Provider<BbposControllerListener.Factory> provider, Provider<BbposPaymentCollectionListener.Factory> provider2, Provider<ReaderStatusListener> provider3, Provider<BbposBluetoothDiscoveryFilter> provider4, Provider<LoggerFactory> provider5) {
        return new MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static TerminalSdkDeviceListenerWrapper provideTerminalSdkDeviceListenerWrapper$adapter_release(BbposControllerListener.Factory factory, BbposPaymentCollectionListener.Factory factory2, ReaderStatusListener readerStatusListener, BbposBluetoothDiscoveryFilter bbposBluetoothDiscoveryFilter, LoggerFactory loggerFactory) {
        return (TerminalSdkDeviceListenerWrapper) Preconditions.checkNotNullFromProvides(MposAdaptersModule.INSTANCE.provideTerminalSdkDeviceListenerWrapper$adapter_release(factory, factory2, readerStatusListener, bbposBluetoothDiscoveryFilter, loggerFactory));
    }
}
