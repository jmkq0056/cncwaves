package com.stripe.stripeterminal.internal.common.adapter.dagger;

import android.bluetooth.BluetoothAdapter;
import com.stripe.core.bbpos.hardware.BbposControllerListener;
import com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener;
import com.stripe.core.bbpos.hardware.DeviceListenerRegistry;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.api.SimpleListenerWrapper;
import com.stripe.core.bbpos.hardware.dagger.BbposControllerListenerModule;
import com.stripe.core.bbpos.hardware.dagger.BbposPaymentCollectionModule;
import com.stripe.core.bbpos.hardware.dagger.DeviceListenerModule;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ReactiveConfigurationListener;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.readerconnection.ConnectionManager;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdateInstaller;
import com.stripe.core.readerupdate.UpdateManager;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.jvmcore.dagger.Transaction;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.BluetoothScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper;
import com.stripe.stripeterminal.internal.common.adapter.TerminalSdkDeviceListenerWrapper;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.bluetooth.BluetoothBondStateReceiverManager;
import com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateMachine;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryFilter;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import com.stripe.stripeterminal.internal.common.usb.UsbPermissionReceiverManager;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.Module;
import dagger.Provides;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MposAdaptersModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ð\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JÉ\u0002\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\"\u00107\u001a\u001e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<08j\u0002`=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020A2\"\u0010B\u001a\u001e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020F08j\u0002`G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u0001¢\u0006\u0002\bNJÛ\u0002\u0010O\u001a\u00020P2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010Q\u001a\u00020R2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010S\u001a\u0004\u0018\u00010T2\"\u00107\u001a\u001e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020U\u0012\u0004\u0012\u00020V08j\u0002`W2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u0010X\u001a\u00020Y2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020A2\"\u0010B\u001a\u001e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020F08j\u0002`G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u0001¢\u0006\u0002\bZJ5\u0010[\u001a\u0002022\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010\u0013\u001a\u00020`2\u0006\u0010a\u001a\u00020b2\u0006\u0010L\u001a\u00020MH\u0001¢\u0006\u0002\bcJ\b\u0010d\u001a\u00020eH\u0007J\b\u0010f\u001a\u00020eH\u0007J\b\u0010g\u001a\u00020eH\u0007J\b\u0010h\u001a\u00020eH\u0007J\u001c\u0010i\u001a\u0012\u0012\u0004\u0012\u00020k\u0012\u0004\u0012\u00020l0jj\u0002`m*\u00020MH\u0002¨\u0006n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;", "", "()V", "provideBbposUsbAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "connectionManager", "Lcom/stripe/core/readerconnection/ConnectionManager;", "updateManager", "Lcom/stripe/core/readerupdate/UpdateManager;", "configListener", "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "readerStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "updateInstaller", "Lcom/stripe/core/readerupdate/UpdateInstaller;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "usbPermissionReceiver", "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerUpdateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "readerInfoController", "Lcom/stripe/core/hardware/ReaderInfoController;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "connectAndUpdateStateMachine", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;", "paymentCollectionWrapper", "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;", "resourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;", "deviceListener", "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;", "deviceListenerRegistry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "domesticDebitAidsParser", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "connectivityHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;", "disconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "singleUpdateHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "mposReaderEventLogger", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;", "mposReaderDebugLogManager", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideBbposUsbAdapter$adapter_release", "provideBluetoothAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;", "bluetoothBondStateReceiver", "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;", "bluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/BluetoothConnectivityHealthLogger;", "bluetoothDeviceNameRepository", "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "provideBluetoothAdapter$adapter_release", "provideTerminalSdkDeviceListenerWrapper", "baseControllerFactory", "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;", "basePaymentCollectionFactory", "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "discoveryFilter", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;", "provideTerminalSdkDeviceListenerWrapper$adapter_release", "providesEncryptionHandler", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "providesMissingKeyHandler", "providesObservabilityHandler", "providesReaderStatusHandler", "getDeviceListenerWrapperLogger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {BbposControllerListenerModule.class, BbposPaymentCollectionModule.class})
public final class MposAdaptersModule {
    public static final MposAdaptersModule INSTANCE = new MposAdaptersModule();

    private MposAdaptersModule() {
    }

    @Provides
    @Singleton
    public final TerminalSdkDeviceListenerWrapper provideTerminalSdkDeviceListenerWrapper$adapter_release(BbposControllerListener.Factory baseControllerFactory, BbposPaymentCollectionListener.Factory basePaymentCollectionFactory, ReaderStatusListener readerStatusListener, BbposBluetoothDiscoveryFilter discoveryFilter, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(baseControllerFactory, "baseControllerFactory");
        Intrinsics.checkNotNullParameter(basePaymentCollectionFactory, "basePaymentCollectionFactory");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(discoveryFilter, "discoveryFilter");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> deviceListenerWrapperLogger = getDeviceListenerWrapperLogger(loggerFactory);
        return new TerminalSdkDeviceListenerWrapper(basePaymentCollectionFactory.create(baseControllerFactory.create(deviceListenerWrapperLogger), deviceListenerWrapperLogger), readerStatusListener, discoveryFilter, getDeviceListenerWrapperLogger(loggerFactory));
    }

    @Provides
    @Singleton
    public final BbposBluetoothAdapter provideBluetoothAdapter$adapter_release(UpdateClient updateClient, SessionTokenRepository sessionTokenRepository, @Transaction Scheduler scheduler, @Transaction CoroutineScope scope, ConnectionManager connectionManager, UpdateManager updateManager, ReactiveConfigurationListener configListener, ReactiveReaderStatusListener readerStatusListener, ReactiveReaderUpdateListener updateListener, UpdateInstaller updateInstaller, TerminalStatusManager statusManager, SettingsRepository settingsRepository, BluetoothBondStateReceiverManager bluetoothBondStateReceiver, FeatureFlagsRepository featureFlagsRepository, ReaderUpdateController readerUpdateController, ReaderInfoController readerInfoController, ApplicationInformationProvider applicationInformationProvider, TransactionRepository transactionRepository, ConnectAndUpdateStateMachine connectAndUpdateStateMachine, PaymentCollectionCoordinatorWrapper paymentCollectionWrapper, ProxyResourceRepository resourceRepository, DeviceControllerWrapper deviceController, BluetoothAdapter bluetoothAdapter, HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder> connectivityHealthLogger, TerminalSdkDeviceListenerWrapper deviceListener, DeviceListenerRegistry deviceListenerRegistry, DomesticDebitAidsParser domesticDebitAidsParser, BluetoothDeviceNameRepository bluetoothDeviceNameRepository, DisconnectReasonRepository disconnectReasonRepository, ReaderInfoRepository readerInfoRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> singleUpdateHealthLogger, MposReaderEventLogger mposReaderEventLogger, MposReaderDebugLogManager mposReaderDebugLogManager, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(connectionManager, "connectionManager");
        Intrinsics.checkNotNullParameter(updateManager, "updateManager");
        Intrinsics.checkNotNullParameter(configListener, "configListener");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(updateInstaller, "updateInstaller");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(bluetoothBondStateReceiver, "bluetoothBondStateReceiver");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(readerUpdateController, "readerUpdateController");
        Intrinsics.checkNotNullParameter(readerInfoController, "readerInfoController");
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(connectAndUpdateStateMachine, "connectAndUpdateStateMachine");
        Intrinsics.checkNotNullParameter(paymentCollectionWrapper, "paymentCollectionWrapper");
        Intrinsics.checkNotNullParameter(resourceRepository, "resourceRepository");
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        Intrinsics.checkNotNullParameter(connectivityHealthLogger, "connectivityHealthLogger");
        Intrinsics.checkNotNullParameter(deviceListener, "deviceListener");
        Intrinsics.checkNotNullParameter(deviceListenerRegistry, "deviceListenerRegistry");
        Intrinsics.checkNotNullParameter(domesticDebitAidsParser, "domesticDebitAidsParser");
        Intrinsics.checkNotNullParameter(bluetoothDeviceNameRepository, "bluetoothDeviceNameRepository");
        Intrinsics.checkNotNullParameter(disconnectReasonRepository, "disconnectReasonRepository");
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        Intrinsics.checkNotNullParameter(singleUpdateHealthLogger, "singleUpdateHealthLogger");
        Intrinsics.checkNotNullParameter(mposReaderEventLogger, "mposReaderEventLogger");
        Intrinsics.checkNotNullParameter(mposReaderDebugLogManager, "mposReaderDebugLogManager");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposBluetoothAdapter(updateClient, sessionTokenRepository, scheduler, scope, connectionManager, updateManager, configListener, readerStatusListener, updateListener, updateInstaller, statusManager, settingsRepository, bluetoothBondStateReceiver, featureFlagsRepository, readerUpdateController, readerInfoController, applicationInformationProvider, transactionRepository, connectAndUpdateStateMachine, paymentCollectionWrapper, resourceRepository, deviceController, bluetoothAdapter, connectivityHealthLogger, deviceListener, deviceListenerRegistry, domesticDebitAidsParser, bluetoothDeviceNameRepository, disconnectReasonRepository, readerInfoRepository, singleUpdateHealthLogger, mposReaderEventLogger, mposReaderDebugLogManager, loggerFactory);
    }

    @Provides
    @Singleton
    public final BbposUsbAdapter provideBbposUsbAdapter$adapter_release(UpdateClient updateClient, SessionTokenRepository sessionTokenRepository, @Transaction Scheduler scheduler, @Transaction CoroutineScope scope, ConnectionManager connectionManager, UpdateManager updateManager, ReactiveConfigurationListener configListener, ReactiveReaderStatusListener readerStatusListener, ReactiveReaderUpdateListener updateListener, UpdateInstaller updateInstaller, TerminalStatusManager statusManager, SettingsRepository settingsRepository, DeviceControllerWrapper deviceController, UsbPermissionReceiverManager usbPermissionReceiver, FeatureFlagsRepository featureFlagsRepository, ReaderUpdateController readerUpdateController, ReaderInfoController readerInfoController, ApplicationInformationProvider applicationInformationProvider, TransactionRepository transactionRepository, ConnectAndUpdateStateMachine connectAndUpdateStateMachine, PaymentCollectionCoordinatorWrapper paymentCollectionWrapper, ProxyResourceRepository resourceRepository, TerminalSdkDeviceListenerWrapper deviceListener, DeviceListenerRegistry deviceListenerRegistry, DomesticDebitAidsParser domesticDebitAidsParser, HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> connectivityHealthLogger, DisconnectReasonRepository disconnectReasonRepository, ReaderInfoRepository readerInfoRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> singleUpdateHealthLogger, MposReaderEventLogger mposReaderEventLogger, MposReaderDebugLogManager mposReaderDebugLogManager, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(connectionManager, "connectionManager");
        Intrinsics.checkNotNullParameter(updateManager, "updateManager");
        Intrinsics.checkNotNullParameter(configListener, "configListener");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(updateInstaller, "updateInstaller");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        Intrinsics.checkNotNullParameter(usbPermissionReceiver, "usbPermissionReceiver");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(readerUpdateController, "readerUpdateController");
        Intrinsics.checkNotNullParameter(readerInfoController, "readerInfoController");
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(connectAndUpdateStateMachine, "connectAndUpdateStateMachine");
        Intrinsics.checkNotNullParameter(paymentCollectionWrapper, "paymentCollectionWrapper");
        Intrinsics.checkNotNullParameter(resourceRepository, "resourceRepository");
        Intrinsics.checkNotNullParameter(deviceListener, "deviceListener");
        Intrinsics.checkNotNullParameter(deviceListenerRegistry, "deviceListenerRegistry");
        Intrinsics.checkNotNullParameter(domesticDebitAidsParser, "domesticDebitAidsParser");
        Intrinsics.checkNotNullParameter(connectivityHealthLogger, "connectivityHealthLogger");
        Intrinsics.checkNotNullParameter(disconnectReasonRepository, "disconnectReasonRepository");
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        Intrinsics.checkNotNullParameter(singleUpdateHealthLogger, "singleUpdateHealthLogger");
        Intrinsics.checkNotNullParameter(mposReaderEventLogger, "mposReaderEventLogger");
        Intrinsics.checkNotNullParameter(mposReaderDebugLogManager, "mposReaderDebugLogManager");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposUsbAdapter(updateClient, sessionTokenRepository, scheduler, scope, connectionManager, updateManager, configListener, readerStatusListener, updateListener, updateInstaller, statusManager, settingsRepository, deviceController, usbPermissionReceiver, featureFlagsRepository, readerUpdateController, readerInfoController, applicationInformationProvider, transactionRepository, connectAndUpdateStateMachine, paymentCollectionWrapper, resourceRepository, deviceListener, deviceListenerRegistry, domesticDebitAidsParser, connectivityHealthLogger, disconnectReasonRepository, readerInfoRepository, singleUpdateHealthLogger, mposReaderEventLogger, mposReaderDebugLogManager, loggerFactory);
    }

    @Provides
    @DeviceListenerModule.EncryptionHandler
    public final DeviceListenerWrapper providesEncryptionHandler() {
        return new SimpleListenerWrapper() { // from class: com.stripe.stripeterminal.internal.common.adapter.dagger.MposAdaptersModule.providesEncryptionHandler.1
        };
    }

    @DeviceListenerModule.ReaderStatusHandler
    @Provides
    public final DeviceListenerWrapper providesReaderStatusHandler() {
        return new SimpleListenerWrapper() { // from class: com.stripe.stripeterminal.internal.common.adapter.dagger.MposAdaptersModule.providesReaderStatusHandler.1
        };
    }

    @Provides
    @DeviceListenerModule.ObservabilityHandler
    public final DeviceListenerWrapper providesObservabilityHandler() {
        return new SimpleListenerWrapper() { // from class: com.stripe.stripeterminal.internal.common.adapter.dagger.MposAdaptersModule.providesObservabilityHandler.1
        };
    }

    @DeviceListenerModule.MissingKeyHandler
    @Provides
    public final DeviceListenerWrapper providesMissingKeyHandler() {
        return new SimpleListenerWrapper() { // from class: com.stripe.stripeterminal.internal.common.adapter.dagger.MposAdaptersModule.providesMissingKeyHandler.1
        };
    }

    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> getDeviceListenerWrapperLogger(LoggerFactory loggerFactory) {
        return loggerFactory.create(Reflection.getOrCreateKotlinClass(TerminalSdkDeviceListenerWrapper.class));
    }
}
