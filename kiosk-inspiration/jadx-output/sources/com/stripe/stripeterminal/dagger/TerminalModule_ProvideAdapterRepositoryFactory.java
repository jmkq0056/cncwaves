package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.adapter.AdapterRepository;
import com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter;
import com.stripe.stripeterminal.internal.common.adapter.SimulatedIpAdapter;
import com.stripe.stripeterminal.internal.common.adapter.SimulatedMobileAdapter;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideAdapterRepositoryFactory implements Factory<AdapterRepository> {
    private final Provider<BbposBluetoothAdapter> bbposAdapterProvider;
    private final Provider<CotsAdapter> cotsAdapterProvider;
    private final Provider<Adapter> embeddedAdapterProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final TerminalModule module;
    private final Provider<RemoteReaderAdapter> remoteReaderAdapterProvider;
    private final Provider<SimulatedMobileAdapter> simulatedBluetoothAdapterProvider;
    private final Provider<CotsAdapter> simulatedCotsAdapterProvider;
    private final Provider<SimulatedIpAdapter> simulatedIpAdapterProvider;
    private final Provider<SimulatedMobileAdapter> simulatedUsbAdapterProvider;
    private final Provider<BbposUsbAdapter> usbAdapterProvider;

    public TerminalModule_ProvideAdapterRepositoryFactory(TerminalModule terminalModule, Provider<BbposBluetoothAdapter> provider, Provider<CotsAdapter> provider2, Provider<CotsAdapter> provider3, Provider<RemoteReaderAdapter> provider4, Provider<SimulatedMobileAdapter> provider5, Provider<SimulatedIpAdapter> provider6, Provider<SimulatedMobileAdapter> provider7, Provider<Adapter> provider8, Provider<BbposUsbAdapter> provider9, Provider<LoggerFactory> provider10) {
        this.module = terminalModule;
        this.bbposAdapterProvider = provider;
        this.cotsAdapterProvider = provider2;
        this.simulatedCotsAdapterProvider = provider3;
        this.remoteReaderAdapterProvider = provider4;
        this.simulatedBluetoothAdapterProvider = provider5;
        this.simulatedIpAdapterProvider = provider6;
        this.simulatedUsbAdapterProvider = provider7;
        this.embeddedAdapterProvider = provider8;
        this.usbAdapterProvider = provider9;
        this.loggerFactoryProvider = provider10;
    }

    @Override // javax.inject.Provider
    public AdapterRepository get() {
        return provideAdapterRepository(this.module, DoubleCheck.lazy(this.bbposAdapterProvider), this.cotsAdapterProvider.get(), this.simulatedCotsAdapterProvider.get(), this.remoteReaderAdapterProvider.get(), DoubleCheck.lazy(this.simulatedBluetoothAdapterProvider), this.simulatedIpAdapterProvider.get(), DoubleCheck.lazy(this.simulatedUsbAdapterProvider), this.embeddedAdapterProvider.get(), DoubleCheck.lazy(this.usbAdapterProvider), this.loggerFactoryProvider.get());
    }

    public static TerminalModule_ProvideAdapterRepositoryFactory create(TerminalModule terminalModule, Provider<BbposBluetoothAdapter> provider, Provider<CotsAdapter> provider2, Provider<CotsAdapter> provider3, Provider<RemoteReaderAdapter> provider4, Provider<SimulatedMobileAdapter> provider5, Provider<SimulatedIpAdapter> provider6, Provider<SimulatedMobileAdapter> provider7, Provider<Adapter> provider8, Provider<BbposUsbAdapter> provider9, Provider<LoggerFactory> provider10) {
        return new TerminalModule_ProvideAdapterRepositoryFactory(terminalModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    public static AdapterRepository provideAdapterRepository(TerminalModule terminalModule, Lazy<BbposBluetoothAdapter> lazy, CotsAdapter cotsAdapter, CotsAdapter cotsAdapter2, RemoteReaderAdapter remoteReaderAdapter, Lazy<SimulatedMobileAdapter> lazy2, SimulatedIpAdapter simulatedIpAdapter, Lazy<SimulatedMobileAdapter> lazy3, Adapter adapter, Lazy<BbposUsbAdapter> lazy4, LoggerFactory loggerFactory) {
        return (AdapterRepository) Preconditions.checkNotNullFromProvides(terminalModule.provideAdapterRepository(lazy, cotsAdapter, cotsAdapter2, remoteReaderAdapter, lazy2, simulatedIpAdapter, lazy3, adapter, lazy4, loggerFactory));
    }
}
