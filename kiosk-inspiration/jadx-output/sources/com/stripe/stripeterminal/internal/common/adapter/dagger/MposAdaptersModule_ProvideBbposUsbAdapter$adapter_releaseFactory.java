package com.stripe.stripeterminal.internal.common.adapter.dagger;

import com.stripe.core.bbpos.hardware.DeviceListenerRegistry;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ReactiveConfigurationListener;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.readerconnection.ConnectionManager;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdateInstaller;
import com.stripe.core.readerupdate.UpdateManager;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper;
import com.stripe.stripeterminal.internal.common.adapter.TerminalSdkDeviceListenerWrapper;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateMachine;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.usb.UsbPermissionReceiverManager;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory implements Factory<BbposUsbAdapter> {
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<ReactiveConfigurationListener> configListenerProvider;
    private final Provider<ConnectAndUpdateStateMachine> connectAndUpdateStateMachineProvider;
    private final Provider<ConnectionManager> connectionManagerProvider;
    private final Provider<HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder>> connectivityHealthLoggerProvider;
    private final Provider<DeviceControllerWrapper> deviceControllerProvider;
    private final Provider<TerminalSdkDeviceListenerWrapper> deviceListenerProvider;
    private final Provider<DeviceListenerRegistry> deviceListenerRegistryProvider;
    private final Provider<DisconnectReasonRepository> disconnectReasonRepositoryProvider;
    private final Provider<DomesticDebitAidsParser> domesticDebitAidsParserProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<MposReaderDebugLogManager> mposReaderDebugLogManagerProvider;
    private final Provider<MposReaderEventLogger> mposReaderEventLoggerProvider;
    private final Provider<PaymentCollectionCoordinatorWrapper> paymentCollectionWrapperProvider;
    private final Provider<ReaderInfoController> readerInfoControllerProvider;
    private final Provider<ReaderInfoRepository> readerInfoRepositoryProvider;
    private final Provider<ReactiveReaderStatusListener> readerStatusListenerProvider;
    private final Provider<ReaderUpdateController> readerUpdateControllerProvider;
    private final Provider<ProxyResourceRepository> resourceRepositoryProvider;
    private final Provider<Scheduler> schedulerProvider;
    private final Provider<CoroutineScope> scopeProvider;
    private final Provider<SessionTokenRepository> sessionTokenRepositoryProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;
    private final Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> singleUpdateHealthLoggerProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;
    private final Provider<UpdateClient> updateClientProvider;
    private final Provider<UpdateInstaller> updateInstallerProvider;
    private final Provider<ReactiveReaderUpdateListener> updateListenerProvider;
    private final Provider<UpdateManager> updateManagerProvider;
    private final Provider<UsbPermissionReceiverManager> usbPermissionReceiverProvider;

    public MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory(Provider<UpdateClient> provider, Provider<SessionTokenRepository> provider2, Provider<Scheduler> provider3, Provider<CoroutineScope> provider4, Provider<ConnectionManager> provider5, Provider<UpdateManager> provider6, Provider<ReactiveConfigurationListener> provider7, Provider<ReactiveReaderStatusListener> provider8, Provider<ReactiveReaderUpdateListener> provider9, Provider<UpdateInstaller> provider10, Provider<TerminalStatusManager> provider11, Provider<SettingsRepository> provider12, Provider<DeviceControllerWrapper> provider13, Provider<UsbPermissionReceiverManager> provider14, Provider<FeatureFlagsRepository> provider15, Provider<ReaderUpdateController> provider16, Provider<ReaderInfoController> provider17, Provider<ApplicationInformationProvider> provider18, Provider<TransactionRepository> provider19, Provider<ConnectAndUpdateStateMachine> provider20, Provider<PaymentCollectionCoordinatorWrapper> provider21, Provider<ProxyResourceRepository> provider22, Provider<TerminalSdkDeviceListenerWrapper> provider23, Provider<DeviceListenerRegistry> provider24, Provider<DomesticDebitAidsParser> provider25, Provider<HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder>> provider26, Provider<DisconnectReasonRepository> provider27, Provider<ReaderInfoRepository> provider28, Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> provider29, Provider<MposReaderEventLogger> provider30, Provider<MposReaderDebugLogManager> provider31, Provider<LoggerFactory> provider32) {
        this.updateClientProvider = provider;
        this.sessionTokenRepositoryProvider = provider2;
        this.schedulerProvider = provider3;
        this.scopeProvider = provider4;
        this.connectionManagerProvider = provider5;
        this.updateManagerProvider = provider6;
        this.configListenerProvider = provider7;
        this.readerStatusListenerProvider = provider8;
        this.updateListenerProvider = provider9;
        this.updateInstallerProvider = provider10;
        this.statusManagerProvider = provider11;
        this.settingsRepositoryProvider = provider12;
        this.deviceControllerProvider = provider13;
        this.usbPermissionReceiverProvider = provider14;
        this.featureFlagsRepositoryProvider = provider15;
        this.readerUpdateControllerProvider = provider16;
        this.readerInfoControllerProvider = provider17;
        this.applicationInformationProvider = provider18;
        this.transactionRepositoryProvider = provider19;
        this.connectAndUpdateStateMachineProvider = provider20;
        this.paymentCollectionWrapperProvider = provider21;
        this.resourceRepositoryProvider = provider22;
        this.deviceListenerProvider = provider23;
        this.deviceListenerRegistryProvider = provider24;
        this.domesticDebitAidsParserProvider = provider25;
        this.connectivityHealthLoggerProvider = provider26;
        this.disconnectReasonRepositoryProvider = provider27;
        this.readerInfoRepositoryProvider = provider28;
        this.singleUpdateHealthLoggerProvider = provider29;
        this.mposReaderEventLoggerProvider = provider30;
        this.mposReaderDebugLogManagerProvider = provider31;
        this.loggerFactoryProvider = provider32;
    }

    @Override // javax.inject.Provider
    public BbposUsbAdapter get() {
        return provideBbposUsbAdapter$adapter_release(this.updateClientProvider.get(), this.sessionTokenRepositoryProvider.get(), this.schedulerProvider.get(), this.scopeProvider.get(), this.connectionManagerProvider.get(), this.updateManagerProvider.get(), this.configListenerProvider.get(), this.readerStatusListenerProvider.get(), this.updateListenerProvider.get(), this.updateInstallerProvider.get(), this.statusManagerProvider.get(), this.settingsRepositoryProvider.get(), this.deviceControllerProvider.get(), this.usbPermissionReceiverProvider.get(), this.featureFlagsRepositoryProvider.get(), this.readerUpdateControllerProvider.get(), this.readerInfoControllerProvider.get(), this.applicationInformationProvider.get(), this.transactionRepositoryProvider.get(), this.connectAndUpdateStateMachineProvider.get(), this.paymentCollectionWrapperProvider.get(), this.resourceRepositoryProvider.get(), this.deviceListenerProvider.get(), this.deviceListenerRegistryProvider.get(), this.domesticDebitAidsParserProvider.get(), this.connectivityHealthLoggerProvider.get(), this.disconnectReasonRepositoryProvider.get(), this.readerInfoRepositoryProvider.get(), this.singleUpdateHealthLoggerProvider.get(), this.mposReaderEventLoggerProvider.get(), this.mposReaderDebugLogManagerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory create(Provider<UpdateClient> provider, Provider<SessionTokenRepository> provider2, Provider<Scheduler> provider3, Provider<CoroutineScope> provider4, Provider<ConnectionManager> provider5, Provider<UpdateManager> provider6, Provider<ReactiveConfigurationListener> provider7, Provider<ReactiveReaderStatusListener> provider8, Provider<ReactiveReaderUpdateListener> provider9, Provider<UpdateInstaller> provider10, Provider<TerminalStatusManager> provider11, Provider<SettingsRepository> provider12, Provider<DeviceControllerWrapper> provider13, Provider<UsbPermissionReceiverManager> provider14, Provider<FeatureFlagsRepository> provider15, Provider<ReaderUpdateController> provider16, Provider<ReaderInfoController> provider17, Provider<ApplicationInformationProvider> provider18, Provider<TransactionRepository> provider19, Provider<ConnectAndUpdateStateMachine> provider20, Provider<PaymentCollectionCoordinatorWrapper> provider21, Provider<ProxyResourceRepository> provider22, Provider<TerminalSdkDeviceListenerWrapper> provider23, Provider<DeviceListenerRegistry> provider24, Provider<DomesticDebitAidsParser> provider25, Provider<HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder>> provider26, Provider<DisconnectReasonRepository> provider27, Provider<ReaderInfoRepository> provider28, Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> provider29, Provider<MposReaderEventLogger> provider30, Provider<MposReaderDebugLogManager> provider31, Provider<LoggerFactory> provider32) {
        return new MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16, provider17, provider18, provider19, provider20, provider21, provider22, provider23, provider24, provider25, provider26, provider27, provider28, provider29, provider30, provider31, provider32);
    }

    public static BbposUsbAdapter provideBbposUsbAdapter$adapter_release(UpdateClient updateClient, SessionTokenRepository sessionTokenRepository, Scheduler scheduler, CoroutineScope coroutineScope, ConnectionManager connectionManager, UpdateManager updateManager, ReactiveConfigurationListener reactiveConfigurationListener, ReactiveReaderStatusListener reactiveReaderStatusListener, ReactiveReaderUpdateListener reactiveReaderUpdateListener, UpdateInstaller updateInstaller, TerminalStatusManager terminalStatusManager, SettingsRepository settingsRepository, DeviceControllerWrapper deviceControllerWrapper, UsbPermissionReceiverManager usbPermissionReceiverManager, FeatureFlagsRepository featureFlagsRepository, ReaderUpdateController readerUpdateController, ReaderInfoController readerInfoController, ApplicationInformationProvider applicationInformationProvider, TransactionRepository transactionRepository, ConnectAndUpdateStateMachine connectAndUpdateStateMachine, PaymentCollectionCoordinatorWrapper paymentCollectionCoordinatorWrapper, ProxyResourceRepository proxyResourceRepository, TerminalSdkDeviceListenerWrapper terminalSdkDeviceListenerWrapper, DeviceListenerRegistry deviceListenerRegistry, DomesticDebitAidsParser domesticDebitAidsParser, HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> healthLogger, DisconnectReasonRepository disconnectReasonRepository, ReaderInfoRepository readerInfoRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger2, MposReaderEventLogger mposReaderEventLogger, MposReaderDebugLogManager mposReaderDebugLogManager, LoggerFactory loggerFactory) {
        return (BbposUsbAdapter) Preconditions.checkNotNullFromProvides(MposAdaptersModule.INSTANCE.provideBbposUsbAdapter$adapter_release(updateClient, sessionTokenRepository, scheduler, coroutineScope, connectionManager, updateManager, reactiveConfigurationListener, reactiveReaderStatusListener, reactiveReaderUpdateListener, updateInstaller, terminalStatusManager, settingsRepository, deviceControllerWrapper, usbPermissionReceiverManager, featureFlagsRepository, readerUpdateController, readerInfoController, applicationInformationProvider, transactionRepository, connectAndUpdateStateMachine, paymentCollectionCoordinatorWrapper, proxyResourceRepository, terminalSdkDeviceListenerWrapper, deviceListenerRegistry, domesticDebitAidsParser, healthLogger, disconnectReasonRepository, readerInfoRepository, healthLogger2, mposReaderEventLogger, mposReaderDebugLogManager, loggerFactory));
    }
}
