package com.stripe.stripeterminal.internal.common.adapter;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.core.bbpos.hardware.DeviceListenerRegistry;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
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
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.loggingmodels.Outcome;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.BluetoothScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.LocationStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepositoryKt;
import com.stripe.stripeterminal.internal.common.bluetooth.BluetoothBondStateReceiverManager;
import com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateMachine;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import com.stripe.stripeterminal.internal.common.makers.DeviceTypeMaker;
import com.stripe.stripeterminal.internal.common.makers.KmpReaderMaker;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.transaction.Settings;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000î\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0003z{|BÑ\u0002\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\b\u0010.\u001a\u0004\u0018\u00010/\u0012\"\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6\u0012\u0006\u00107\u001a\u000208\u0012\u0006\u00109\u001a\u00020:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0006\u0010=\u001a\u00020>\u0012\u0006\u0010?\u001a\u00020@\u0012\u0006\u0010A\u001a\u00020B\u0012\"\u0010C\u001a\u001e\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G01j\u0002`H\u0012\u0006\u0010I\u001a\u00020J\u0012\u0006\u0010K\u001a\u00020L\u0012\u0006\u0010M\u001a\u00020N¢\u0006\u0002\u0010OJ\"\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020]0[2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020\\0_H\u0014J\u0014\u0010`\u001a\u00060aR\u00020\u00012\u0006\u0010b\u001a\u00020cH\u0014J\u001c\u0010d\u001a\u00060eR\u00020\u00012\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020iH\u0014J\u0012\u0010j\u001a\u0004\u0018\u00010k2\u0006\u0010b\u001a\u00020cH\u0014J\u0014\u0010l\u001a\u00060mR\u00020\u00012\u0006\u0010b\u001a\u00020cH\u0014J\u0010\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020qH\u0014J\u0010\u0010r\u001a\u00020o2\u0006\u0010s\u001a\u00020tH\u0014J\u001c\u0010u\u001a\u00020o2\b\u0010v\u001a\u0004\u0018\u00010w2\b\u0010x\u001a\u0004\u0018\u00010yH\u0016R\u001b\u0010P\u001a\u00020Q8BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\bT\u0010U*\u0004\bR\u0010SR\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010V\u001a\u0004\u0018\u00010WX\u0082\u000e¢\u0006\u0004\n\u0002\u0010XR\u0012\u0010Y\u001a\u0004\u0018\u00010WX\u0082\u000e¢\u0006\u0004\n\u0002\u0010XR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006}"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "connectionManager", "Lcom/stripe/core/readerconnection/ConnectionManager;", "updateManager", "Lcom/stripe/core/readerupdate/UpdateManager;", "configListener", "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "readerStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "updateInstaller", "Lcom/stripe/core/readerupdate/UpdateInstaller;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "bluetoothBondStateReceiver", "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerUpdateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "readerInfoController", "Lcom/stripe/core/hardware/ReaderInfoController;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "connectAndUpdateStateMachine", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;", "paymentCollectionWrapper", "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;", "resourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "bluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "connectivityHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/BluetoothConnectivityHealthLogger;", "deviceListener", "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;", "deviceListenerRegistry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "domesticDebitAidsParser", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "bluetoothDeviceNameRepository", "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "disconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "singleUpdateHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "mposReaderEventLogger", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;", "mposReaderDebugLogManager", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/bluetooth/BluetoothAdapter;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo$delegate", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Object;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "reconnectionMaxAttempts", "", "Ljava/lang/Integer;", "reconnectionMaxTimeoutInSeconds", "getLocationsForDiscovery", "", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "makeConnectReaderOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "makeDiscoverReadersOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "makeHardwareReader", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "makeReconnectReaderOperation", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;", "onDisconnect", "", "disconnectCause", "Lcom/stripe/hardware/status/DisconnectCause;", "onFailure", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "setReconnectParams", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "ConnectBluetoothReaderOperation", "DiscoverBluetoothReadersOperation", "ReconnectBluetoothReaderOperation", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposBluetoothAdapter extends BbposAdapter {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BbposBluetoothAdapter.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};
    private final ApplicationInformationProvider applicationInformationProvider;
    private final BluetoothAdapter bluetoothAdapter;
    private final BluetoothBondStateReceiverManager bluetoothBondStateReceiver;
    private final BluetoothDeviceNameRepository bluetoothDeviceNameRepository;
    private final ConnectionManager connectionManager;
    private final HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder> connectivityHealthLogger;
    private final DeviceControllerWrapper deviceController;
    private final DisconnectReasonRepository disconnectReasonRepository;
    private final FeatureFlagsRepository featureFlagsRepository;
    private final ReactiveReaderStatusListener readerStatusListener;
    private Integer reconnectionMaxAttempts;
    private Integer reconnectionMaxTimeoutInSeconds;
    private final CoroutineScope scope;
    private final SessionTokenRepository sessionTokenRepository;
    private final TerminalStatusManager statusManager;

    /* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DisconnectCause.values().length];
            try {
                iArr[DisconnectCause.CONNECTED_TO_ANOTHER_DEVICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ApplicationInformation getAppInfo() {
        return this.applicationInformationProvider.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected BbposAdapter.ConnectReaderOperation makeConnectReaderOperation(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new ConnectBluetoothReaderOperation(this, reader);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected BbposAdapter.DiscoverReadersOperation makeDiscoverReadersOperation(DiscoveryConfiguration config, DiscoveryListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return new DiscoverBluetoothReadersOperation(this, config, listener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    public Reader.BluetoothReader makeHardwareReader(com.stripe.stripeterminal.external.models.Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return ReaderMaker.INSTANCE.fromBluetoothDeviceOrNull(reader.getBluetoothDevice());
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected void onDisconnect(DisconnectCause disconnectCause) throws IllegalAccessException, InstantiationException {
        TerminalException terminalException;
        BluetoothAdapter bluetoothAdapter;
        Intrinsics.checkNotNullParameter(disconnectCause, "disconnectCause");
        if (!this.featureFlagsRepository.getFeatureFlags().disable_bluetooth_auto_reconnect_android_sdk && getRequestReconnection() != null && !(getOperationInProgress() instanceof BbposAdapter.ConnectReaderOperation) && (bluetoothAdapter = this.bluetoothAdapter) != null && bluetoothAdapter.isEnabled()) {
            super.onDisconnect(disconnectCause);
            onFailure(new TerminalException(TerminalErrorCode.BLUETOOTH_RECONNECT_STARTED, "Bluetooth unexpectedly disconnected during operation, reconnecting.", null, null, 12, null));
            startReconnect();
            return;
        }
        if (getOperationInProgress() instanceof BbposAdapter.ReconnectReaderOperation) {
            getLogger().d("onDisconnect: Reconnection is in progress. Ignore.", new Pair[0]);
            return;
        }
        super.onDisconnect(disconnectCause);
        BluetoothAdapter bluetoothAdapter2 = this.bluetoothAdapter;
        if (bluetoothAdapter2 != null && bluetoothAdapter2.isEnabled()) {
            if (WhenMappings.$EnumSwitchMapping$0[disconnectCause.ordinal()] == 1) {
                terminalException = new TerminalException(TerminalErrorCode.READER_CONNECTED_TO_ANOTHER_DEVICE, "Reader is already connected to another device.", null, null, 12, null);
            } else {
                terminalException = new TerminalException(TerminalErrorCode.BLUETOOTH_DISCONNECTED, "Bluetooth unexpectedly disconnected during operation.", null, null, 12, null);
            }
        } else {
            this.disconnectReasonRepository.setDisconnectReason(DisconnectReason.BLUETOOTH_DISABLED);
            terminalException = new TerminalException(TerminalErrorCode.BLUETOOTH_ERROR, "Bluetooth is disabled on your device, please turn it on.", null, null, 12, null);
        }
        onFailure(terminalException);
        DisconnectReason disconnectReasonConsumeDisconnectReason = this.disconnectReasonRepository.consumeDisconnectReason();
        HealthLogger.incrementCounter$default(this.connectivityHealthLogger, null, MapsKt.mapOf(TuplesKt.to("disconnect_reason", DisconnectReasonRepositoryKt.toLogString(disconnectReasonConsumeDisconnectReason)), TuplesKt.to("reason", terminalException.getErrorCode().toLogString())), null, new Function2<BluetoothScope.Builder, Counter, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter.onDisconnect.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BluetoothScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.unexpected_disconnect = event;
            }
        }, 5, null);
        this.statusManager.reportDisconnect(disconnectReasonConsumeDisconnectReason);
        this.statusManager.unexpectedDisconnect();
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected void onFailure(TerminalException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.bluetoothBondStateReceiver.stopListening();
        super.onFailure(e);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected Map<String, Location> getLocationsForDiscovery(List<String> deviceSerials) throws TerminalException {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<String> list = deviceSerials;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (String str : list) {
            String deviceSerialFromName = this.bluetoothDeviceNameRepository.getDeviceSerialFromName(str);
            if (deviceSerialFromName != null) {
                linkedHashMap.put(deviceSerialFromName, str);
                str = deviceSerialFromName;
            }
            arrayList.add(str);
        }
        Map<String, Location> locationsForDiscovery = super.getLocationsForDiscovery(arrayList);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(locationsForDiscovery.size()));
        Iterator<T> it = locationsForDiscovery.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str2 = (String) entry.getKey();
            String str3 = (String) linkedHashMap.get(str2);
            if (str3 != null) {
                str2 = str3;
            }
            linkedHashMap2.put(str2, entry.getValue());
        }
        return linkedHashMap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V", "device", "Landroid/bluetooth/BluetoothDevice;", "execute", "onConnectDevice", "", "Lcom/stripe/core/hardware/Reader;", "onReportReaderInfo", "info", "Lcom/stripe/hardware/status/ReaderInfo;", "saveDeviceNameSerialMapping", "startConnect", "startConnectWithManualBonding", "bluetoothDevice", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ConnectBluetoothReaderOperation extends BbposAdapter.ConnectReaderOperation {
        private BluetoothDevice device;
        private final com.stripe.stripeterminal.external.models.Reader reader;
        final /* synthetic */ BbposBluetoothAdapter this$0;

        /* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DeviceType.values().length];
                try {
                    iArr[DeviceType.STRIPE_M2.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DeviceType.WISEPAD_3.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DeviceType.WISEPAD_3S.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConnectBluetoothReaderOperation(BbposBluetoothAdapter bbposBluetoothAdapter, com.stripe.stripeterminal.external.models.Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposBluetoothAdapter;
            this.reader = reader;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public com.stripe.stripeterminal.external.models.Reader execute() throws TerminalException {
            Unit unit;
            Reader.BluetoothReader bluetoothReaderMakeHardwareReader = this.this$0.makeHardwareReader(this.reader);
            if (bluetoothReaderMakeHardwareReader != null) {
                this.this$0.connectionManager.startConnect(bluetoothReaderMakeHardwareReader);
                int i = WhenMappings.$EnumSwitchMapping$0[this.reader.getDeviceType().ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    startConnectWithManualBonding(bluetoothReaderMakeHardwareReader.getDevice());
                } else {
                    startConnect();
                }
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.this$0.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Connect reader failed unexpectedly", null, null, 12, null));
            }
            return get();
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onConnectDevice(com.stripe.core.hardware.Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            if (!(reader instanceof Reader.BluetoothReader)) {
                this.this$0.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected reader type", null, null, 12, null));
            }
            this.this$0.bluetoothBondStateReceiver.stopListening();
            this.device = ((Reader.BluetoothReader) reader).getDevice();
            this.this$0.connectionManager.startReaderInfo();
            this.this$0.update();
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onReportReaderInfo(ReaderInfo info) {
            ConnectBluetoothReaderOperation connectBluetoothReaderOperation;
            String serial;
            String string;
            Intrinsics.checkNotNullParameter(info, "info");
            Unit unit = null;
            if (this.device != null) {
                BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
                KmpReaderMaker kmpReaderMaker = KmpReaderMaker.INSTANCE;
                DeviceTypeMaker.Companion companion = DeviceTypeMaker.INSTANCE;
                BluetoothDevice bluetoothDevice = this.device;
                if ((bluetoothDevice == null || (serial = Reader.BluetoothReader.INSTANCE.nameFromDevice(bluetoothDevice)) == null) && (serial = info.getSerial()) == null) {
                    serial = "";
                }
                com.stripe.stripeterminal.external.models.Reader readerWithReaderInfo = kmpReaderMaker.withReaderInfo(info, companion.fromSerial(serial), (32812 & 4) != 0 ? null : this.device, (32812 & 8) != 0 ? null : null, (32812 & 16) != 0 ? LocationStatus.UNKNOWN : null, (32812 & 32) != 0 ? null : null, (32812 & 64) != 0 ? null : null, (32812 & 128) != 0 ? null : null, (32812 & 256) != 0 ? null : null, (32812 & 512) != 0 ? null : null, (32812 & 1024) != 0 ? null : null, (32812 & 2048) != 0 ? null : null, (32812 & 4096) != 0 ? null : null, (32812 & 8192) != 0 ? null : null, (32812 & 16384) != 0 ? null : null, (32812 & 32768) != 0 ? false : false);
                SimpleLogger logger = bbposBluetoothAdapter.getLogger();
                Pair<String, ? extends Object>[] pairArr = new Pair[2];
                pairArr[0] = TuplesKt.to("reader_software_version", readerWithReaderInfo.getSoftwareVersion());
                Float batteryLevel = readerWithReaderInfo.getBatteryLevel();
                if (batteryLevel == null || (string = batteryLevel.toString()) == null) {
                    string = "unavailable";
                }
                pairArr[1] = TuplesKt.to("reader_battery_level", string);
                logger.i(null, pairArr);
                bbposBluetoothAdapter.setSettings(new Settings(bbposBluetoothAdapter.emvTransactionTypeForDeviceType(readerWithReaderInfo.getDeviceType()), false));
                bbposBluetoothAdapter.connectionManager.endOperation();
                bbposBluetoothAdapter.update();
                connectBluetoothReaderOperation = this;
                connectBluetoothReaderOperation.saveDeviceNameSerialMapping(readerWithReaderInfo);
                connectBluetoothReaderOperation.set(readerWithReaderInfo);
                unit = Unit.INSTANCE;
            } else {
                connectBluetoothReaderOperation = this;
            }
            if (unit == null) {
                connectBluetoothReaderOperation.this$0.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Connect reader failed unexpectedly", null, null, 12, null));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void startConnect() {
            this.this$0.update();
            SessionTokenRepository sessionTokenRepository = this.this$0.sessionTokenRepository;
            final BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
            sessionTokenRepository.setSessionTokenListener(new SessionTokenRepository.TokenChangeListener() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1
                @Override // com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository.TokenChangeListener
                public void onSessionTokenChanged(String token) {
                    bbposBluetoothAdapter.update();
                }
            });
        }

        private final void startConnectWithManualBonding(BluetoothDevice bluetoothDevice) {
            int iBondStateFromDevice = Reader.BluetoothReader.INSTANCE.bondStateFromDevice(bluetoothDevice);
            if (iBondStateFromDevice != 10) {
                if (iBondStateFromDevice == 12) {
                    startConnect();
                    return;
                } else {
                    this.this$0.getLogger().d("startConnectWithManualBonding no-op, bluetoothDevice.bondState=" + Reader.BluetoothReader.INSTANCE.bondStateFromDevice(bluetoothDevice), new Pair[0]);
                    return;
                }
            }
            BluetoothBondStateReceiverManager bluetoothBondStateReceiverManager = this.this$0.bluetoothBondStateReceiver;
            BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1 bbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1 = new BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1(this);
            final BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
            bluetoothBondStateReceiverManager.startListening(bluetoothDevice, bbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ReaderStatusListener.handleReaderDisconnect$default(bbposBluetoothAdapter.readerStatusListener, null, 1, null);
                }
            });
            Reader.BluetoothReader.INSTANCE.createBondWithDevice(bluetoothDevice);
        }

        private final void saveDeviceNameSerialMapping(com.stripe.stripeterminal.external.models.Reader reader) {
            Object objM817constructorimpl;
            String str;
            BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                ConnectBluetoothReaderOperation connectBluetoothReaderOperation = this;
                String serialNumber = reader.getSerialNumber();
                BluetoothDevice bluetoothDevice = reader.getBluetoothDevice();
                String strNameFromDevice = bluetoothDevice != null ? Reader.BluetoothReader.INSTANCE.nameFromDevice(bluetoothDevice) : null;
                String str2 = serialNumber;
                if (str2 != null && str2.length() != 0 && (str = strNameFromDevice) != null && str.length() != 0) {
                    bbposBluetoothAdapter.bluetoothDeviceNameRepository.saveDeviceSerialMapping(strNameFromDevice, serialNumber);
                }
                objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            BbposBluetoothAdapter bbposBluetoothAdapter2 = this.this$0;
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                bbposBluetoothAdapter2.getLogger().w(thM820exceptionOrNullimpl, "Failed to save bluetooth reader name <> serial mapping.", new Pair[0]);
            }
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void setReconnectParams(BluetoothAutoReconnectConfigPb bluetoothConfig, UsbAutoReconnectConfigPb usbConfig) {
        this.reconnectionMaxAttempts = bluetoothConfig != null ? Integer.valueOf(bluetoothConfig.max_retry_attempts) : null;
        this.reconnectionMaxTimeoutInSeconds = bluetoothConfig != null ? Integer.valueOf(bluetoothConfig.max_timeout_seconds) : null;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter
    protected BbposAdapter.ReconnectReaderOperation makeReconnectReaderOperation(com.stripe.stripeterminal.external.models.Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new ReconnectBluetoothReaderOperation(this, reader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V", "device", "Landroid/bluetooth/BluetoothDevice;", "healthLoggerTags", "", "", "pendingTimer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "reconnectJob", "Lkotlinx/coroutines/Job;", "cancel", "", "execute", "failReconnection", "onConnectDevice", "Lcom/stripe/core/hardware/Reader;", "onReportReaderInfo", "info", "Lcom/stripe/hardware/status/ReaderInfo;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class ReconnectBluetoothReaderOperation extends BbposAdapter.ReconnectReaderOperation {
        private BluetoothDevice device;
        private Map<String, String> healthLoggerTags;
        private PendingTimer pendingTimer;
        private final com.stripe.stripeterminal.external.models.Reader reader;
        private Job reconnectJob;
        final /* synthetic */ BbposBluetoothAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReconnectBluetoothReaderOperation(BbposBluetoothAdapter bbposBluetoothAdapter, com.stripe.stripeterminal.external.models.Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = bbposBluetoothAdapter;
            this.reader = reader;
            this.healthLoggerTags = new LinkedHashMap();
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onConnectDevice(com.stripe.core.hardware.Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.device = ((Reader.BluetoothReader) reader).getDevice();
            this.this$0.connectionManager.startReaderInfo();
            this.this$0.update();
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation
        public void onReportReaderInfo(ReaderInfo info) {
            Unit unit;
            String serial;
            Intrinsics.checkNotNullParameter(info, "info");
            if (this.device != null) {
                BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
                KmpReaderMaker kmpReaderMaker = KmpReaderMaker.INSTANCE;
                DeviceTypeMaker.Companion companion = DeviceTypeMaker.INSTANCE;
                BluetoothDevice bluetoothDevice = this.device;
                if ((bluetoothDevice == null || (serial = Reader.BluetoothReader.INSTANCE.nameFromDevice(bluetoothDevice)) == null) && (serial = info.getSerial()) == null) {
                    serial = "";
                }
                com.stripe.stripeterminal.external.models.Reader readerWithReaderInfo = kmpReaderMaker.withReaderInfo(info, companion.fromSerial(serial), (32812 & 4) != 0 ? null : this.device, (32812 & 8) != 0 ? null : null, (32812 & 16) != 0 ? LocationStatus.UNKNOWN : null, (32812 & 32) != 0 ? null : null, (32812 & 64) != 0 ? null : null, (32812 & 128) != 0 ? null : null, (32812 & 256) != 0 ? null : null, (32812 & 512) != 0 ? null : null, (32812 & 1024) != 0 ? null : null, (32812 & 2048) != 0 ? null : null, (32812 & 4096) != 0 ? null : null, (32812 & 8192) != 0 ? null : null, (32812 & 16384) != 0 ? null : null, (32812 & 32768) != 0 ? false : false);
                bbposBluetoothAdapter.getLogger().i("reader reconnected:" + readerWithReaderInfo.getSerialNumber(), new Pair[0]);
                HealthLogger.endTimer$default(bbposBluetoothAdapter.connectivityHealthLogger, this.pendingTimer, Outcome.Ok.INSTANCE, this.healthLoggerTags, null, 8, null);
                bbposBluetoothAdapter.connectionManager.endOperation();
                bbposBluetoothAdapter.update();
                set(readerWithReaderInfo);
                bbposBluetoothAdapter.setOperationInProgress(new Adapter.NullOperation());
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.this$0.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Connect reader failed unexpectedly", null, null, 12, null));
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ReconnectReaderOperation
        public void cancel() {
            this.healthLoggerTags.put("reconnection_outcome", "cancelled");
            Job job = this.reconnectJob;
            if (job == null || !job.isActive()) {
                return;
            }
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            failReconnection();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void failReconnection() {
            this.this$0.deviceController.disconnectBt();
            this.this$0.onFailure(new TerminalException(TerminalErrorCode.BLUETOOTH_DISCONNECTED, "Bluetooth reconnection failed.", null, null, 12, null));
            HealthLogger.endTimer$default(this.this$0.connectivityHealthLogger, this.pendingTimer, Outcome.GenericError.INSTANCE, this.healthLoggerTags, null, 8, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public com.stripe.stripeterminal.external.models.Reader execute() {
            this.pendingTimer = HealthLogger.startTimer$default(this.this$0.connectivityHealthLogger, null, new Function2<BluetoothScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(BluetoothScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(BluetoothScope.Builder startTimer, Timer event) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(event, "event");
                    startTimer.reconnection_attempt = event;
                }
            }, 1, null);
            Integer num = this.this$0.reconnectionMaxTimeoutInSeconds;
            if (num != null) {
                this.healthLoggerTags.put("maxTimeoutInSeconds", String.valueOf(num.intValue()));
            }
            Integer num2 = this.this$0.reconnectionMaxAttempts;
            if (num2 != null) {
                this.healthLoggerTags.put("maxAttempts", String.valueOf(num2.intValue()));
            }
            this.reconnectJob = BuildersKt__Builders_commonKt.launch$default(this.this$0.scope, null, null, new BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4(this.this$0, this, this.this$0.requireHardwareReader(this.reader), null), 3, null);
            return get();
        }
    }

    /* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J$\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\r0\u001b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u001d0\u001bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\"\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000e0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "getConnectionType", "()Lcom/stripe/core/hardware/ConnectionType;", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "getReaderClasses", "()Ljava/util/List;", "timeout", "Lkotlin/time/Duration;", "getTimeout-UwyO8pc", "()J", "checkPrerequisites", "", "createTimeoutException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "transformDiscoveredReaders", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/external/models/Reader;", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class DiscoverBluetoothReadersOperation extends BbposAdapter.DiscoverReadersOperation {
        private final DiscoveryConfiguration config;
        final /* synthetic */ BbposBluetoothAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscoverBluetoothReadersOperation(BbposBluetoothAdapter bbposBluetoothAdapter, DiscoveryConfiguration config, DiscoveryListener listener) {
            super(bbposBluetoothAdapter, listener);
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.this$0 = bbposBluetoothAdapter;
            this.config = config;
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public List<KClass<? extends com.stripe.core.hardware.Reader>> getReaderClasses() {
            BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.BluetoothReader.Chipper2xReader.class));
            listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.BluetoothReader.StripeM2Reader.class));
            listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.BluetoothReader.Wisepad3Reader.class));
            if (bbposBluetoothAdapter.getAppInfo().getShopifyReadersEnabled()) {
                listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.BluetoothReader.Chipper1xReader.class));
                listCreateListBuilder.add(Reflection.getOrCreateKotlinClass(Reader.BluetoothReader.WisecubeReader.class));
            }
            return CollectionsKt.build(listCreateListBuilder);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public ConnectionType getConnectionType() {
            return ConnectionType.BLUETOOTH;
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        /* JADX INFO: renamed from: getTimeout-UwyO8pc */
        public long mo508getTimeoutUwyO8pc() {
            Duration.Companion companion = Duration.INSTANCE;
            DiscoveryConfiguration discoveryConfiguration = this.config;
            Intrinsics.checkNotNull(discoveryConfiguration, "null cannot be cast to non-null type com.stripe.stripeterminal.external.models.DiscoveryConfiguration.BluetoothDiscoveryConfiguration");
            return DurationKt.toDuration(((DiscoveryConfiguration.BluetoothDiscoveryConfiguration) discoveryConfiguration).getTimeout(), DurationUnit.SECONDS);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public TerminalException createTimeoutException() {
            return new TerminalException(TerminalErrorCode.BLUETOOTH_SCAN_TIMED_OUT, "Bluetooth scan timed out", null, null, 12, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public void checkPrerequisites() throws TerminalException {
            super.checkPrerequisites();
            BluetoothAdapter bluetoothAdapter = this.this$0.bluetoothAdapter;
            if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
                throw new TerminalException(TerminalErrorCode.BLUETOOTH_ERROR, "Bluetooth is disabled on your device, please turn it on.", null, null, 12, null);
            }
        }

        @Override // com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation
        public Flow<List<com.stripe.stripeterminal.external.models.Reader>> transformDiscoveredReaders(final Flow<? extends Set<? extends com.stripe.core.hardware.Reader>> flow) {
            Intrinsics.checkNotNullParameter(flow, "<this>");
            Flow<List<? extends BluetoothDevice>> flow2 = new Flow<List<? extends BluetoothDevice>>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1$2", f = "BbposBluetoothAdapter.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                        /*
                            r6 = this;
                            boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r8
                            com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r8 = r0.label
                            int r8 = r8 - r2
                            r0.label = r8
                            goto L19
                        L14:
                            com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1$2$1
                            r0.<init>(r8)
                        L19:
                            java.lang.Object r8 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L8b
                        L2a:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r8)
                            throw r7
                        L32:
                            kotlin.ResultKt.throwOnFailure(r8)
                            kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            java.util.Set r7 = (java.util.Set) r7
                            java.lang.Iterable r7 = (java.lang.Iterable) r7
                            java.util.ArrayList r2 = new java.util.ArrayList
                            r2.<init>()
                            java.util.Collection r2 = (java.util.Collection) r2
                            java.util.Iterator r7 = r7.iterator()
                        L49:
                            boolean r4 = r7.hasNext()
                            if (r4 == 0) goto L5b
                            java.lang.Object r4 = r7.next()
                            boolean r5 = r4 instanceof com.stripe.core.hardware.Reader.BluetoothReader
                            if (r5 == 0) goto L49
                            r2.add(r4)
                            goto L49
                        L5b:
                            java.util.List r2 = (java.util.List) r2
                            java.lang.Iterable r2 = (java.lang.Iterable) r2
                            java.util.ArrayList r7 = new java.util.ArrayList
                            r7.<init>()
                            java.util.Collection r7 = (java.util.Collection) r7
                            java.util.Iterator r2 = r2.iterator()
                        L6a:
                            boolean r4 = r2.hasNext()
                            if (r4 == 0) goto L80
                            java.lang.Object r4 = r2.next()
                            com.stripe.core.hardware.Reader$BluetoothReader r4 = (com.stripe.core.hardware.Reader.BluetoothReader) r4
                            android.bluetooth.BluetoothDevice r4 = r4.getDevice()
                            if (r4 == 0) goto L6a
                            r7.add(r4)
                            goto L6a
                        L80:
                            java.util.List r7 = (java.util.List) r7
                            r0.label = r3
                            java.lang.Object r7 = r8.emit(r7, r0)
                            if (r7 != r1) goto L8b
                            return r1
                        L8b:
                            kotlin.Unit r7 = kotlin.Unit.INSTANCE
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super List<? extends BluetoothDevice>> flowCollector, Continuation continuation) {
                    Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
            final BbposBluetoothAdapter bbposBluetoothAdapter = this.this$0;
            return FlowKt.mapLatest(FlowKt.distinctUntilChanged(flow2, new Function2<List<? extends BluetoothDevice>, List<? extends BluetoothDevice>, Boolean>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$2
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Boolean invoke(List<? extends BluetoothDevice> list, List<? extends BluetoothDevice> list2) {
                    return invoke2((List<BluetoothDevice>) list, (List<BluetoothDevice>) list2);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Boolean invoke2(List<BluetoothDevice> old, List<BluetoothDevice> list) {
                    Intrinsics.checkNotNullParameter(old, "old");
                    Intrinsics.checkNotNullParameter(list, "new");
                    ArrayList arrayList = new ArrayList();
                    Iterator<T> it = old.iterator();
                    while (it.hasNext()) {
                        String strNameFromDevice = Reader.BluetoothReader.INSTANCE.nameFromDevice((BluetoothDevice) it.next());
                        if (strNameFromDevice != null) {
                            arrayList.add(strNameFromDevice);
                        }
                    }
                    Set set = CollectionsKt.toSet(arrayList);
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<T> it2 = list.iterator();
                    while (it2.hasNext()) {
                        String strNameFromDevice2 = Reader.BluetoothReader.INSTANCE.nameFromDevice((BluetoothDevice) it2.next());
                        if (strNameFromDevice2 != null) {
                            arrayList2.add(strNameFromDevice2);
                        }
                    }
                    Set set2 = CollectionsKt.toSet(arrayList2);
                    boolean z = false;
                    bbposBluetoothAdapter.getLogger().d("transformDiscoveredReaders", TuplesKt.to("newDiscoveredReaders", set2), TuplesKt.to("previouslyDiscoveredReaders", set));
                    if (old.size() == list.size() && Intrinsics.areEqual(set, set2)) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                }
            }), new BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3(this.this$0, null));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposBluetoothAdapter(UpdateClient updateClient, SessionTokenRepository sessionTokenRepository, Scheduler scheduler, CoroutineScope scope, ConnectionManager connectionManager, UpdateManager updateManager, ReactiveConfigurationListener configListener, ReactiveReaderStatusListener readerStatusListener, ReactiveReaderUpdateListener updateListener, UpdateInstaller updateInstaller, TerminalStatusManager statusManager, SettingsRepository settingsRepository, BluetoothBondStateReceiverManager bluetoothBondStateReceiver, FeatureFlagsRepository featureFlagsRepository, ReaderUpdateController readerUpdateController, ReaderInfoController readerInfoController, ApplicationInformationProvider applicationInformationProvider, TransactionRepository transactionRepository, ConnectAndUpdateStateMachine connectAndUpdateStateMachine, PaymentCollectionCoordinatorWrapper paymentCollectionWrapper, ProxyResourceRepository resourceRepository, DeviceControllerWrapper deviceController, BluetoothAdapter bluetoothAdapter, HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder> connectivityHealthLogger, TerminalSdkDeviceListenerWrapper deviceListener, DeviceListenerRegistry deviceListenerRegistry, DomesticDebitAidsParser domesticDebitAidsParser, BluetoothDeviceNameRepository bluetoothDeviceNameRepository, DisconnectReasonRepository disconnectReasonRepository, ReaderInfoRepository readerInfoRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> singleUpdateHealthLogger, MposReaderEventLogger mposReaderEventLogger, MposReaderDebugLogManager mposReaderDebugLogManager, LoggerFactory loggerFactory) {
        super(updateClient, sessionTokenRepository, scheduler, scope, connectionManager, updateManager, configListener, readerStatusListener, updateListener, updateInstaller, statusManager, settingsRepository, featureFlagsRepository, readerUpdateController, paymentCollectionWrapper, transactionRepository, connectAndUpdateStateMachine, readerInfoController, resourceRepository, deviceListener, deviceListenerRegistry, domesticDebitAidsParser, disconnectReasonRepository, readerInfoRepository, singleUpdateHealthLogger, mposReaderEventLogger, mposReaderDebugLogManager, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposBluetoothAdapter.class)), loggerFactory);
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
        this.sessionTokenRepository = sessionTokenRepository;
        this.scope = scope;
        this.connectionManager = connectionManager;
        this.readerStatusListener = readerStatusListener;
        this.statusManager = statusManager;
        this.bluetoothBondStateReceiver = bluetoothBondStateReceiver;
        this.featureFlagsRepository = featureFlagsRepository;
        this.applicationInformationProvider = applicationInformationProvider;
        this.deviceController = deviceController;
        this.bluetoothAdapter = bluetoothAdapter;
        this.connectivityHealthLogger = connectivityHealthLogger;
        this.bluetoothDeviceNameRepository = bluetoothDeviceNameRepository;
        this.disconnectReasonRepository = disconnectReasonRepository;
    }
}
