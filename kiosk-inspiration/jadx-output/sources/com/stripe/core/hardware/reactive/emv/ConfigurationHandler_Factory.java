package com.stripe.core.hardware.reactive.emv;

import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.storage.SharedPrefs;
import dagger.internal.Factory;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ConfigurationHandler_Factory implements Factory<ConfigurationHandler> {
    private final Provider<ReactiveConfigurationListener> configListenerProvider;
    private final Provider<ReaderConfigurationUpdateController> configurationUpdateControllerProvider;
    private final Provider<DeviceInfoRepository> deviceInfoRepositoryProvider;
    private final Provider<DomesticDebitAidsParser> domesticDebitAidsParserProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<Scheduler> schedulerProvider;
    private final Provider<SharedPrefs> sharedPrefsProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public ConfigurationHandler_Factory(Provider<Scheduler> provider, Provider<ReaderConfigurationUpdateController> provider2, Provider<DeviceInfoRepository> provider3, Provider<SharedPrefs> provider4, Provider<ReactiveConfigurationListener> provider5, Provider<TransactionRepository> provider6, Provider<DomesticDebitAidsParser> provider7, Provider<LoggerFactory> provider8) {
        this.schedulerProvider = provider;
        this.configurationUpdateControllerProvider = provider2;
        this.deviceInfoRepositoryProvider = provider3;
        this.sharedPrefsProvider = provider4;
        this.configListenerProvider = provider5;
        this.transactionRepositoryProvider = provider6;
        this.domesticDebitAidsParserProvider = provider7;
        this.loggerFactoryProvider = provider8;
    }

    @Override // javax.inject.Provider
    public ConfigurationHandler get() {
        return newInstance(this.schedulerProvider.get(), this.configurationUpdateControllerProvider.get(), this.deviceInfoRepositoryProvider.get(), this.sharedPrefsProvider.get(), this.configListenerProvider.get(), this.transactionRepositoryProvider.get(), this.domesticDebitAidsParserProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ConfigurationHandler_Factory create(Provider<Scheduler> provider, Provider<ReaderConfigurationUpdateController> provider2, Provider<DeviceInfoRepository> provider3, Provider<SharedPrefs> provider4, Provider<ReactiveConfigurationListener> provider5, Provider<TransactionRepository> provider6, Provider<DomesticDebitAidsParser> provider7, Provider<LoggerFactory> provider8) {
        return new ConfigurationHandler_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static ConfigurationHandler newInstance(Scheduler scheduler, ReaderConfigurationUpdateController readerConfigurationUpdateController, DeviceInfoRepository deviceInfoRepository, SharedPrefs sharedPrefs, ReactiveConfigurationListener reactiveConfigurationListener, TransactionRepository transactionRepository, DomesticDebitAidsParser domesticDebitAidsParser, LoggerFactory loggerFactory) {
        return new ConfigurationHandler(scheduler, readerConfigurationUpdateController, deviceInfoRepository, sharedPrefs, reactiveConfigurationListener, transactionRepository, domesticDebitAidsParser, loggerFactory);
    }
}
